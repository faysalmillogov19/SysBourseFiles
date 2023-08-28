-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 20 avr. 2021 à 11:45
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sysbourse`
--

-- --------------------------------------------------------

--
-- Structure de la table `ajustement`
--

CREATE TABLE `ajustement` (
  `id` bigint(20) NOT NULL,
  `duree` int(11) NOT NULL,
  `date_effet` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `montant` double NOT NULL,
  `type_ajustement_id` bigint(20) NOT NULL,
  `boursier_id` bigint(20) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `statut` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `alerte`
--

CREATE TABLE `alerte` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `gravite` varchar(255) DEFAULT NULL,
  `lu` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `destinataire` varchar(250) DEFAULT NULL,
  `expediteur` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `alerte`
--

INSERT INTO `alerte` (`id`, `content`, `gravite`, `lu`, `role`, `destinataire`, `expediteur`) VALUES
(4322, 'Veuillez valider le dossier de OUEDRAOGO Désiré créé par admin', 'INFO', 0, 'ROLE_RDBAF', NULL, 'admin'),
(4323, 'Veuillez valider le dossier de KABORE Abdoul Hakim Sabane créé par admin', 'INFO', 0, 'ROLE_RDBAF', NULL, 'admin'),
(4324, 'Veuillez valider le dossier de OUEDRAOGO Abdoul Hakim Sabane créé par rdbaf', 'INFO', 0, 'ROLE_RDBAF', NULL, 'rdbaf'),
(4325, 'Veuillez valider le dossier de COMPAORE Ibrahim créé par admin', 'INFO', 0, 'ROLE_RDBAF', NULL, 'admin'),
(4326, 'Veuillez valider le dossier de KIENTGA Korotimi créé par admin', 'INFO', 0, 'ROLE_RDBAF', NULL, 'admin'),
(4327, 'Le boursier COMPAORE Ibrahim N° 00B4 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_RRAB', NULL, 'admin'),
(4328, 'Le boursier COMPAORE Ibrahim N° 00B4 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_ARAV', NULL, 'admin'),
(4329, 'Le boursier KIENTGA Korotimi N° 00B3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_RRAB', NULL, 'admin'),
(4330, 'Le boursier KIENTGA Korotimi N° 00B3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_ARAV', NULL, 'admin'),
(4331, 'Le boursier COMPAORE Ibrahim N° 00B4 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_RRAB', NULL, 'admin'),
(4332, 'Le boursier COMPAORE Ibrahim N° 00B4 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_ARAV', NULL, 'admin'),
(4333, 'Le boursier KIENTGA Korotimi N° 00B3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_RRAB', NULL, 'admin'),
(4334, 'Le boursier KIENTGA Korotimi N° 00B3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_ARAV', NULL, 'admin'),
(4335, 'Le boursier COMPAORE Ibrahim N° 00B4 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_RRAB', NULL, 'admin'),
(4336, 'Le boursier COMPAORE Ibrahim N° 00B4 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_ARAV', NULL, 'admin'),
(4337, 'Le boursier KIENTGA Korotimi N° 00B3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_RRAB', NULL, 'admin'),
(4338, 'Le boursier KIENTGA Korotimi N° 00B3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_ARAV', NULL, 'admin'),
(4339, 'Veuillez valider le dossier de OUANGRAOUA Anaelle créé par okpascaline', 'INFO', 0, 'ROLE_RDBAF', NULL, 'guirosouleymane'),
(4340, 'Veuillez valider le dossier de OUEDRAOGO Cédric Clovis créé par okpascaline', 'INFO', 0, 'ROLE_RDBAF', NULL, 'damansalia'),
(4341, 'Veuillez valider le dossier de SANDWIDI Korotouma créé par okpascaline', 'INFO', 0, 'ROLE_RDBAF', NULL, 'guirosouleymane'),
(4342, 'Veuillez valider le dossier de BAKO B. IdoApolinaire créé par sylvie', 'INFO', 0, 'ROLE_RDBAF', NULL, 'daoudouedraogo'),
(4343, 'Veuillez valider le dossier de PACERE Martine créé par aouangraoua', 'INFO', 0, 'ROLE_RDBAF', NULL, 'damansalia'),
(4344, 'Veuillez valider le dossier de DABIRE N. Flore créé par sylvie', 'INFO', 0, 'ROLE_RDBAF', NULL, 'daoudouedraogo'),
(4345, 'Veuillez valider le dossier de SANA Hassan à supprimer créé par flora', 'INFO', 0, 'ROLE_RDBAF', NULL, 'admin'),
(4346, 'Veuillez valider le dossier de BAKO B. Ido Apollinaire créé par flora', 'INFO', 0, 'ROLE_RDBAF', NULL, 'admin'),
(4347, 'Veuillez valider le dossier de CISSE Abdoul-Kader créé par flora', 'INFO', 0, 'ROLE_RDBAF', NULL, 'patoguirma1979'),
(4348, 'Veuillez valider le dossier de BANCE Serge Théophile créé par flora', 'INFO', 0, 'ROLE_RDBAF', NULL, 'mahamoudou64'),
(4349, 'Veuillez valider le dossier de DIALLO Noelle Bienvenue Tik-wendé créé par flora', 'INFO', 0, 'ROLE_RDBAF', NULL, 'mahamoudou64'),
(4350, 'Veuillez valider le dossier de OUEDRAOGO Daouda créé par flora', 'INFO', 0, 'ROLE_RDBAF', NULL, 'mahamoudou64'),
(4351, 'Le boursier CISSE Abdoul-Kader N° 00D3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_RRAB', NULL, 'filbert'),
(4352, 'Le boursier CISSE Abdoul-Kader N° 00D3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_ARAV', NULL, 'filbert'),
(4353, 'Le boursier CISSE Abdoul-Kader N° 00D3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_RRAB', NULL, 'filbert'),
(4354, 'Le boursier CISSE Abdoul-Kader N° 00D3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_ARAV', NULL, 'filbert'),
(4355, 'Le boursier CISSE Abdoul-Kader N° 00D3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_RRAB', NULL, 'filbert'),
(4356, 'Le boursier CISSE Abdoul-Kader N° 00D3 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_ARAV', NULL, 'filbert'),
(4357, 'Le boursier BANCE Serge Théophile N° 00J1 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_RRAB', NULL, 'filbert'),
(4358, 'Le boursier BANCE Serge Théophile N° 00J1 ne possède pas de numéro de compte', 'ERROR', 0, 'ROLE_ARAV', NULL, 'filbert');

-- --------------------------------------------------------

--
-- Structure de la table `annee_academique`
--

CREATE TABLE `annee_academique` (
  `id` bigint(20) NOT NULL,
  `debut_annee` timestamp NULL DEFAULT NULL,
  `fin_annee` timestamp NULL DEFAULT NULL,
  `statut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `annee_academique`
--

INSERT INTO `annee_academique` (`id`, `debut_annee`, `fin_annee`, `statut`) VALUES
(3, '2016-12-02 14:06:35', '2017-12-02 14:06:35', 0),
(4, '2017-12-02 14:06:41', '2018-12-02 14:06:41', 0),
(5, '2018-09-01 00:00:00', '2019-07-30 00:00:00', 1),
(6, '2019-02-05 22:31:04', '2020-01-04 22:31:04', NULL),
(7, '2020-11-03 16:23:35', '2021-02-04 16:23:35', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `attestation`
--

CREATE TABLE `attestation` (
  `id` bigint(20) NOT NULL,
  `date_debut` timestamp NULL DEFAULT NULL,
  `date_fin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `attribution`
--

CREATE TABLE `attribution` (
  `id` bigint(20) NOT NULL,
  `numero_attestation` varchar(255) DEFAULT NULL,
  `boursier_id` bigint(20) NOT NULL,
  `bourse_id` bigint(20) DEFAULT NULL,
  `annee_academique_id` bigint(20) DEFAULT NULL,
  `candidat_id` bigint(20) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `statut` bit(1) DEFAULT NULL,
  `observation` varchar(255) DEFAULT NULL,
  `type_attribution_id` bigint(20) DEFAULT NULL,
  `nature_bourse_id` bigint(20) DEFAULT NULL,
  `decision` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `attribution`
--

INSERT INTO `attribution` (`id`, `numero_attestation`, `boursier_id`, `bourse_id`, `annee_academique_id`, `candidat_id`, `modified_by`, `created_by`, `modified_date`, `created_date`, `statut`, `observation`, `type_attribution_id`, `nature_bourse_id`, `decision`) VALUES
(1, 'ersdddgf', 7, NULL, 3, 3174, NULL, NULL, NULL, NULL, NULL, 'observation', 1, 1, NULL),
(2, 'fftfsqttq', 8, NULL, NULL, 3175, NULL, NULL, NULL, NULL, NULL, 'Bourse excellence', 1, 1, NULL),
(3, 'aefff', 9, 1, 5, 3174, NULL, NULL, NULL, NULL, NULL, 'observation', 1, NULL, NULL),
(4, 'aeee', 10, NULL, NULL, 3176, NULL, NULL, NULL, NULL, NULL, 'attribution', 1, NULL, NULL),
(5, 'abcfed', 11, NULL, NULL, 3177, NULL, NULL, NULL, NULL, NULL, 'observation', 1, NULL, NULL),
(6, 'aefff', 12, 1, 5, 3177, NULL, NULL, NULL, NULL, NULL, 'observation', 2, NULL, NULL),
(7, 'b761012', 13, NULL, NULL, 3178, NULL, NULL, NULL, NULL, NULL, 'obss', 1, NULL, NULL),
(8, 'aefaaa', 14, 1, 4, 3178, NULL, NULL, NULL, NULL, NULL, 'observation', 2, NULL, NULL),
(10, '0000B', 16, NULL, 5, 3179, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(11, NULL, 16, 1, 6, 3179, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(12, NULL, 16, 1, 7, 3179, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(14, 'D0005', 24, NULL, NULL, 3182, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(15, NULL, 24, 1, 7, 3182, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL),
(16, '00266', 1, NULL, 4, 3183, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `banque`
--

CREATE TABLE `banque` (
  `id` bigint(20) NOT NULL,
  `code_banque` varchar(255) DEFAULT NULL,
  `libelle_banque` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `banque`
--

INSERT INTO `banque` (`id`, `code_banque`, `libelle_banque`) VALUES
(1, 'UBA', 'UNITED BANK OF AFRICA'),
(2, 'ECO', 'ECOBANK-Burkina');

-- --------------------------------------------------------

--
-- Structure de la table `bordereau`
--

CREATE TABLE `bordereau` (
  `id` bigint(20) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `debut_periode` int(11) DEFAULT NULL,
  `fin_periode` int(11) DEFAULT NULL,
  `banque_id` bigint(20) DEFAULT NULL,
  `mode_paiement_id` bigint(20) DEFAULT NULL,
  `reference` int(11) NOT NULL,
  `nombre` int(11) DEFAULT NULL,
  `annee_academique_id` bigint(20) DEFAULT NULL,
  `pays_id` bigint(20) DEFAULT NULL,
  `bourse_id` bigint(20) DEFAULT NULL,
  `statut` bit(1) DEFAULT NULL,
  `reference_long` varchar(255) DEFAULT NULL,
  `etat` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bourse`
--

CREATE TABLE `bourse` (
  `id` bigint(20) NOT NULL,
  `libelle_bourse` varchar(255) DEFAULT NULL,
  `type_bourse_id` bigint(20) DEFAULT NULL,
  `cycle_id` bigint(20) DEFAULT NULL,
  `zone_id` bigint(20) DEFAULT NULL,
  `nature_bourse_id` bigint(20) DEFAULT NULL,
  `pays_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bourse`
--

INSERT INTO `bourse` (`id`, `libelle_bourse`, `type_bourse_id`, `cycle_id`, `zone_id`, `nature_bourse_id`, `pays_id`) VALUES
(1, 'Bourse nationale cycle Licence', 10, 1, 4, NULL, 1),
(2, 'Bourse CUBA', 10, 1, 3, NULL, 2),
(3, 'Bourse nationale 1e Cycle Côte d\'Ivoire', 10, 1, 1, 1, 9),
(4, 'Bourse nationale 1e Cycle canada', 10, 1, 3, NULL, 8),
(6, 'Bourse nationale cycle Master', 10, 2, 4, NULL, 1),
(9, 'Bourse nationale cycle doctorat', 10, 3, 4, NULL, 1),
(10, 'Kit de bourse Indien', 1, 1, 5, 2, 20);

-- --------------------------------------------------------

--
-- Structure de la table `boursier`
--

CREATE TABLE `boursier` (
  `id` bigint(20) NOT NULL,
  `mode_paiement` varchar(255) DEFAULT NULL,
  `bourse_id` bigint(20) DEFAULT NULL,
  `numero_attestation` int(11) DEFAULT NULL,
  `cle` varchar(10) DEFAULT NULL,
  `etat` varchar(250) DEFAULT NULL,
  `debut_etude` int(11) NOT NULL,
  `fin_etude` int(11) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `numero_attestation_complet` varchar(255) DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `date_effet` timestamp NULL DEFAULT NULL,
  `photo` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `boursier`
--

INSERT INTO `boursier` (`id`, `mode_paiement`, `bourse_id`, `numero_attestation`, `cle`, `etat`, `debut_etude`, `fin_etude`, `modified_by`, `created_by`, `numero_attestation_complet`, `modified_date`, `created_date`, `date_effet`, `photo`) VALUES
(7, '1', NULL, NULL, 'clé', 'état', 5, 3, NULL, NULL, NULL, NULL, NULL, '2021-02-02 00:00:00', 0x446f7373696572732f43616e64696461745f333137342f50686f746f5f313631323838303833342e504e47),
(8, '1', NULL, NULL, 'cccc', 'etat', 5, 3, NULL, NULL, NULL, NULL, NULL, '2021-02-24 00:00:00', 0x446f7373696572732f43616e64696461745f333137352f50686f746f5f313631323838343638392e504e47),
(9, NULL, 1, NULL, NULL, 'etat', 3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, 'etat', 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, 'etat', 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 1, NULL, NULL, 'etat', 5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, 'etat', 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, 1, NULL, NULL, 'etat', 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, 2019, 2024, NULL, NULL, '0000B', NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, NULL, 2019, 2024, NULL, NULL, '00086', NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, 2019, 2024, NULL, NULL, '00086', NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, 2019, 2024, NULL, NULL, '00086', NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, 2019, 2024, NULL, NULL, '00086', NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, 2017, 2022, NULL, NULL, 'D0005', NULL, NULL, NULL, NULL),
(25, NULL, 1, NULL, NULL, NULL, 2017, 2022, NULL, NULL, '00266', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

CREATE TABLE `candidat` (
  `id` bigint(20) NOT NULL,
  `nom_etudiant` varchar(255) NOT NULL,
  `prenom_etudiant` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `date_naiss_etudiant` timestamp NULL DEFAULT NULL,
  `nom_pere` varchar(255) DEFAULT NULL,
  `nom_mere` varchar(255) DEFAULT NULL,
  `profession_pere` varchar(255) DEFAULT NULL,
  `profession_mere` varchar(255) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `devient_id` bigint(20) DEFAULT NULL,
  `num_piece_identite` varchar(255) NOT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `candidat`
--

INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(22, 'ILBOUDO', 'W. Arnaud Jonas à supprimer', 'MASCULIN', '1997-08-12 00:00:00', NULL, NULL, NULL, NULL, '71 37 12 26', NULL, 'inconnu', 'flora', 'flora', '2018-08-23 09:48:57', '2018-08-23 09:48:57'),
(23, 'ILBOUDO', 'Wendkouni Arnaud Jonas', 'MASCULIN', '1997-08-12 02:00:00', NULL, NULL, NULL, NULL, '71 37 12 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-23 10:39:23', '2018-08-23 10:39:23'),
(24, 'KABRE', 'Kiswendsida Wanou Sosthen Gildas', 'MASCULIN', '1998-11-12 02:00:00', NULL, NULL, NULL, NULL, '70 16 96 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-23 10:48:40', '2018-08-23 10:48:40'),
(25, 'SOALLA', 'Alexis', 'MASCULIN', '1998-02-27 02:00:00', NULL, NULL, NULL, NULL, '72 61 46 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-23 12:16:23', '2018-08-23 12:16:23'),
(26, 'ILBOUDO', 'Alimata', 'FEMININ', '1998-01-13 02:00:00', NULL, NULL, NULL, NULL, '78 01 75 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-23 12:27:05', '2018-08-23 12:27:05'),
(27, 'BALEMA', 'Guètbame Nadège', 'FEMININ', '1997-08-14 02:00:00', NULL, NULL, NULL, NULL, '74 16 72 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-23 15:59:55', '2018-08-23 15:59:55'),
(28, 'LAMIEN', 'N\'Tienwan Augustine Stéphanie', 'FEMININ', '2000-05-14 02:00:00', NULL, NULL, NULL, NULL, '60 62 97 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-23 16:23:24', '2018-08-23 16:23:24'),
(29, 'KABRE', 'Pengdwendé Ina Benjamine', 'FEMININ', '1999-10-03 02:00:00', NULL, NULL, NULL, NULL, '63 86 20 70', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-23 16:34:18', '2018-08-23 16:34:18'),
(30, 'TONDE', 'Habibou Samyratou', 'FEMININ', '2000-09-03 02:00:00', NULL, NULL, NULL, NULL, '61 13 62 13', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-23 16:39:45', '2018-08-23 16:39:45'),
(31, 'KOUDOUGOU', 'Toukoumnogo', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '63 92 90 40', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-23 16:46:09', '2018-08-23 16:46:09'),
(32, 'OUEDRAOGO', 'Datamanégré Antoine', 'MASCULIN', '1998-07-08 02:00:00', NULL, NULL, NULL, NULL, '77 37 68 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-23 16:53:51', '2018-08-23 16:53:51'),
(33, 'CONGO', 'Abdallah', 'MASCULIN', '2000-01-05 02:00:00', NULL, NULL, NULL, NULL, '61 01 54 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 09:09:45', '2018-08-24 09:09:45'),
(34, 'ZOUGOURI', 'Cheick Aboubacar', 'MASCULIN', '1998-06-01 02:00:00', NULL, NULL, NULL, NULL, '63 23 60 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 09:28:48', '2018-08-24 09:28:48'),
(35, 'MALGOUBRI', 'Saydou', 'MASCULIN', '1999-12-11 02:00:00', NULL, NULL, NULL, NULL, '61 34 75 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 09:50:33', '2018-08-24 09:50:33'),
(36, 'KABORE', 'Fabrice Wend-Waogo', 'MASCULIN', '1999-08-22 02:00:00', NULL, NULL, NULL, NULL, '70 70 72 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 10:09:30', '2018-08-24 10:09:30'),
(37, 'KABRE', 'Tégawendé Jules', 'MASCULIN', '1997-08-02 02:00:00', NULL, NULL, NULL, NULL, '75 66 44 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 10:16:13', '2018-08-24 10:16:13'),
(38, 'BADJO', 'Sié Axell', 'MASCULIN', '2000-03-25 02:00:00', NULL, NULL, NULL, NULL, '74 25 25 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 11:50:14', '2018-08-24 11:50:14'),
(39, 'KIEMTORE', 'Wilfried Pascal Kiswendsida', 'MASCULIN', '1999-12-11 02:00:00', NULL, NULL, NULL, NULL, '70 82 26 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 12:05:45', '2018-08-24 12:05:45'),
(40, 'BORO', 'Seyé Bernard', 'MASCULIN', '1996-10-09 02:00:00', NULL, NULL, NULL, NULL, '61 47 42 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 12:14:55', '2018-08-24 12:14:55'),
(41, 'ILBOUDO', 'Mahamadi', 'MASCULIN', '1998-08-27 02:00:00', NULL, NULL, NULL, NULL, '73 50 93 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 12:23:03', '2018-08-24 12:23:03'),
(42, 'DELMA', 'JudicaËl Clément', 'MASCULIN', '2000-03-21 02:00:00', NULL, NULL, NULL, NULL, '73 28 45 30', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 13:01:25', '2018-08-24 13:01:25'),
(43, 'HIEN', 'Sié Remy', 'MASCULIN', '1997-01-14 02:00:00', NULL, NULL, NULL, NULL, '51 19 57 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 13:07:10', '2018-08-24 13:07:10'),
(44, 'ILBOUDO', 'Alan Maxime', 'MASCULIN', '2000-04-14 02:00:00', NULL, NULL, NULL, NULL, '70 69 57 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 13:10:33', '2018-08-24 13:10:33'),
(45, 'KABORE', 'Aboubacar Sidiki', 'MASCULIN', '2000-12-14 02:00:00', NULL, NULL, NULL, NULL, '70 02 62 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 13:18:15', '2018-08-24 13:18:15'),
(46, 'KONATE', 'Cheick Kévir Aloys', 'MASCULIN', '2000-10-23 02:00:00', NULL, NULL, NULL, NULL, '62 00 71 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 13:25:37', '2018-08-24 13:25:37'),
(47, 'KABORE', 'Yassibou Aissou', 'MASCULIN', '1999-12-03 02:00:00', NULL, NULL, NULL, NULL, '76 41 65 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 14:22:43', '2018-08-24 14:22:43'),
(48, 'MALO', 'Dèriahonnia Benjamine Flore', 'FEMININ', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '57 65 21 69', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 14:48:50', '2018-08-24 14:48:50'),
(49, 'KONATE', 'Mariam', 'FEMININ', '1998-08-03 02:00:00', NULL, NULL, NULL, NULL, '61 51 36 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-24 16:46:21', '2018-08-24 16:46:21'),
(50, 'KOURAOGO', 'NeÏmatou', 'FEMININ', '2000-03-05 02:00:00', NULL, NULL, NULL, NULL, '68 76 30 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-27 12:13:14', '2018-08-27 12:13:14'),
(51, 'ILBOUDO', 'Mohamed', 'MASCULIN', '2000-12-11 02:00:00', NULL, NULL, NULL, NULL, '72 93 03 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-27 12:15:53', '2018-08-27 12:15:53'),
(52, 'SAGNON', 'Begnon Aboubakar Sidiki', 'MASCULIN', '1998-09-27 02:00:00', NULL, NULL, NULL, NULL, '70 25 59 69', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-27 12:22:09', '2018-08-27 12:22:09'),
(53, 'OUATTARA', 'Sébé Allahé Drissa', 'MASCULIN', '2000-11-03 02:00:00', NULL, NULL, NULL, NULL, '54 81 59 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-27 12:57:13', '2018-08-27 12:57:13'),
(54, 'OUEDRAOGO', 'Christiane Myriam Rachel', 'FEMININ', '2000-06-24 02:00:00', NULL, NULL, NULL, NULL, '62 78 53 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-27 13:05:13', '2018-08-27 13:05:13'),
(55, 'DABIRE', 'Tierobar Christelle Laeticia', 'FEMININ', '1998-11-22 02:00:00', NULL, NULL, NULL, NULL, '73 02 02 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-27 13:07:43', '2018-08-27 13:07:43'),
(56, 'LANKOANDE', 'Yénoupagli Mahomed', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 09 04 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-27 14:24:37', '2018-08-27 14:24:37'),
(57, 'ILBOUDO', 'Rodrigue', 'MASCULIN', '1999-01-04 02:00:00', NULL, NULL, NULL, NULL, '72 29 17 70', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-27 14:37:58', '2018-08-27 14:37:58'),
(58, 'IBRANGO', 'Fayçal Wilfried', 'MASCULIN', '2000-06-10 02:00:00', NULL, NULL, NULL, NULL, '70 48 77 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-27 14:48:08', '2018-08-27 14:48:08'),
(59, 'LANKOANDE', 'Yiénou-Houaba Abdoul Rasac', 'MASCULIN', '2000-03-13 02:00:00', NULL, NULL, NULL, NULL, '60 01 78 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-27 15:01:31', '2018-08-27 15:01:31'),
(60, 'ILBOUDO', 'Ali Wendyam', 'MASCULIN', '2000-01-23 02:00:00', NULL, NULL, NULL, NULL, '76 75 65 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-28 15:14:15', '2018-08-28 15:14:15'),
(61, 'BAMBARA', 'Tontigna Romain', 'MASCULIN', '1999-03-27 02:00:00', NULL, NULL, NULL, NULL, '51 22 46 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-28 15:21:41', '2018-08-28 15:21:41'),
(62, 'BAZIE', 'David', 'MASCULIN', '1996-01-02 02:00:00', NULL, NULL, NULL, NULL, '73 80 42 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-28 15:31:27', '2018-08-28 15:31:27'),
(63, 'DESTIN', 'Womi Bernadin Baba', 'MASCULIN', '2000-11-20 02:00:00', NULL, NULL, NULL, NULL, '62 69 34 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-28 15:34:29', '2018-08-28 15:34:29'),
(64, 'BAMOGO', 'Ragnagnewendé Alassane', 'MASCULIN', '1998-12-06 02:00:00', NULL, NULL, NULL, NULL, '61 04 63 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-28 15:39:39', '2018-08-28 15:39:39'),
(65, 'DERRA', 'Adama', 'MASCULIN', '1999-10-10 02:00:00', NULL, NULL, NULL, NULL, '73 37 84 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-28 15:44:08', '2018-08-28 15:44:08'),
(66, 'BOENA', 'Wendyam Cheick Abdel Ahmed', 'MASCULIN', '2000-04-04 02:00:00', NULL, NULL, NULL, NULL, '71 92 88 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-28 15:49:28', '2018-08-28 15:49:28'),
(67, 'BONKOUNGOU', 'Clément', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '60 10 50 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-28 15:52:02', '2018-08-28 15:52:02'),
(68, 'COULIBALY', 'Sy-Smine Abdoul Aziz Yacine', 'MASCULIN', '2000-10-22 02:00:00', NULL, NULL, NULL, NULL, '73 61 88 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-28 15:55:40', '2018-08-28 15:55:40'),
(69, 'KOUNOUDJI', 'Gish Léwis', 'MASCULIN', '2001-05-22 02:00:00', NULL, NULL, NULL, NULL, '73 85 11 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-28 15:58:48', '2018-08-28 15:58:48'),
(70, 'NACOULMA', 'Julien', 'MASCULIN', '1998-08-02 02:00:00', NULL, NULL, NULL, NULL, '73 06 81 32', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 09:14:00', '2018-08-29 09:14:00'),
(71, 'OUEDRAOGO', 'Hamza Bêpaguinniwendé', 'MASCULIN', '1999-06-09 02:00:00', NULL, NULL, NULL, NULL, '71 97 75 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 09:22:04', '2018-08-29 09:22:04'),
(72, 'MASSIMBO', 'Diasso Médard', 'MASCULIN', '1999-06-08 02:00:00', NULL, NULL, NULL, NULL, '62 78 92 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 09:37:53', '2018-08-29 09:37:53'),
(73, 'TOUGMA', 'Victorine', 'FEMININ', '1998-10-18 02:00:00', NULL, NULL, NULL, NULL, '78 38 20 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 09:44:28', '2018-08-29 09:44:28'),
(74, 'SOGLI', 'Houmpani', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 19 30 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 09:49:05', '2018-08-29 09:49:05'),
(75, 'NIKIEMA', 'Rakiswendé Chris Amoris Donald', 'MASCULIN', '2000-07-15 02:00:00', NULL, NULL, NULL, NULL, '62 95 50 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 09:54:47', '2018-08-29 09:54:47'),
(76, 'OUEDRAOGO', 'Farid Cedric Barkwendé', 'MASCULIN', '2000-10-23 02:00:00', NULL, NULL, NULL, NULL, '70 86 76 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 09:58:59', '2018-08-29 09:58:59'),
(77, 'NASSA', 'Yves-Roland', 'MASCULIN', '1998-05-13 02:00:00', NULL, NULL, NULL, NULL, '72 34 76 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 10:02:38', '2018-08-29 10:02:38'),
(78, 'SANDWIDI', 'Mohamed Tidiane', 'MASCULIN', '1999-06-28 02:00:00', NULL, NULL, NULL, NULL, '72 29 12 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 10:07:22', '2018-08-29 10:07:22'),
(79, 'OUOBA', 'Wahiribé Pierre Aimé', 'MASCULIN', '1999-11-09 02:00:00', NULL, NULL, NULL, NULL, '70 09 42 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 10:11:19', '2018-08-29 10:11:19'),
(80, 'OUEDRAOGO', 'Rîmwaogdo Melisa Michelle', 'FEMININ', '2000-08-27 02:00:00', NULL, NULL, NULL, NULL, '70 13 17 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 10:38:02', '2018-08-29 10:38:02'),
(81, 'FARTA', 'Mohamed Rufay', 'MASCULIN', '2000-08-28 02:00:00', NULL, NULL, NULL, NULL, '60 76 25 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 10:41:12', '2018-08-29 10:41:12'),
(82, 'NIKIEMA', 'Roblèsse Cheickna Wendlasida', 'MASCULIN', '1997-05-23 02:00:00', NULL, NULL, NULL, NULL, '79 91 90 83', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 10:46:24', '2018-08-29 10:46:24'),
(83, 'OUEDRAOGO', 'Ismaël Tounwendyam', 'MASCULIN', '1999-10-03 02:00:00', NULL, NULL, NULL, NULL, '61 31 05 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 10:51:15', '2018-08-29 10:51:15'),
(84, 'NABOLLE', 'Patrice', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 58 37 93', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 10:53:21', '2018-08-29 10:53:21'),
(85, 'DIALLO', 'Assané', 'MASCULIN', '1999-02-13 02:00:00', NULL, NULL, NULL, NULL, '51 48 87 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 11:11:08', '2018-08-29 11:11:08'),
(86, 'COULIBALY', 'Ghislain 1er Jumeau', 'MASCULIN', '2000-08-26 02:00:00', NULL, NULL, NULL, NULL, '73 41 01 25', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 11:17:05', '2018-08-29 11:17:05'),
(87, 'BIRBA', 'Rakis Wendé Richard', 'MASCULIN', '1998-04-03 02:00:00', NULL, NULL, NULL, NULL, '77 83 37 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 11:28:09', '2018-08-29 11:28:09'),
(88, 'BASSOLE', 'Marius', 'MASCULIN', '1996-09-20 02:00:00', NULL, NULL, NULL, NULL, '62 16 63 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 12:25:37', '2018-08-29 12:25:37'),
(89, 'BONKOUNGOU', 'Pawend-Taoré Evence', 'MASCULIN', '2000-07-27 02:00:00', NULL, NULL, NULL, NULL, '72 36 33 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 12:39:34', '2018-08-29 12:39:34'),
(90, 'BELEM', 'Franc Sévérin', 'MASCULIN', '1999-11-16 02:00:00', NULL, NULL, NULL, NULL, '70 38 91 66', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 12:48:08', '2018-08-29 12:48:08'),
(91, 'CABORE', 'Wend-La-Sida Sylvestre', 'MASCULIN', '1998-11-18 02:00:00', NULL, NULL, NULL, NULL, '62 88 95 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 12:52:00', '2018-08-29 12:52:00'),
(92, 'BAMOGO', 'Olivier', 'MASCULIN', '1999-07-12 02:00:00', NULL, NULL, NULL, NULL, '64 34 24 69', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 12:58:12', '2018-08-29 12:58:12'),
(93, 'DOUGOUGRI', 'Abdoul Diélilou', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 54 21 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 13:01:44', '2018-08-29 13:01:44'),
(94, 'COULIDIATY', 'Boama Stéphane Junior Camillo', 'MASCULIN', '1999-09-16 02:00:00', NULL, NULL, NULL, NULL, '70 14 00 83', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 13:11:33', '2018-08-29 13:11:33'),
(95, 'BAMOGO', 'Idrissa', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 45 25 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 13:15:25', '2018-08-29 13:15:25'),
(96, 'KONDE', 'Arnaud', 'MASCULIN', '1999-01-19 02:00:00', NULL, NULL, NULL, NULL, '72 28 24 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 13:19:17', '2018-08-29 13:19:17'),
(97, 'SAWADOGO', 'Viviane', 'FEMININ', '1999-12-30 02:00:00', NULL, NULL, NULL, NULL, '62 66 82 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 13:28:26', '2018-08-29 13:28:26'),
(98, 'SEREME', 'Fanta Soraya Alima Wend-Waoga Urielle', 'FEMININ', '2001-09-10 02:00:00', NULL, NULL, NULL, NULL, '70 23 55 71', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 13:32:30', '2018-08-29 13:32:30'),
(99, 'BAZONGO', 'Grace Yidia Jessica', 'FEMININ', '2001-06-28 02:00:00', NULL, NULL, NULL, NULL, '70 24 50 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 13:41:24', '2018-08-29 13:41:24'),
(100, 'SODORE', 'Batoul Hanifath', 'FEMININ', '2000-08-17 02:00:00', NULL, NULL, NULL, NULL, '70 15 06 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 14:11:49', '2018-08-29 14:11:49'),
(101, 'OUEDRAOGO', 'Soutongo-Nooma Sémia Yasmine', 'FEMININ', '1999-09-15 02:00:00', NULL, NULL, NULL, NULL, '60 08 78 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 14:30:40', '2018-08-29 14:30:40'),
(102, 'BALIMA', 'Zénabou', 'FEMININ', '2000-01-05 02:00:00', NULL, NULL, NULL, NULL, '62 37 09 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 15:20:40', '2018-08-29 15:20:40'),
(103, 'BANHORO', 'Bieni Anita Doriane', 'FEMININ', '2000-02-19 02:00:00', NULL, NULL, NULL, NULL, '62 60 68 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 15:41:02', '2018-08-29 15:41:02'),
(104, 'CHEDESSI', 'Murielle Youna Kiswendsida', 'FEMININ', '2000-04-30 02:00:00', NULL, NULL, NULL, NULL, '73 73 33 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 15:45:02', '2018-08-29 15:45:02'),
(105, 'YOUGOUMA', 'Djémila Yasmine', 'FEMININ', '1999-10-27 02:00:00', NULL, NULL, NULL, NULL, '55 52 70 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 15:47:55', '2018-08-29 15:47:55'),
(106, 'SAWADOGO', 'Awa', 'FEMININ', '1998-09-13 02:00:00', NULL, NULL, NULL, NULL, '70 88 34 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 15:52:44', '2018-08-29 15:52:44'),
(107, 'KOUTOU', 'Wendso Orokya Micheline', 'FEMININ', '2000-02-13 02:00:00', NULL, NULL, NULL, NULL, '70 98 70 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 15:56:26', '2018-08-29 15:56:26'),
(108, 'MALO', 'Bikolé Zita', 'FEMININ', '1998-04-27 02:00:00', NULL, NULL, NULL, NULL, '64 38 63 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 15:59:34', '2018-08-29 15:59:34'),
(109, 'MALO', 'Bigniavè Orlov Sosthène Blanchard', 'MASCULIN', '1999-09-03 02:00:00', NULL, NULL, NULL, NULL, '60 75 94 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 16:02:36', '2018-08-29 16:02:36'),
(110, 'MAIGA', 'Mounirou', 'MASCULIN', '1998-02-28 02:00:00', NULL, NULL, NULL, NULL, '65 52 88 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 16:05:47', '2018-08-29 16:05:47'),
(111, 'GUELBEOGO', 'Raphaël Jean Phonstin', 'MASCULIN', '1999-09-29 02:00:00', NULL, NULL, NULL, NULL, '60 54 83 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 17:34:28', '2018-08-29 16:08:43'),
(112, 'YAMEOGO', 'Steve Kevin Junior', 'MASCULIN', '2000-07-22 02:00:00', NULL, NULL, NULL, NULL, '63 03 27 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 16:13:04', '2018-08-29 16:13:04'),
(113, 'KIEMTORE', 'Dongo Ben Ali', 'MASCULIN', '2001-12-31 02:00:00', NULL, NULL, NULL, NULL, '78 69 71 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 16:18:07', '2018-08-29 16:18:07'),
(114, 'COMPAORE', 'Daouda', 'MASCULIN', '1999-11-24 02:00:00', NULL, NULL, NULL, NULL, '70 69 64 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 16:21:07', '2018-08-29 16:21:07'),
(115, 'KABORE', 'Roger', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '66 98 42 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 16:23:56', '2018-08-29 16:23:56'),
(116, 'DEMBELE', 'Fansé Amed', 'MASCULIN', '1998-07-15 02:00:00', NULL, NULL, NULL, NULL, '72 64 60 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-29 16:26:02', '2018-08-29 16:26:02'),
(117, 'BARRO', 'Mahamadou', 'MASCULIN', '2000-07-23 02:00:00', NULL, NULL, NULL, NULL, '64 18 43 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 09:09:34', '2018-08-30 09:09:34'),
(118, 'KOUYATE', 'Affo Mohamed Cédric', 'MASCULIN', '2000-08-10 02:00:00', NULL, NULL, NULL, NULL, '70 24 10 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 09:17:53', '2018-08-30 09:17:53'),
(119, 'OUEDRAOGO', 'Abdoukarim', 'MASCULIN', '1999-12-15 02:00:00', NULL, NULL, NULL, NULL, '70 22 51 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 09:27:27', '2018-08-30 09:27:27'),
(120, 'LENGANI', 'Tobinka Jalil', 'MASCULIN', '2000-01-07 02:00:00', NULL, NULL, NULL, NULL, '60 35 93 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 09:41:06', '2018-08-30 09:41:06'),
(121, 'HABOU', 'Zonmisin Léonce Kévin', 'MASCULIN', '2000-06-29 02:00:00', NULL, NULL, NULL, NULL, '61 02 82 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 09:47:04', '2018-08-30 09:47:04'),
(122, 'KONKOBO', 'Fabrice', 'MASCULIN', '1996-10-01 02:00:00', NULL, NULL, NULL, NULL, '71 94 61 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 09:53:51', '2018-08-30 09:53:51'),
(123, 'KABRE', 'Ismaïla', 'MASCULIN', '1996-02-14 02:00:00', NULL, NULL, NULL, NULL, '70 54 33 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 09:57:30', '2018-08-30 09:57:30'),
(124, 'OUEDRAOGO', 'Wendkouni Ani Jediaël', 'MASCULIN', '1999-05-14 02:00:00', NULL, NULL, NULL, NULL, '51 20 81 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 10:18:04', '2018-08-30 10:18:04'),
(125, 'KABORE', 'Delwendé Saturnin Ezékiel', 'MASCULIN', '1999-11-26 02:00:00', NULL, NULL, NULL, NULL, '51 53 91 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 10:44:46', '2018-08-30 10:44:46'),
(126, 'KIEMTORE', 'Béninwendé Kévin', 'MASCULIN', '1999-12-05 02:00:00', NULL, NULL, NULL, NULL, '72 98 31 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 11:24:51', '2018-08-30 11:24:51'),
(127, 'KOLENE', 'Ousmane', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 87 07 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 11:31:11', '2018-08-30 11:31:11'),
(128, 'ILBOUDO', 'Abdoul Rachid', 'MASCULIN', '2000-04-05 02:00:00', NULL, NULL, NULL, NULL, '65 68 59 71', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 11:33:43', '2018-08-30 11:33:43'),
(129, 'OUEDRAOGO', 'Boblawendé Irène', 'FEMININ', '2000-06-11 02:00:00', NULL, NULL, NULL, NULL, '60 52 13 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 11:37:56', '2018-08-30 11:37:56'),
(130, 'KABORE', 'Noaga-Nouria', 'FEMININ', '2000-04-04 02:00:00', NULL, NULL, NULL, NULL, '76 50 27 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 11:40:54', '2018-08-30 11:40:54'),
(131, 'TRAORE', 'Aminata', 'FEMININ', '1998-05-12 02:00:00', NULL, NULL, NULL, NULL, '55 14 82 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 11:43:31', '2018-08-30 11:43:31'),
(132, 'DONDASSE', 'Pêgdwendé Isaac', 'MASCULIN', '1998-12-17 02:00:00', NULL, NULL, NULL, NULL, '70 12 11 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 11:46:27', '2018-08-30 11:46:27'),
(133, 'KAFANDO', 'Amssa', 'MASCULIN', '2000-01-02 02:00:00', NULL, NULL, NULL, NULL, '61 56 45 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 11:48:29', '2018-08-30 11:48:29'),
(134, 'BELEM', 'Marcel', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 81 19 24', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 12:12:50', '2018-08-30 12:12:50'),
(135, 'BADO', 'Armand Baudouin', 'MASCULIN', '1998-11-14 02:00:00', NULL, NULL, NULL, NULL, '73 95 02 70', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 12:23:18', '2018-08-30 12:23:18'),
(136, 'KAMBOU', 'Sié Gate Emmanuel', 'MASCULIN', '2000-10-01 02:00:00', NULL, NULL, NULL, NULL, '73 66 70 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 12:29:36', '2018-08-30 12:29:36'),
(137, 'ILBOUDO', 'Edmond', 'MASCULIN', '1998-10-16 02:00:00', NULL, NULL, NULL, NULL, '52 19 86 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 12:36:06', '2018-08-30 12:36:06'),
(138, 'KOLA', 'Tégawendé Marius', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '68 63 95 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 12:44:18', '2018-08-30 12:44:18'),
(139, 'DAH', 'Batié', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '51 20 19 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 12:53:25', '2018-08-30 12:53:25'),
(140, 'BATIAGABOU', 'Assè Pari Vivian', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 68 04 91', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 12:57:06', '2018-08-30 12:57:06'),
(141, 'BIKIENGA', 'Moumouni', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 19 72 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 13:16:22', '2018-08-30 13:16:22'),
(142, 'DAH', 'Sié Faso Olivier', 'MASCULIN', '1997-06-14 02:00:00', NULL, NULL, NULL, NULL, '73 16 02 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 13:31:58', '2018-08-30 13:31:58'),
(143, 'COMPAORE', 'Wendyam Eric', 'MASCULIN', '2000-06-16 02:00:00', NULL, NULL, NULL, NULL, '60 32 77 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 13:34:20', '2018-08-30 13:34:20'),
(144, 'DAH', 'Koko Toussain', 'MASCULIN', '1990-11-01 02:00:00', NULL, NULL, NULL, NULL, '71 58 55 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 13:41:25', '2018-08-30 13:41:25'),
(145, 'COMPAORE', 'Pascal', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '68 02 72 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 13:48:04', '2018-08-30 13:48:04'),
(146, 'DICKO', 'Hamadou', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 36 07 31', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:04:11', '2018-08-30 14:04:11'),
(147, 'BONKOUNGOU', 'Guillaume', 'MASCULIN', '1998-08-26 02:00:00', NULL, NULL, NULL, NULL, '57 84 89 02', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:07:02', '2018-08-30 14:07:02'),
(148, 'DABILGOU', 'Esaïe', 'MASCULIN', '1998-07-06 02:00:00', NULL, NULL, NULL, NULL, '61 70 51 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:09:42', '2018-08-30 14:09:42'),
(149, 'KAFANDO', 'Wendkouni Olive', 'MASCULIN', '1999-07-29 02:00:00', NULL, NULL, NULL, NULL, '63 96 63 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:11:59', '2018-08-30 14:11:59'),
(150, 'FOFANA', 'Cheick Oumar', 'MASCULIN', '1999-10-15 02:00:00', NULL, NULL, NULL, NULL, '77 89 80 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:14:56', '2018-08-30 14:14:56'),
(151, 'OUEDRAOGO', 'Salamata Ephrasie', 'FEMININ', '1998-05-18 02:00:00', NULL, NULL, NULL, NULL, '51 75 90 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:21:08', '2018-08-30 14:21:08'),
(152, 'GANAME', 'Domné Dine Bertille', 'FEMININ', '2000-11-09 02:00:00', NULL, NULL, NULL, NULL, '60 01 52 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:24:47', '2018-08-30 14:24:47'),
(153, 'KONGO', 'Wendpouiré Jimna 1ère Jumelle', 'FEMININ', '1999-05-10 02:00:00', NULL, NULL, NULL, NULL, '71 85 88 62', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:30:59', '2018-08-30 14:30:59'),
(154, 'KY', 'Nouzatou', 'FEMININ', '1998-10-20 02:00:00', NULL, NULL, NULL, NULL, '65 56 86 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:35:40', '2018-08-30 14:35:40'),
(155, 'AJAVON', 'Corine Akoko 2ème Jumelle', 'FEMININ', '1999-11-07 02:00:00', NULL, NULL, NULL, NULL, '61 79 55 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:48:51', '2018-08-30 14:48:51'),
(156, 'YILLI', 'Elcine Horore Alexandre', 'FEMININ', '2000-03-22 02:00:00', NULL, NULL, NULL, NULL, '70 43 41 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:54:36', '2018-08-30 14:54:36'),
(157, 'ZOUBERE', 'Bertille', 'FEMININ', '1998-04-15 02:00:00', NULL, NULL, NULL, NULL, '76 49 27 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 14:59:44', '2018-08-30 14:59:44'),
(158, 'KANAZOE', 'Mohamadi', 'MASCULIN', '1997-10-13 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 15:06:03', '2018-08-30 15:06:03'),
(159, 'OUEDRAOGO', 'Christian', 'MASCULIN', '1997-07-24 02:00:00', NULL, NULL, NULL, NULL, '72 19 82 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 15:10:53', '2018-08-30 15:10:53'),
(160, 'KABORE', 'Etienne', 'MASCULIN', '1998-12-26 02:00:00', NULL, NULL, NULL, NULL, '61 03 18 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 15:14:12', '2018-08-30 15:14:12'),
(161, 'OUEDRAOGO', 'Rawelguia Fatimata', 'FEMININ', '2000-04-09 02:00:00', NULL, NULL, NULL, NULL, '73 10 06 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 15:19:13', '2018-08-30 15:19:13'),
(162, 'SOME', 'Nirbetersob Dimitri', 'MASCULIN', '2000-10-16 02:00:00', NULL, NULL, NULL, NULL, '70 84 27 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 15:25:20', '2018-08-30 15:25:20'),
(163, 'NOMBRE', 'Dadabou Epiphanie Nadège', 'FEMININ', '2000-01-02 02:00:00', NULL, NULL, NULL, NULL, '64 07 77 02', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 15:30:01', '2018-08-30 15:30:01'),
(164, 'OUEDRAOGO', 'Mohamed Lamine', 'MASCULIN', '1998-09-15 02:00:00', NULL, NULL, NULL, NULL, '79 17 52 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 15:33:14', '2018-08-30 15:33:14'),
(165, 'TOURE', 'Assana', 'FEMININ', '1998-04-25 02:00:00', NULL, NULL, NULL, NULL, '71 11 19 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 15:36:20', '2018-08-30 15:36:20'),
(166, 'OUEDRAOGO', 'Wend-Bénédo Ruth Noëlla', 'FEMININ', '2000-02-03 02:00:00', NULL, NULL, NULL, NULL, '72 79 55 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 15:38:55', '2018-08-30 15:38:55'),
(167, 'OUATTARA', 'Moussa', 'MASCULIN', '1996-01-15 02:00:00', NULL, NULL, NULL, NULL, '60 03 99 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-30 15:41:48', '2018-08-30 15:41:48'),
(168, 'OUEDRAOGO', 'Sougr-Nooma Ridwan Souleymane Rocksan', 'MASCULIN', '2000-11-27 02:00:00', NULL, NULL, NULL, NULL, '73 66 93 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 08:48:54', '2018-08-31 08:48:54'),
(169, 'OUOBA', 'Boundioa', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 52 85 19', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 09:57:56', '2018-08-31 09:57:56'),
(170, 'OUEDRAOGO', 'Cheick Hamed Tidiane', 'MASCULIN', '2000-05-16 02:00:00', NULL, NULL, NULL, NULL, '60 12 76 01', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 10:09:10', '2018-08-31 10:09:10'),
(171, 'ZOMA', 'Arthur Loïc Bénéwendé', 'MASCULIN', '2000-04-27 02:00:00', NULL, NULL, NULL, NULL, '70 26 64 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 10:17:05', '2018-08-31 10:17:05'),
(172, 'OUEDRAOGO', 'Josias Wendkuni 2è Jumeaau', 'FEMININ', '2000-09-06 02:00:00', NULL, NULL, NULL, NULL, '51 21 46 66', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 10:26:46', '2018-08-31 10:26:46'),
(173, 'NONGUEGNAGHMA', 'Oriane Mireille Wendkuni', 'FEMININ', '1999-10-04 02:00:00', NULL, NULL, NULL, NULL, '63 75 50 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 11:07:07', '2018-08-31 11:07:07'),
(174, 'OUANGRAWA', 'Azaria Wendngoundi', 'MASCULIN', '1997-10-19 02:00:00', NULL, NULL, NULL, NULL, '63 75 15 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 11:13:09', '2018-08-31 11:13:09'),
(175, 'OUEDRAOGO', 'Noufou', 'MASCULIN', '1998-09-25 02:00:00', NULL, NULL, NULL, NULL, '71 56 11 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 11:15:09', '2018-08-31 11:15:09'),
(176, 'NIKIEMA', 'Wend-Yolsde Sara', 'FEMININ', '1998-09-16 02:00:00', NULL, NULL, NULL, NULL, '78 03 89 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 11:17:55', '2018-08-31 11:17:55'),
(177, 'NIKIEMA', 'Saadatou', 'FEMININ', '1999-02-05 02:00:00', NULL, NULL, NULL, NULL, '62 59 15 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 11:20:37', '2018-08-31 11:20:37'),
(178, 'OUEDRAOGO', 'Madinatou', 'FEMININ', '1999-02-02 02:00:00', NULL, NULL, NULL, NULL, '62 63 24 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 11:23:05', '2018-08-31 11:23:05'),
(179, 'OUEDRAOGO', 'Joachin', 'MASCULIN', '1998-10-16 02:00:00', NULL, NULL, NULL, NULL, '63 67 10 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 11:25:19', '2018-08-31 11:25:19'),
(180, 'OUEDRAOGO', 'Wendlassida Aquila', 'FEMININ', '1999-01-16 02:00:00', NULL, NULL, NULL, NULL, '76 55 99 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 11:27:49', '2018-08-31 11:27:49'),
(181, 'OUEDRAOGO', 'Christophe Nobila Wendyam', 'MASCULIN', '2001-04-09 02:00:00', NULL, NULL, NULL, NULL, '60 19 62 39', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 11:30:03', '2018-08-31 11:30:03'),
(182, 'BELLA', 'Madina', 'FEMININ', '1999-12-22 02:00:00', NULL, NULL, NULL, NULL, '72 03  61 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 11:53:07', '2018-08-31 11:53:07'),
(183, 'BELEM', 'David', 'MASCULIN', '1998-08-08 02:00:00', NULL, NULL, NULL, NULL, '79 22 09 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 12:23:17', '2018-08-31 12:23:17'),
(184, 'BADO', 'Nadine Judith Yipénè (2ème Jumelle)', 'FEMININ', '2000-08-09 02:00:00', NULL, NULL, NULL, NULL, '73 13 10 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 12:43:36', '2018-08-31 12:43:36'),
(185, 'OUALI', 'Yempabou', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 71 52 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 13:10:28', '2018-08-31 13:10:28'),
(186, 'COMPAORE', 'Sandrine', 'FEMININ', '2000-02-01 02:00:00', NULL, NULL, NULL, NULL, '60 87 12 27', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 13:25:20', '2018-08-31 13:25:20'),
(187, 'DOUAMBA', 'Fadima Wendimete 1ère Jumelle', 'FEMININ', '2000-01-04 02:00:00', NULL, NULL, NULL, NULL, '71 27 18 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 13:47:11', '2018-08-31 13:47:11'),
(188, 'DIANDA', 'Latifatou', 'FEMININ', '1998-06-03 02:00:00', NULL, NULL, NULL, NULL, '60 76 16 91', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 14:24:10', '2018-08-31 14:24:10'),
(189, 'BOUDA', 'Kiswendsida Asmao', 'FEMININ', '1999-06-23 02:00:00', NULL, NULL, NULL, NULL, '70 24 56 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 14:50:22', '2018-08-31 14:50:22'),
(190, 'MININGOU', 'Murielle Shalom', 'FEMININ', '2000-09-09 02:00:00', NULL, NULL, NULL, NULL, '70 25 70 01', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 15:09:08', '2018-08-31 15:09:08'),
(191, 'COMPAORE', 'Lina', 'FEMININ', '1999-12-17 02:00:00', NULL, NULL, NULL, NULL, '70 28 43 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 15:14:01', '2018-08-31 15:14:01'),
(192, 'KARAMBIRI', 'Alimatou Kayirkô', 'FEMININ', '1999-10-23 02:00:00', NULL, NULL, NULL, NULL, '56 29 97 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 15:17:29', '2018-08-31 15:17:29'),
(193, 'KIENDREBEOGO', 'Sampawendé Alida', 'FEMININ', '1999-06-01 02:00:00', NULL, NULL, NULL, NULL, '73 27 25 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 15:22:27', '2018-08-31 15:22:27'),
(194, 'BAGRE', 'Koglobzanga Carène Ingrid', 'FEMININ', '2001-02-26 02:00:00', NULL, NULL, NULL, NULL, '70 24 13 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 15:31:44', '2018-08-31 15:31:44'),
(195, 'COMPAORE', 'Adama Rachidatou', 'FEMININ', '2000-01-29 02:00:00', NULL, NULL, NULL, NULL, '63 30 85 75', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 15:44:18', '2018-08-31 15:44:18'),
(196, 'OUEDRAOGO', 'Faosiata', 'FEMININ', '2000-03-22 02:00:00', NULL, NULL, NULL, NULL, '62 46 07 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 15:49:10', '2018-08-31 15:49:10'),
(197, 'DOUGOURY', 'Oumou', 'FEMININ', '1998-03-03 02:00:00', NULL, NULL, NULL, NULL, '60 42 98 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 15:53:04', '2018-08-31 15:53:04'),
(198, 'LOMPO', 'Aïda Mireille Yenitema', 'FEMININ', '2000-07-05 02:00:00', NULL, NULL, NULL, NULL, '70 27 23 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 15:57:30', '2018-08-31 15:57:30'),
(199, 'KONE', 'Yascine Fatoumata Alida', 'FEMININ', '2000-07-28 02:00:00', NULL, NULL, NULL, NULL, '70 69 66 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 16:13:01', '2018-08-31 16:13:01'),
(200, 'KABRE', 'Sévérine', 'FEMININ', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 63 91 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 16:15:39', '2018-08-31 16:15:39'),
(201, 'KOALA', 'Latifati Wind-mi Naïmatou', 'FEMININ', '1998-06-03 02:00:00', NULL, NULL, NULL, NULL, '64 98 31 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 16:18:30', '2018-08-31 16:18:30'),
(202, 'BELEM', 'Aminata', 'FEMININ', '1997-07-07 02:00:00', NULL, NULL, NULL, NULL, '70 16 51 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 16:22:22', '2018-08-31 16:22:22'),
(203, 'HIEN', 'Mansodomon Elza Mauricette', 'FEMININ', '1999-10-03 02:00:00', NULL, NULL, NULL, NULL, '61 85 09 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 16:26:52', '2018-08-31 16:26:52'),
(204, 'BAMA', 'Kiéréyi Grâce', 'FEMININ', '2000-04-30 02:00:00', NULL, NULL, NULL, NULL, '70 34 62 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 16:39:03', '2018-08-31 16:39:03'),
(205, 'LOMPO', 'Karen Mira Bouama', 'FEMININ', '2000-01-15 02:00:00', NULL, NULL, NULL, NULL, '70 20 60 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-08-31 16:41:23', '2018-08-31 16:41:23'),
(206, 'YONLI', 'Tienutodma Mardochée', 'MASCULIN', '1997-07-09 02:00:00', NULL, NULL, NULL, NULL, '72 02 39 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 09:57:44', '2018-09-03 09:57:44'),
(207, 'ZONGO', 'Kiswindsida Hyacinthe', 'MASCULIN', '1999-03-27 02:00:00', NULL, NULL, NULL, NULL, '51 67 84 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 10:01:59', '2018-09-03 10:01:59'),
(208, 'YAMEOGO', 'Tarwendsèga Sylvestre Ange', 'MASCULIN', '1999-10-22 02:00:00', NULL, NULL, NULL, NULL, '66 80 03 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 10:05:02', '2018-09-03 10:05:02'),
(209, 'NASSEREWEMA', 'Moussa', 'MASCULIN', '1999-05-17 02:00:00', NULL, NULL, NULL, NULL, '71 53 50 19', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 10:09:56', '2018-09-03 10:09:56'),
(210, 'TAMINI', 'Samouhan Inès Albertine', 'FEMININ', '1999-02-05 02:00:00', NULL, NULL, NULL, NULL, '70 69 31 66', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 10:12:41', '2018-09-03 10:12:41'),
(211, 'ZABRE', 'Waogwendé Syntyche', 'FEMININ', '2000-11-12 02:00:00', NULL, NULL, NULL, NULL, '67 79 66 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 10:45:31', '2018-09-03 10:45:31'),
(212, 'ZOUNGRANA', 'Marcel', 'MASCULIN', '1998-01-15 02:00:00', NULL, NULL, NULL, NULL, '62 84 86 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 10:56:09', '2018-09-03 10:56:09'),
(213, 'ZONGO', 'Cheik Ismaeïl', 'MASCULIN', '1999-10-20 02:00:00', NULL, NULL, NULL, NULL, '76 90 25 31', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 11:03:19', '2018-09-03 11:03:19'),
(214, 'OUEDRAOGO', 'Samira 1ère Jumelle', 'FEMININ', '1999-07-30 02:00:00', NULL, NULL, NULL, NULL, '65 25 35 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 11:07:48', '2018-09-03 11:07:48'),
(215, 'BANSE', 'Taralo', 'FEMININ', '1999-11-09 02:00:00', NULL, NULL, NULL, NULL, '65 63 42 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 11:12:14', '2018-09-03 11:12:14'),
(216, 'ZOUGMORE', 'Ben Amed Azize', 'MASCULIN', '1998-10-07 02:00:00', NULL, NULL, NULL, NULL, '70 56 04 68', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 11:29:33', '2018-09-03 11:29:33'),
(217, 'BARGO', 'Abdel Latif', 'MASCULIN', '1999-12-18 02:00:00', NULL, NULL, NULL, NULL, '60 41 58 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 11:33:04', '2018-09-03 11:33:04'),
(218, 'YELEMOU', 'Cédrique Edgar Sikoudoin', 'MASCULIN', '1999-10-09 02:00:00', NULL, NULL, NULL, NULL, '51 69 00 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 11:37:39', '2018-09-03 11:37:39'),
(219, 'NIKIEMA', 'Jules', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '63 62 13 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 13:02:49', '2018-09-03 13:02:49'),
(220, 'OUEDRAOGO', 'Yacouba', 'MASCULIN', '1996-04-12 02:00:00', NULL, NULL, NULL, NULL, '66 48 91 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 13:06:05', '2018-09-03 13:06:05'),
(221, 'OUEDRAOGO', 'Rassidatou', 'FEMININ', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 46 17 18', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 14:01:31', '2018-09-03 14:01:31'),
(222, 'OUALI', 'Koagli', 'FEMININ', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 20 50 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 14:10:13', '2018-09-03 14:10:13'),
(223, 'OUEDRAOGO', 'Sidnomwendé Anicet Gildas', 'MASCULIN', '1998-01-29 02:00:00', NULL, NULL, NULL, NULL, '67 03 03 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 14:14:20', '2018-09-03 14:14:20'),
(224, 'PODA', 'Pobèsodèbre', 'MASCULIN', '1998-11-14 02:00:00', NULL, NULL, NULL, NULL, '78 30 97 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 14:18:16', '2018-09-03 14:18:16'),
(225, 'OUEDRAOGO', 'Pamoussa', 'MASCULIN', '1998-01-29 02:00:00', NULL, NULL, NULL, NULL, '63 17 60 70', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 14:22:08', '2018-09-03 14:22:08'),
(226, 'NIAONE', 'Moazo', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 24 78 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 15:16:03', '2018-09-03 15:16:03'),
(227, 'KABORE', 'Abdou Hadil', 'MASCULIN', '1999-04-25 02:00:00', NULL, NULL, NULL, NULL, '70 47 07 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 15:20:45', '2018-09-03 15:20:45'),
(228, 'OUOBA', 'Balikiédida Dieudonné', 'MASCULIN', '1997-06-21 02:00:00', NULL, NULL, NULL, NULL, '70 60 55 53', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 16:35:40', '2018-09-03 16:35:40'),
(229, 'OUEDRAOGO', 'Boukaré', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '64 97 48 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 16:37:58', '2018-09-03 16:37:58'),
(230, 'KABORE', 'Bonsdawendé Jacques', 'MASCULIN', '1998-11-27 02:00:00', NULL, NULL, NULL, NULL, '61 41 53 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 16:44:57', '2018-09-03 16:44:57'),
(231, 'NIKIEMA', 'Sola Judicaël Wendingoundi', 'MASCULIN', '1999-10-21 02:00:00', NULL, NULL, NULL, NULL, '60 13 13 40', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 16:50:43', '2018-09-03 16:50:43'),
(232, 'PALM', 'Sié Michel', 'MASCULIN', '1998-08-28 02:00:00', NULL, NULL, NULL, NULL, '66 35 09 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 16:52:44', '2018-09-03 16:52:44'),
(233, 'OUEDRAOGO', 'Issouf', 'MASCULIN', '1996-01-26 02:00:00', NULL, NULL, NULL, NULL, '79 23 04 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 16:56:15', '2018-09-03 16:56:15'),
(234, 'NEBIE', 'Norbert', 'MASCULIN', '2001-12-31 02:00:00', NULL, NULL, NULL, NULL, '76 00 99 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 17:01:02', '2018-09-03 17:01:02'),
(235, 'OUEDRAOGO', 'Elysé', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 92 24 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 17:16:18', '2018-09-03 17:16:18'),
(236, 'OUEDRAOGO', 'Rosalie Lauraine', 'FEMININ', '2000-05-25 02:00:00', NULL, NULL, NULL, NULL, '70 21 05 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 17:21:16', '2018-09-03 17:21:16'),
(237, 'NIANOGO', 'Delwende Moïse Frederick', 'MASCULIN', '2000-09-25 02:00:00', NULL, NULL, NULL, NULL, '70 28 29 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-03 17:26:24', '2018-09-03 17:26:24'),
(238, 'NIKIEMA', 'Alizèta', 'FEMININ', '1999-03-11 02:00:00', NULL, NULL, NULL, NULL, '70 13 47 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 10:34:49', '2018-09-04 10:34:49'),
(239, 'BOLY', 'Teddy Hourératou', 'FEMININ', '1999-08-04 02:00:00', NULL, NULL, NULL, NULL, '75 29 51 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 10:37:12', '2018-09-04 10:37:12'),
(240, 'NIKIEMA', 'Wendpanga', 'MASCULIN', '1998-01-01 02:00:00', NULL, NULL, NULL, NULL, '63 00 06 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 10:39:44', '2018-09-04 10:39:44'),
(241, 'NADIE', 'Koffi', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '56 63 81 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 10:42:22', '2018-09-04 10:42:22'),
(242, 'KONFE', 'Noelie Boin-Zemwendé', 'FEMININ', '1998-12-23 02:00:00', NULL, NULL, NULL, NULL, '62 27 76 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 10:44:46', '2018-09-04 10:44:46'),
(243, 'KOANDA', 'Massiatou', 'FEMININ', '1999-04-03 02:00:00', NULL, NULL, NULL, NULL, '51 73 11 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 10:46:45', '2018-09-04 10:46:45'),
(244, 'OUEDRAOGO', 'Kyria Relwendé', 'FEMININ', '2000-08-26 02:00:00', NULL, NULL, NULL, NULL, '60 65 24 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 10:49:44', '2018-09-04 10:49:44'),
(245, 'KIEMDE', 'Venceslas Raoul', 'MASCULIN', '2000-03-12 02:00:00', NULL, NULL, NULL, NULL, '72 15 60 95', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 10:52:15', '2018-09-04 10:52:15'),
(246, 'MEDA', 'Kounzoumè Der Romaric', 'MASCULIN', '1998-08-15 02:00:00', NULL, NULL, NULL, NULL, '79 69 56 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 10:54:47', '2018-09-04 10:54:47'),
(247, 'KONFE', 'Rimda Abel Isaac', 'MASCULIN', '1999-10-08 02:00:00', NULL, NULL, NULL, NULL, '73 70 35 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 10:57:09', '2018-09-04 10:57:09'),
(248, 'KONATE', 'Zirri Abdel Razzak', 'MASCULIN', '2000-09-20 02:00:00', NULL, NULL, NULL, NULL, '71 37 63 74', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:00:51', '2018-09-04 11:00:51'),
(249, 'OUEDRAOGO', 'Abdoul-Faïsal', 'MASCULIN', '1998-12-10 02:00:00', NULL, NULL, NULL, NULL, '72 30 36 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:09:14', '2018-09-04 11:09:14'),
(250, 'NIKIEMA', 'Anatole', 'MASCULIN', '1999-02-03 02:00:00', NULL, NULL, NULL, NULL, '76 17 38 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:11:07', '2018-09-04 11:11:07'),
(251, 'KABRE', 'Teegawendé William Léandre', 'MASCULIN', '1999-08-03 02:00:00', NULL, NULL, NULL, NULL, '61 78 46 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:12:55', '2018-09-04 11:12:55'),
(252, 'OUEDRAOGO', 'Abdoul Rachid', 'MASCULIN', '1999-09-30 02:00:00', NULL, NULL, NULL, NULL, '71 59 5263', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:14:55', '2018-09-04 11:14:55'),
(253, 'NAMA', 'Yasmine', 'FEMININ', '1999-11-27 02:00:00', NULL, NULL, NULL, NULL, '61 25 18 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:17:29', '2018-09-04 11:17:29'),
(254, 'KADINZA', 'Bani Adam', 'MASCULIN', '2000-07-02 02:00:00', NULL, NULL, NULL, NULL, '67 27 05 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:20:53', '2018-09-04 11:20:53'),
(255, 'TANKOANO', 'Paul', 'MASCULIN', '1999-12-15 02:00:00', NULL, NULL, NULL, NULL, '51 33 77 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:23:17', '2018-09-04 11:23:17'),
(256, 'BAGAGNAN', 'Daouda', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 58 09 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:25:30', '2018-09-04 11:25:30'),
(257, 'TRAORE', 'Fousseni', 'MASCULIN', '1999-01-17 02:00:00', NULL, NULL, NULL, NULL, '55 44 87 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:27:35', '2018-09-04 11:27:35'),
(258, 'BARRY', 'Ousmane', 'MASCULIN', '2000-05-08 02:00:00', NULL, NULL, NULL, NULL, '76 92 97 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:29:59', '2018-09-04 11:29:59'),
(259, 'ZORE', 'Sambo', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 59 03 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:32:15', '2018-09-04 11:32:15'),
(260, 'TINGUERI', 'Arouna', 'MASCULIN', '1996-08-22 02:00:00', NULL, NULL, NULL, NULL, '77 00 79 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:36:10', '2018-09-04 11:36:10'),
(261, 'SANOU', 'Dossin Paul', 'MASCULIN', '1996-01-12 02:00:00', NULL, NULL, NULL, NULL, '57 01 38 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:43:52', '2018-09-04 11:43:52'),
(262, 'OUOBA', 'Diaféta', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 04 32 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:46:43', '2018-09-04 11:46:43'),
(263, 'DIALLO', 'Saïdou', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 96 37 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:48:59', '2018-09-04 11:48:59'),
(264, 'DIAWARA', 'Badra Ali', 'MASCULIN', '1999-09-05 02:00:00', NULL, NULL, NULL, NULL, '64 84 68 69', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:51:30', '2018-09-04 11:51:30'),
(265, 'OUEDRAOGO', 'Prince Mohamed Navouva', 'MASCULIN', '2000-09-12 02:00:00', NULL, NULL, NULL, NULL, '55 96 28 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 11:54:31', '2018-09-04 11:54:31'),
(266, 'BASSOLETH', 'Jean Valentin', 'MASCULIN', '1998-02-14 02:00:00', NULL, NULL, NULL, NULL, '77 62 35 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 12:16:55', '2018-09-04 12:16:55'),
(267, 'YANOGO', 'Yves Patrick Wendegûdi', 'MASCULIN', '2000-09-02 02:00:00', NULL, NULL, NULL, NULL, '61 35 33 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 12:20:33', '2018-09-04 12:20:33'),
(268, 'ZONGO', 'Téganaba Brice Rodrigue', 'MASCULIN', '2000-03-14 02:00:00', NULL, NULL, NULL, NULL, '66 53 26 25', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 12:23:33', '2018-09-04 12:23:33'),
(269, 'ZONGO', 'Wendtwen Thomas Kévin', 'MASCULIN', '2000-01-30 02:00:00', NULL, NULL, NULL, NULL, '70 78 76 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 12:26:16', '2018-09-04 12:26:16'),
(270, 'ZEBA', 'Yambaret Lionel', 'MASCULIN', '1999-11-18 02:00:00', NULL, NULL, NULL, NULL, '70 24 05 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 12:28:26', '2018-09-04 12:28:26'),
(271, 'YIOUGO', 'Moumouni', 'MASCULIN', '1997-06-11 02:00:00', NULL, NULL, NULL, NULL, '61 95 63 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 12:30:47', '2018-09-04 12:30:47'),
(272, 'ZOUNGRANA', 'Pascal', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '67 39 30 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:14:38', '2018-09-04 13:14:38'),
(273, 'IDO', 'Félix', 'MASCULIN', '1998-02-12 02:00:00', NULL, NULL, NULL, NULL, '55 25 94 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:16:37', '2018-09-04 13:16:37'),
(274, 'HIEN', 'Zouhkara', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '68 83 22 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:19:09', '2018-09-04 13:19:09'),
(275, 'YAMEOGO', 'Mohamadi Moubarik', 'MASCULIN', '1999-10-08 02:00:00', NULL, NULL, NULL, NULL, '70 49 44 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:31:59', '2018-09-04 13:31:59'),
(276, 'YARA', 'Boureima', 'MASCULIN', '2018-12-31 02:00:00', NULL, NULL, NULL, NULL, '65 40 07 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:35:40', '2018-09-04 13:35:40'),
(277, 'YAGO', 'Ablasse', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '60 14 48 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:37:51', '2018-09-04 13:37:51'),
(278, 'ZIDNABA', 'Raguenga', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 32 77 19', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:40:09', '2018-09-04 13:40:09'),
(279, 'KABORE', 'Alexis', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 03 66 40', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:41:59', '2018-09-04 13:41:59');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(280, 'BAGRE', 'Justin', 'MASCULIN', '1998-08-20 02:00:00', NULL, NULL, NULL, NULL, '77 84 97 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:44:39', '2018-09-04 13:44:39'),
(281, 'PALE', 'Sansan Francis', 'MASCULIN', '1999-02-17 02:00:00', NULL, NULL, NULL, NULL, '67 08 14 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:48:45', '2018-09-04 13:48:45'),
(282, 'ZANGRE', 'Lamine', 'MASCULIN', '1999-04-17 02:00:00', NULL, NULL, NULL, NULL, '70 81 55 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:51:16', '2018-09-04 13:51:16'),
(283, 'YERBANGA', 'Abdoul LamineI', 'MASCULIN', '1999-09-06 02:00:00', NULL, NULL, NULL, NULL, '62 00 13 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:53:39', '2018-09-04 13:53:39'),
(284, 'ZONGO', 'Issa Toussaint', 'MASCULIN', '1998-11-30 02:00:00', NULL, NULL, NULL, NULL, '77 42 12 62', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:56:36', '2018-09-04 13:56:36'),
(285, 'YANOGO', 'Bénéwindé Constantin Rodolphe', 'MASCULIN', '1997-12-14 02:00:00', NULL, NULL, NULL, NULL, '78 92 65 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 13:59:42', '2018-09-04 13:59:42'),
(286, 'KOUDOUGOU', 'Bangueba', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '79 80 92 75', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:01:55', '2018-09-04 14:01:55'),
(287, 'ZALLE', 'Abdoul Rasmane', 'MASCULIN', '1997-12-23 02:00:00', NULL, NULL, NULL, NULL, '61 06 83 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:05:48', '2018-09-04 14:05:48'),
(288, 'ZOUNDI', 'Séraphin', 'MASCULIN', '1999-06-15 02:00:00', NULL, NULL, NULL, NULL, '78 37 34 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:07:37', '2018-09-04 14:07:37'),
(289, 'KOANDA', 'Youssouf', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '75 38 99 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:10:27', '2018-09-04 14:10:27'),
(290, 'ZOUNGRANA', 'Wendyam Léa', 'FEMININ', '1999-06-09 02:00:00', NULL, NULL, NULL, NULL, '60 12 80 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:15:19', '2018-09-04 14:15:19'),
(291, 'SOMDA', 'Nawintomé Vanessa', 'FEMININ', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:18:07', '2018-09-04 14:18:07'),
(292, 'TIEMTORE', 'Léa', 'FEMININ', '1999-11-10 02:00:00', NULL, NULL, NULL, NULL, '66 18 41 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:21:38', '2018-09-04 14:21:38'),
(293, 'YODA', 'Faoziatou', 'FEMININ', '1999-12-20 02:00:00', NULL, NULL, NULL, NULL, '73 33 56 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:25:12', '2018-09-04 14:25:12'),
(294, 'ZABRE', 'Thèrèse', 'FEMININ', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 19 11 83', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:27:36', '2018-09-04 14:27:36'),
(295, 'ZONGO', 'Oum-Maïma', 'FEMININ', '1997-12-28 02:00:00', NULL, NULL, NULL, NULL, '57 73 99 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:30:34', '2018-09-04 14:30:34'),
(296, 'YODA', 'Assanatou', 'FEMININ', '1997-01-07 02:00:00', NULL, NULL, NULL, NULL, '71 44 39 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:33:08', '2018-09-04 14:33:08'),
(297, 'ZONGO', 'Rapogwendé Arielle', 'FEMININ', '2000-04-26 02:00:00', NULL, NULL, NULL, NULL, '63 58 76 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:37:46', '2018-09-04 14:37:46'),
(298, 'ZONGO', 'Wendkouni Perle Aurore Deborah', 'FEMININ', '2001-10-29 02:00:00', NULL, NULL, NULL, NULL, '63 58 76 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:42:14', '2018-09-04 14:42:14'),
(299, 'ZONGO', 'Wendpanga Cynthia Eunice', 'FEMININ', '2000-07-17 02:00:00', NULL, NULL, NULL, NULL, '70 45 78 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:45:25', '2018-09-04 14:45:25'),
(300, 'ZONGO', 'Kévine Olivia', 'FEMININ', '2000-06-17 02:00:00', NULL, NULL, NULL, NULL, '71 23 79 71', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:47:48', '2018-09-04 14:47:48'),
(301, 'BELEMSOBGO', 'Adriana Pegdwendé Syntiche', 'FEMININ', '2000-07-07 02:00:00', NULL, NULL, NULL, NULL, '70 25 80 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:51:03', '2018-09-04 14:51:03'),
(302, 'YAMEOGO', 'Wendrenda Maria Prisca 2ème Jumelle', 'FEMININ', '1999-11-21 02:00:00', NULL, NULL, NULL, NULL, '79 87 60 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 14:53:37', '2018-09-04 14:53:37'),
(303, 'SAWADOGO', 'Wind-pouiré Antoinette de Padoue', 'FEMININ', '1999-06-13 02:00:00', NULL, NULL, NULL, NULL, '78 80 90 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 15:30:26', '2018-09-04 15:30:26'),
(304, 'YOROUBA', 'Latifatou', 'FEMININ', '1998-12-12 02:00:00', NULL, NULL, NULL, NULL, '71 74 33 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 15:38:20', '2018-09-04 15:38:20'),
(305, 'TRAORE', 'Amanda Marie Marguérite', 'FEMININ', '2000-11-29 02:00:00', NULL, NULL, NULL, NULL, '57 11 93 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 15:41:39', '2018-09-04 15:41:39'),
(306, 'YILLI', 'Elcine Hororé Alexandra', 'FEMININ', '2000-03-22 02:00:00', NULL, NULL, NULL, NULL, '70 43 41 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 15:44:37', '2018-09-04 15:44:37'),
(307, 'SAWADOGO', 'Rosine Wendkouni', 'FEMININ', '2000-06-28 02:00:00', NULL, NULL, NULL, NULL, '62 68 91 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-04 15:49:20', '2018-09-04 15:49:20'),
(308, 'KAFANDO', 'François', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 99 31 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 13:22:10', '2018-09-05 13:22:10'),
(309, 'YOUGMA', 'Chrissyamba Gisèle', 'FEMININ', '1998-05-19 02:00:00', NULL, NULL, NULL, NULL, '72 57 72 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 13:24:22', '2018-09-05 13:24:22'),
(310, 'LOMPO', 'Alira Hayat Farila', 'FEMININ', '2000-05-11 02:00:00', NULL, NULL, NULL, NULL, '63 52 23 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 13:31:58', '2018-09-05 13:31:58'),
(311, 'DIAWARA', 'Francine Vanessa Djénébou', 'FEMININ', '2000-03-22 02:00:00', NULL, NULL, NULL, NULL, '61 08 87 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 13:35:12', '2018-09-05 13:35:12'),
(312, 'YAMEOGO', 'Adama', 'MASCULIN', '1996-09-25 02:00:00', NULL, NULL, NULL, NULL, '74 42 66 66', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 13:36:47', '2018-09-05 13:36:47'),
(313, 'SAWADOGO', 'Nehmata', 'FEMININ', '1999-01-19 02:00:00', NULL, NULL, NULL, NULL, '63 32 20 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 13:38:42', '2018-09-05 13:38:42'),
(314, 'YAMEOGO', 'Zalissa', 'FEMININ', '1996-09-05 02:00:00', NULL, NULL, NULL, NULL, '74 19 76 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 13:40:21', '2018-09-05 13:40:21'),
(315, 'KIEMTORE', 'Aminata', 'FEMININ', '1999-06-06 02:00:00', NULL, NULL, NULL, NULL, '76 31 57 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 13:42:16', '2018-09-05 13:42:16'),
(316, 'SANON', 'Kaïra Neily Ninon', 'FEMININ', '2000-12-23 02:00:00', NULL, NULL, NULL, NULL, '60 35 62 70', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 13:47:07', '2018-09-05 13:47:07'),
(317, 'TOPAN', 'Mahamadi', 'MASCULIN', '1998-11-30 02:00:00', NULL, NULL, NULL, NULL, '71 79 70 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 14:23:47', '2018-09-05 14:23:47'),
(318, 'SAWADOGO', 'Cheikh Hamad Amahoulaye', 'MASCULIN', '2000-06-05 02:00:00', NULL, NULL, NULL, NULL, '70 65 42 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 14:28:15', '2018-09-05 14:28:15'),
(319, 'SAWADOGO', 'Nomwende John Sébastien Rock', 'MASCULIN', '1999-04-13 02:00:00', NULL, NULL, NULL, NULL, '60 33 97 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 14:32:08', '2018-09-05 14:32:08'),
(320, 'SAWADOGO', 'Monique', 'FEMININ', '1999-08-20 02:00:00', NULL, NULL, NULL, NULL, '71 03 54 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 14:38:06', '2018-09-05 14:38:06'),
(321, 'SAKANDE', 'Wendemi Débora', 'FEMININ', '1999-08-05 02:00:00', NULL, NULL, NULL, NULL, '65 01 41 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 14:44:29', '2018-09-05 14:44:29'),
(322, 'SOME', 'Noumamba', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 97 02 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 14:55:15', '2018-09-05 14:55:15'),
(323, 'BAZIE', 'Frédéric', 'MASCULIN', '1998-07-18 02:00:00', NULL, NULL, NULL, NULL, '71 04 50 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 14:57:47', '2018-09-05 14:57:47'),
(324, 'SOMDA', 'Yirtoum Jonathan Ulrich', 'MASCULIN', '2000-01-15 02:00:00', NULL, NULL, NULL, NULL, '70 25 63 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:00:51', '2018-09-05 15:00:51'),
(325, 'OUEDRAOGO', 'Abel', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 30 96 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:08:20', '2018-09-05 15:08:20'),
(326, 'SESSOUMA', 'Zegué Seydou Cheick', 'MASCULIN', '1999-10-06 02:00:00', NULL, NULL, NULL, NULL, '55 28 61 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:12:36', '2018-09-05 15:12:36'),
(327, 'SAWADOGO', 'Ismaël', 'MASCULIN', '1998-10-05 02:00:00', NULL, NULL, NULL, NULL, '61 36 30 31', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:14:38', '2018-09-05 15:14:38'),
(328, 'WANGRAWA', 'Djémilatou', 'FEMININ', '1999-12-28 02:00:00', NULL, NULL, NULL, NULL, '70 22 64 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:17:02', '2018-09-05 15:17:02'),
(329, 'SIMDE', 'Diane Marie Priscille', 'FEMININ', '2000-06-09 02:00:00', NULL, NULL, NULL, NULL, '60 09 84 19', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:23:39', '2018-09-05 15:23:39'),
(330, 'TASSEMBEDO', 'Aïdatou Béninwendé', 'FEMININ', '2000-07-21 02:00:00', NULL, NULL, NULL, NULL, '60 20 47 81', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:28:09', '2018-09-05 15:28:09'),
(331, 'SAWADOGO', 'Mariam', 'FEMININ', '1998-03-17 02:00:00', NULL, NULL, NULL, NULL, '70 17 60 91', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:29:55', '2018-09-05 15:29:55'),
(332, 'ZOMBRE', 'Aimé Cédric Maz', 'MASCULIN', '2000-07-12 02:00:00', NULL, NULL, NULL, NULL, '70 28 88 81', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:32:07', '2018-09-05 15:32:07'),
(333, 'SAWADOGO', 'Aminatou', 'FEMININ', '1999-02-12 02:00:00', NULL, NULL, NULL, NULL, '56 93 38 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:39:54', '2018-09-05 15:39:54'),
(334, 'SAWADOGO', 'Souleymane', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 01 04 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:44:39', '2018-09-05 15:44:39'),
(335, 'SONDE', 'Pato', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '67 41 93 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:46:54', '2018-09-05 15:46:54'),
(336, 'TAPSOBA', 'Abdoul Kader', 'MASCULIN', '1999-09-05 02:00:00', NULL, NULL, NULL, NULL, '70 82 74 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:49:38', '2018-09-05 15:49:38'),
(337, 'TIEMTORE', 'Léa', 'FEMININ', '1999-11-10 02:00:00', NULL, NULL, NULL, NULL, '66 18 41 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:51:18', '2018-09-05 15:51:18'),
(338, 'NIKIEMA', 'Zacharia', 'MASCULIN', '1998-02-24 02:00:00', NULL, NULL, NULL, NULL, '70 35 62 19', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:53:47', '2018-09-05 15:53:47'),
(339, 'SIMPORE', 'Wendpayangdé Salathia Assalthiel', 'MASCULIN', '2000-09-13 02:00:00', NULL, NULL, NULL, NULL, '70 98 7423', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 15:56:29', '2018-09-05 15:56:29'),
(340, 'SANOU', 'Murielle Anastasia Agnès', 'FEMININ', '2000-04-12 02:00:00', NULL, NULL, NULL, NULL, '70 30 67 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:00:02', '2018-09-05 16:00:02'),
(341, 'SANA', 'Abdoul Kader Youssef', 'MASCULIN', '2000-11-28 02:00:00', NULL, NULL, NULL, NULL, '70 10 43 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:02:26', '2018-09-05 16:02:26'),
(342, 'SOME', 'Waliermè Lucien Arthur', 'MASCULIN', '2000-01-07 02:00:00', NULL, NULL, NULL, NULL, '70 63 37 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:06:19', '2018-09-05 16:06:19'),
(343, 'SAWADOGO', 'Emma Gaétan Jéconias', 'MASCULIN', '1999-06-22 02:00:00', NULL, NULL, NULL, NULL, '60 20 49 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:11:02', '2018-09-05 16:11:02'),
(344, 'TRAORE', 'Oummou Salimata', 'FEMININ', '2000-10-08 02:00:00', NULL, NULL, NULL, NULL, '71 35 34 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:15:22', '2018-09-05 16:15:22'),
(345, 'TINDANO', 'Biyampo Lydie', 'FEMININ', '2000-05-13 02:00:00', NULL, NULL, NULL, NULL, '63 10 56 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:20:38', '2018-09-05 16:20:38'),
(346, 'SAWADOGO', 'Wendingoudi Laurice Alexia', 'FEMININ', '2000-05-18 02:00:00', NULL, NULL, NULL, NULL, '70 56 84 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:23:31', '2018-09-05 16:23:31'),
(347, 'SOURABIE', 'Mahamadou', 'MASCULIN', '1999-05-03 02:00:00', NULL, NULL, NULL, NULL, '76 80 42 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:28:01', '2018-09-05 16:28:01'),
(348, 'SAWADOGO', 'Alaye', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 02 51 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:30:19', '2018-09-05 16:30:19'),
(349, 'SAVADOGO', 'Kiswensida Abdoul Kader', 'MASCULIN', '1999-06-14 02:00:00', NULL, NULL, NULL, NULL, '72 29 01 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:34:29', '2018-09-05 16:34:29'),
(350, 'SAM', 'Farouq Imad', 'MASCULIN', '1996-03-17 02:00:00', NULL, NULL, NULL, NULL, '51 98 11 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:37:40', '2018-09-05 16:37:40'),
(351, 'SANOU', 'Fatimata Rachida', 'FEMININ', '2000-01-06 02:00:00', NULL, NULL, NULL, NULL, '70 56 85 70', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:46:26', '2018-09-05 16:46:26'),
(352, 'SAWADOGO', 'Wendpayangdé Anita Bienvenue', 'FEMININ', '1999-06-05 02:00:00', NULL, NULL, NULL, NULL, '51 56 91 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:49:47', '2018-09-05 16:49:47'),
(353, 'SAWADOGO', 'Souleymane', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 50 36 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:51:50', '2018-09-05 16:51:50'),
(354, 'SANKARA', 'Hafisa Sabirat', 'FEMININ', '2000-01-21 02:00:00', NULL, NULL, NULL, NULL, '73 38 34 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-05 16:57:02', '2018-09-05 16:57:02'),
(355, 'SOMDA', 'Alessa Franck Désiré', 'MASCULIN', '1999-09-30 02:00:00', NULL, NULL, NULL, NULL, '63 61 29 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 08:55:32', '2018-09-06 08:55:32'),
(356, 'TRAORE', 'Gnibassongo Wahabou Emmanuel', 'MASCULIN', '1998-12-25 02:00:00', NULL, NULL, NULL, NULL, '51 12 71 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 08:58:51', '2018-09-06 08:58:51'),
(357, 'TIENDREBEOGO', 'Madina Linda Christel Rahimwendé', 'FEMININ', '1999-10-03 02:00:00', NULL, NULL, NULL, NULL, '70 67 49 69', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:02:54', '2018-09-06 09:02:54'),
(358, 'SAWADOGO', 'Pegwendé Abdoul-Ghanyn Yannick', 'MASCULIN', '2001-06-12 02:00:00', NULL, NULL, NULL, NULL, '70 28 16 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:10:17', '2018-09-06 09:10:17'),
(359, 'SEREME', 'Félix', 'MASCULIN', '1998-03-12 02:00:00', NULL, NULL, NULL, NULL, '72 93 48 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:14:53', '2018-09-06 09:14:53'),
(360, 'SAWADOGO', 'Alain', 'MASCULIN', '1996-01-13 02:00:00', NULL, NULL, NULL, NULL, '79 83 17 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:17:50', '2018-09-06 09:17:50'),
(361, 'SAWADOGO', 'Pengdwendé Achille', 'MASCULIN', '1997-05-12 02:00:00', NULL, NULL, NULL, NULL, '72 77 88 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:20:50', '2018-09-06 09:20:50'),
(362, 'SABOU', 'Sounana Abdoul Madgid', 'MASCULIN', '2000-10-30 02:00:00', NULL, NULL, NULL, NULL, '66 71 32 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:22:51', '2018-09-06 09:22:51'),
(363, 'YAMEOGO', 'Ziwendtaoré Danielle Damaris', 'FEMININ', '2000-05-31 02:00:00', NULL, NULL, NULL, NULL, '70 97 21 76', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:27:41', '2018-09-06 09:27:41'),
(364, 'SAWADOGO', 'Noufou', 'MASCULIN', '1997-04-27 02:00:00', NULL, NULL, NULL, NULL, '79 19 57 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:30:12', '2018-09-06 09:30:12'),
(365, 'SANOGO', 'Adam Mikaïl', 'MASCULIN', '1999-09-14 02:00:00', NULL, NULL, NULL, NULL, '73 50 11 01', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:33:00', '2018-09-06 09:33:00'),
(366, 'SAWADOGO', 'Karim', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 44 31 91', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:35:20', '2018-09-06 09:35:20'),
(367, 'SANDWIDI', 'Sandra Astride Wendpuiré', 'FEMININ', '2000-05-29 02:00:00', NULL, NULL, NULL, NULL, '70 75 75 74', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:39:21', '2018-09-06 09:39:21'),
(368, 'SANOU', 'Alphonse', 'MASCULIN', '2000-01-13 02:00:00', NULL, NULL, NULL, NULL, '56 98 14 20', NULL, 'I', 'urielle', 'urielle', '2018-09-06 09:43:27', '2018-09-06 09:43:27'),
(369, 'SIMPORE', 'Mirna', 'FEMININ', '1998-11-10 02:00:00', NULL, NULL, NULL, NULL, '61 32 20 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:46:31', '2018-09-06 09:46:31'),
(370, 'SIDIBE', 'Abdel Aziz', 'MASCULIN', '1999-09-18 02:00:00', NULL, NULL, NULL, NULL, '71 47 54 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:48:47', '2018-09-06 09:48:47'),
(371, 'SIBA', 'Radhia Leyhila Abdallah', 'FEMININ', '2000-03-20 02:00:00', NULL, NULL, NULL, NULL, '76 44 99 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:53:44', '2018-09-06 09:53:44'),
(372, 'SOME', 'Ben Idriss Kevin-Henou', 'MASCULIN', '1999-08-21 02:00:00', NULL, NULL, NULL, NULL, '73 39 98 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:56:23', '2018-09-06 09:56:23'),
(373, 'SAWADOGO', 'Cheïda', 'FEMININ', '2000-10-25 02:00:00', NULL, NULL, NULL, NULL, '70 79 49 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 09:58:47', '2018-09-06 09:58:47'),
(374, 'TAMBOURA', 'Mohamed', 'MASCULIN', '1999-04-09 02:00:00', NULL, NULL, NULL, NULL, '63 93 05 75', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 10:00:51', '2018-09-06 10:00:51'),
(375, 'DAMAN', 'Doubazo Adelphe Williams', 'MASCULIN', '1999-08-29 02:00:00', NULL, NULL, NULL, NULL, '76 69 73 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 10:06:55', '2018-09-06 10:06:55'),
(376, 'DAMAN', 'Doubazo Adelphe Williams', 'MASCULIN', '1999-08-29 02:00:00', NULL, NULL, NULL, NULL, '76 69 73 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 12:16:25', '2018-09-06 12:16:25'),
(377, 'SAWADOGO', 'Adama', 'MASCULIN', '1996-01-13 02:00:00', NULL, NULL, NULL, NULL, '74 71 11 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 12:18:21', '2018-09-06 12:18:21'),
(378, 'SAWADOGO', 'Wendinmalgdé Claire', 'FEMININ', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 10 35 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 12:20:41', '2018-09-06 12:20:41'),
(379, 'TAPSOBA', 'Boinzemwendé Charles Aristide', 'MASCULIN', '1998-11-14 02:00:00', NULL, NULL, NULL, NULL, '78 88 11 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 12:23:54', '2018-09-06 12:23:54'),
(380, 'TRAORE', 'Abdoul Guelil', 'MASCULIN', '1999-01-02 02:00:00', NULL, NULL, NULL, NULL, '63 75 32 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 12:26:41', '2018-09-06 12:26:41'),
(381, 'TARAMA', 'Amadou Yacine', 'MASCULIN', '1999-01-20 02:00:00', NULL, NULL, NULL, NULL, '67 40 70 18', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 12:28:53', '2018-09-06 12:28:53'),
(382, 'SAWADOGO', 'Roger', 'MASCULIN', '1999-08-04 02:00:00', NULL, NULL, NULL, NULL, '67 30 33 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 12:30:47', '2018-09-06 12:30:47'),
(383, 'SAWADOGO', 'Valantin', 'MASCULIN', '1999-04-28 02:00:00', NULL, NULL, NULL, NULL, '63 64 08 18', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 12:33:13', '2018-09-06 12:33:13'),
(384, 'SAWADOGO', 'Boblewendé Willie Valdes', 'MASCULIN', '2000-06-06 02:00:00', NULL, NULL, NULL, NULL, '73 68 58 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 12:35:23', '2018-09-06 12:35:23'),
(385, 'COMPAORE', 'Latif (1er)', 'MASCULIN', '1999-07-09 02:00:00', NULL, NULL, NULL, NULL, '72 61 49 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 13:52:31', '2018-09-06 13:52:31'),
(386, 'NIAMPA', 'Audrey Ophelie Faasnéwendé', 'FEMININ', '2000-10-31 02:00:00', NULL, NULL, NULL, NULL, '70 28 38 24', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:02:30', '2018-09-06 14:02:30'),
(387, 'SOMDA', 'Wilfried', 'MASCULIN', '1998-01-07 02:00:00', NULL, NULL, NULL, NULL, '79 37 86 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:06:24', '2018-09-06 14:06:24'),
(388, 'TRAORE', 'Paco Abou-Zéid', 'MASCULIN', '1999-03-19 02:00:00', NULL, NULL, NULL, NULL, '64 63 64 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:11:08', '2018-09-06 14:11:08'),
(389, 'SOURABIE', 'Mohamed', 'MASCULIN', '1998-03-13 02:00:00', NULL, NULL, NULL, NULL, '54 80 13 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:14:05', '2018-09-06 14:14:05'),
(390, 'KAFANDO', 'Konlobgué', 'FEMININ', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '56 34 63 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:18:37', '2018-09-06 14:18:37'),
(391, 'YOUIN', 'Djénébou', 'FEMININ', '1998-06-04 02:00:00', NULL, NULL, NULL, NULL, '63 46 55 93', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:21:45', '2018-09-06 14:21:45'),
(392, 'COULIBALY', 'Hyllary Stéphanie Graces', 'FEMININ', '2000-06-30 02:00:00', NULL, NULL, NULL, NULL, '67 88 64 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:25:27', '2018-09-06 14:25:27'),
(393, 'OUEDRAOGO', 'Salam', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 86 92 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:27:39', '2018-09-06 14:27:39'),
(394, 'SOUABO', 'Adama', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '60 34 15 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:31:23', '2018-09-06 14:31:23'),
(395, 'ZONG-NABA', 'Bienvenue Laurent', 'MASCULIN', '1996-08-10 02:00:00', NULL, NULL, NULL, NULL, '70 32 91 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:34:06', '2018-09-06 14:34:06'),
(396, 'KOUENOU', 'Rock Eric', 'MASCULIN', '1998-11-30 02:00:00', NULL, NULL, NULL, NULL, '77 26 54 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:39:02', '2018-09-06 14:39:02'),
(397, 'OUATTARA', 'Ouôbi Kadidiatou', 'FEMININ', '1999-10-31 02:00:00', NULL, NULL, NULL, NULL, '65 29 69 27', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:47:25', '2018-09-06 14:47:25'),
(398, 'KINDO', 'Faïza', 'FEMININ', '2000-01-03 02:00:00', NULL, NULL, NULL, NULL, '73 87 53 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:51:33', '2018-09-06 14:51:33'),
(399, 'SIMBORO', 'Ladouon Rachida', 'FEMININ', '2000-07-15 02:00:00', NULL, NULL, NULL, NULL, '64 13 04 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:53:38', '2018-09-06 14:53:38'),
(400, 'SANKARA', 'Salif Cheick Azizz', 'MASCULIN', '1998-06-11 02:00:00', NULL, NULL, NULL, NULL, '64 54 10 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:56:01', '2018-09-06 14:56:01'),
(401, 'THIOMBIANO', 'Aude Angélina', 'FEMININ', '2000-10-06 02:00:00', NULL, NULL, NULL, NULL, '62 25 31 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 14:59:42', '2018-09-06 14:59:42'),
(402, 'SANON', 'Kièdali Berthe Flavienne', 'FEMININ', '2001-03-29 02:00:00', NULL, NULL, NULL, NULL, '74 69 29 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:02:20', '2018-09-06 15:02:20'),
(403, 'LANKOANDE', 'Serge Jacob Yéniban', 'MASCULIN', '1999-09-14 02:00:00', NULL, NULL, NULL, NULL, '60 24 62 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:06:30', '2018-09-06 15:06:30'),
(404, 'SAWADOGO', 'Sarata', 'FEMININ', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '63 61 23 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:12:53', '2018-09-06 15:12:53'),
(405, 'KABORE', 'Sidpagnandé Ozias Landry', 'FEMININ', '2000-05-22 02:00:00', NULL, NULL, NULL, NULL, '71 06 96 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:16:15', '2018-09-06 15:16:15'),
(406, 'BASSINGA', 'Romain Kevin', 'MASCULIN', '1996-02-28 02:00:00', NULL, NULL, NULL, NULL, '70 14 10 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:20:18', '2018-09-06 15:20:18'),
(407, 'THIOMBIANO', 'Abdoul Aziz', 'MASCULIN', '1998-05-08 02:00:00', NULL, NULL, NULL, NULL, '51 58 04 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:22:26', '2018-09-06 15:22:26'),
(408, 'OUEDRAOGO', 'Tatiana', 'FEMININ', '1998-11-04 02:00:00', NULL, NULL, NULL, NULL, '65 28 50 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:26:23', '2018-09-06 15:26:23'),
(409, 'TRAORE', 'Cheick Ahmed El Kabbir', 'MASCULIN', '1997-02-24 02:00:00', NULL, NULL, NULL, NULL, '60 60 29 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:28:48', '2018-09-06 15:28:48'),
(410, 'ZONGO', 'Mohamed', 'MASCULIN', '1998-12-24 02:00:00', NULL, NULL, NULL, NULL, '60 61 47 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:30:50', '2018-09-06 15:30:50'),
(411, 'OUEDRAOGO', 'Hilda Vanessa Sompoko Raâdyatou', 'FEMININ', '2000-10-12 02:00:00', NULL, NULL, NULL, NULL, '72 38 59 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:33:15', '2018-09-06 15:33:15'),
(412, 'KIEMA', 'Wendpanga Régis Gaïus', 'MASCULIN', '2000-06-16 02:00:00', NULL, NULL, NULL, NULL, '71 30 04 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:36:17', '2018-09-06 15:36:17'),
(413, 'OUATTARA', 'Sylvestre', 'MASCULIN', '1996-11-22 02:00:00', NULL, NULL, NULL, NULL, '78 10 39 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:42:21', '2018-09-06 15:42:21'),
(414, 'TRAORE', 'Seydou', 'MASCULIN', '1999-03-03 02:00:00', NULL, NULL, NULL, NULL, '67 48 72 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 15:44:50', '2018-09-06 15:44:50'),
(415, 'GNATA', 'Loukmane', 'MASCULIN', '1999-08-26 02:00:00', NULL, NULL, NULL, NULL, '78 84 25 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 16:35:56', '2018-09-06 16:35:56'),
(416, 'MIDIOUR', 'Naba Fidèle 2ème Jumelle', 'MASCULIN', '1999-04-14 02:00:00', NULL, NULL, NULL, NULL, '65 04 54 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 16:38:38', '2018-09-06 16:38:38'),
(417, 'MILLOGO', 'Ould Amza Tolo', 'MASCULIN', '1999-01-20 02:00:00', NULL, NULL, NULL, NULL, '64 11 72 58', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 16:40:33', '2018-09-06 16:40:33'),
(418, 'TRAORE', 'Ouo Djelica', 'FEMININ', '1999-04-04 02:00:00', NULL, NULL, NULL, NULL, '70 05 86 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 16:42:37', '2018-09-06 16:42:37'),
(419, 'KONE', 'Flakoro Florent Julien Silouane', 'MASCULIN', '2000-08-02 02:00:00', NULL, NULL, NULL, NULL, '70 10 04 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 16:46:53', '2018-09-06 16:46:53'),
(420, 'SAWADOGO', 'Relwendé Harmand Dévy', 'MASCULIN', '1998-09-11 02:00:00', NULL, NULL, NULL, NULL, '76 09 38 32', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 16:51:12', '2018-09-06 16:51:12'),
(421, 'SANOGO', 'Angélin Gérard', 'MASCULIN', '2000-10-03 02:00:00', NULL, NULL, NULL, NULL, '61 93 97 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 16:53:27', '2018-09-06 16:53:27'),
(422, 'PIMA', 'Issoufou', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 63 02 95', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 16:55:35', '2018-09-06 16:55:35'),
(423, 'MARIKO', 'Cheick Omar', 'MASCULIN', '1999-01-09 02:00:00', NULL, NULL, NULL, NULL, '77 11 16 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 16:57:25', '2018-09-06 16:57:25'),
(424, 'KINDO', 'Daouda', 'MASCULIN', '1998-01-02 02:00:00', NULL, NULL, NULL, NULL, '65 21 69 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 16:59:53', '2018-09-06 16:59:53'),
(425, 'TRAORE', 'Tahirou', 'MASCULIN', '1998-06-13 02:00:00', NULL, NULL, NULL, NULL, '76 88 16 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:02:47', '2018-09-06 17:02:47'),
(426, 'DIALLO', 'Yaya', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '57 77 64 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:06:18', '2018-09-06 17:06:18'),
(427, 'GANSAORE', 'André', 'MASCULIN', '2000-09-18 02:00:00', NULL, NULL, NULL, NULL, '65 14 34 62', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:08:16', '2018-09-06 17:08:16'),
(428, 'KEITA', 'Mohamed Lamine', 'MASCULIN', '2000-03-20 02:00:00', NULL, NULL, NULL, NULL, '74 37 17 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:10:16', '2018-09-06 17:10:16'),
(429, 'SOW', 'Abdoulaye', 'MASCULIN', '2000-11-12 02:00:00', NULL, NULL, NULL, NULL, '76 42 26 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:14:56', '2018-09-06 17:14:56'),
(430, 'OUATTARA', 'Yaya', 'MASCULIN', '1997-10-15 02:00:00', NULL, NULL, NULL, NULL, '65 90 61 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:17:31', '2018-09-06 17:17:31'),
(431, 'BELEM', 'Yacouba', 'MASCULIN', '1999-11-25 02:00:00', NULL, NULL, NULL, NULL, '61 97 23  26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:19:45', '2018-09-06 17:19:45'),
(432, 'SANKARA', 'Issaka', 'MASCULIN', '1998-10-07 02:00:00', NULL, NULL, NULL, NULL, '61 23 79 15', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:21:39', '2018-09-06 17:21:39'),
(433, 'OUATTARA', 'Abdoulaye', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '66 02 64 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:24:57', '2018-09-06 17:24:57'),
(434, 'GNOUMOU', 'Jean', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '66 55 97 25', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:27:48', '2018-09-06 17:27:48'),
(435, 'TRAORE', 'Nanvoungo', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '67 39 12 87', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:31:28', '2018-09-06 17:31:28'),
(436, 'NIAONE', 'Adalou', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '66 87 05 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:33:40', '2018-09-06 17:33:40'),
(437, 'KAFANDO', 'Andréa', 'FEMININ', '1999-01-01 02:00:00', NULL, NULL, NULL, NULL, '78 01 80 39', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:35:52', '2018-09-06 17:35:52'),
(438, 'BELEMBAOGO', 'Marie-Madeleine', 'FEMININ', '2000-05-03 02:00:00', NULL, NULL, NULL, NULL, '70 25 51 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:39:34', '2018-09-06 17:39:34'),
(439, 'BELEGNE', 'Seydou', 'MASCULIN', '1998-12-14 02:00:00', NULL, NULL, NULL, NULL, '61 56 05 76', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:41:35', '2018-09-06 17:41:35'),
(440, 'TRAORE', 'Adama', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 19 09 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:43:10', '2018-09-06 17:43:10'),
(441, 'OUEDRAOGO', 'Wendlasida Yashine Farida', 'FEMININ', '1997-09-07 02:00:00', NULL, NULL, NULL, NULL, '63 01 51 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:45:35', '2018-09-06 17:45:35'),
(442, 'OUEDRAOGO', 'Benhasser Mehemet Boris', 'MASCULIN', '2000-06-15 02:00:00', NULL, NULL, NULL, NULL, '63 27 75 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:48:31', '2018-09-06 17:48:31'),
(443, 'BAZIE', 'Salif', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '56 82 10 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:50:17', '2018-09-06 17:50:17'),
(444, 'ILBOUDO', 'Sidnoma Christian', 'MASCULIN', '1999-01-25 02:00:00', NULL, NULL, NULL, NULL, '71 52 25 12', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:52:35', '2018-09-06 17:52:35'),
(445, 'BATIONO', 'Nadine Christelle', 'FEMININ', '1999-03-07 02:00:00', NULL, NULL, NULL, NULL, '65 70 10 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:54:25', '2018-09-06 17:54:25'),
(446, 'BEKUONE SOME', 'Sorb-Kyénegnine Armel', 'MASCULIN', '1998-01-21 02:00:00', NULL, NULL, NULL, NULL, '54 87 96 75', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:57:14', '2018-09-06 17:57:14'),
(447, 'SAWADOGO', 'Mohamado', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '63 03 71 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 17:59:03', '2018-09-06 17:59:03'),
(448, 'DABILGOU', 'Hado', 'MASCULIN', '1999-05-10 02:00:00', NULL, NULL, NULL, NULL, '72 64 99 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:02:29', '2018-09-06 18:02:29'),
(449, 'OUEDRAOGO', 'Salif', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '52 09 33 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:04:20', '2018-09-06 18:04:20'),
(450, 'ANOUGABOU', 'Tounkouariwè Cliton', 'MASCULIN', '1998-10-01 02:00:00', NULL, NULL, NULL, NULL, '67 27 15 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:06:18', '2018-09-06 18:06:18'),
(451, 'SIEZA', 'Mamité', 'MASCULIN', '1998-01-01 02:00:00', NULL, NULL, NULL, NULL, '55 72 03 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:08:26', '2018-09-06 18:08:26'),
(452, 'SANOGO', 'Foussény', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '66 70 98 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:10:44', '2018-09-06 18:10:44'),
(453, 'KANTAGBA', 'Adara', 'MASCULIN', '1998-04-28 02:00:00', NULL, NULL, NULL, NULL, '72 12 80 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:13:10', '2018-09-06 18:13:10'),
(454, 'KALONGA', 'Olga Reine Patricia', 'FEMININ', '2001-04-29 02:00:00', NULL, NULL, NULL, NULL, '62 59 54 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:15:41', '2018-09-06 18:15:41'),
(455, 'SAVADOGO', 'Abdallah Abou Bakr Ilyas', 'MASCULIN', '2001-01-06 02:00:00', NULL, NULL, NULL, NULL, '70 86 95 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:18:24', '2018-09-06 18:18:24'),
(456, 'BILA', 'Mashoud', 'MASCULIN', '1997-05-21 02:00:00', NULL, NULL, NULL, NULL, '67 34 56 31', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:21:08', '2018-09-06 18:21:08'),
(457, 'SAWADOGO', 'Raïssa Wendnonga', 'FEMININ', '1996-09-05 02:00:00', NULL, NULL, NULL, NULL, '56 79 16 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:23:22', '2018-09-06 18:23:22'),
(458, 'BASSOLE', 'Valantin', 'MASCULIN', '1998-03-02 02:00:00', NULL, NULL, NULL, NULL, '52 99 22 32', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:25:14', '2018-09-06 18:25:14'),
(459, 'OUEDRAOGO', 'Wenddimy Hyacinthe', 'MASCULIN', '1999-03-24 02:00:00', NULL, NULL, NULL, NULL, '60 07 02 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:27:45', '2018-09-06 18:27:45'),
(460, 'YANOGO', 'Pégdwendé Charles', 'MASCULIN', '1997-11-04 02:00:00', NULL, NULL, NULL, NULL, '52 47 93 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:29:44', '2018-09-06 18:29:44'),
(461, 'DENE', 'Latif Ibrahim', 'MASCULIN', '1998-02-20 02:00:00', NULL, NULL, NULL, NULL, '76 10 86 12', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:31:35', '2018-09-06 18:31:35'),
(462, 'ZOUNGRANA', 'Pingwende Wilfried Nicolas', 'MASCULIN', '1999-10-01 02:00:00', NULL, NULL, NULL, NULL, '66 94 00 91', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-06 18:33:52', '2018-09-06 18:33:52'),
(463, 'SAWADOGO', 'Nakeleguemdé Stephanie Marie Innocente', 'FEMININ', '2000-12-28 02:00:00', NULL, NULL, NULL, NULL, '74 89 27 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:03:39', '2018-09-07 08:03:39'),
(464, 'YAMEOGO', 'Philippe', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 89 37 24', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:07:07', '2018-09-07 08:07:07'),
(465, 'TONDE', 'Palingwendé Esther', 'FEMININ', '1999-09-16 02:00:00', NULL, NULL, NULL, NULL, '51 47 05 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:11:08', '2018-09-07 08:11:08'),
(466, 'BELEMLOABGA', 'Jean Charles', 'MASCULIN', '1999-10-07 02:00:00', NULL, NULL, NULL, NULL, '63 42 26 24', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:13:59', '2018-09-07 08:13:59'),
(467, 'KIENDREBEOGO', 'Théophile', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '51 26 41 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:15:47', '2018-09-07 08:15:47'),
(468, 'GNANKENE', 'Shayma Fawzia Laïla', 'FEMININ', '2002-04-21 02:00:00', NULL, NULL, NULL, NULL, '70 26 08 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:21:33', '2018-09-07 08:21:33'),
(469, 'ZOUGMORE', 'Pêgd-Wendé Léonce Martial', 'MASCULIN', '2000-06-27 02:00:00', NULL, NULL, NULL, NULL, '73 09 08 62', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:25:05', '2018-09-07 08:25:05'),
(470, 'ZONGO', 'Abdel Rhafik', 'MASCULIN', '2000-06-23 02:00:00', NULL, NULL, NULL, NULL, '70 43 68 25', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:27:38', '2018-09-07 08:27:38'),
(471, 'SINARE', 'Nathanaël Auguste', 'MASCULIN', '1999-09-22 02:00:00', NULL, NULL, NULL, NULL, '70 08 00 13', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:31:12', '2018-09-07 08:31:12'),
(472, 'ZOUNGRANA', 'Wendmita Brice', 'MASCULIN', '2000-01-03 02:00:00', NULL, NULL, NULL, NULL, '73 53 83 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:39:17', '2018-09-07 08:39:17'),
(473, 'SAKANDE', 'Hamdiat', 'FEMININ', '2000-09-12 02:00:00', NULL, NULL, NULL, NULL, '60 20 00 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:43:42', '2018-09-07 08:43:42'),
(474, 'SAWADOGO', 'Cottereau Fabienne Drecart Tarwendé', 'FEMININ', '1999-01-08 02:00:00', NULL, NULL, NULL, NULL, '61 49 66 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:48:54', '2018-09-07 08:48:54'),
(475, 'SOUBEIGA', 'Pagnagda Frédéric Sévérin', 'MASCULIN', '1999-09-20 02:00:00', NULL, NULL, NULL, NULL, '70 00 76 93', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:56:17', '2018-09-07 08:56:17'),
(476, 'ROUAMBA', 'Désiré', 'MASCULIN', '2000-11-22 02:00:00', NULL, NULL, NULL, NULL, '62 27 04 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 08:58:23', '2018-09-07 08:58:23'),
(477, 'ILBOUDO', 'Hubert', 'MASCULIN', '1999-11-04 02:00:00', NULL, NULL, NULL, NULL, '60 00 55  98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:00:10', '2018-09-07 09:00:10'),
(478, 'CONSIMBO', 'Boureima', 'MASCULIN', '1998-07-06 02:00:00', NULL, NULL, NULL, NULL, '70 83 91 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:03:24', '2018-09-07 09:03:24'),
(479, 'NIKIEMA', 'Wendnongdo Boris Daren', 'MASCULIN', '2000-08-06 02:00:00', NULL, NULL, NULL, NULL, '70 75 25 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:06:56', '2018-09-07 09:06:56'),
(480, 'NIKIEMA', 'Wendsom Bienvenue Mélina', 'MASCULIN', '2000-09-22 02:00:00', NULL, NULL, NULL, NULL, '71 60 39 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:09:47', '2018-09-07 09:09:47'),
(481, 'OUEDRAOGO', 'Adama Cheick Ahmed', 'MASCULIN', '1999-08-27 02:00:00', NULL, NULL, NULL, NULL, '73 80 48 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:35:08', '2018-09-07 09:35:08'),
(482, 'NACRO', 'Cheik Parfait Dieudonné', 'MASCULIN', '2000-02-24 02:00:00', NULL, NULL, NULL, NULL, '55 71 16 95', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:37:39', '2018-09-07 09:37:39'),
(483, 'OUEDRAOGO', 'Tiba Corneille Djamal Amir', 'MASCULIN', '2000-01-20 02:00:00', NULL, NULL, NULL, NULL, '72 27 70 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:40:02', '2018-09-07 09:40:02'),
(484, 'OUILY', 'Wendzomda Elvis Fadil', 'MASCULIN', '2000-10-28 02:00:00', NULL, NULL, NULL, NULL, '61 30 45 15', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:42:25', '2018-09-07 09:42:25'),
(485, 'OUEDRAOGO', 'Daouda', 'MASCULIN', '1999-08-24 02:00:00', NULL, NULL, NULL, NULL, '70 93 94 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:47:08', '2018-09-07 09:47:08'),
(486, 'PALE', 'Sié Maxime', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '75 41 16 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:49:45', '2018-09-07 09:49:45'),
(487, 'SAWADOGO', 'Jacques Yiryassa', 'MASCULIN', '1997-05-26 02:00:00', NULL, NULL, NULL, NULL, '61 29 66 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 09:52:48', '2018-09-07 09:52:48'),
(488, 'NIKIEMA', 'Abdoul-Kader', 'MASCULIN', '1999-10-26 02:00:00', NULL, NULL, NULL, NULL, '78 06 13 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:08:05', '2018-09-07 10:08:05'),
(489, 'NIKIEMA', 'Abdoul-Kader', 'MASCULIN', '1999-10-26 02:00:00', NULL, NULL, NULL, NULL, '78 06 13 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:15:57', '2018-09-07 10:15:57'),
(490, 'OUEDRAOGO', 'Kiswendsida Sidbéwendin Saturnin', 'MASCULIN', '1999-11-29 02:00:00', NULL, NULL, NULL, NULL, '62 95 71 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:19:01', '2018-09-07 10:19:01'),
(491, 'NADINGA', 'Danielle Hulda Grace', 'MASCULIN', '1999-11-07 02:00:00', NULL, NULL, NULL, NULL, '70 29 13 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:21:02', '2018-09-07 10:21:02'),
(492, 'OUEDRAOGO', 'Sibiri Frédéric', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '66 69 44 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:24:17', '2018-09-07 10:24:17'),
(493, 'OUEDRAOGO', 'Josué Pawendtaoré', 'MASCULIN', '1999-11-12 02:00:00', NULL, NULL, NULL, NULL, '60 79 74 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:26:27', '2018-09-07 10:26:27'),
(494, 'YAMEOGO', 'Sidpassata Bérénice', 'FEMININ', '2000-04-25 02:00:00', NULL, NULL, NULL, NULL, '72 92 52 39', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:28:54', '2018-09-07 10:28:54'),
(495, 'OUEDRAOGO', 'Nebnoma-Alban-Désiré', 'MASCULIN', '1999-07-06 02:00:00', NULL, NULL, NULL, NULL, '61 00 76 15', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:36:36', '2018-09-07 10:36:36'),
(496, 'BAGNAN', 'Jeanne Patricia', 'FEMININ', '1999-05-09 02:00:00', NULL, NULL, NULL, NULL, '70 14 73 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:49:42', '2018-09-07 10:49:42'),
(497, 'BARRY', 'Alcéni Yasser', 'MASCULIN', '2001-04-29 02:00:00', NULL, NULL, NULL, NULL, '63 57 51 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:54:35', '2018-09-07 10:54:35'),
(498, 'CISSE', 'Abdoul-kader', 'MASCULIN', '1999-10-30 02:00:00', NULL, NULL, NULL, NULL, '62 43 63 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 10:56:53', '2018-09-07 10:56:53'),
(499, 'CONGO', 'Mohamed Ghjiawed', 'MASCULIN', '2000-05-26 02:00:00', NULL, NULL, NULL, NULL, '60 86 36 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 11:00:32', '2018-09-07 11:00:32'),
(500, 'SOU', 'Dorianne Axelle Lauryn', 'FEMININ', '2000-03-19 02:00:00', NULL, NULL, NULL, NULL, '70 25 81 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 11:06:50', '2018-09-07 11:06:50'),
(501, 'DICKO', 'Alimatou', 'FEMININ', '1997-07-25 02:00:00', NULL, NULL, NULL, NULL, '72 47 69 13', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 11:09:12', '2018-09-07 11:09:12'),
(502, 'BASSINGA', 'Eustache Arthur', 'MASCULIN', '2000-10-20 02:00:00', NULL, NULL, NULL, NULL, '61 20 09 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 11:12:38', '2018-09-07 11:12:38'),
(503, 'ATHO', 'Jeremy Donadieu Joël Assangatra', 'MASCULIN', '2001-03-26 02:00:00', NULL, NULL, NULL, NULL, '62 77 02 76', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 11:20:54', '2018-09-07 11:20:54'),
(504, 'DERRA', 'Sara', 'FEMININ', '1999-09-18 02:00:00', NULL, NULL, NULL, NULL, '70 74 21 62', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 11:24:34', '2018-09-07 11:24:34'),
(505, 'COULIBALY', 'Prince Baba Daouda', 'MASCULIN', '1999-10-15 02:00:00', NULL, NULL, NULL, NULL, '65 86 59 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 11:28:02', '2018-09-07 11:28:02'),
(506, 'TIDIGA', 'Aïcha', 'FEMININ', '1999-12-09 02:00:00', NULL, NULL, NULL, NULL, '75 06 03 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-07 11:33:39', '2018-09-07 11:33:39'),
(507, 'DARAMKOUM', 'Ousséni', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 11 92 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 08:06:01', '2018-09-10 08:06:01'),
(508, 'BALBONE', 'Saïf Nasser Cédrick', 'MASCULIN', '2000-06-12 02:00:00', NULL, NULL, NULL, NULL, '79 71 66 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 08:13:31', '2018-09-10 08:13:31'),
(509, 'KABORE', 'Palingwendé Stive Arnaud', 'MASCULIN', '2000-08-23 02:00:00', NULL, NULL, NULL, NULL, '62 61 03 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 08:18:33', '2018-09-10 08:18:33'),
(510, 'KABORE', 'Gueswendé Elisée', 'MASCULIN', '2000-08-25 02:00:00', NULL, NULL, NULL, NULL, '63 79 72 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 08:21:19', '2018-09-10 08:21:19'),
(511, 'KALMOGO', 'Lucien', 'MASCULIN', '1998-01-08 02:00:00', NULL, NULL, NULL, NULL, '66 08 60 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 08:24:38', '2018-09-10 08:24:38'),
(512, 'MAIGA', 'Sid Mohamed', 'MASCULIN', '1999-02-14 02:00:00', NULL, NULL, NULL, NULL, '61 29 97 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 08:26:48', '2018-09-10 08:26:48'),
(513, 'KIMA', 'Davy Wendnem Fregisse', 'MASCULIN', '2000-06-17 02:00:00', NULL, NULL, NULL, NULL, '62 68 83 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 08:29:31', '2018-09-10 08:29:31'),
(514, 'LOFO', 'Axelle Astrid', 'FEMININ', '2000-09-24 02:00:00', NULL, NULL, NULL, NULL, '71 76 14 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 08:48:41', '2018-09-10 08:48:41'),
(515, 'DIALLO', 'Noelle Bienvenue Tik-Wendé', 'FEMININ', '2001-01-21 02:00:00', NULL, NULL, NULL, NULL, '62 17 53 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 08:53:46', '2018-09-10 08:53:46'),
(516, 'ASSAGWE', 'Ouèphoga Gloria Tryphose 2ème Jumelle', 'FEMININ', '2000-09-07 02:00:00', NULL, NULL, NULL, NULL, '61 70 65 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 08:59:40', '2018-09-10 08:59:40'),
(517, 'KAFANDO', 'Chouaïb', 'MASCULIN', '2000-12-06 02:00:00', NULL, NULL, NULL, NULL, '70 20 73 74', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 09:02:57', '2018-09-10 09:02:57'),
(518, 'KONATE', 'Nimawèlè Leila', 'FEMININ', '2000-08-25 02:00:00', NULL, NULL, NULL, NULL, '61 19 14 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 09:11:44', '2018-09-10 09:11:44'),
(519, 'HUYNH', 'Nina', 'FEMININ', '2001-01-23 02:00:00', NULL, NULL, NULL, NULL, '71 07 50 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 09:18:15', '2018-09-10 09:18:15'),
(520, 'SAWADOGO', 'Wend-Nonga Ibrahim', 'MASCULIN', '1999-11-13 02:00:00', NULL, NULL, NULL, NULL, '61 52 36 27', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 10:27:15', '2018-09-10 10:27:15'),
(521, 'ILBOUDO', 'Aguirata', 'FEMININ', '1999-12-09 02:00:00', NULL, NULL, NULL, NULL, '63 79 26 66', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 10:29:35', '2018-09-10 10:29:35'),
(522, 'KABORE', 'Wendpabasba William Nicodème', 'MASCULIN', '1999-03-01 02:00:00', NULL, NULL, NULL, NULL, '65 90 77 53', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 10:34:59', '2018-09-10 10:34:59'),
(523, 'KONATE', 'Joachim Nathanaël', 'MASCULIN', '1999-06-25 02:00:00', NULL, NULL, NULL, NULL, '62 84 67 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 10:37:42', '2018-09-10 10:37:42'),
(524, 'SAWADOGO', 'Patricia Mathilde Pingdwindé', 'FEMININ', '2000-03-17 02:00:00', NULL, NULL, NULL, NULL, '70 73 31 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 10:58:54', '2018-09-10 10:58:54'),
(525, 'SINOU', 'Mohamed', 'MASCULIN', '1999-11-22 02:00:00', NULL, NULL, NULL, NULL, '76 10 42 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 11:13:45', '2018-09-10 11:13:45'),
(526, 'YARO', 'Daouda', 'MASCULIN', '1999-08-10 02:00:00', NULL, NULL, NULL, NULL, '77 43 65 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 11:23:02', '2018-09-10 11:23:02'),
(527, 'COMPAORE', 'Soumaïla', 'MASCULIN', '1996-11-09 02:00:00', NULL, NULL, NULL, NULL, '65 22 95 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 11:25:59', '2018-09-10 11:25:59'),
(528, 'PEDEHOMBGA', 'Souley', 'MASCULIN', '1998-03-14 02:00:00', NULL, NULL, NULL, NULL, '63 31 32 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 11:36:02', '2018-09-10 11:36:02'),
(529, 'SAWADOGO', 'Abdramane', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 67 67 24', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 11:39:42', '2018-09-10 11:39:42'),
(530, 'TINDANO', 'Talara', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '64 12 47 76', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 11:41:53', '2018-09-10 11:41:53'),
(531, 'ZONGO', 'Béné-Wend-Sibri Emmanuel', 'MASCULIN', '1997-12-06 02:00:00', NULL, NULL, NULL, NULL, '66 66 97 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 11:45:15', '2018-09-10 11:45:15'),
(532, 'DJIBO', 'Hamadou', 'MASCULIN', '1997-02-10 02:00:00', NULL, NULL, NULL, NULL, '75 71 36 91', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 12:39:44', '2018-09-10 12:39:44'),
(533, 'DOULKOUM', 'Mariam', 'FEMININ', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '66 43 57 81', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 12:49:28', '2018-09-10 12:49:28'),
(534, 'BAZONGO', 'Desiré', 'MASCULIN', '1998-05-09 02:00:00', NULL, NULL, NULL, NULL, '66 17 68 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 12:51:50', '2018-09-10 12:51:50'),
(535, 'SEBEDO', 'Barthelemy', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 82 18 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-10 12:56:20', '2018-09-10 12:56:20'),
(536, 'OUATTARA', 'Aboubacar', 'MASCULIN', '1998-09-26 02:00:00', NULL, NULL, NULL, NULL, '77 76 91 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 08:25:24', '2018-09-11 08:25:24');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(537, 'MAIGA', 'Soufiane', 'MASCULIN', '2000-03-11 02:00:00', NULL, NULL, NULL, NULL, '70 61 55 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 08:29:48', '2018-09-11 08:29:48'),
(538, 'DABRE', 'Boukaré', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 47 75 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 08:33:42', '2018-09-11 08:33:42'),
(539, 'YONLI', 'Christine', 'FEMININ', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 30 91 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 08:37:50', '2018-09-11 08:37:50'),
(540, 'SIEZA', 'Gaston dit Bougnè', 'MASCULIN', '1999-06-02 02:00:00', NULL, NULL, NULL, NULL, '56 73 02 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 08:42:29', '2018-09-11 08:42:29'),
(541, 'SIEZA', 'Gaston dit Bougnè', 'MASCULIN', '1999-06-02 02:00:00', NULL, NULL, NULL, NULL, '56 73 02 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 08:43:30', '2018-09-11 08:43:30'),
(542, 'OUEDRAOGO', 'Edith', 'FEMININ', '1996-09-16 02:00:00', NULL, NULL, NULL, NULL, '55 02 18 12', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 08:45:47', '2018-09-11 08:45:47'),
(543, 'ZAN', 'Nafi Asétou', 'FEMININ', '1998-02-01 02:00:00', NULL, NULL, NULL, NULL, '76 66 03 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 08:48:42', '2018-09-11 08:48:42'),
(544, 'KONATE', 'Dissata', 'FEMININ', '1999-08-06 02:00:00', NULL, NULL, NULL, NULL, '65 21 24 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 08:56:08', '2018-09-11 08:56:08'),
(545, 'DJIGUEMDE', 'Daouda', 'MASCULIN', '1998-05-19 02:00:00', NULL, NULL, NULL, NULL, '72 08 20 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:00:14', '2018-09-11 09:00:14'),
(546, 'TOPAN', 'Lobono Mariétou', 'FEMININ', '1996-12-06 02:00:00', NULL, NULL, NULL, NULL, '51 37 10 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:03:17', '2018-09-11 09:03:17'),
(547, 'GANAME', 'Moustapha', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '66 85 89 30', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:08:35', '2018-09-11 09:08:35'),
(548, 'OUATTARA', 'Ibrahim', 'MASCULIN', '1998-07-22 02:00:00', NULL, NULL, NULL, NULL, '73 68 41 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:23:20', '2018-09-11 09:23:20'),
(549, 'OUEDRAOGO', 'Alida Reine Nadege', 'MASCULIN', '1999-10-20 02:00:00', NULL, NULL, NULL, NULL, '70 06 67 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:28:20', '2018-09-11 09:28:20'),
(550, 'KINDO', 'Rasmané', 'MASCULIN', '1998-11-17 02:00:00', NULL, NULL, NULL, NULL, '70 08 54 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:31:29', '2018-09-11 09:31:29'),
(551, 'SOUBEIGA', 'Laurent', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '51 61 54 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:34:07', '2018-09-11 09:34:07'),
(552, 'SAMANDOULGOU', 'Abdoul-Gafarou', 'MASCULIN', '1996-11-17 02:00:00', NULL, NULL, NULL, NULL, '72 76 34 81', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:39:52', '2018-09-11 09:39:52'),
(553, 'KOURAOGO', 'Issouf', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '67 12 78 66', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:42:17', '2018-09-11 09:42:17'),
(554, 'YONLI', 'Moussa', 'MASCULIN', '2001-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 35 25 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:44:41', '2018-09-11 09:44:41'),
(555, 'BAKOUAN', 'Youba', 'MASCULIN', '1997-10-17 02:00:00', NULL, NULL, NULL, NULL, '65 89 65 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:47:15', '2018-09-11 09:47:15'),
(556, 'SORE', 'Abdoul-Mouhoussine', 'MASCULIN', '1999-11-11 02:00:00', NULL, NULL, NULL, NULL, '63 58 17 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:50:07', '2018-09-11 09:50:07'),
(557, 'ZEMBA', 'Claude', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '60 05 02 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 09:54:49', '2018-09-11 09:54:49'),
(558, 'GUIGMA', 'Ahmed Isaac Gal-Yam', 'MASCULIN', '1999-09-04 02:00:00', NULL, NULL, NULL, NULL, '60 85 02 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:15:08', '2018-09-11 10:15:08'),
(559, 'COULIDIATI', 'Lan-Mamba Tana Grâce Salomée', 'FEMININ', '1999-08-23 02:00:00', NULL, NULL, NULL, NULL, '73 14 3 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:20:10', '2018-09-11 10:20:10'),
(560, 'NIKIEMA', 'Richard Gilbert', 'MASCULIN', '1999-08-30 02:00:00', NULL, NULL, NULL, NULL, '60 90 03 31', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:26:08', '2018-09-11 10:26:08'),
(561, 'OUATTARA', 'Mory Allah Mandogo Cédrik', 'MASCULIN', '1998-04-05 02:00:00', NULL, NULL, NULL, NULL, '60 84 40 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:29:48', '2018-09-11 10:29:48'),
(562, 'SIDIBIE', 'David Emmanuel', 'MASCULIN', '1999-10-09 02:00:00', NULL, NULL, NULL, NULL, '63 43 95 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:31:51', '2018-09-11 10:31:51'),
(563, 'BAMBARA', 'Olga Marie Martine', 'FEMININ', '2000-02-11 02:00:00', NULL, NULL, NULL, NULL, '25 37 53 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:34:05', '2018-09-11 10:34:05'),
(564, 'ZALLE', 'Cheick Mohamed', 'MASCULIN', '2001-07-27 02:00:00', NULL, NULL, NULL, NULL, '56 08 17 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:36:44', '2018-09-11 10:36:44'),
(565, 'OUEDRAOGO', 'Fadil Arif', 'MASCULIN', '2000-08-25 02:00:00', NULL, NULL, NULL, NULL, '70 14 38 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:41:27', '2018-09-11 10:41:27'),
(566, 'OUATTARA', 'Mafarama Yasmine', 'FEMININ', '2000-03-19 02:00:00', NULL, NULL, NULL, NULL, '62 81 15 30', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:45:35', '2018-09-11 10:45:35'),
(567, 'SAWADOGO', 'Wendpanga Haoua', 'FEMININ', '1999-10-07 02:00:00', NULL, NULL, NULL, NULL, '63 38 51 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:47:37', '2018-09-11 10:47:37'),
(568, 'OUATTARA', 'Fadouba Yaya', 'MASCULIN', '1999-06-16 02:00:00', NULL, NULL, NULL, NULL, '71 53 33 19', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:50:58', '2018-09-11 10:50:58'),
(569, 'YAO', 'Sanlé Nicolas', 'MASCULIN', '1998-12-06 02:00:00', NULL, NULL, NULL, NULL, '76 75 20 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:54:03', '2018-09-11 10:54:03'),
(570, 'BAKO', 'B. Ido Apollinaire', 'MASCULIN', '1999-10-07 02:00:00', NULL, NULL, NULL, NULL, '62 26 02 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 10:58:16', '2018-09-11 10:58:16'),
(571, 'ZOUNGRANA', 'Wendpagnagdé Jean William Nelson', 'MASCULIN', '1999-12-09 02:00:00', NULL, NULL, NULL, NULL, '57 28 14 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 11:01:29', '2018-09-11 11:01:29'),
(572, 'SORY', 'Siépoua Gnahagnon Emmanuel', 'MASCULIN', '1998-05-31 02:00:00', NULL, NULL, NULL, NULL, '61 10 01 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 11:05:42', '2018-09-11 11:05:42'),
(573, 'SON', 'Bamongbassé Rachidatou', 'FEMININ', '1999-05-14 02:00:00', NULL, NULL, NULL, NULL, '70 11 50 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 11:08:17', '2018-09-11 11:08:17'),
(574, 'ZON', 'Djamilatou', 'FEMININ', '2000-12-04 02:00:00', NULL, NULL, NULL, NULL, '60 75 79 87', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 11:10:56', '2018-09-11 11:10:56'),
(575, 'MADIEGA', 'Blaise', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 08 88 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 12:13:09', '2018-09-11 12:13:09'),
(576, 'OUATTARA', 'Domba Fabrice', 'MASCULIN', '2000-05-01 02:00:00', NULL, NULL, NULL, NULL, '62 90 72 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 12:16:37', '2018-09-11 12:16:37'),
(577, 'OUENA', 'Ouessomou Dorcas Victoria', 'FEMININ', '2000-10-18 02:00:00', NULL, NULL, NULL, NULL, '67 12 88 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 12:40:04', '2018-09-11 12:40:04'),
(578, 'SEMDE', 'Guitamogo Ben Oumar Aubin', 'MASCULIN', '1999-03-14 02:00:00', NULL, NULL, NULL, NULL, '66 12 99 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 12:50:53', '2018-09-11 12:50:53'),
(579, 'SOULGA', 'Idrissa', 'MASCULIN', '2000-03-10 02:00:00', NULL, NULL, NULL, NULL, '72 17 83 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 12:54:44', '2018-09-11 12:54:44'),
(580, 'SAWADOGO', 'Pabéega-Wendé Saturnin', 'MASCULIN', '1999-12-22 02:00:00', NULL, NULL, NULL, NULL, '65 93 13 40', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 12:59:55', '2018-09-11 12:59:55'),
(581, 'SANA', 'Hassan', 'MASCULIN', '1999-02-23 02:00:00', NULL, NULL, NULL, NULL, '73 79 26 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:03:23', '2018-09-11 13:03:23'),
(582, 'TINDANO', 'Bammanou Oualoyama Stéphanie', 'FEMININ', '2000-06-13 02:00:00', NULL, NULL, NULL, NULL, '73 00 55 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:06:52', '2018-09-11 13:06:52'),
(583, 'TANKOANO', 'Soukeïna Stéphanie Youmenli', 'FEMININ', '2000-12-20 02:00:00', NULL, NULL, NULL, NULL, '60 57 11 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:10:30', '2018-09-11 13:10:30'),
(584, 'SAWADOGO', 'Judicaël Grégoire Wendmangda', 'MASCULIN', '2000-11-05 02:00:00', NULL, NULL, NULL, NULL, '63 64 44 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:13:09', '2018-09-11 13:13:09'),
(585, 'SANON', 'Arzouma Franck Roland', 'MASCULIN', '2000-09-15 02:00:00', NULL, NULL, NULL, NULL, '60 45 71 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:15:13', '2018-09-11 13:15:13'),
(586, 'SAWADOGO', 'Wendmanegdo Rodrigue Ariste', 'MASCULIN', '1999-03-09 02:00:00', NULL, NULL, NULL, NULL, '70 06 39 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:18:57', '2018-09-11 13:18:57'),
(587, 'SOMA', 'Wékiema Ruth Sharrifah', 'FEMININ', '2000-04-06 02:00:00', NULL, NULL, NULL, NULL, '62 11 84 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:23:38', '2018-09-11 13:23:38'),
(588, 'NIKIEMA', 'Roland', 'MASCULIN', '1999-05-13 02:00:00', NULL, NULL, NULL, NULL, '65 61 01 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:26:11', '2018-09-11 13:26:11'),
(589, 'OUATTARA', 'San Manuel', 'MASCULIN', '1999-12-25 02:00:00', NULL, NULL, NULL, NULL, '61 12 58 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:28:23', '2018-09-11 13:28:23'),
(590, 'TIENDREBEOGO', 'Elsa Lorraine Mélissa', 'FEMININ', '2000-12-05 02:00:00', NULL, NULL, NULL, NULL, '70 20 64 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:32:51', '2018-09-11 13:32:51'),
(591, 'ZAMTAKO', 'Abdoul Moussine Kabir', 'MASCULIN', '1999-03-27 02:00:00', NULL, NULL, NULL, NULL, '52 77 90 58', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:36:04', '2018-09-11 13:36:04'),
(592, 'DA', 'Siebou Martin Dinarè', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 23 95 95', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:41:14', '2018-09-11 13:41:14'),
(593, 'SAWADOGO', 'Sophie', 'FEMININ', '1997-03-18 02:00:00', NULL, NULL, NULL, NULL, '56 93 68 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:44:39', '2018-09-11 13:44:39'),
(594, 'TIENTEGA', 'Wendpayangdé Dimitri', 'MASCULIN', '1999-05-18 02:00:00', NULL, NULL, NULL, NULL, '76 75 30 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:47:46', '2018-09-11 13:47:46'),
(595, 'TANKOANO', 'Kildjoa', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '56 56 72 74', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:50:01', '2018-09-11 13:50:01'),
(596, 'OUEDRAOGO', 'Sountongnoma Farida Stéphanie', 'FEMININ', '1999-09-23 02:00:00', NULL, NULL, NULL, NULL, '70 40 22 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:52:46', '2018-09-11 13:52:46'),
(597, 'OUEDRAOGO', 'David Steve Hanniel', 'MASCULIN', '2000-07-27 02:00:00', NULL, NULL, NULL, NULL, '72 15 60 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 13:58:31', '2018-09-11 13:58:31'),
(598, 'TIENDREBEOGO', 'Arsène Ousmane', 'MASCULIN', '2000-03-26 02:00:00', NULL, NULL, NULL, NULL, '73 32 54 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:00:46', '2018-09-11 14:00:46'),
(599, 'SAWADOGO', 'Wilfried Wendémi', 'MASCULIN', '1998-10-07 02:00:00', NULL, NULL, NULL, NULL, '63 46 00 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:05:33', '2018-09-11 14:05:33'),
(600, 'TAPSOBA', 'Sammuel', 'MASCULIN', '1997-06-06 02:00:00', NULL, NULL, NULL, NULL, '61 61 10 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:08:07', '2018-09-11 14:08:07'),
(601, 'SAWADOGO', 'Tégawendé Dieudonné', 'MASCULIN', '1999-06-15 02:00:00', NULL, NULL, NULL, NULL, '60 18 77 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:11:33', '2018-09-11 14:11:33'),
(602, 'NIKIEMA', 'Somlassida Mariane', 'FEMININ', '2000-08-19 02:00:00', NULL, NULL, NULL, NULL, '60 69 75 83', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:14:48', '2018-09-11 14:14:48'),
(603, 'SANON', 'Marthe Gwladys', 'FEMININ', '1999-03-30 02:00:00', NULL, NULL, NULL, NULL, '60 53 01 75', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:35:30', '2018-09-11 14:35:30'),
(604, 'SAWADOGO', 'Pengdewendé Aimée Rose', 'FEMININ', '1998-07-10 02:00:00', NULL, NULL, NULL, NULL, '70 80 80 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:41:08', '2018-09-11 14:41:08'),
(605, 'SANDWIDI', 'Cynthia Fadila', 'FEMININ', '2000-08-13 02:00:00', NULL, NULL, NULL, NULL, '78 60 00 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:44:56', '2018-09-11 14:44:56'),
(606, 'GO', 'Lawanagon Judicaël', 'MASCULIN', '1999-12-17 02:00:00', NULL, NULL, NULL, NULL, '60 94 04 71', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:47:43', '2018-09-11 14:47:43'),
(607, 'DAKUYO', 'Tanké Steve Constantin', 'MASCULIN', '2000-04-27 02:00:00', NULL, NULL, NULL, NULL, '70 26 53 83', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:49:56', '2018-09-11 14:49:56'),
(608, 'DIOURBIEL', 'Marie Stella Jessica', 'FEMININ', '2000-06-25 02:00:00', NULL, NULL, NULL, NULL, '70 26 11 13', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 14:52:29', '2018-09-11 14:52:29'),
(609, 'SANFO', 'Houda', 'MASCULIN', '1999-03-03 02:00:00', NULL, NULL, NULL, NULL, '73 41 30 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 15:13:45', '2018-09-11 15:13:45'),
(610, 'KABORE', 'Serge', 'MASCULIN', '1998-09-06 02:00:00', NULL, NULL, NULL, NULL, '65 28 75 12', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 15:26:54', '2018-09-11 15:26:54'),
(611, 'YAMEOGO', 'Wendpagnagdé François d\'Assises', 'MASCULIN', '1996-10-03 02:00:00', NULL, NULL, NULL, NULL, '63 72 28 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 15:30:49', '2018-09-11 15:30:49'),
(612, 'KAGAMBEGA', 'Appolinaire', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 81 71 30', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 15:35:58', '2018-09-11 15:35:58'),
(613, 'COMBOÏGO', 'Bawindsom Judicaël', 'MASCULIN', '1999-02-07 02:00:00', NULL, NULL, NULL, NULL, '55 26 68 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 15:51:25', '2018-09-11 15:51:25'),
(614, 'TRAORE', 'Hadjaratou Tawfikha', 'FEMININ', '2001-07-16 02:00:00', NULL, NULL, NULL, NULL, '70 03 97 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:02:32', '2018-09-11 16:02:32'),
(615, 'ZOMA', 'Wendenmi Abdoul Moumouni', 'MASCULIN', '1999-09-11 02:00:00', NULL, NULL, NULL, NULL, '70 52 98 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:06:12', '2018-09-11 16:06:12'),
(616, 'BELEMOUIDOUGOU', 'Kouilregma Laurent', 'MASCULIN', '1997-01-27 02:00:00', NULL, NULL, NULL, NULL, '73 77 62 27', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:11:16', '2018-09-11 16:11:16'),
(617, 'RAMDE', 'Sandaogo', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 42 92 02', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:16:19', '2018-09-11 16:16:19'),
(618, 'WALI', 'Palamanga Corneille', 'FEMININ', '1999-12-18 02:00:00', NULL, NULL, NULL, NULL, '62 82 78 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:19:41', '2018-09-11 16:19:41'),
(619, 'KABORE', 'Arouna', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 31 44 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:21:21', '2018-09-11 16:21:21'),
(620, 'ZONGO', 'Tindegma', 'MASCULIN', '1997-04-30 02:00:00', NULL, NULL, NULL, NULL, '56 26 68 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:23:08', '2018-09-11 16:23:08'),
(621, 'KABORE', 'Hamed Romaric', 'MASCULIN', '1999-11-28 02:00:00', NULL, NULL, NULL, NULL, '62 82 32 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:32:02', '2018-09-11 16:32:02'),
(622, 'NANA', 'Sibiri Emmanuel', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '63 11 89 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:33:45', '2018-09-11 16:33:45'),
(623, 'SANDWIDI', 'Souleymane', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 88 18 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:36:04', '2018-09-11 16:36:04'),
(624, 'KERE', 'Issaka', 'MASCULIN', '1997-05-12 02:00:00', NULL, NULL, NULL, NULL, '60 12 75 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:38:54', '2018-09-11 16:38:54'),
(625, 'KERE', 'Innocent', 'MASCULIN', '1997-12-27 02:00:00', NULL, NULL, NULL, NULL, '62 38 81 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:41:14', '2018-09-11 16:41:14'),
(626, 'ZOUMBARE', 'Hamidou', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '66 59 29 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:44:09', '2018-09-11 16:44:09'),
(627, 'ZARE', 'Alassane', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '57 82 09 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 16:47:02', '2018-09-11 16:47:02'),
(628, 'SANOU', 'Franck Romario', 'MASCULIN', '2000-08-24 02:00:00', NULL, NULL, NULL, NULL, '70 22 98 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:01:33', '2018-09-11 17:01:33'),
(629, 'NABALOUM', 'Laetitia Bénédicte', 'MASCULIN', '2000-03-12 02:00:00', NULL, NULL, NULL, NULL, '73 35 00 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:03:48', '2018-09-11 17:03:48'),
(630, 'KAMA', 'Léa Caroline', 'FEMININ', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 86 20 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:07:23', '2018-09-11 17:07:23'),
(631, 'WARMA', 'Toro David', 'MASCULIN', '1999-09-13 02:00:00', NULL, NULL, NULL, NULL, '61 36 01 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:10:06', '2018-09-11 17:10:06'),
(632, 'TOUGMA', 'Eloi', 'MASCULIN', '1997-05-24 02:00:00', NULL, NULL, NULL, NULL, '63 36 15 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:14:19', '2018-09-11 17:14:19'),
(633, 'BENIN', 'Massabié Wendyam Zachée', 'MASCULIN', '2000-04-15 02:00:00', NULL, NULL, NULL, NULL, '67 38 98 93', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:24:28', '2018-09-11 17:24:28'),
(634, 'NIKIEMA', 'Frédéric Eloi', 'MASCULIN', '1997-12-01 02:00:00', NULL, NULL, NULL, NULL, '67 45 38 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:27:14', '2018-09-11 17:27:14'),
(635, 'KAFANDO', 'Sidbewendin Donald', 'MASCULIN', '2000-07-04 02:00:00', NULL, NULL, NULL, NULL, '70 11 98 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:30:11', '2018-09-11 17:30:11'),
(636, 'KONATE', 'Franck Regis', 'MASCULIN', '1999-10-17 02:00:00', NULL, NULL, NULL, NULL, '67 38 58 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:36:16', '2018-09-11 17:36:16'),
(637, 'COMPAORE', 'Aboubacar Amal Charif', 'MASCULIN', '2000-01-06 02:00:00', NULL, NULL, NULL, NULL, '74 79 78 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:40:36', '2018-09-11 17:40:36'),
(638, 'SANDWIDI', 'Korotouma', 'MASCULIN', '1996-04-27 02:00:00', NULL, NULL, NULL, NULL, '60 87 44 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:43:55', '2018-09-11 17:43:55'),
(639, 'TANKOANO', 'Possibo Fatimata', 'FEMININ', '1999-08-14 02:00:00', NULL, NULL, NULL, NULL, '76 24 83 58', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:49:45', '2018-09-11 17:49:45'),
(640, 'YAMEOGO', 'Jachdiel Aurèle Gracias', 'MASCULIN', '1998-01-18 02:00:00', NULL, NULL, NULL, NULL, '68 52 77 30', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:53:19', '2018-09-11 17:53:19'),
(641, 'OUEDRAOGO', 'Kouraïratou', 'FEMININ', '2000-03-12 02:00:00', NULL, NULL, NULL, NULL, '71 83 18 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:57:15', '2018-09-11 17:57:15'),
(642, 'DAYAMBA', 'Inoussa', 'MASCULIN', '1999-10-05 02:00:00', NULL, NULL, NULL, NULL, '55 54 38 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 17:59:22', '2018-09-11 17:59:22'),
(643, 'BELEMKOABGA', 'Téwendé Judicaël Adrien', 'MASCULIN', '1996-09-20 02:00:00', NULL, NULL, NULL, NULL, '70 51 01 66', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:03:19', '2018-09-11 18:03:19'),
(644, 'NARE', 'Abou Sofiane Pegdwendé', 'MASCULIN', '2001-06-28 02:00:00', NULL, NULL, NULL, NULL, '70 38 37 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:06:50', '2018-09-11 18:06:50'),
(645, 'DIAPA', 'Arouna', 'MASCULIN', '1999-05-20 02:00:00', NULL, NULL, NULL, NULL, '73 08 73 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:10:27', '2018-09-11 18:10:27'),
(646, 'GUINKO', 'Zéinabou', 'FEMININ', '1998-07-25 02:00:00', NULL, NULL, NULL, NULL, '60 35 00 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:14:10', '2018-09-11 18:14:10'),
(647, 'GUIGMA', 'Wend-Yam Balkissa', 'FEMININ', '1997-11-25 02:00:00', NULL, NULL, NULL, NULL, '51 02 58 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:18:13', '2018-09-11 18:18:13'),
(648, 'BALIMA', 'Oussaho', 'MASCULIN', '1999-01-15 02:00:00', NULL, NULL, NULL, NULL, '71 09 15 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:21:09', '2018-09-11 18:21:09'),
(649, 'PARKOUDA', 'Sylvain', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 88 26 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:23:35', '2018-09-11 18:23:35'),
(650, 'OUEDRAOGO', 'Ali', 'MASCULIN', '1998-09-04 02:00:00', NULL, NULL, NULL, NULL, '71 15 38 76', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:25:38', '2018-09-11 18:25:38'),
(651, 'NACANABO', 'Hermann Clovis', 'MASCULIN', '1998-09-25 02:00:00', NULL, NULL, NULL, NULL, '71 01 41 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:28:35', '2018-09-11 18:28:35'),
(652, 'RIBOU', 'Vincent', 'MASCULIN', '1999-09-28 02:00:00', NULL, NULL, NULL, NULL, '74 79 50 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:32:10', '2018-09-11 18:32:10'),
(653, 'OUEDRAOGO', 'Ludwig-Ian Nicolas', 'MASCULIN', '2000-03-07 02:00:00', NULL, NULL, NULL, NULL, '70 25 58 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:39:26', '2018-09-11 18:39:26'),
(654, 'NANA', 'Jéssica Maryse Bénéwendé', 'FEMININ', '2001-02-19 02:00:00', NULL, NULL, NULL, NULL, '70 26 73 30', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:41:46', '2018-09-11 18:41:46'),
(655, 'KIEMDE', 'Elischa Lovanine Paulina Bark-Wendé', 'FEMININ', '1999-08-24 02:00:00', NULL, NULL, NULL, NULL, '78 80 95 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:44:18', '2018-09-11 18:44:18'),
(656, 'COMPAORE', 'Getwendé Bienvenue Marie Brice', 'MASCULIN', '1996-11-24 02:00:00', NULL, NULL, NULL, NULL, '62 09 07 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:46:53', '2018-09-11 18:46:53'),
(657, 'MAIGA', 'Rafiatou', 'FEMININ', '2000-02-17 02:00:00', NULL, NULL, NULL, NULL, '52 05 57 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:49:03', '2018-09-11 18:49:03'),
(658, 'BICABA', 'V. Dofinizoumou Stanislas Ferdinand', 'MASCULIN', '2001-01-10 02:00:00', NULL, NULL, NULL, NULL, '62 84 73 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:51:19', '2018-09-11 18:51:19'),
(659, 'KABORE', 'Sévérin Gilles Venceslas', 'MASCULIN', '1999-10-27 02:00:00', NULL, NULL, NULL, NULL, '63 77 60 69', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:53:49', '2018-09-11 18:53:49'),
(660, 'NIKIEMA', 'Wendlasida Christian Alexandre', 'MASCULIN', '2000-04-22 02:00:00', NULL, NULL, NULL, NULL, '75 04 88 74', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 18:56:30', '2018-09-11 18:56:30'),
(661, 'YELKOUNI', 'Abdou-Djélile', 'MASCULIN', '1999-04-10 02:00:00', NULL, NULL, NULL, NULL, '67 02 44 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 19:13:57', '2018-09-11 19:13:57'),
(662, 'WERMI', 'Adama', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '67 55 15 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 19:16:58', '2018-09-11 19:16:58'),
(663, 'OUEDRAOGO', 'Salif', 'MASCULIN', '1998-10-06 02:00:00', NULL, NULL, NULL, NULL, '65 06 82 24', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 19:19:18', '2018-09-11 19:19:18'),
(664, 'GANAME', 'Domique', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '64 46 99 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 19:21:34', '2018-09-11 19:21:34'),
(665, 'KOUDAMA', 'Ouèhouyiguèni Angèle', 'FEMININ', '1998-03-28 02:00:00', NULL, NULL, NULL, NULL, '78 59 02 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 19:26:42', '2018-09-11 19:26:42'),
(666, 'OUEDRAOGO', 'Alizèta', 'FEMININ', '1999-06-13 02:00:00', NULL, NULL, NULL, NULL, '67 10 63 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 19:29:14', '2018-09-11 19:29:14'),
(667, 'OUEDRAOGO', 'Latifatou', 'FEMININ', '2000-04-05 02:00:00', NULL, NULL, NULL, NULL, '60 54 52 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 19:32:55', '2018-09-11 19:32:55'),
(668, 'OUEDRAOGO', 'Cheick Omar', 'MASCULIN', '1998-04-22 02:00:00', NULL, NULL, NULL, NULL, '60 58 31 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-11 19:35:54', '2018-09-11 19:35:54'),
(669, 'OUEDRAOGO', 'Emmanuel Pegdwendé', 'MASCULIN', '1998-12-23 02:00:00', NULL, NULL, NULL, NULL, '79 02 10 75', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 07:40:06', '2018-09-12 07:40:06'),
(670, 'GUIRO', 'Sabirina', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 37 72 83', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 07:44:35', '2018-09-12 07:44:35'),
(671, 'SAWADOGO', 'Mariam', 'FEMININ', '1997-09-14 02:00:00', NULL, NULL, NULL, NULL, '72 21 08 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 07:48:24', '2018-09-12 07:48:24'),
(672, 'KINDO', 'Adama', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '65 37 54 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 07:51:30', '2018-09-12 07:51:30'),
(673, 'OUEDRAOGO', 'Boureima', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '60 75 42 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 07:53:18', '2018-09-12 07:53:18'),
(674, 'OUEDRAOGO', 'Pingdwendé Fatimata', 'FEMININ', '1999-03-16 02:00:00', NULL, NULL, NULL, NULL, '63 63 81 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 07:56:48', '2018-09-12 07:56:48'),
(675, 'OUEDRAOGO', 'Kobo', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '64 89 15 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 07:58:31', '2018-09-12 07:58:31'),
(676, 'OUEDRAOGO', 'Modibo', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 65 90 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:05:14', '2018-09-12 08:05:14'),
(677, 'OUEDRAOGO', 'Payidwendé Médard Emmanuel', 'MASCULIN', '1999-06-08 02:00:00', NULL, NULL, NULL, NULL, '62 47 51 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:07:36', '2018-09-12 08:07:36'),
(678, 'OUEDRAOGO', 'Melissa Carolle', 'FEMININ', '1999-03-03 02:00:00', NULL, NULL, NULL, NULL, '71 58 09 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:09:52', '2018-09-12 08:09:52'),
(679, 'BARRY', 'Walid', 'MASCULIN', '1999-09-10 02:00:00', NULL, NULL, NULL, NULL, '75 29 33 81', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:11:52', '2018-09-12 08:11:52'),
(680, 'SAWADOGO', 'Yacine Faïçal', 'MASCULIN', '2000-01-11 02:00:00', NULL, NULL, NULL, NULL, '71 72 35 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:17:01', '2018-09-12 08:17:01'),
(681, 'YAMEOGO', 'Wendpagnangdé Raïssa', 'FEMININ', '1999-09-06 02:00:00', NULL, NULL, NULL, NULL, '60 51 87 68', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:20:47', '2018-09-12 08:20:47'),
(682, 'ZIGANE', 'Kédinla Yann Martial', 'MASCULIN', '2000-06-29 02:00:00', NULL, NULL, NULL, NULL, '51 32 51 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:25:48', '2018-09-12 08:25:48'),
(683, 'KAFANDO', 'Tounwendsida Bertrand', 'MASCULIN', '2000-09-07 02:00:00', NULL, NULL, NULL, NULL, '60 50 61 25', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:32:46', '2018-09-12 08:32:46'),
(684, 'KABORE', 'Wendnonga Romuald Hervé', 'MASCULIN', '1999-06-17 02:00:00', NULL, NULL, NULL, NULL, '51 42 99 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:43:08', '2018-09-12 08:43:08'),
(685, 'KABORE', 'Idrissa', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '78 04 95 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:45:36', '2018-09-12 08:45:36'),
(686, 'KOMBASSERE', 'Wendwaoga Marie-Laure', 'FEMININ', '1999-12-04 02:00:00', NULL, NULL, NULL, NULL, '70 12 02 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:49:41', '2018-09-12 08:49:41'),
(687, 'MILLOGO', 'Stéphane', 'MASCULIN', '1999-11-26 02:00:00', NULL, NULL, NULL, NULL, '71 99 01 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:51:57', '2018-09-12 08:51:57'),
(688, 'OUANGRE', 'Michel', 'MASCULIN', '1999-09-29 02:00:00', NULL, NULL, NULL, NULL, '62 25 61 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:56:27', '2018-09-12 08:56:27'),
(689, 'SANA', 'Lookman Ossan', 'MASCULIN', '1999-04-26 02:00:00', NULL, NULL, NULL, NULL, '70 50 46 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 08:59:08', '2018-09-12 08:59:08'),
(690, 'OUEDRAOGO', 'Hado Pascaline', 'FEMININ', '1998-08-16 02:00:00', NULL, NULL, NULL, NULL, '75 15 89 95', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:01:44', '2018-09-12 09:01:44'),
(691, 'BALIMA', 'Delwendé Nouria', 'FEMININ', '2000-08-28 02:00:00', NULL, NULL, NULL, NULL, '73 13 01 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:06:33', '2018-09-12 09:06:33'),
(692, 'KOLOGO', 'Wendpanga Jean Eliézer', 'MASCULIN', '2000-05-10 02:00:00', NULL, NULL, NULL, NULL, '72 23 53 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:09:41', '2018-09-12 09:09:41'),
(693, 'MEDA', 'Zièkiè Patrice', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 00 45 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:11:28', '2018-09-12 09:11:28'),
(694, 'GUISSOU', 'Fayçal', 'MASCULIN', '1999-09-01 02:00:00', NULL, NULL, NULL, NULL, '74 76 51 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:13:13', '2018-09-12 09:13:13'),
(695, 'SOME', 'José Martinien Héma Kakénè', 'FEMININ', '1996-01-03 02:00:00', NULL, NULL, NULL, NULL, '70 02 21 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:16:24', '2018-09-12 09:16:24'),
(696, 'SOULAMA', 'Fehayé Aminata', 'FEMININ', '1998-04-04 02:00:00', NULL, NULL, NULL, NULL, '78 00 66 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:31:02', '2018-09-12 09:31:02'),
(697, 'SIMPORE', 'Hadissa Lauraine Amelia', 'FEMININ', '2000-08-17 02:00:00', NULL, NULL, NULL, NULL, '63 19 09 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:34:46', '2018-09-12 09:34:46'),
(698, 'SOULI', 'Patindé Astride', 'FEMININ', '1999-10-06 02:00:00', NULL, NULL, NULL, NULL, '61 47 84 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:42:29', '2018-09-12 09:42:29'),
(699, 'SAWADOGO', 'Wend Waouga', 'MASCULIN', '1998-02-11 02:00:00', NULL, NULL, NULL, NULL, '63 85 54 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:48:30', '2018-09-12 09:48:30'),
(700, 'SIMPORE', 'Fabrice', 'MASCULIN', '1997-09-10 02:00:00', NULL, NULL, NULL, NULL, '73 78 28 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:53:33', '2018-09-12 09:53:33'),
(701, 'BAMOUNI', 'Abdul-Kader', 'MASCULIN', '1999-04-01 02:00:00', NULL, NULL, NULL, NULL, '60 02 52 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 09:57:23', '2018-09-12 09:57:23'),
(702, 'IRIA', 'Issouf', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 03 95 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 10:00:33', '2018-09-12 10:00:33'),
(703, 'SAWADOGO', 'Wendpouiré Sophonie Josué', 'MASCULIN', '2000-07-24 02:00:00', NULL, NULL, NULL, NULL, '60 16 84 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 10:03:36', '2018-09-12 10:03:36'),
(704, 'GUISSOU', 'Clarisse', 'FEMININ', '1999-08-11 02:00:00', NULL, NULL, NULL, NULL, '74 39 80 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 10:05:36', '2018-09-12 10:05:36'),
(705, 'BAGAGNAN', 'Abdoul Ganihou', 'MASCULIN', '1999-11-09 02:00:00', NULL, NULL, NULL, NULL, '63 91 53 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:14:37', '2018-09-12 13:14:37'),
(706, 'KAMBIRE', 'Sansan Bia Miguel', 'MASCULIN', '2000-02-09 02:00:00', NULL, NULL, NULL, NULL, '60 38 82 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:18:21', '2018-09-12 13:18:21'),
(707, 'NERE', 'Dindani Keycha', 'FEMININ', '2000-11-25 02:00:00', NULL, NULL, NULL, NULL, '70 11 63 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:23:47', '2018-09-12 13:23:47'),
(708, 'KIRAKOYA', 'Idiame Fadiga', 'MASCULIN', '1998-10-11 02:00:00', NULL, NULL, NULL, NULL, '51 48 05 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:28:54', '2018-09-12 13:28:54'),
(709, 'SIRI', 'Arouna', 'MASCULIN', '2000-02-10 02:00:00', NULL, NULL, NULL, NULL, '75 85 15 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:32:11', '2018-09-12 13:32:11'),
(710, 'AGBALI', 'Etonam Grace', 'FEMININ', '2000-10-27 02:00:00', NULL, NULL, NULL, NULL, '55 10 57 27', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:36:41', '2018-09-12 13:36:41'),
(711, 'MAIGA', 'Mahamadi', 'MASCULIN', '1998-06-07 02:00:00', NULL, NULL, NULL, NULL, '72 35 05 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:39:15', '2018-09-12 13:39:15'),
(712, 'SAWADOGO', 'Pengd-Wendé Aïsseta', 'FEMININ', '1999-06-27 02:00:00', NULL, NULL, NULL, NULL, '64 04 29 83', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:41:36', '2018-09-12 13:41:36'),
(713, 'YERBANGA', 'Wendwaoga Arzouma Yves', 'MASCULIN', '2000-05-19 02:00:00', NULL, NULL, NULL, NULL, '63 75 84 02', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:44:19', '2018-09-12 13:44:19'),
(714, 'ILBOUDO', 'Raguinéwendé', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '75 50 97 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:46:36', '2018-09-12 13:46:36'),
(715, 'KORBEOGO', 'Nafissatou (1ère Jumelle)', 'FEMININ', '1999-03-02 02:00:00', NULL, NULL, NULL, NULL, '55 38 95 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 13:59:43', '2018-09-12 13:59:43'),
(716, 'SAWADOGO', 'Marie Fabienne', 'FEMININ', '2000-08-22 02:00:00', NULL, NULL, NULL, NULL, '72 38 00 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 14:10:23', '2018-09-12 14:10:23'),
(717, 'SAWADOGO', 'Alpha Sharif', 'MASCULIN', '2000-08-01 02:00:00', NULL, NULL, NULL, NULL, '61 19 40 19', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 14:16:20', '2018-09-12 14:16:20'),
(718, 'BANCE', 'Lamine', 'MASCULIN', '1997-12-14 02:00:00', NULL, NULL, NULL, NULL, '51 90 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-12 14:30:57', '2018-09-12 14:30:57'),
(719, 'TRAORE', 'Aïchatou', 'FEMININ', '2000-01-01 02:00:00', NULL, NULL, NULL, NULL, '60 95 62 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 09:03:18', '2018-09-13 09:03:18'),
(720, 'SANKARA', 'Afissatou Annick', 'FEMININ', '2000-04-03 02:00:00', NULL, NULL, NULL, NULL, '73 19 94 69', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 09:14:39', '2018-09-13 09:14:39'),
(721, 'SANKARA', 'Nabonswendé Claudine', 'FEMININ', '2000-06-04 02:00:00', NULL, NULL, NULL, NULL, '71 52 13 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 09:18:51', '2018-09-13 09:18:51'),
(722, 'OUALI', 'Kanhouadi', 'MASCULIN', '1998-09-01 02:00:00', NULL, NULL, NULL, NULL, '70 13 47 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 09:21:44', '2018-09-13 09:21:44'),
(723, 'TANDAKO', 'Rokiatou', 'FEMININ', '1999-10-18 02:00:00', NULL, NULL, NULL, NULL, '72 66 01 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 09:23:54', '2018-09-13 09:23:54'),
(724, 'KABORE', 'Fulbert', 'MASCULIN', '1998-09-07 02:00:00', NULL, NULL, NULL, NULL, '70 30 71 58', NULL, 'I', 'urielle', 'urielle', '2018-09-13 09:25:29', '2018-09-13 09:25:29'),
(725, 'GORGO', 'Abdoulaye', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 71 84 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 09:27:32', '2018-09-13 09:27:32'),
(726, 'NAMOANO', 'Saïdou', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 47 47 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 09:30:25', '2018-09-13 09:30:25'),
(727, 'OUATTARA', 'Lassina', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 92 37 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:10:54', '2018-09-13 10:10:54'),
(728, 'DIANDE', 'Soufiane Fadel', 'MASCULIN', '2000-10-31 02:00:00', NULL, NULL, NULL, NULL, '60 88 34 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:14:04', '2018-09-13 10:14:04'),
(729, 'SANOU', 'Lougoudoro', 'MASCULIN', '1999-06-19 02:00:00', NULL, NULL, NULL, NULL, '56 80 96 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:17:43', '2018-09-13 10:17:43'),
(730, 'ZERBO', 'Alioune Ulriche Parfait', 'MASCULIN', '1999-10-22 02:00:00', NULL, NULL, NULL, NULL, '64 32 45 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:20:51', '2018-09-13 10:20:51'),
(731, 'SANOU', 'Zézouma Aristide', 'MASCULIN', '2000-02-16 02:00:00', NULL, NULL, NULL, NULL, '64 74 14 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:23:30', '2018-09-13 10:23:30'),
(732, 'KAMBOULE', 'Nawimbayèrè Bernadette', 'FEMININ', '2000-08-24 02:00:00', NULL, NULL, NULL, NULL, '78 83 89 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:26:21', '2018-09-13 10:26:21'),
(733, 'SANOU', 'Mohamed Bachir', 'MASCULIN', '2000-10-02 02:00:00', NULL, NULL, NULL, NULL, '75 65 44 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:29:13', '2018-09-13 10:29:13'),
(734, 'ZONGO', 'Mamounata', 'FEMININ', '1999-04-20 02:00:00', NULL, NULL, NULL, NULL, '75 13 85 75', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:31:22', '2018-09-13 10:31:22'),
(735, 'SAWADOGO', 'Kévin', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '65 09 61 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:33:35', '2018-09-13 10:33:35'),
(736, 'SAVADOGO', 'Issa', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '57 17 79 18', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:35:32', '2018-09-13 10:35:32'),
(737, 'MANDO', 'Ismaël', 'MASCULIN', '1999-01-29 02:00:00', NULL, NULL, NULL, NULL, '55 82 82 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:37:49', '2018-09-13 10:37:49'),
(738, 'OUEDRAOGO', 'Harouna', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 95 83 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:39:52', '2018-09-13 10:39:52'),
(739, 'COULIBALY', 'Lauryn Ma', 'FEMININ', '2000-11-11 02:00:00', NULL, NULL, NULL, NULL, '66 68 68 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:55:57', '2018-09-13 10:55:57'),
(740, 'OUATTARA', 'Mariam', 'FEMININ', '2000-10-16 02:00:00', NULL, NULL, NULL, NULL, '78 04 83 91', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 10:58:05', '2018-09-13 10:58:05'),
(741, 'TRAORE', 'Gnangzana Emmanuel Ulrich', 'MASCULIN', '2000-12-24 02:00:00', NULL, NULL, NULL, NULL, '77 92 13 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:00:49', '2018-09-13 11:00:49'),
(742, 'TRAORE', 'Ibrahim', 'MASCULIN', '2000-04-10 02:00:00', NULL, NULL, NULL, NULL, '55 88 26 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:02:32', '2018-09-13 11:02:32'),
(743, 'NAON', 'Ramadan', 'FEMININ', '1999-12-08 02:00:00', NULL, NULL, NULL, NULL, '74 60 81 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:05:25', '2018-09-13 11:05:25'),
(744, 'DEMTOUNDA', 'Bertrand Wend-Paaga', 'MASCULIN', '1997-09-06 02:00:00', NULL, NULL, NULL, NULL, '72 26 99 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:07:30', '2018-09-13 11:07:30'),
(745, 'SIDIBE', 'Tawhid', 'MASCULIN', '1998-10-18 02:00:00', NULL, NULL, NULL, NULL, '66 33 90 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:09:40', '2018-09-13 11:09:40'),
(746, 'SAVADOGO', 'Marthe Touwendé', 'FEMININ', '2000-02-27 00:00:00', NULL, NULL, NULL, NULL, '70 20 54 91', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 11:11:51', '2018-09-13 11:11:51'),
(747, 'BASSOLE', 'Boris Lionel Yipèné', 'MASCULIN', '2000-04-30 02:00:00', NULL, NULL, NULL, NULL, '61 46 34 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:12:30', '2018-09-13 11:12:30'),
(748, 'YODA', 'Hamidou', 'MASCULIN', '1998-05-03 00:00:00', NULL, NULL, NULL, NULL, '73 55 81 41', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 11:15:05', '2018-09-13 11:15:05'),
(749, 'KIEMTORE', 'Issoufou', 'MASCULIN', '1997-09-16 02:00:00', NULL, NULL, NULL, NULL, '63 86 01 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:17:54', '2018-09-13 11:17:54'),
(750, 'OUOBA', 'Pierre', 'MASCULIN', '1996-11-07 02:00:00', NULL, NULL, NULL, NULL, '63 02 25 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:19:37', '2018-09-13 11:19:37'),
(751, 'SANFO', 'Absa', 'FEMININ', '1999-08-29 02:00:00', NULL, NULL, NULL, NULL, '61 20 52 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:21:05', '2018-09-13 11:21:05'),
(752, 'OUEDRAOGO', 'Ange Eléna Wendkuni', 'FEMININ', '2000-07-06 02:00:00', NULL, NULL, NULL, NULL, '63 38 26 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:30:50', '2018-09-13 11:30:50'),
(753, 'GANEMTORE', 'Sayouba', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 63 30 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 11:35:55', '2018-09-13 11:35:55'),
(754, 'YAMEOGO', 'Harouna', 'MASCULIN', '1998-09-08 02:00:00', NULL, NULL, NULL, NULL, '62 49 11 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:46:44', '2018-09-13 11:46:44'),
(755, 'ZONGO', 'Kuilga Marius Pacôme', 'MASCULIN', '2000-05-09 02:00:00', NULL, NULL, NULL, NULL, '70 38 27 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:49:32', '2018-09-13 11:49:32'),
(756, 'ZANGO', 'Wendkuni Claudia', 'FEMININ', '2000-08-26 02:00:00', NULL, NULL, NULL, NULL, '71 75 28 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:51:58', '2018-09-13 11:51:58'),
(757, 'SONTIE', 'Adjaratou Frédérique', 'FEMININ', '1999-05-05 00:00:00', NULL, NULL, NULL, NULL, '75 52 31 00', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 11:54:55', '2018-09-13 11:54:55'),
(758, 'ZONGO', 'Francisca Lucianne', 'FEMININ', '2000-12-13 02:00:00', NULL, NULL, NULL, NULL, '62 53 26 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:54:57', '2018-09-13 11:54:57'),
(759, 'BENAO', 'Farida', 'FEMININ', '2000-09-11 02:00:00', NULL, NULL, NULL, NULL, '71 93 04 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:57:23', '2018-09-13 11:57:23'),
(760, 'OUEDRAOGO', 'Réhanata', 'FEMININ', '1999-11-02 00:00:00', NULL, NULL, NULL, NULL, '41 44 75 63', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 11:57:55', '2018-09-13 11:57:55'),
(761, 'ZERBO', 'Yasmine Lawankila', 'FEMININ', '2000-04-11 02:00:00', NULL, NULL, NULL, NULL, '73 39 54 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 11:59:38', '2018-09-13 11:59:38'),
(762, 'SORGHO', 'Anna Gwladys', 'FEMININ', '2000-01-08 00:00:00', NULL, NULL, NULL, NULL, '71 64 03 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:00:07', '2018-09-13 12:00:07'),
(763, 'SAWADOGO', 'Sibiri Pierre Damien', 'MASCULIN', '1998-02-21 02:00:00', NULL, NULL, NULL, NULL, '61 69 60 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 12:01:56', '2018-09-13 12:01:56'),
(764, 'OUEDRAOGO', 'Omer', 'MASCULIN', '1998-06-24 00:00:00', NULL, NULL, NULL, NULL, '64 87 07 86', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:02:05', '2018-09-13 12:02:05'),
(765, 'OUEDRAOGO', 'Aïbata', 'FEMININ', '2001-01-08 02:00:00', NULL, NULL, NULL, NULL, '70 94 80 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 12:03:57', '2018-09-13 12:03:57'),
(766, 'TOSSEGUE', 'Bakary', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '75 15 13 91', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:06:21', '2018-09-13 12:06:21'),
(767, 'SAWADOGO', 'Windépagnaguedé Mamoudou', 'MASCULIN', '1999-06-19 02:00:00', NULL, NULL, NULL, NULL, '56 12 17 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 12:07:02', '2018-09-13 12:07:02'),
(768, 'ZORE', 'Mahamoudou', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '75 51 52 88', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:08:11', '2018-09-13 12:08:11'),
(769, 'KI', 'Hippolyte', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '67 54 20 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 12:09:24', '2018-09-13 12:09:24'),
(770, 'KOANDA', 'Boureima', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '67 99 03 30', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:10:07', '2018-09-13 12:10:07'),
(771, 'PORGO', 'Tidiane', 'MASCULIN', '1999-05-31 02:00:00', NULL, NULL, NULL, NULL, '71 30 37 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 12:11:23', '2018-09-13 12:11:23'),
(772, 'SANKARA', 'Sayouba', 'MASCULIN', '1998-05-22 02:00:00', NULL, NULL, NULL, NULL, '65 54 74 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 12:13:25', '2018-09-13 12:13:25'),
(773, 'SAWADOGO', 'Narcisse', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '73 07 31 65', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:14:12', '2018-09-13 12:14:12'),
(774, 'TOE', 'Cédric Lawanango', 'MASCULIN', '2001-01-01 02:00:00', NULL, NULL, NULL, NULL, '67 15 16 53', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 12:15:30', '2018-09-13 12:15:30'),
(775, 'TRAORE', 'Isidore', 'MASCULIN', '1999-09-07 02:00:00', NULL, NULL, NULL, NULL, '61 94 02 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 12:24:17', '2018-09-13 12:24:17'),
(776, 'SOME', 'Kpizian Romaric', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '61 20 72 97', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:24:55', '2018-09-13 12:24:55'),
(777, 'ZALLE', 'Aminata', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '65 21 90 79', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:26:45', '2018-09-13 12:26:45'),
(778, 'WAONGO', 'Désiré', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '68 63 22 12', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:28:32', '2018-09-13 12:28:32'),
(779, 'BONI', 'Sandohin', 'MASCULIN', '1999-04-07 00:00:00', NULL, NULL, NULL, NULL, '56 07 68 27', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:30:17', '2018-09-13 12:30:17'),
(780, 'YAMEOGO', 'Fidèle Tindé-Wendé', 'MASCULIN', '1996-04-23 00:00:00', NULL, NULL, NULL, NULL, '65 62 84 36', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:32:27', '2018-09-13 12:32:27'),
(781, 'TOU', 'Abdoulaziz', 'MASCULIN', '1997-11-10 00:00:00', NULL, NULL, NULL, NULL, '78 22 11 93', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:35:25', '2018-09-13 12:35:25'),
(782, 'GANEMTORE', 'Pascal', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 07 14 48', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:37:21', '2018-09-13 12:37:21'),
(783, 'SEOGO', 'Wendtoe Michael', 'MASCULIN', '1998-05-19 00:00:00', NULL, NULL, NULL, NULL, '66 16 19 30', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:39:18', '2018-09-13 12:39:18'),
(784, 'LANKOANDE', 'Hippolyte', 'MASCULIN', '1996-08-13 00:00:00', NULL, NULL, NULL, NULL, '62 39 66 60', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:41:29', '2018-09-13 12:41:29'),
(785, 'LANKOANDE', 'Soalimon', 'MASCULIN', '1998-01-01 00:00:00', NULL, NULL, NULL, NULL, '79472718', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-13 12:41:46', '2018-09-13 12:41:46'),
(786, 'SAVADOGO', 'Anne Prisca', 'FEMININ', '1999-10-14 00:00:00', NULL, NULL, NULL, NULL, '73885793', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-13 12:45:16', '2018-09-13 12:45:16'),
(787, 'DOUAMBA', 'Korotoum', 'FEMININ', '1999-12-05 00:00:00', NULL, NULL, NULL, NULL, '62 86 92 07', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:46:05', '2018-09-13 12:46:05'),
(788, 'YAOGO', 'Dieudonné', 'MASCULIN', '1996-06-09 00:00:00', NULL, NULL, NULL, NULL, '72 24 71 18', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:48:40', '2018-09-13 12:48:40'),
(789, 'TAOKO', 'Abdoul-Ramane', 'MASCULIN', '1997-04-19 23:00:00', NULL, NULL, NULL, NULL, '79 94 62 65', NULL, 'Iconnu', 'flora', 'flora', '2018-09-13 12:49:31', '2018-09-13 12:49:31'),
(790, 'OUATTARA', 'Raïnatou Madina Reine', 'FEMININ', '1999-06-29 00:00:00', NULL, NULL, NULL, NULL, '64418980/60275801', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-13 12:50:12', '2018-09-13 12:50:12'),
(791, 'ILBOUDO', 'Aimé', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '62 69 51 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:50:44', '2018-09-13 12:50:44'),
(792, 'OUEDRAOGO', 'Mamounata Yasmina', 'FEMININ', '1999-12-22 00:00:00', NULL, NULL, NULL, NULL, '72 43 83 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:52:24', '2018-09-13 12:52:24'),
(793, 'YONLI', 'Isabelle', 'FEMININ', '1999-08-11 00:00:00', NULL, NULL, NULL, NULL, '51 87 16 10', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 12:54:10', '2018-09-13 12:54:10'),
(794, 'BALMA', 'Wend-Pagnangda Thomas', 'MASCULIN', '1996-07-03 00:00:00', NULL, NULL, NULL, NULL, '79344334', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-13 12:58:30', '2018-09-13 12:58:30');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(795, 'KUELA', 'Adèle', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 23 31 94', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 13:00:46', '2018-09-13 13:00:46'),
(796, 'DAMIBA', 'Jonas Laurent', 'MASCULIN', '1999-10-31 00:00:00', NULL, NULL, NULL, NULL, '64 00 31 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 13:03:24', '2018-09-13 13:03:24'),
(797, 'KABRE', 'Persile', 'FEMININ', '1999-02-15 00:00:00', NULL, NULL, NULL, NULL, '65034294', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-13 13:07:01', '2018-09-13 13:07:01'),
(798, 'SEBGO', 'Abdoul-Fatao', 'MASCULIN', '1999-12-25 02:00:00', NULL, NULL, NULL, NULL, '73 52 31 30', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 13:10:34', '2018-09-13 13:10:34'),
(799, 'TAMINI', 'Dofini Robert Auguste Marie', 'MASCULIN', '1999-12-21 02:00:00', NULL, NULL, NULL, NULL, '75 79 79 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 13:20:14', '2018-09-13 13:20:14'),
(800, 'RABO', 'Bonsdawendé Elyséé', 'MASCULIN', '1999-09-13 02:00:00', NULL, NULL, NULL, NULL, '77 72 19 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 13:22:11', '2018-09-13 13:22:11'),
(801, 'KOBENDE', 'Assaghain Mounhirou', 'MASCULIN', '2021-01-29 00:00:00', NULL, NULL, NULL, NULL, '64 75  01 94', NULL, '0', 'sylvie', 'sylvie', '2018-09-13 13:22:33', '2018-09-13 13:22:33'),
(802, 'SEBEDO', 'Aïdara', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '68 82 16 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 13:25:12', '2018-09-13 13:25:12'),
(803, 'TIENDREBEOGO', 'Alassane', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 28 11 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 13:27:15', '2018-09-13 13:27:15'),
(804, 'TOUBANGA', 'Adoua', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '60906459', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-13 13:34:46', '2018-09-13 13:34:46'),
(805, 'SAWADOGO', 'Sophonie Waogwindé', 'MASCULIN', '1998-02-05 00:00:00', NULL, NULL, NULL, NULL, '71 93 80 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 13:37:38', '2018-09-13 13:37:38'),
(806, 'YABRE', 'Hamsa', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '67 27 37 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 13:39:55', '2018-09-13 13:39:55'),
(807, 'NIKIEMA', 'Wendpouiré Amssétou', 'FEMININ', '1999-11-05 00:00:00', NULL, NULL, NULL, NULL, '62 09 51 27', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 13:41:42', '2018-09-13 13:41:42'),
(808, 'SANA', 'Moussah Neerbéwindin', 'MASCULIN', '1999-05-24 00:00:00', NULL, NULL, NULL, NULL, '72 36 19 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-13 13:44:12', '2018-09-13 13:44:12'),
(809, 'SAWADOGO', 'Seydou Lamine Firdaousse', 'MASCULIN', '2000-10-28 02:00:00', NULL, NULL, NULL, NULL, '52 00 80 68', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 14:24:13', '2018-09-13 14:24:13'),
(810, 'OUEDRAOGO', 'Toussaint', 'MASCULIN', '1997-11-01 02:00:00', NULL, NULL, NULL, NULL, '72 01 86 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 14:25:44', '2018-09-13 14:25:44'),
(811, 'SAWADOGO', 'Nomwindé Eudes Achile', 'MASCULIN', '1998-10-05 02:00:00', NULL, NULL, NULL, NULL, '62 32 03 25', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 14:44:17', '2018-09-13 14:44:17'),
(812, 'SANFO', 'Abdoul Maguid', 'MASCULIN', '1999-09-13 02:00:00', NULL, NULL, NULL, NULL, '66 28 32 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 14:45:50', '2018-09-13 14:45:50'),
(813, 'SIEZA', 'Basile', 'MASCULIN', '2001-01-03 02:00:00', NULL, NULL, NULL, NULL, '67 80 37 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 14:47:27', '2018-09-13 14:47:27'),
(814, 'METUOLE SOMDA', 'San Faa bèipèn Joseph Auriol', 'MASCULIN', '1999-03-23 02:00:00', NULL, NULL, NULL, NULL, '76 71 20 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 14:49:51', '2018-09-13 14:49:51'),
(815, 'DIALLO', 'Yacouba', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 49 96 64', NULL, 'Iconnu', 'flora', 'flora', '2018-09-13 14:52:43', '2018-09-13 14:52:43'),
(816, 'KIEMA', 'Wendkouni Anne Lise', 'FEMININ', '2001-01-21 02:00:00', NULL, NULL, NULL, NULL, '61 96 15 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 14:53:51', '2018-09-13 14:53:51'),
(817, 'GANOU', 'Okana Abel Fulbert', 'MASCULIN', '2000-04-10 02:00:00', NULL, NULL, NULL, NULL, '70 75 40 93', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 14:56:51', '2018-09-13 14:56:51'),
(818, 'GNOULA', 'Bouama Albérique', 'MASCULIN', '2000-05-05 02:00:00', NULL, NULL, NULL, NULL, '62 93 93 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 14:59:52', '2018-09-13 14:59:52'),
(819, 'MAIGA', 'Abdoul Aziz', 'MASCULIN', '1999-05-16 02:00:00', NULL, NULL, NULL, NULL, '60 44 46 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 15:03:00', '2018-09-13 15:03:00'),
(820, 'SOULY', 'Narcisse', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 15 20 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 15:05:59', '2018-09-13 15:05:59'),
(821, 'KABORE', 'Ben Abdoul Nassire', 'MASCULIN', '2000-05-07 02:00:00', NULL, NULL, NULL, NULL, '61 45 00 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 15:09:01', '2018-09-13 15:09:01'),
(822, 'KIENDREBEOGO', 'Moïse Saint Casimir', 'MASCULIN', '1998-09-14 02:00:00', NULL, NULL, NULL, NULL, '62 11 35 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 15:11:24', '2018-09-13 15:11:24'),
(823, 'KABORE', 'Bertille Tatiana', 'FEMININ', '2001-09-20 02:00:00', NULL, NULL, NULL, NULL, '63 97 89 39', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 15:15:06', '2018-09-13 15:15:06'),
(824, 'KABORE', 'Bertille Tatiana', 'FEMININ', '2001-09-20 02:00:00', NULL, NULL, NULL, NULL, '63 97 89 39', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 15:41:57', '2018-09-13 15:41:57'),
(825, 'KERE', 'Fatimata', 'FEMININ', '1999-01-27 02:00:00', NULL, NULL, NULL, NULL, '70 33 55 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 15:45:30', '2018-09-13 15:45:30'),
(826, 'LOMPO', 'Constant Lamoudi', 'MASCULIN', '1999-09-23 02:00:00', NULL, NULL, NULL, NULL, '60 69 77 25', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 15:47:28', '2018-09-13 15:47:28'),
(827, 'PORGO', 'Cheik Abdel-Omar', 'MASCULIN', '2000-07-29 02:00:00', NULL, NULL, NULL, NULL, '72 17 96 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 15:56:00', '2018-09-13 15:56:00'),
(828, 'ZONE', 'Alidou', 'MASCULIN', '1999-01-01 02:00:00', NULL, NULL, NULL, NULL, '70 64 96 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 16:00:03', '2018-09-13 16:00:03'),
(829, 'FAYAMA', 'Soukéina Djamilatou', 'FEMININ', '2000-10-23 02:00:00', NULL, NULL, NULL, NULL, '71 20 10 18', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 16:02:57', '2018-09-13 16:02:57'),
(830, 'DAO', 'Dia Aïssata Aïda', 'FEMININ', '1999-06-03 02:00:00', NULL, NULL, NULL, NULL, '61 00 77 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-13 16:10:30', '2018-09-13 16:10:30'),
(831, 'SAMA', 'Valérie Josepha', 'FEMININ', '2001-04-28 02:00:00', NULL, NULL, NULL, NULL, '70 16 15 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 08:50:24', '2018-09-14 08:50:24'),
(832, 'TAPSOBA', 'Denis', 'MASCULIN', '1997-01-15 02:00:00', NULL, NULL, NULL, NULL, '75 11 87 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:29:59', '2018-09-14 09:29:59'),
(833, 'MEDA', 'Azadon Tanguy', 'MASCULIN', '1999-11-18 02:00:00', NULL, NULL, NULL, NULL, '78 50 18 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:32:05', '2018-09-14 09:32:05'),
(834, 'ALATONGA', 'Omer', 'MASCULIN', '1998-08-13 02:00:00', NULL, NULL, NULL, NULL, '77 75 59 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:34:46', '2018-09-14 09:34:46'),
(835, 'KI', 'Florence', 'FEMININ', '1996-03-17 02:00:00', NULL, NULL, NULL, NULL, '60 59 57 58', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:36:27', '2018-09-14 09:36:27'),
(836, 'KABORE', 'Nouriatou', 'FEMININ', '1999-10-31 00:00:00', NULL, NULL, NULL, NULL, '71 74 58 18', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 09:37:02', '2018-09-14 09:37:02'),
(837, 'BABOUE', 'Emmanuel', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '64 88 43 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:38:16', '2018-09-14 09:38:16'),
(838, 'KABORE', 'Ida Wendinso', 'FEMININ', '1997-04-10 00:00:00', NULL, NULL, NULL, NULL, '70 19 69 11', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 09:39:45', '2018-09-14 09:39:45'),
(839, 'KARAMBIRI', 'Cheik Abdoul Kader Stephane', 'MASCULIN', '2000-01-04 02:00:00', NULL, NULL, NULL, NULL, '71 77 55 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:41:33', '2018-09-14 09:41:33'),
(840, 'MAGNINI', 'Benedicte Fatoumata', 'FEMININ', '1996-03-16 00:00:00', NULL, NULL, NULL, NULL, '70 62 64 70', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 09:42:14', '2018-09-14 09:42:14'),
(841, 'SORGHO', 'Wendkato Pacôme Cédric', 'MASCULIN', '2000-06-15 02:00:00', NULL, NULL, NULL, NULL, '70 26 50 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:43:30', '2018-09-14 09:43:30'),
(842, 'TRAORE', 'Minata', 'FEMININ', '1999-01-10 00:00:00', NULL, NULL, NULL, NULL, '55 12 37 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 09:44:26', '2018-09-14 09:44:26'),
(843, 'OUEDRAOGO', 'Taryame Ezéchiel', 'MASCULIN', '1999-03-26 02:00:00', NULL, NULL, NULL, NULL, '57 57 97 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:45:30', '2018-09-14 09:45:30'),
(844, 'KABORE', 'Faouzia 1ère jumelle', 'FEMININ', '1996-07-20 00:00:00', NULL, NULL, NULL, NULL, '61 65 65 42', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 09:46:33', '2018-09-14 09:46:33'),
(845, 'FAHO', 'Gnilé Loui', 'MASCULIN', '1997-08-17 02:00:00', NULL, NULL, NULL, NULL, '62 95 70 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:47:53', '2018-09-14 09:47:53'),
(846, 'KABORE', 'Omaïma', 'FEMININ', '1997-05-29 02:00:00', NULL, NULL, NULL, NULL, '63 37 65 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:51:03', '2018-09-14 09:51:03'),
(847, 'KABORE', 'Somkinda Judicaël Marie Romaric', 'MASCULIN', '2000-05-20 02:00:00', NULL, NULL, NULL, NULL, '74 49 66 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:53:32', '2018-09-14 09:53:32'),
(848, 'SAWADOGO', 'Wendlassida Rose Alicia', 'FEMININ', '2000-06-06 02:00:00', NULL, NULL, NULL, NULL, '63 41 34 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:55:59', '2018-09-14 09:55:59'),
(849, 'TAPSOBA', 'Anselme Wendyam', 'MASCULIN', '1999-06-28 02:00:00', NULL, NULL, NULL, NULL, '64 37 32 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:58:15', '2018-09-14 09:58:15'),
(850, 'KABORE', 'Audrey', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 42 18 29', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 09:58:55', '2018-09-14 09:58:55'),
(851, 'KABORE', 'Arsène', 'MASCULIN', '1998-09-05 02:00:00', NULL, NULL, NULL, NULL, '79 47 57 91', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 09:59:48', '2018-09-14 09:59:48'),
(852, 'IMA', 'Natégwendé', 'MASCULIN', '1999-12-21 02:00:00', NULL, NULL, NULL, NULL, '71 08 70 53', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:01:51', '2018-09-14 10:01:51'),
(853, 'DABIRE', 'Winebélé', 'MASCULIN', '1996-04-19 00:00:00', NULL, NULL, NULL, NULL, '57 19 91 12', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 10:01:59', '2018-09-14 10:01:59'),
(854, 'KOADIMA', 'Tilgaba Bonazza', 'MASCULIN', '1999-11-30 02:00:00', NULL, NULL, NULL, NULL, '73 48 17 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:03:49', '2018-09-14 10:03:49'),
(855, 'KABORE', 'Wenette', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 31 40 50', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 10:03:56', '2018-09-14 10:03:56'),
(856, 'BANCE', 'Serge Théophile', 'MASCULIN', '2000-05-24 02:00:00', NULL, NULL, NULL, NULL, '62 28 06 81', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:06:09', '2018-09-14 10:06:09'),
(857, 'DJIRE', 'Souleymane', 'MASCULIN', '1996-11-24 00:00:00', NULL, NULL, NULL, NULL, '51 48 69 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 10:06:54', '2018-09-14 10:06:54'),
(858, 'ILBOUDO', 'Wend-Konté Aymar', 'MASCULIN', '1998-05-28 02:00:00', NULL, NULL, NULL, NULL, '63 20 95 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:09:04', '2018-09-14 10:09:04'),
(859, 'VALIAN', 'Rabyatoy', 'FEMININ', '1998-09-14 00:00:00', NULL, NULL, NULL, NULL, '76 58 85 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 10:09:06', '2018-09-14 10:09:06'),
(860, 'KONDOMBO', 'Wendpanga Danny Caleb', 'MASCULIN', '2001-07-03 02:00:00', NULL, NULL, NULL, NULL, '70 12 25 01', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:11:12', '2018-09-14 10:11:12'),
(861, 'DIMA', 'Saoudé', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '77 44 82 48', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 10:12:24', '2018-09-14 10:12:24'),
(862, 'MILLOGO', 'Yelassouro Faousia Aminatou', 'FEMININ', '2000-03-03 02:00:00', NULL, NULL, NULL, NULL, '51 30 83 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:13:40', '2018-09-14 10:13:40'),
(863, 'CISSE', 'Amidou', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 93 76 83', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:15:35', '2018-09-14 10:15:35'),
(864, 'NABOHO', 'Kemia Madina Adélaïde', 'FEMININ', '2001-03-05 00:00:00', NULL, NULL, NULL, NULL, '77 19 99 43', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 10:15:38', '2018-09-14 10:15:38'),
(865, 'ZIDA', 'Anita Françoise', 'FEMININ', '1999-12-21 00:00:00', NULL, NULL, NULL, NULL, '74 08 58 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 10:17:14', '2018-09-14 10:17:14'),
(866, 'NABIA', 'Homaïmatou', 'FEMININ', '2000-10-11 02:00:00', NULL, NULL, NULL, NULL, '71 15 26 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:17:55', '2018-09-14 10:17:55'),
(867, 'KAM', 'Sié Aristide Donald', 'MASCULIN', '2000-08-28 02:00:00', NULL, NULL, NULL, NULL, '76 14 14 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:21:59', '2018-09-14 10:21:59'),
(868, 'DEMBELE', 'Romaric François Martin Bienvenu', 'MASCULIN', '2000-05-31 02:00:00', NULL, NULL, NULL, NULL, '70 26 93 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:25:35', '2018-09-14 10:25:35'),
(869, 'SANOU', 'Bruno', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '76 93 89 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 10:26:07', '2018-09-14 10:26:07'),
(870, 'BENAO', 'Philippe Michel', 'MASCULIN', '2000-06-08 02:00:00', NULL, NULL, NULL, NULL, '76 64 08 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:28:10', '2018-09-14 10:28:10'),
(871, 'BOUDA', 'Wendgouda Evariste', 'MASCULIN', '1999-05-09 02:00:00', NULL, NULL, NULL, NULL, '73 24 28 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:30:07', '2018-09-14 10:30:07'),
(872, 'DABIRE', 'Bèzahounéna Rodrigue', 'MASCULIN', '1999-03-07 02:00:00', NULL, NULL, NULL, NULL, '58 33 67 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 10:33:00', '2018-09-14 10:33:00'),
(873, 'CISSE', 'Oumoul Koulssoum', 'FEMININ', '2000-09-28 02:00:00', NULL, NULL, NULL, NULL, '63 18 14 40', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:05:10', '2018-09-14 13:05:10'),
(874, 'OUEDRAOGO', 'Ousmane', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 00 69 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:06:46', '2018-09-14 13:06:46'),
(875, 'SANOGO', 'Aboudou', 'MASCULIN', '1996-11-01 00:00:00', NULL, NULL, NULL, NULL, '73 95 49 42', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:07:58', '2018-09-14 13:07:58'),
(876, 'KABORE', 'Muhammad Sharif', 'MASCULIN', '2000-07-10 02:00:00', NULL, NULL, NULL, NULL, '70 26 73 31', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:08:24', '2018-09-14 13:08:24'),
(877, 'NANA', 'Ariel Rodrigue', 'MASCULIN', '1999-08-29 00:00:00', NULL, NULL, NULL, NULL, '67 47 30 04', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:10:03', '2018-09-14 13:10:03'),
(878, 'KOURA', 'Tuandaba Arsène', 'MASCULIN', '1999-10-28 02:00:00', NULL, NULL, NULL, NULL, '67 34 86 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:10:25', '2018-09-14 13:10:25'),
(879, 'KAFANDO', 'Basnewendé Ledi Jeconias', 'MASCULIN', '2001-06-26 02:00:00', NULL, NULL, NULL, NULL, '61 20 70 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:14:14', '2018-09-14 13:14:14'),
(880, 'KIENDREBEOGO', 'Seydou', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 60 59 95', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:16:14', '2018-09-14 13:16:14'),
(881, 'GAGRE', 'Nestor', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '75 42 02 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:18:02', '2018-09-14 13:18:02'),
(882, 'NAMOUNTOUGOU', 'Souleymane', 'MASCULIN', '1998-08-08 00:00:00', NULL, NULL, NULL, NULL, '61 71 04 09', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:18:04', '2018-09-14 13:18:04'),
(883, 'KAMBOU', 'Sansan', 'MASCULIN', '2000-12-02 02:00:00', NULL, NULL, NULL, NULL, '63 91 16 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:19:36', '2018-09-14 13:19:36'),
(884, 'KIENDREBEOGO', 'Lamoussa Anasthasie', 'FEMININ', '1999-09-09 02:00:00', NULL, NULL, NULL, NULL, '72 15 47 68', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:21:25', '2018-09-14 13:21:25'),
(885, 'LOMPO', 'Ampougouni Abdoul Latif Emmanuel', 'MASCULIN', '1999-12-16 02:00:00', NULL, NULL, NULL, NULL, '52 53 62 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:23:52', '2018-09-14 13:23:52'),
(886, 'KIADA', 'Amadou', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '61 10 93 48', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:24:35', '2018-09-14 13:24:35'),
(887, 'DEMBELE', 'Stéphane Mamoudou', 'MASCULIN', '2000-05-10 02:00:00', NULL, NULL, NULL, NULL, '70 82 20 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:25:41', '2018-09-14 13:25:41'),
(888, 'TANKOANO', 'Yempabou', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 26 87 76', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:27:02', '2018-09-14 13:27:02'),
(889, 'GUISSOU', 'Wend-Panga Farida', 'FEMININ', '1999-10-13 02:00:00', NULL, NULL, NULL, NULL, '72 55 77 69', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:27:46', '2018-09-14 13:27:46'),
(890, 'SANKARA', 'Joseph', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 32 37 12', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:29:05', '2018-09-14 13:29:05'),
(891, 'BOLLY', 'Franck Assane', 'MASCULIN', '2001-09-22 02:00:00', NULL, NULL, NULL, NULL, '77 03 23 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:30:23', '2018-09-14 13:30:23'),
(892, 'COMPAORE', 'Hamidou', 'MASCULIN', '1996-01-15 00:00:00', NULL, NULL, NULL, NULL, '71 32 36 22', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:30:55', '2018-09-14 13:30:55'),
(893, 'TRAORE', 'Yassine Amina', 'FEMININ', '2001-01-18 02:00:00', NULL, NULL, NULL, NULL, '79 11 11 53', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:32:08', '2018-09-14 13:32:08'),
(894, 'DICKO', 'Moctar', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70 43 15 89', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:32:38', '2018-09-14 13:32:38'),
(895, 'PALE', 'Eulalie', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '67 38 43 93', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:34:37', '2018-09-14 13:34:37'),
(896, 'BANDAOGO', 'Drissa', 'MASCULIN', '2000-01-02 02:00:00', NULL, NULL, NULL, NULL, '66 90 48 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:35:17', '2018-09-14 13:35:17'),
(897, 'NANEMA', 'Julien', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '73 87 36 70', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:36:31', '2018-09-14 13:36:31'),
(898, 'TINDANO', 'Sibidi', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 26 27 13', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:38:30', '2018-09-14 13:38:30'),
(899, 'BADO', 'Nadège Judicaëlle Yiboulayouwa (1ère Jumelle)', 'FEMININ', '2000-08-09 02:00:00', NULL, NULL, NULL, NULL, '70 07 09 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:38:34', '2018-09-14 13:38:34'),
(900, 'BAZONGO', 'Bassima', 'MASCULIN', '1999-12-11 02:00:00', NULL, NULL, NULL, NULL, '60 87 51 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:40:23', '2018-09-14 13:40:23'),
(901, 'KIENDREBEOGO', 'Ragnimwendé Herman', 'MASCULIN', '1996-09-24 00:00:00', NULL, NULL, NULL, NULL, '78 72 50 51', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:41:20', '2018-09-14 13:41:20'),
(902, 'DICKO', 'Boubacar', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 94 05 15', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:42:34', '2018-09-14 13:42:34'),
(903, 'ZANRE', 'Abdou Matime', 'MASCULIN', '1999-08-19 00:00:00', NULL, NULL, NULL, NULL, '51 05 74 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:44:07', '2018-09-14 13:44:07'),
(904, 'DAO', 'Louta', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '67 26 95 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:45:06', '2018-09-14 13:45:06'),
(905, 'CISSOKO', 'Amadou', 'MASCULIN', '1999-10-27 00:00:00', NULL, NULL, NULL, NULL, '71 42 73 02', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:46:05', '2018-09-14 13:46:05'),
(906, 'ROUAMBA', 'Pingdwendé Flora', 'FEMININ', '1998-11-23 00:00:00', NULL, NULL, NULL, NULL, '51 46 94 04', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:48:30', '2018-09-14 13:48:30'),
(907, 'OUEDRAOGO', 'Abdoul Raouf Sommettin', 'MASCULIN', '2000-05-20 02:00:00', NULL, NULL, NULL, NULL, '70 01 32 32', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:49:31', '2018-09-14 13:49:31'),
(908, 'YELEMOU', 'Follo Berthe Estelle', 'FEMININ', '2000-07-11 00:00:00', NULL, NULL, NULL, NULL, '70 19 24 39', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:50:48', '2018-09-14 13:50:48'),
(909, 'YAGO', 'Rabin', 'MASCULIN', '2000-01-13 02:00:00', NULL, NULL, NULL, NULL, '57 11 59 24', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:52:15', '2018-09-14 13:52:15'),
(910, 'YAOGO', 'Loukmane', 'MASCULIN', '1996-08-12 00:00:00', NULL, NULL, NULL, NULL, '70 93 36 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:52:58', '2018-09-14 13:52:58'),
(911, 'COMPAORE', 'Inès Axelle', 'FEMININ', '2000-01-30 02:00:00', NULL, NULL, NULL, NULL, '51 25 64 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 13:55:13', '2018-09-14 13:55:13'),
(912, 'ILBOUDO', 'Pierre Iréné', 'MASCULIN', '1998-06-21 00:00:00', NULL, NULL, NULL, NULL, '72 30 15 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 13:55:30', '2018-09-14 13:55:30'),
(913, 'BARRY', 'Boukaré', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 72 72 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:00:24', '2018-09-14 14:00:24'),
(914, 'OUEDRAOGO', 'Hamidou', 'MASCULIN', '2000-06-09 00:00:00', NULL, NULL, NULL, NULL, '72 05 05 35', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:01:21', '2018-09-14 14:01:21'),
(915, 'NANA', 'Adama', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '76 24 37 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:03:35', '2018-09-14 14:03:35'),
(916, 'DIATTO', 'Flore Sylviane', 'FEMININ', '1999-05-20 02:00:00', NULL, NULL, NULL, NULL, '60 60 34 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:04:23', '2018-09-14 14:04:23'),
(917, 'NARE', 'Francesco W. Jonathan', 'MASCULIN', '1999-09-21 00:00:00', NULL, NULL, NULL, NULL, '72 62 89 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:06:13', '2018-09-14 14:06:13'),
(918, 'DIARI', 'Theresa Matilde Bouampoundi', 'FEMININ', '2000-06-02 02:00:00', NULL, NULL, NULL, NULL, '70 42 71 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:06:43', '2018-09-14 14:06:43'),
(919, 'TAITA', 'Sidiki', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '73 98 64 05', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:08:11', '2018-09-14 14:08:11'),
(920, 'DERRA', 'Hamidou', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 25 44 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:09:07', '2018-09-14 14:09:07'),
(921, 'ZONGO', 'Toumdassida Valérie Nadège', 'FEMININ', '1997-08-27 00:00:00', NULL, NULL, NULL, NULL, '62 33 70 63', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:10:34', '2018-09-14 14:10:34'),
(922, 'DRABO', 'Adama', 'MASCULIN', '1998-06-15 02:00:00', NULL, NULL, NULL, NULL, '74 97 32 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:11:58', '2018-09-14 14:11:58'),
(923, 'NADEMBEGA', 'Marina', 'FEMININ', '1996-08-09 00:00:00', NULL, NULL, NULL, NULL, '62 92 93 92', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:12:50', '2018-09-14 14:12:50'),
(924, 'DIALLO', 'Tidiane Amnassara', 'MASCULIN', '2000-01-15 02:00:00', NULL, NULL, NULL, NULL, '60 33 82 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:14:35', '2018-09-14 14:14:35'),
(925, 'COMPAORE', 'Samsouma', 'MASCULIN', '1999-11-06 00:00:00', NULL, NULL, NULL, NULL, '51 15 77 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:15:26', '2018-09-14 14:15:26'),
(926, 'DAO', 'Gbadjignéré Géraude Leila', 'FEMININ', '1999-10-13 02:00:00', NULL, NULL, NULL, NULL, '71 41 38 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:17:40', '2018-09-14 14:17:40'),
(927, 'OUEDRAOGO', 'Freid Alex Pazingue', 'MASCULIN', '1998-06-02 00:00:00', NULL, NULL, NULL, NULL, '73 15 76 16', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:20:40', '2018-09-14 14:20:40'),
(928, 'WINDSOURY', 'Naaba Arafat', 'MASCULIN', '1996-05-10 02:00:00', NULL, NULL, NULL, NULL, '76 05 46 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:21:25', '2018-09-14 14:21:25'),
(929, 'OUATTARA', 'Lacatus', 'MASCULIN', '1998-09-19 00:00:00', NULL, NULL, NULL, NULL, '52 43 91 80', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:22:57', '2018-09-14 14:22:57'),
(930, 'TRAORE', 'Tidjane Salif', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '55 09 88 10', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:25:01', '2018-09-14 14:25:01'),
(931, 'OUBDA', 'Zowendé Ephraïm Josophat (2ème J', 'MASCULIN', '1999-08-07 02:00:00', NULL, NULL, NULL, NULL, '78 17 99 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:27:07', '2018-09-14 14:27:07'),
(932, 'KOUANDA', 'Mouniratou', 'FEMININ', '1996-10-02 00:00:00', NULL, NULL, NULL, NULL, '78 78 55 12', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:29:24', '2018-09-14 14:29:24'),
(933, 'KONSIMBO', 'Yasminatou', 'FEMININ', '2001-02-07 00:00:00', NULL, NULL, NULL, NULL, '63 49 57 63', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:31:24', '2018-09-14 14:31:24'),
(934, 'OUEDRAOGO', 'Wend-Bé Timothé', 'MASCULIN', '1999-09-23 02:00:00', NULL, NULL, NULL, NULL, '65 47 33 93', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:32:53', '2018-09-14 14:32:53'),
(935, 'KABORE', 'Souleymane', 'MASCULIN', '1998-09-22 00:00:00', NULL, NULL, NULL, NULL, '73 01 79 03', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:33:10', '2018-09-14 14:33:10'),
(936, 'ILBOUDO', 'Abdoul Razack', 'MASCULIN', '2000-08-16 00:00:00', NULL, NULL, NULL, NULL, '51 41 00 57', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:35:26', '2018-09-14 14:35:26'),
(937, 'SANKARA', 'Noufou', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70 74 09 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:37:03', '2018-09-14 14:37:03'),
(938, 'DISSA', 'Massita Alphie Rachidatou', 'FEMININ', '2000-12-13 00:00:00', NULL, NULL, NULL, NULL, '67 48 05 39', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:39:38', '2018-09-14 14:39:38'),
(939, 'OUEDRAOGO', 'Stéphanie', 'FEMININ', '1999-10-12 02:00:00', NULL, NULL, NULL, NULL, '60 67 63 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 14:39:42', '2018-09-14 14:39:42'),
(940, 'DABRE', 'Cynthia Leslie Carine', 'FEMININ', '2000-09-30 00:00:00', NULL, NULL, NULL, NULL, '70 72 71 19', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:41:27', '2018-09-14 14:41:27'),
(941, 'TRAORE', 'Kagnan Abdoulaye', 'MASCULIN', '2000-06-18 00:00:00', NULL, NULL, NULL, NULL, '75 29 06 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:43:43', '2018-09-14 14:43:43'),
(942, 'DJIRE', 'Adama', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 27 38 06', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:46:16', '2018-09-14 14:46:16'),
(943, 'NIADA', 'Yenihanguila', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '78 76 64 75', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:48:45', '2018-09-14 14:48:45'),
(944, 'MAIGA', 'Aziza', 'FEMININ', '2001-06-27 00:00:00', NULL, NULL, NULL, NULL, '71 65 66 81', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:51:37', '2018-09-14 14:51:37'),
(945, 'KAGAMBEGA', 'Wend-yam Stéphanie Eulenor', 'FEMININ', '1999-07-16 00:00:00', NULL, NULL, NULL, NULL, '63 75 60 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 14:55:31', '2018-09-14 14:55:31'),
(946, 'SAWADOGO', 'Sévérin', 'MASCULIN', '1997-01-08 02:00:00', NULL, NULL, NULL, NULL, '70 82 31 31', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 15:25:59', '2018-09-14 15:25:59'),
(947, 'KOUANDA', 'Abdul Aarif', 'MASCULIN', '1998-09-30 02:00:00', NULL, NULL, NULL, NULL, '60 20 17 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 15:36:41', '2018-09-14 15:36:41'),
(948, 'OUEDRAOGO', 'Souleymane', 'MASCULIN', '1997-11-08 02:00:00', NULL, NULL, NULL, NULL, '75 45 68 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 15:38:52', '2018-09-14 15:38:52'),
(949, 'BAMBARA', 'MAzou', 'MASCULIN', '2000-07-29 02:00:00', NULL, NULL, NULL, NULL, '63 01 86 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 15:43:12', '2018-09-14 15:43:12'),
(950, 'GUITTY', 'Abdoul Rachid', 'MASCULIN', '1999-01-29 00:00:00', NULL, NULL, NULL, NULL, '68 46 63 19', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 15:46:07', '2018-09-14 15:46:07'),
(951, 'SINON', 'Fadilatou', 'FEMININ', '2000-02-26 02:00:00', NULL, NULL, NULL, NULL, '72 75 46 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 15:47:16', '2018-09-14 15:47:16'),
(952, 'BAKO', 'Diezan Bilal Ben Issouf', 'MASCULIN', '1999-02-27 00:00:00', NULL, NULL, NULL, NULL, '62 89 38 24', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 15:48:15', '2018-09-14 15:48:15'),
(953, 'TRAORE', 'Katengna Sanata Stella', 'FEMININ', '2000-02-17 00:00:00', NULL, NULL, NULL, NULL, '70 23 56 55', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 15:50:21', '2018-09-14 15:50:21'),
(954, 'ZOUNGRANA', 'Abdoul Aziz', 'MASCULIN', '1999-03-09 00:00:00', NULL, NULL, NULL, NULL, '64 25 35 51', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 15:52:07', '2018-09-14 15:52:07'),
(955, 'OUEDRAOGO', 'Maïmounata', 'FEMININ', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 34 52 66', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 15:54:03', '2018-09-14 15:54:03'),
(956, 'YAMEOGO', 'Martine', 'FEMININ', '1996-01-29 00:00:00', NULL, NULL, NULL, NULL, '70 78 03 63', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 15:54:18', '2018-09-14 15:54:18'),
(957, 'BIRBA', 'Wilfried', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 41 24 71', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 15:56:07', '2018-09-14 15:56:07'),
(958, 'TIENDREBEOGO', 'Balguissa', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 21 98 79', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 15:58:18', '2018-09-14 15:58:18'),
(959, 'KABORE', 'Rasmané', 'MASCULIN', '2000-03-05 02:00:00', NULL, NULL, NULL, NULL, '66 15 88 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 15:59:17', '2018-09-14 15:59:17'),
(960, 'TIENDREBEOGO', 'Boukaré', 'MASCULIN', '1997-02-23 00:00:00', NULL, NULL, NULL, NULL, '63 10 52 94', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 16:00:07', '2018-09-14 16:00:07'),
(961, 'YELEMOU', 'Zonlo Rosine Flora', 'FEMININ', '2000-06-11 02:00:00', NULL, NULL, NULL, NULL, '72 59 80 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 16:01:24', '2018-09-14 16:01:24'),
(962, 'SESSOUMA', 'Hanaa Fawziya', 'FEMININ', '1999-08-31 00:00:00', NULL, NULL, NULL, NULL, '62 98 22 86', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 16:03:15', '2018-09-14 16:03:15'),
(963, 'NANA', 'Amanda Wendyam', 'FEMININ', '2001-01-02 02:00:00', NULL, NULL, NULL, NULL, '61 34 92 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 16:04:20', '2018-09-14 16:04:20'),
(964, 'KONFE', 'Abdoul Hâdi', 'MASCULIN', '1998-04-21 00:00:00', NULL, NULL, NULL, NULL, '71 81 78 95', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-14 16:05:24', '2018-09-14 16:05:24'),
(965, 'OKOKO', 'Pascale Yabo Ahouefa Fatim', 'FEMININ', '2000-05-01 02:00:00', NULL, NULL, NULL, NULL, '62 38 20 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 16:07:51', '2018-09-14 16:07:51'),
(966, 'NIMI', 'Aïssatou', 'FEMININ', '2000-01-27 02:00:00', NULL, NULL, NULL, NULL, '70 70 06 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 16:22:57', '2018-09-14 16:22:57'),
(967, 'DAYAMBA', 'Delwendé Ferdinand', 'MASCULIN', '2000-05-30 02:00:00', NULL, NULL, NULL, NULL, '72 11 07 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 16:27:01', '2018-09-14 16:27:01'),
(968, 'BABINE', 'Jean Aristide', 'MASCULIN', '1998-09-08 02:00:00', NULL, NULL, NULL, NULL, '77 87 36 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 16:31:29', '2018-09-14 16:31:29'),
(969, 'NIKIEMA', 'Wendpagnangdé Elisabeth', 'FEMININ', '1998-10-12 02:00:00', NULL, NULL, NULL, NULL, '70 24 81 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 16:46:32', '2018-09-14 16:46:32'),
(970, 'OUEDRAOGO', 'Wendyam Moïse Armel', 'MASCULIN', '2000-10-13 02:00:00', NULL, NULL, NULL, NULL, '63 37 91 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 16:49:53', '2018-09-14 16:49:53'),
(971, 'OUANGO', 'Pêgd-Wendé Roland', 'MASCULIN', '1999-09-19 02:00:00', NULL, NULL, NULL, NULL, '62 61 12 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 16:52:55', '2018-09-14 16:52:55'),
(972, 'DAO', 'Matony Néfertiti', 'FEMININ', '2000-12-09 02:00:00', NULL, NULL, NULL, NULL, '65 14 24 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 16:56:15', '2018-09-14 16:56:15'),
(973, 'OUEDRAOGO', 'Fadilatou', 'FEMININ', '2000-08-29 02:00:00', NULL, NULL, NULL, NULL, '62 96 44 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:04:09', '2018-09-14 17:04:09'),
(974, 'OUEDRAOGO', 'Cheick Omar', 'MASCULIN', '1999-09-07 02:00:00', NULL, NULL, NULL, NULL, '76 67 55 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:06:11', '2018-09-14 17:06:11'),
(975, 'PALENFO', 'Nanwinkouman Dieudonné', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '51 19 59 74', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:10:42', '2018-09-14 17:10:42'),
(976, 'PARE', 'Ella Laopan', 'FEMININ', '2000-05-30 02:00:00', NULL, NULL, NULL, NULL, '63 72 36 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:12:59', '2018-09-14 17:12:59'),
(977, 'OUEDRAOGO', 'Abdoulaye', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 33 75 12', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:16:32', '2018-09-14 17:16:32'),
(978, 'SOMA', 'Kayanko Abdul Razack', 'MASCULIN', '1999-05-24 02:00:00', NULL, NULL, NULL, NULL, '71 57 64 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:18:36', '2018-09-14 17:18:36'),
(979, 'NIKIEMA', 'Woussophom Daphom Aziz', 'MASCULIN', '2000-01-14 02:00:00', NULL, NULL, NULL, NULL, '64 02 46 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:22:10', '2018-09-14 17:22:10'),
(980, 'PARE', 'Olivier', 'MASCULIN', '1997-08-12 02:00:00', NULL, NULL, NULL, NULL, '66 09 11 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:30:22', '2018-09-14 17:30:22'),
(981, 'OUEDRAOGO', 'Eloi', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 74 03 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:33:11', '2018-09-14 17:33:11'),
(982, 'OUEDRAOGO', 'Leila Yasmina Mariam', 'FEMININ', '1999-09-25 02:00:00', NULL, NULL, NULL, NULL, '70 24 94 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:35:06', '2018-09-14 17:35:06'),
(983, 'HIEN', 'Sheïda Mariam', 'FEMININ', '2000-10-26 02:00:00', NULL, NULL, NULL, NULL, '73 26 07 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:38:11', '2018-09-14 17:38:11'),
(984, 'OUEDRAOGO', 'Josué Wendinkon (1er Jumeau)', 'MASCULIN', '2000-09-06 02:00:00', NULL, NULL, NULL, NULL, '70 49 37 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:40:13', '2018-09-14 17:40:13'),
(985, 'OUEDRAOGO', 'Marina', 'FEMININ', '2000-07-20 02:00:00', NULL, NULL, NULL, NULL, '73 98 63 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:42:35', '2018-09-14 17:42:35'),
(986, 'OUEDRAOGO', 'Hamadou', 'MASCULIN', '1997-02-09 02:00:00', NULL, NULL, NULL, NULL, '62 43 79 71', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:44:05', '2018-09-14 17:44:05'),
(987, 'OUEDRAOGO', 'Pingdwendé Franck', 'MASCULIN', '2000-02-11 02:00:00', NULL, NULL, NULL, NULL, '62 83 53 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:46:36', '2018-09-14 17:46:36'),
(988, 'OUEDRAOGO', 'Wendpagnimdi Sonia', 'FEMININ', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '78 87 67 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:48:33', '2018-09-14 17:48:33'),
(989, 'NIADA', 'Parfait Jérôme', 'MASCULIN', '1998-06-21 02:00:00', NULL, NULL, NULL, NULL, '70 22 59 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:50:36', '2018-09-14 17:50:36'),
(990, 'NIGNAN', 'Yipènè Jean Christophe', 'MASCULIN', '2000-06-28 02:00:00', NULL, NULL, NULL, NULL, '70 89 72 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:53:13', '2018-09-14 17:53:13'),
(991, 'NARE', 'Annabelle Kiswendsida Jessica', 'FEMININ', '2000-07-21 02:00:00', NULL, NULL, NULL, NULL, '71 29 49 62', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-14 17:55:37', '2018-09-14 17:55:37'),
(992, 'MOUKORO', 'Koanou', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '56252047', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 09:43:05', '2018-09-17 09:43:05'),
(993, 'RABO', 'Rasmata', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '76495034', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 09:48:03', '2018-09-17 09:48:03'),
(994, 'KINDO', 'Abdoul Karim', 'MASCULIN', '1996-10-05 00:00:00', NULL, NULL, NULL, NULL, '71987829', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 09:50:34', '2018-09-17 09:50:34'),
(995, 'LOMPO', 'Hamadou', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '61657554', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 09:53:09', '2018-09-17 09:53:09'),
(996, 'OUEDRAOGO', 'Sougi Mahamady', 'MASCULIN', '1998-06-21 00:00:00', NULL, NULL, NULL, NULL, '63 85 52 75', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 09:54:53', '2018-09-17 09:54:53'),
(997, 'YADA', 'Souleymane', 'MASCULIN', '1998-12-17 00:00:00', NULL, NULL, NULL, NULL, '72953189', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 09:58:04', '2018-09-17 09:58:04'),
(998, 'NADINGA', 'Lihana', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '78769311', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:01:09', '2018-09-17 10:01:09'),
(999, 'SANON', 'Farida', 'FEMININ', '1999-09-10 00:00:00', NULL, NULL, NULL, NULL, '70 14 30 36', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:02:13', '2018-09-17 10:02:13'),
(1000, 'BONKOUNGOU', 'Lassané', 'MASCULIN', '1996-12-26 00:00:00', NULL, NULL, NULL, NULL, '71 82 29 74', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:04:48', '2018-09-17 10:04:48'),
(1001, 'ZONGO', 'Franck Armel Ghislain', 'MASCULIN', '1999-01-16 00:00:00', NULL, NULL, NULL, NULL, '66 02 56 55', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:06:50', '2018-09-17 10:06:50'),
(1002, 'ZONGO', 'Boezemwendé Ibrahim', 'MASCULIN', '1998-09-11 00:00:00', NULL, NULL, NULL, NULL, '60 02 84 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:09:27', '2018-09-17 10:09:27'),
(1003, 'KIEMTORE', 'Faïçal', 'MASCULIN', '1998-09-07 00:00:00', NULL, NULL, NULL, NULL, '61 45 76 24', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:11:30', '2018-09-17 10:11:30'),
(1004, 'GNANDA', 'Limata', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '78 27 93 12', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:13:25', '2018-09-17 10:13:25'),
(1005, 'NIADA', 'Fatimata', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '70696734', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:15:51', '2018-09-17 10:15:51'),
(1006, 'BELEM', 'Sidi Mohamed Ayatou', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '74 47 58 11', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:15:53', '2018-09-17 10:15:53'),
(1007, 'KAMBOU', 'Ollo Florent', 'MASCULIN', '1998-07-04 00:00:00', NULL, NULL, NULL, NULL, '75 00 03 70', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:18:04', '2018-09-17 10:18:04'),
(1008, 'DINDANE', 'Souleymane', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '51685542', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:19:10', '2018-09-17 10:19:10'),
(1009, 'SIMPORE', 'Némata', 'FEMININ', '1997-10-12 00:00:00', NULL, NULL, NULL, NULL, '73 11 64 32', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:19:49', '2018-09-17 10:19:49'),
(1010, 'GUIMBONE', 'Harouna', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '62894486', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:21:35', '2018-09-17 10:21:35'),
(1011, 'SAWADOGO', 'Augustin', 'MASCULIN', '1997-04-11 00:00:00', NULL, NULL, NULL, NULL, '62 78 09 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:22:45', '2018-09-17 10:22:45'),
(1012, 'KOMPAORE', 'Ghislaine Berthe', 'FEMININ', '1997-09-06 00:00:00', NULL, NULL, NULL, NULL, '68 09 85 57', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:24:42', '2018-09-17 10:24:42'),
(1013, 'MINOUGOU', 'Blandine', 'FEMININ', '1999-06-01 00:00:00', NULL, NULL, NULL, NULL, '73189211', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:24:48', '2018-09-17 10:24:48'),
(1014, 'OUEDRAOGO', 'Rabas-wendé Stéphanie Ella', 'FEMININ', '1998-02-01 00:00:00', NULL, NULL, NULL, NULL, '76 96 02 78', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:26:59', '2018-09-17 10:26:59'),
(1015, 'BALIMA', 'Zakaria', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 15 92 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:28:31', '2018-09-17 10:28:31'),
(1016, 'BANCE', 'Aboul Waloud', 'MASCULIN', '1997-12-13 00:00:00', NULL, NULL, NULL, NULL, '75585978', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:29:20', '2018-09-17 10:29:20'),
(1017, 'ILBOUDO', 'Joël Betsaleel', 'MASCULIN', '1999-07-27 00:00:00', NULL, NULL, NULL, NULL, '78 68 28 98', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:30:22', '2018-09-17 10:30:22'),
(1018, 'NONGUIERMA', 'Brigitte', 'FEMININ', '2000-03-13 00:00:00', NULL, NULL, NULL, NULL, '76 59 10 08', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:33:26', '2018-09-17 10:33:26'),
(1019, 'OUEDRAOGO', 'Albert', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '74104180', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:34:08', '2018-09-17 10:34:08'),
(1020, 'OUEDRAOGO', 'Aguiratou', 'FEMININ', '1998-02-28 00:00:00', NULL, NULL, NULL, NULL, '65320833', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:36:13', '2018-09-17 10:36:13'),
(1021, 'KIENDREBEOGO', 'Djeneba', 'FEMININ', '1998-09-07 00:00:00', NULL, NULL, NULL, NULL, '61 00 67 75', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:38:07', '2018-09-17 10:38:07'),
(1022, 'ZANNE', 'Issaka', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '63331502', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:38:31', '2018-09-17 10:38:31'),
(1023, 'TOURE', 'Alillou', 'MASCULIN', '1996-10-26 00:00:00', NULL, NULL, NULL, NULL, '77 91 04 24', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:40:02', '2018-09-17 10:40:02'),
(1024, 'ZOURE', 'Danielle Carole', 'FEMININ', '2000-09-21 00:00:00', NULL, NULL, NULL, NULL, '62 34 23 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:41:48', '2018-09-17 10:41:48'),
(1025, 'ILBOUDO', 'Sidonie', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 33 49 99', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:43:28', '2018-09-17 10:43:28'),
(1026, 'YOUGBARE', 'Basile', 'MASCULIN', '1998-12-18 00:00:00', NULL, NULL, NULL, NULL, '61586758', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:44:13', '2018-09-17 10:44:13'),
(1027, 'TOUGMA', 'Chantal', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 03 40 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:45:29', '2018-09-17 10:45:29'),
(1028, 'SAWADOGO', 'Kiswendsida Arsène Armel', 'MASCULIN', '2000-07-19 02:00:00', NULL, NULL, NULL, NULL, '72 12 27 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 10:45:39', '2018-09-17 10:45:39'),
(1029, 'ZERNE', 'Souleymane', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70817900', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:46:50', '2018-09-17 10:46:50'),
(1030, 'ZONGO', 'Kiswendsida Loraine Marie Flore', 'FEMININ', '1999-11-10 00:00:00', NULL, NULL, NULL, NULL, '60 14 37 20', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:47:50', '2018-09-17 10:47:50'),
(1031, 'ZERNE', 'Karidjetou', 'FEMININ', '1998-03-16 00:00:00', NULL, NULL, NULL, NULL, '67828824', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:49:15', '2018-09-17 10:49:15'),
(1032, 'ZOUNGRANA', 'Marata', 'FEMININ', '1997-06-18 00:00:00', NULL, NULL, NULL, NULL, '61 39 40 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:49:50', '2018-09-17 10:49:50'),
(1033, 'NANA', 'Ouendebénédo Reine Bergère', 'FEMININ', '2000-09-14 02:00:00', NULL, NULL, NULL, NULL, '70 71 73 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 10:50:29', '2018-09-17 10:50:29'),
(1034, 'TRAWINA', 'Natacha', 'FEMININ', '1998-10-23 00:00:00', NULL, NULL, NULL, NULL, '71275659', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:51:40', '2018-09-17 10:51:40'),
(1035, 'ZOUNGRANA', 'Orlande Elsa Armelle', 'FEMININ', '1999-11-02 00:00:00', NULL, NULL, NULL, NULL, '3935592', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:51:54', '2018-09-17 10:51:54'),
(1036, 'BANCE', 'Dramane', 'MASCULIN', '2000-02-07 02:00:00', NULL, NULL, NULL, NULL, '64 79 78 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 10:53:13', '2018-09-17 10:53:13'),
(1037, 'SONDE', 'Boukary', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '71860852', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:53:42', '2018-09-17 10:53:42'),
(1038, 'YAMEOGO', 'Eliézer Wend-Sôo', 'MASCULIN', '1999-10-05 00:00:00', NULL, NULL, NULL, NULL, '62 55 25 58', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:55:04', '2018-09-17 10:55:04'),
(1039, 'KONKOBO', 'Ulrich Arthur', 'MASCULIN', '1999-11-15 02:00:00', NULL, NULL, NULL, NULL, '70 04 07 01', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 10:56:25', '2018-09-17 10:56:25'),
(1040, 'GANSORE', 'Faouziatou Tatiana', 'FEMININ', '1997-12-12 00:00:00', NULL, NULL, NULL, NULL, '74 72 80 42', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:57:18', '2018-09-17 10:57:18'),
(1041, 'OUEDRAOGO', 'Wendyam Gisèle', 'FEMININ', '1999-06-28 00:00:00', NULL, NULL, NULL, NULL, '63335044', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 10:59:30', '2018-09-17 10:59:30'),
(1042, 'GOLANE BONANE', 'Emille Kady', 'FEMININ', '1997-09-19 00:00:00', NULL, NULL, NULL, NULL, '51 85 32 15', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 10:59:44', '2018-09-17 10:59:44'),
(1043, 'DONDASSE', 'Palingwendé Fabrice', 'MASCULIN', '1996-02-05 02:00:00', NULL, NULL, NULL, NULL, '71 75 34 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 11:00:21', '2018-09-17 11:00:21'),
(1044, 'KOANDA', 'Bassirou', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '72015132', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:02:08', '2018-09-17 11:02:08'),
(1045, 'COMPAORE', 'Wendlassida Léa', 'FEMININ', '1996-06-06 00:00:00', NULL, NULL, NULL, NULL, '71 15 36 32', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:03:58', '2018-09-17 11:03:58'),
(1046, 'TAOKO', 'Ismaël', 'MASCULIN', '1999-10-26 00:00:00', NULL, NULL, NULL, NULL, '64752156', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:04:42', '2018-09-17 11:04:42'),
(1047, 'SANA', 'Ibrahim', 'MASCULIN', '1998-09-19 00:00:00', NULL, NULL, NULL, NULL, '75 45 68 51', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:05:38', '2018-09-17 11:05:38'),
(1048, 'KAFANDO', 'Justin', 'MASCULIN', '1998-05-05 02:00:00', NULL, NULL, NULL, NULL, '58 60 59 27', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 11:07:21', '2018-09-17 11:07:21'),
(1049, 'MINOUGOU', 'Tégwendé Alida Tatiana', 'FEMININ', '1999-06-14 00:00:00', NULL, NULL, NULL, NULL, '73785492', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:07:50', '2018-09-17 11:07:50');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(1050, 'KAFANDO', 'Rayanguénewendé Paule Karen', 'FEMININ', '1998-02-22 00:00:00', NULL, NULL, NULL, NULL, '78 85 03 68', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:07:52', '2018-09-17 11:07:52'),
(1051, 'BOUDA', 'Charles', 'MASCULIN', '2001-03-12 00:00:00', NULL, NULL, NULL, NULL, '65 69 36 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:09:35', '2018-09-17 11:09:35'),
(1052, 'OUEDRAOGO', 'Brice', 'MASCULIN', '1998-08-30 02:00:00', NULL, NULL, NULL, NULL, '71 82 29 13', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 11:10:11', '2018-09-17 11:10:11'),
(1053, 'ZOMA', 'Kiswendsida Judicaël Narcisse Ousséni', 'MASCULIN', '1999-05-08 00:00:00', NULL, NULL, NULL, NULL, '73056196', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:10:58', '2018-09-17 11:10:58'),
(1054, 'KIENTEGA', 'Sougrinooma Nafissatou', 'FEMININ', '2001-01-10 00:00:00', NULL, NULL, NULL, NULL, '70 64 23 12', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:13:04', '2018-09-17 11:13:04'),
(1055, 'BOUNDAOGO', 'Nadège', 'FEMININ', '1999-04-21 00:00:00', NULL, NULL, NULL, NULL, '70683313', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:14:08', '2018-09-17 11:14:08'),
(1056, 'KAMA', 'Elélé Patricia', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 22 00 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:14:42', '2018-09-17 11:14:42'),
(1057, 'NIGNAN', 'Alphonse', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '54302128', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:16:23', '2018-09-17 11:16:23'),
(1058, 'SAKANDE', 'Rasmata', 'FEMININ', '1998-03-23 00:00:00', NULL, NULL, NULL, NULL, '70 26 20 43', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:17:33', '2018-09-17 11:17:33'),
(1059, 'OUEDRAOGO', 'Cheick Mohamed', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '66 20 69 24', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:19:09', '2018-09-17 11:19:09'),
(1060, 'OUBDA', 'Sévérine Marie Inès', 'FEMININ', '1999-09-16 00:00:00', NULL, NULL, NULL, NULL, '63277225', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:19:19', '2018-09-17 11:19:19'),
(1061, 'KIENTEGA', 'Waogbzanga Véronique', 'FEMININ', '1997-09-20 00:00:00', NULL, NULL, NULL, NULL, '61 91 62 48', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:21:05', '2018-09-17 11:21:05'),
(1062, 'BELEM', 'Tegawende Kévine', 'FEMININ', '2000-09-28 00:00:00', NULL, NULL, NULL, NULL, '73071959', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:22:24', '2018-09-17 11:22:24'),
(1063, 'KABRE', 'Sita Asmao', 'FEMININ', '1996-07-04 00:00:00', NULL, NULL, NULL, NULL, '72 82 02 05', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:23:11', '2018-09-17 11:23:11'),
(1064, 'ILBOUDO', 'Faridatou', 'FEMININ', '1999-12-22 00:00:00', NULL, NULL, NULL, NULL, '51 79 03 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:24:54', '2018-09-17 11:24:54'),
(1065, 'SANON', 'Soraya Mage Farida', 'FEMININ', '1999-10-11 00:00:00', NULL, NULL, NULL, NULL, '76220526', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:25:33', '2018-09-17 11:25:33'),
(1066, 'TASSEMBEDO', 'Alimata Saadia', 'FEMININ', '1998-08-07 00:00:00', NULL, NULL, NULL, NULL, '63 88 35 72', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:26:46', '2018-09-17 11:26:46'),
(1067, 'LEMAN', 'Ziéssi Brice Ghislain', 'MASCULIN', '1997-06-17 00:00:00', NULL, NULL, NULL, NULL, '62684975', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:28:59', '2018-09-17 11:28:59'),
(1068, 'BONKOUNGOU', 'Samiratou', 'FEMININ', '1996-04-29 00:00:00', NULL, NULL, NULL, NULL, '62 63 52 36', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:29:04', '2018-09-17 11:29:04'),
(1069, 'OUEDRAOGO', 'Diane Alix', 'FEMININ', '1999-01-10 00:00:00', NULL, NULL, NULL, NULL, '76572488', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:31:07', '2018-09-17 11:31:07'),
(1070, 'TIAHOUN', 'Sanmouhouzou Axelle Muriel', 'FEMININ', '1999-06-01 00:00:00', NULL, NULL, NULL, NULL, '71 94 21 05', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:31:08', '2018-09-17 11:31:08'),
(1071, 'OUEDRAOGO', 'Idrissa', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '75150879', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:33:35', '2018-09-17 11:33:35'),
(1072, 'NOMBRE', 'Wend-yam Grace Laure Fabiola', 'FEMININ', '1998-11-01 00:00:00', NULL, NULL, NULL, NULL, '54 90 47 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:33:39', '2018-09-17 11:33:39'),
(1073, 'TIENDREBEOGO', 'Asmao', 'FEMININ', '1999-08-18 00:00:00', NULL, NULL, NULL, NULL, '70 10 52 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:35:58', '2018-09-17 11:35:58'),
(1074, 'ZOUNGRANA', 'Baowendsom Obed Clovis', 'MASCULIN', '2000-10-04 02:00:00', NULL, NULL, NULL, NULL, '64 66 07 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 11:36:33', '2018-09-17 11:36:33'),
(1075, 'SEDOGO', 'Pingwendé Lamoussa Stéphanie', 'FEMININ', '1998-10-21 00:00:00', NULL, NULL, NULL, NULL, '70 23 28 32', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:37:53', '2018-09-17 11:37:53'),
(1076, 'KUELA', 'Raïnatou', 'FEMININ', '1999-10-22 00:00:00', NULL, NULL, NULL, NULL, '70664669', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:37:58', '2018-09-17 11:37:58'),
(1077, 'GANSANE', 'Salamata', 'FEMININ', '2000-10-02 02:00:00', NULL, NULL, NULL, NULL, '70 70 76 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 11:39:27', '2018-09-17 11:39:27'),
(1078, 'TIEMTORE', 'Rayimwendé Djeminatou', 'FEMININ', '1999-10-12 00:00:00', NULL, NULL, NULL, NULL, '70 34 67 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:40:18', '2018-09-17 11:40:18'),
(1079, 'SANOU', 'Louti', 'MASCULIN', '1999-10-19 00:00:00', NULL, NULL, NULL, NULL, '63677975', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 11:40:41', '2018-09-17 11:40:41'),
(1080, 'SAWADOGO', 'Samira', 'FEMININ', '1999-10-24 00:00:00', NULL, NULL, NULL, NULL, '79 44 65 99', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:41:59', '2018-09-17 11:41:59'),
(1081, 'DJIGUEMDE', 'Issaka', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 88 70 02', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 11:42:07', '2018-09-17 11:42:07'),
(1082, 'SAWADOGO', 'Rebecca Marina Wendpagnagdé', 'FEMININ', '1999-03-16 00:00:00', NULL, NULL, NULL, NULL, '72 22 02 18', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:43:47', '2018-09-17 11:43:47'),
(1083, 'SAVADOGO', 'Séphora Sombé wendé', 'FEMININ', '1999-10-04 00:00:00', NULL, NULL, NULL, NULL, '77 76 66 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:45:42', '2018-09-17 11:45:42'),
(1084, 'KOUANDA', 'Aïssata Binta', 'FEMININ', '1999-08-04 00:00:00', NULL, NULL, NULL, NULL, '71 19 90 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:47:30', '2018-09-17 11:47:30'),
(1085, 'SOME', 'Dieudonné', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '75 14 72 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 11:48:23', '2018-09-17 11:48:23'),
(1086, 'KABORE', 'Assana 1ère Jumelle', 'FEMININ', '1999-03-04 00:00:00', NULL, NULL, NULL, NULL, '73 11 11 26', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:49:20', '2018-09-17 11:49:20'),
(1087, 'KABORE', 'Wendy Rébécca', 'FEMININ', '1998-06-20 00:00:00', NULL, NULL, NULL, NULL, '61 87 50 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 11:51:17', '2018-09-17 11:51:17'),
(1088, 'DERRA', 'Ali', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 08 62 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 11:53:44', '2018-09-17 11:53:44'),
(1089, 'YAOGO', 'Bénéwendé Christel Noëla', 'FEMININ', '1999-12-26 02:00:00', NULL, NULL, NULL, NULL, '70 35 61 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 11:58:17', '2018-09-17 11:58:17'),
(1090, 'TRAORE', 'Bénéwendé Abdoul-Rachid', 'MASCULIN', '2000-05-31 02:00:00', NULL, NULL, NULL, NULL, '77 10 12 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:08:45', '2018-09-17 12:08:45'),
(1091, 'YODA', 'Abdoul Wassiou', 'MASCULIN', '1999-06-20 02:00:00', NULL, NULL, NULL, NULL, '72 87 31 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:11:42', '2018-09-17 12:11:42'),
(1092, 'ZOMBRA', 'Fadil Sako Armel', 'FEMININ', '2000-08-16 02:00:00', NULL, NULL, NULL, NULL, '78 01 85 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:16:09', '2018-09-17 12:16:09'),
(1093, 'ILBOUDO', 'Wendkouni Audrey Yvonne', 'FEMININ', '1996-06-22 00:00:00', NULL, NULL, NULL, NULL, '60 77 16 44', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 12:16:54', '2018-09-17 12:16:54'),
(1094, 'ZOUNGRANA', 'Aurèle Jovite Wendpouiré', 'MASCULIN', '2000-07-20 02:00:00', NULL, NULL, NULL, NULL, '71 83 59 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:19:35', '2018-09-17 12:19:35'),
(1095, 'NANA', 'Lauriane Aude Josepha', 'FEMININ', '2000-03-19 00:00:00', NULL, NULL, NULL, NULL, '62 18 42 23', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 12:21:17', '2018-09-17 12:21:17'),
(1096, 'ZOURE', 'Barakissa', 'FEMININ', '2000-05-24 02:00:00', NULL, NULL, NULL, NULL, '71 23 87 39', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:21:45', '2018-09-17 12:21:45'),
(1097, 'GANEMTORE', 'Rafiatou', 'FEMININ', '1998-08-22 00:00:00', NULL, NULL, NULL, NULL, '72 65 50 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 12:23:21', '2018-09-17 12:23:21'),
(1098, 'ZOUNGRANA', 'Kiswendsida Olive Freischnel', 'MASCULIN', '2000-05-18 02:00:00', NULL, NULL, NULL, NULL, '77 38 01 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:24:58', '2018-09-17 12:24:58'),
(1099, 'ZONGO', 'Abdoul Aziz', 'MASCULIN', '1998-01-20 02:00:00', NULL, NULL, NULL, NULL, '73 31 17 76', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:27:23', '2018-09-17 12:27:23'),
(1100, 'GUIGMA', 'Samiratou', 'FEMININ', '1999-06-07 00:00:00', NULL, NULL, NULL, NULL, '70 70 00 16', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 12:27:23', '2018-09-17 12:27:23'),
(1101, 'TAGNABIE', 'Abdoul Mouqutadir Quékouri', 'MASCULIN', '1999-03-02 00:00:00', NULL, NULL, NULL, NULL, '60 24 97 05', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 12:30:33', '2018-09-17 12:30:33'),
(1102, 'OUEDRAOGO', 'Kagoné wend-Pouré Mahamadou', 'MASCULIN', '1998-10-26 00:00:00', NULL, NULL, NULL, NULL, '78089844', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 12:40:01', '2018-09-17 12:40:01'),
(1103, 'ZONGO', 'Angèle', 'FEMININ', '1999-05-19 02:00:00', NULL, NULL, NULL, NULL, '68 21 48 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:44:13', '2018-09-17 12:44:13'),
(1104, 'ZOANGA', 'Mohamed Lamine', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 51 98 81', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:47:45', '2018-09-17 12:47:45'),
(1105, 'ZOUBGA', 'Pengwendé Nadège', 'FEMININ', '1999-09-10 02:00:00', NULL, NULL, NULL, NULL, '70 12 74 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:52:45', '2018-09-17 12:52:45'),
(1106, 'ZONGO', 'Donatien', 'MASCULIN', '1997-05-24 02:00:00', NULL, NULL, NULL, NULL, '73 90 15 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:55:40', '2018-09-17 12:55:40'),
(1107, 'TOURE', 'Ali', 'MASCULIN', '1996-04-03 00:00:00', NULL, NULL, NULL, NULL, '60578209', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 12:57:23', '2018-09-17 12:57:23'),
(1108, 'YANONGO', 'Wendpagnagdé Donatien', 'MASCULIN', '1999-02-09 02:00:00', NULL, NULL, NULL, NULL, '75 07 45 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 12:59:45', '2018-09-17 12:59:45'),
(1109, 'SORE', 'Aguibou', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '63811167', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:00:43', '2018-09-17 13:00:43'),
(1110, 'ILBOUDO', 'Wachilatou', 'FEMININ', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '62793567', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:03:24', '2018-09-17 13:03:24'),
(1111, 'YAMEOGO', 'Kiswendsida Jean Ives Donatien', 'MASCULIN', '1999-05-04 02:00:00', NULL, NULL, NULL, NULL, '62 33 38 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:03:55', '2018-09-17 13:03:55'),
(1112, 'KAFANDO', 'Saïdou', 'MASCULIN', '1997-05-11 00:00:00', NULL, NULL, NULL, NULL, '74488448', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:05:34', '2018-09-17 13:05:34'),
(1113, 'TALL', 'Soumaibou', 'MASCULIN', '1997-11-27 00:00:00', NULL, NULL, NULL, NULL, '61623135', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:07:48', '2018-09-17 13:07:48'),
(1114, 'ZABRE', 'Issoufou', 'MASCULIN', '1997-06-02 02:00:00', NULL, NULL, NULL, NULL, '76 22 62 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:08:27', '2018-09-17 13:08:27'),
(1115, 'YONLI', 'Fidèle Ludovic', 'MASCULIN', '1999-10-24 00:00:00', NULL, NULL, NULL, NULL, '61344334', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:10:40', '2018-09-17 13:10:40'),
(1116, 'OUEDRAOGO', 'Alimatou Sadiya', 'FEMININ', '1997-07-13 02:00:00', NULL, NULL, NULL, NULL, '62 18 18 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:11:26', '2018-09-17 13:11:26'),
(1117, 'YAMEOGO', 'Wendpouiré David Romain', 'MASCULIN', '2000-02-28 02:00:00', NULL, NULL, NULL, NULL, '73 43 37 30', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:13:49', '2018-09-17 13:13:49'),
(1118, 'OUEDRAOGO', 'Pingdwedé Claire', 'FEMININ', '1998-09-08 00:00:00', NULL, NULL, NULL, NULL, '68 28 09 06', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:13:50', '2018-09-17 13:13:50'),
(1119, 'KIEMA', 'Wend Kouni Armabelle Annie', 'FEMININ', '1999-07-10 00:00:00', NULL, NULL, NULL, NULL, '70113038', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:14:24', '2018-09-17 13:14:24'),
(1120, 'BADINI', 'Peng-Wendé Franck Mamadi Cheik Sharif', 'MASCULIN', '1999-04-21 02:00:00', NULL, NULL, NULL, NULL, '71 50 35 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:16:00', '2018-09-17 13:16:00'),
(1121, 'NANEMA', 'Ashley Marlyse Wendenda', 'FEMININ', '1999-11-13 00:00:00', NULL, NULL, NULL, NULL, '61 63 00 88', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:16:12', '2018-09-17 13:16:12'),
(1122, 'ZERBO', 'Maacalé Mounirah Korotimi', 'FEMININ', '2000-10-04 00:00:00', NULL, NULL, NULL, NULL, '70267605', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:16:44', '2018-09-17 13:16:44'),
(1123, 'SAMANDOULOUGOU', 'Zenabo', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '61 93 80 00', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:18:38', '2018-09-17 13:18:38'),
(1124, 'KABORE', 'Paling-Wende Franck Arthur', 'MASCULIN', '1997-08-14 00:00:00', NULL, NULL, NULL, NULL, '70485105', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:19:13', '2018-09-17 13:19:13'),
(1125, 'TIENDREBEOGO', 'Eunice Jecolia', 'FEMININ', '1999-01-15 00:00:00', NULL, NULL, NULL, NULL, '71 76 80 27', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:20:33', '2018-09-17 13:20:33'),
(1126, 'ZOUNGRANA', 'Annia Jeannette', 'FEMININ', '2000-07-07 02:00:00', NULL, NULL, NULL, NULL, '70 80 17 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:21:35', '2018-09-17 13:21:35'),
(1127, 'TRAORE', 'Hhadidia Saranh Nayette', 'FEMININ', '2000-03-28 00:00:00', NULL, NULL, NULL, NULL, '78 81 50 39', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:22:50', '2018-09-17 13:22:50'),
(1128, 'KAGAMBEGA', 'Nadine', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 35 85 10', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:24:47', '2018-09-17 13:24:47'),
(1129, 'ZOUGNOMA', 'Abdel-Aziz Farouck', 'MASCULIN', '2000-10-31 02:00:00', NULL, NULL, NULL, NULL, '60 23 29 32', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:24:51', '2018-09-17 13:24:51'),
(1130, 'SAWADOGO', 'Tagsdebwaoga Stéphanie', 'FEMININ', '1998-09-09 00:00:00', NULL, NULL, NULL, NULL, '61 29 87 22', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:27:00', '2018-09-17 13:27:00'),
(1131, 'BONKOUNGOU', 'Jean Emmanuel', 'MASCULIN', '1998-02-05 02:00:00', NULL, NULL, NULL, NULL, '71 97 72 12', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:27:03', '2018-09-17 13:27:03'),
(1132, 'SAWADOGO', 'Awa', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '61 64 65 01', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:28:41', '2018-09-17 13:28:41'),
(1133, 'TAMBOURA', 'Ibrahim Mohamed', 'MASCULIN', '1998-10-03 00:00:00', NULL, NULL, NULL, NULL, '72 75 01 80', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:30:38', '2018-09-17 13:30:38'),
(1134, 'ZOURI', 'Kevin Carlos', 'MASCULIN', '1999-07-29 02:00:00', NULL, NULL, NULL, NULL, '77 56 74 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:31:36', '2018-09-17 13:31:36'),
(1135, 'YELTIGRI', 'Kiswendsida Nadège', 'FEMININ', '1997-09-18 00:00:00', NULL, NULL, NULL, NULL, '72 41 84 46', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:32:25', '2018-09-17 13:32:25'),
(1136, 'TIENDREBEOGO', 'Wendbénédo Elisée', 'MASCULIN', '2000-11-09 02:00:00', NULL, NULL, NULL, NULL, '61 74 52 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:33:51', '2018-09-17 13:33:51'),
(1137, 'COMPAORE', 'Nassa Ahmed', 'MASCULIN', '1996-12-03 00:00:00', NULL, NULL, NULL, NULL, '64 37 86 60', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:34:36', '2018-09-17 13:34:36'),
(1138, 'SAWADOGO', 'Patinda Cyprien', 'MASCULIN', '1998-11-17 02:00:00', NULL, NULL, NULL, NULL, '62 60 85 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:36:27', '2018-09-17 13:36:27'),
(1139, 'OUADBA', 'Fayida', 'FEMININ', '1997-08-02 00:00:00', NULL, NULL, NULL, NULL, '70 50 24 39', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:37:07', '2018-09-17 13:37:07'),
(1140, 'OUEDRAOGO', 'Paling-Wendé Aristide', 'MASCULIN', '1996-07-18 00:00:00', NULL, NULL, NULL, NULL, '70920714', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:38:20', '2018-09-17 13:38:20'),
(1141, 'TIENIN', 'Nébila', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '66 03 45 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:39:07', '2018-09-17 13:39:07'),
(1142, 'TASSEMBEDO', 'Steve Régis', 'MASCULIN', '2000-06-19 02:00:00', NULL, NULL, NULL, NULL, '70 70 67 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 13:43:22', '2018-09-17 13:43:22'),
(1143, 'BELEM', 'Ina Ramata', 'FEMININ', '1998-09-23 00:00:00', NULL, NULL, NULL, NULL, '71163446', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 13:47:24', '2018-09-17 13:47:24'),
(1144, 'SORE', 'Mariatou', 'FEMININ', '1996-03-23 00:00:00', NULL, NULL, NULL, NULL, '66027733', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:50:28', '2018-09-17 13:50:28'),
(1145, 'KONATE', 'Arsène', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 99 58 03', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:50:32', '2018-09-17 13:50:32'),
(1146, 'GUEL', 'Boubié Rodolphe', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 76 95 78', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:52:11', '2018-09-17 13:52:11'),
(1147, 'SOME', 'Sansan Dieudonné', 'MASCULIN', '1996-05-15 00:00:00', NULL, NULL, NULL, NULL, '56902177', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 13:52:27', '2018-09-17 13:52:27'),
(1148, 'TRAORE', 'Alassane', 'MASCULIN', '1998-02-07 00:00:00', NULL, NULL, NULL, NULL, '61659238', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 13:54:20', '2018-09-17 13:54:20'),
(1149, 'TIENDREBEOGO', 'Wennesso Marina', 'FEMININ', '1998-07-06 00:00:00', NULL, NULL, NULL, NULL, '60 54 64 73', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 13:54:58', '2018-09-17 13:54:58'),
(1150, 'TIENDREBEOGO', 'Kouka Ange Carole', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '70249945', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 13:56:11', '2018-09-17 13:56:11'),
(1151, 'NEBIE', 'Vincent Remi', 'MASCULIN', '1998-01-22 00:00:00', NULL, NULL, NULL, NULL, '65615159', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 13:58:36', '2018-09-17 13:58:36'),
(1152, 'KY', 'Bienzi Roxane Jessica Victoria', 'FEMININ', '2000-11-19 00:00:00', NULL, NULL, NULL, NULL, '60146815', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 14:03:43', '2018-09-17 14:03:43'),
(1153, 'RAYAISSE', 'Patrick Renaud Wendyam', 'MASCULIN', '1999-10-27 02:00:00', NULL, NULL, NULL, NULL, '65 27 21 74', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 14:04:43', '2018-09-17 14:04:43'),
(1154, 'NIKIEMA', 'Soutounoma Alain', 'MASCULIN', '1996-02-26 00:00:00', NULL, NULL, NULL, NULL, '79 02 86 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:05:09', '2018-09-17 14:05:09'),
(1155, 'BELEM', 'Abdoulaye', 'MASCULIN', '1998-03-17 00:00:00', NULL, NULL, NULL, NULL, '73234624', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 14:05:51', '2018-09-17 14:05:51'),
(1156, 'KONATE', 'Rokya', 'FEMININ', '2000-01-15 00:00:00', NULL, NULL, NULL, NULL, '67194867', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 14:06:13', '2018-09-17 14:06:13'),
(1157, 'DIALLO', 'Bianissou Abdoul Mohaïmine', 'MASCULIN', '1996-06-22 00:00:00', NULL, NULL, NULL, NULL, '60 79 76 25', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:08:05', '2018-09-17 14:08:05'),
(1158, 'KO', 'Bere Pascal', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '60564696', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 14:08:17', '2018-09-17 14:08:17'),
(1159, 'PALM', 'Sami Brice', 'MASCULIN', '1997-11-13 00:00:00', NULL, NULL, NULL, NULL, '64 12 88 95', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:10:09', '2018-09-17 14:10:09'),
(1160, 'KOUTIEBOU', 'Kalira Irma Aurore', 'FEMININ', '2000-06-28 00:00:00', NULL, NULL, NULL, NULL, '72411383', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 14:10:53', '2018-09-17 14:10:53'),
(1161, 'NIAMPA', 'Bénéwindé Yasmine', 'FEMININ', '1999-10-19 00:00:00', NULL, NULL, NULL, NULL, '61 85 55 89', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:12:23', '2018-09-17 14:12:23'),
(1162, 'ZERBO', 'Ibrahim Nayiro', 'MASCULIN', '1996-05-03 00:00:00', NULL, NULL, NULL, NULL, '60939737', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 14:13:25', '2018-09-17 14:13:25'),
(1163, 'PALE', 'Sansan Jacques', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 10 98 55', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:15:22', '2018-09-17 14:15:22'),
(1164, 'GUINDO', 'Adama', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '64644254', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-17 14:16:13', '2018-09-17 14:16:13'),
(1165, 'OUERMI', 'Tegawendé Prisca', 'FEMININ', '1999-05-08 00:00:00', NULL, NULL, NULL, NULL, '63 01 63 20', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:19:06', '2018-09-17 14:19:06'),
(1166, 'NEYA', 'Safiatou', 'FEMININ', '1998-08-13 00:00:00', NULL, NULL, NULL, NULL, '55 23 32 75', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:20:46', '2018-09-17 14:20:46'),
(1167, 'SAWADOGO', 'Ismaël', 'MASCULIN', '1999-10-10 00:00:00', NULL, NULL, NULL, NULL, '73 38 04 78', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:22:36', '2018-09-17 14:22:36'),
(1168, 'OUEDRAOGO', 'Cherif', 'MASCULIN', '1997-09-02 00:00:00', NULL, NULL, NULL, NULL, '70 01 90 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:25:10', '2018-09-17 14:25:10'),
(1169, 'ZALLE', 'Djémila Hadja', 'FEMININ', '1999-10-06 00:00:00', NULL, NULL, NULL, NULL, '77566767', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 14:28:49', '2018-09-17 14:28:49'),
(1170, 'KOURAWO', 'Souleymane', 'MASCULIN', '1999-07-05 00:00:00', NULL, NULL, NULL, NULL, '70 15 96 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:29:52', '2018-09-17 14:29:52'),
(1171, 'OUEDRAOGO', 'Yamba Abdoul Karim', 'MASCULIN', '1998-10-14 00:00:00', NULL, NULL, NULL, NULL, '66 80 10 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:31:51', '2018-09-17 14:31:51'),
(1172, 'OUANGA', 'Pengdwendé Edwige', 'FEMININ', '1996-07-01 00:00:00', NULL, NULL, NULL, NULL, '67 05 72 58', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:38:05', '2018-09-17 14:38:05'),
(1173, 'TAGNAN', 'Yasmine Jolie', 'FEMININ', '1998-05-29 00:00:00', NULL, NULL, NULL, NULL, '56522609', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 14:41:22', '2018-09-17 14:41:22'),
(1174, 'DANGO', 'Ben Yussef Guiesso', 'MASCULIN', '2000-02-09 02:00:00', NULL, NULL, NULL, NULL, '70 14 17 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 14:44:12', '2018-09-17 14:44:12'),
(1175, 'BONANE', 'Marina Eléonore Lawangondoin', 'FEMININ', '2000-06-19 00:00:00', NULL, NULL, NULL, NULL, '70102800', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 14:44:50', '2018-09-17 14:44:50'),
(1176, 'SANKARA', 'Soumaïla', 'MASCULIN', '1998-04-08 02:00:00', NULL, NULL, NULL, NULL, '66 93 17 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 14:46:52', '2018-09-17 14:46:52'),
(1177, 'TAPSOBA', 'Wendpagnangdé Elisée', 'MASCULIN', '1997-12-23 00:00:00', NULL, NULL, NULL, NULL, '61411171', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 14:47:41', '2018-09-17 14:47:41'),
(1178, 'KABORE', 'Elodie Prisca Viviane', 'FEMININ', '1996-12-19 00:00:00', NULL, NULL, NULL, NULL, '70 83 11 54', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:48:18', '2018-09-17 14:48:18'),
(1179, 'TONDE', 'Aboubacar Sidick', 'MASCULIN', '2000-10-12 02:00:00', NULL, NULL, NULL, NULL, '73 25 85 15', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 14:50:45', '2018-09-17 14:50:45'),
(1180, 'TARNAGDA', 'Zakaria', 'MASCULIN', '1997-12-14 00:00:00', NULL, NULL, NULL, NULL, '12.96', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 14:52:30', '2018-09-17 14:52:30'),
(1181, 'KOUANDA', 'Sanata', 'FEMININ', '1998-05-04 00:00:00', NULL, NULL, NULL, NULL, '68 54 01 88', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:54:26', '2018-09-17 14:54:26'),
(1182, 'GUIMBONE', 'Nouroudine', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '61 05 60 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:56:31', '2018-09-17 14:56:31'),
(1183, 'TIANAMA', 'Wahabou', 'MASCULIN', '1998-08-23 00:00:00', NULL, NULL, NULL, NULL, '74699198', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 14:57:21', '2018-09-17 14:57:21'),
(1184, 'KIENDREBEOGO', 'Judith', 'FEMININ', '1996-05-20 00:00:00', NULL, NULL, NULL, NULL, '70 29 70 64', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 14:59:03', '2018-09-17 14:59:03'),
(1185, 'KOUANDA', 'Nassirou', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '78 30 99 09', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:01:17', '2018-09-17 15:01:17'),
(1186, 'YABRE', 'Julienne', 'FEMININ', '1997-03-18 00:00:00', NULL, NULL, NULL, NULL, '66 23 36 74', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:03:26', '2018-09-17 15:03:26'),
(1187, 'SOME', 'Alain Laurent', 'MASCULIN', '1999-05-08 00:00:00', NULL, NULL, NULL, NULL, '', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:04:29', '2018-09-17 15:04:29'),
(1188, 'SIMPORE', 'Saïbatou', 'FEMININ', '2000-03-25 00:00:00', NULL, NULL, NULL, NULL, '62249318', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:07:55', '2018-09-17 15:07:55'),
(1189, 'ZOURE', 'Abdoul Rahouf', 'MASCULIN', '1998-07-25 00:00:00', NULL, NULL, NULL, NULL, '78 85 00 92', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:08:15', '2018-09-17 15:08:15'),
(1190, 'SAWADOGO', 'Wamanagba Joseph', 'MASCULIN', '1998-03-30 02:00:00', NULL, NULL, NULL, NULL, '72 43 54 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 15:09:49', '2018-09-17 15:09:49'),
(1191, 'TRABOULGA', 'Delphine', 'FEMININ', '1997-01-14 00:00:00', NULL, NULL, NULL, NULL, '73 58 58 16', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:10:37', '2018-09-17 15:10:37'),
(1192, 'SAWADOGO', 'Ousmane', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 64 97 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 15:11:08', '2018-09-17 15:11:08'),
(1193, 'SONDE', 'Boukaré', 'MASCULIN', '2000-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 15 09 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 15:12:38', '2018-09-17 15:12:38'),
(1194, 'SAWADOGO', 'Wendemi Gautier', 'MASCULIN', '1999-04-08 02:00:00', NULL, NULL, NULL, NULL, '73 76 86 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 15:14:23', '2018-09-17 15:14:23'),
(1195, 'BARRY', 'Adjiarratou', 'FEMININ', '1998-01-26 00:00:00', NULL, NULL, NULL, NULL, '62032722', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:15:30', '2018-09-17 15:15:30'),
(1196, 'SAWADOGO', 'Souleymane', 'MASCULIN', '1997-01-20 02:00:00', NULL, NULL, NULL, NULL, '71 54 37 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 15:15:54', '2018-09-17 15:15:54'),
(1197, 'SABA', 'Koswendé', 'MASCULIN', '1996-11-03 00:00:00', NULL, NULL, NULL, NULL, '64 22 17 57', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:16:02', '2018-09-17 15:16:02'),
(1198, 'KONATE', 'Mohamed', 'MASCULIN', '1999-10-25 00:00:00', NULL, NULL, NULL, NULL, '76 84 91 86', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:18:25', '2018-09-17 15:18:25'),
(1199, 'VIGNIGBE', 'Nadège Carine Dahlia', 'FEMININ', '2001-01-23 02:00:00', NULL, NULL, NULL, NULL, '73 02 59 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 15:19:18', '2018-09-17 15:19:18'),
(1200, 'KOUSSOUBE', 'Mariam Malika', 'FEMININ', '2000-01-28 00:00:00', NULL, NULL, NULL, NULL, '67 55 57 58', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:20:16', '2018-09-17 15:20:16'),
(1201, 'SAWADOGO', 'Jémimah Carolle', 'FEMININ', '1999-04-17 00:00:00', NULL, NULL, NULL, NULL, '61763611', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:20:40', '2018-09-17 15:20:40'),
(1202, 'YARO', 'Bekassoé Emmanuel', 'MASCULIN', '1999-12-24 02:00:00', NULL, NULL, NULL, NULL, '70 40 09 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 15:22:09', '2018-09-17 15:22:09'),
(1203, 'DRABO', 'Kadidia', 'FEMININ', '1999-09-22 00:00:00', NULL, NULL, NULL, NULL, '66 22 45 11', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:22:21', '2018-09-17 15:22:21'),
(1204, 'YERO', 'Awa', 'FEMININ', '1998-09-04 00:00:00', NULL, NULL, NULL, NULL, '72766288', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:22:56', '2018-09-17 15:22:56'),
(1205, 'ZALLE', 'Ousséni', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '57 31 81 45', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:24:17', '2018-09-17 15:24:17'),
(1206, 'KINI', 'Lossani', 'MASCULIN', '1998-10-15 00:00:00', NULL, NULL, NULL, NULL, '73036807', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:25:09', '2018-09-17 15:25:09'),
(1207, 'TRAORE', 'Ladji', 'MASCULIN', '1996-08-05 00:00:00', NULL, NULL, NULL, NULL, '71 89 74 82', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:26:31', '2018-09-17 15:26:31'),
(1208, 'SANKARA', 'El Hadj Ousmane', 'MASCULIN', '1997-09-23 00:00:00', NULL, NULL, NULL, NULL, '76 27 17 94', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:28:24', '2018-09-17 15:28:24'),
(1209, 'SIMPORE', 'Hamidou', 'MASCULIN', '1997-11-27 00:00:00', NULL, NULL, NULL, NULL, '65943081', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:30:24', '2018-09-17 15:30:24'),
(1210, 'SANOU', 'Tonkalo Elsa Ornélla', 'FEMININ', '1999-06-01 00:00:00', NULL, NULL, NULL, NULL, '73 24 00 71', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:30:27', '2018-09-17 15:30:27'),
(1211, 'ZANRE', 'Jean Baptiste', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '65921618', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:33:49', '2018-09-17 15:33:49'),
(1212, 'SENOU', 'Korotimie', 'FEMININ', '1998-11-26 00:00:00', NULL, NULL, NULL, NULL, '64 16 97 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:33:53', '2018-09-17 15:33:53'),
(1213, 'LANKOANDE', 'Bénédicte Eulalie Ténin', 'FEMININ', '1996-10-04 00:00:00', NULL, NULL, NULL, NULL, '70 24 69 28', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:35:42', '2018-09-17 15:35:42'),
(1214, 'OUEDRAOGO', 'Salmata', 'FEMININ', '1998-12-22 00:00:00', NULL, NULL, NULL, NULL, '75 21 85 10', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:37:25', '2018-09-17 15:37:25'),
(1215, 'OUEDRAOGO', 'Abdoul Gafar', 'MASCULIN', '1999-05-31 00:00:00', NULL, NULL, NULL, NULL, '70 56 55 92', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:39:32', '2018-09-17 15:39:32'),
(1216, 'YELYAORE', 'Stéphanie', 'FEMININ', '1998-12-29 00:00:00', NULL, NULL, NULL, NULL, '73385461', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:39:44', '2018-09-17 15:39:44'),
(1217, 'SAWADOGO', 'Azize', 'MASCULIN', '1999-08-03 00:00:00', NULL, NULL, NULL, NULL, '67 67 85 18', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:41:13', '2018-09-17 15:41:13'),
(1218, 'NANA', 'Marina Elise', 'FEMININ', '1998-11-01 00:00:00', NULL, NULL, NULL, NULL, '62785948', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:42:04', '2018-09-17 15:42:04'),
(1219, 'BOLOGO', 'Salimata', 'FEMININ', '1999-05-16 00:00:00', NULL, NULL, NULL, NULL, '64 15 93 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:43:11', '2018-09-17 15:43:11'),
(1220, 'SORE', 'Mouhaïminou', 'MASCULIN', '1998-05-10 00:00:00', NULL, NULL, NULL, NULL, '65 23 72 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:44:58', '2018-09-17 15:44:58'),
(1221, 'BESSIN', 'Niels Cephran', 'MASCULIN', '1997-12-15 00:00:00', NULL, NULL, NULL, NULL, '74 41 07 12', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:47:07', '2018-09-17 15:47:07'),
(1222, 'ZOMA', 'Kiswendsida Jardie Juste', 'FEMININ', '1999-06-06 00:00:00', NULL, NULL, NULL, NULL, '63 68 87 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:49:05', '2018-09-17 15:49:05'),
(1223, 'SOME', 'Modeste', 'MASCULIN', '1997-04-14 00:00:00', NULL, NULL, NULL, NULL, '71070803', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 15:50:38', '2018-09-17 15:50:38'),
(1224, 'SANOU', 'Kadidia Bernadette Cyntia', 'FEMININ', '2000-08-20 00:00:00', NULL, NULL, NULL, NULL, '55 50 37 95', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:51:10', '2018-09-17 15:51:10'),
(1225, 'TRAORE', 'Ramata', 'FEMININ', '1999-08-30 00:00:00', NULL, NULL, NULL, NULL, '75 65 11 50', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:52:49', '2018-09-17 15:52:49'),
(1226, 'OUEDRAOGO', 'Hamidou', 'MASCULIN', '1997-09-14 00:00:00', NULL, NULL, NULL, NULL, '66 36 87 78', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:55:57', '2018-09-17 15:55:57'),
(1227, 'TRAORE', 'Soma Moussa Isaac', 'MASCULIN', '1996-05-26 00:00:00', NULL, NULL, NULL, NULL, '78 07 94 87', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:57:46', '2018-09-17 15:57:46'),
(1228, 'THIOMBIANO', 'Wendyam Mélanie', 'FEMININ', '1996-06-01 00:00:00', NULL, NULL, NULL, NULL, '62 85 18 75', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 15:59:37', '2018-09-17 15:59:37'),
(1229, 'KONKOBO', 'Romaric Josué d\'Israël Pengdbamba', 'MASCULIN', '2000-03-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 16:00:54', '2018-09-17 16:00:54'),
(1230, 'ILBOUDO', 'Zalissa', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '75 29 51 86', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 16:01:23', '2018-09-17 16:01:23'),
(1231, 'OUEDRAOGO', 'Kiswindsida Abdoul Aziz', 'MASCULIN', '1998-12-21 02:00:00', NULL, NULL, NULL, NULL, '64 89 47 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 16:02:34', '2018-09-17 16:02:34'),
(1232, 'SAGNON', 'Farida Lamatou Carolle', 'FEMININ', '1999-01-02 00:00:00', NULL, NULL, NULL, NULL, '60 60 35 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 16:03:24', '2018-09-17 16:03:24'),
(1233, 'TOURE', 'Aboubacar Sidiki', 'MASCULIN', '2000-02-03 00:00:00', NULL, NULL, NULL, NULL, '52841657', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 16:04:49', '2018-09-17 16:04:49'),
(1234, 'SIRIMA', 'Ouifaba Viviane', 'FEMININ', '1996-12-02 00:00:00', NULL, NULL, NULL, NULL, '62 06 91 99', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-17 16:05:51', '2018-09-17 16:05:51'),
(1235, 'KAGONE', 'Touwindé Noufou', 'MASCULIN', '1999-05-27 02:00:00', NULL, NULL, NULL, NULL, '60 81 54 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 16:06:06', '2018-09-17 16:06:06'),
(1236, 'DAKIO', 'Zoumbissé', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '61588001', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 16:09:08', '2018-09-17 16:09:08'),
(1237, 'OUEDRAOGO', 'Abdoul Fadel', 'MASCULIN', '2000-10-20 02:00:00', NULL, NULL, NULL, NULL, '70 54 79 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 16:11:23', '2018-09-17 16:11:23'),
(1238, 'KOME', 'Madi', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 67 75 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 16:13:24', '2018-09-17 16:13:24'),
(1239, 'RAKISTABA', 'Ibrahim', 'MASCULIN', '1998-02-11 00:00:00', NULL, NULL, NULL, NULL, '72377917', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 16:14:08', '2018-09-17 16:14:08'),
(1240, 'KOALAGA', 'Rayangnewendé Rémi', 'MASCULIN', '1997-01-16 02:00:00', NULL, NULL, NULL, NULL, '75 68 29 74', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 16:15:29', '2018-09-17 16:15:29'),
(1241, 'BONKOUNGOU', 'Wend-Kuni Myriam Jessica', 'FEMININ', '1999-05-19 00:00:00', NULL, NULL, NULL, NULL, '70273279', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 16:17:13', '2018-09-17 16:17:13'),
(1242, 'ILBOUDO', 'Antoinette', 'FEMININ', '1999-06-12 00:00:00', NULL, NULL, NULL, NULL, '70257511', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 16:21:02', '2018-09-17 16:21:02'),
(1243, 'YAMEOGO', 'Jocelyne Gabrielle', 'FEMININ', '1997-08-29 00:00:00', NULL, NULL, NULL, NULL, '60966609', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 16:23:58', '2018-09-17 16:23:58'),
(1244, 'HEMA', 'Fadila', 'MASCULIN', '1996-10-31 00:00:00', NULL, NULL, NULL, NULL, '71772353', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-17 16:26:51', '2018-09-17 16:26:51'),
(1245, 'DOULKOM', 'Fadilata', 'FEMININ', '1999-11-29 02:00:00', NULL, NULL, NULL, NULL, '62 04 60 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 16:36:04', '2018-09-17 16:36:04'),
(1246, 'KABRE', 'Cheick Sidi Ammed', 'MASCULIN', '1997-09-10 02:00:00', NULL, NULL, NULL, NULL, '72 03 50 38', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 16:41:09', '2018-09-17 16:41:09'),
(1247, 'GUITTY', 'Oumarou', 'MASCULIN', '1996-11-02 02:00:00', NULL, NULL, NULL, NULL, '61 20 88 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 16:45:29', '2018-09-17 16:45:29'),
(1248, 'ZOUNGRANA', 'Wendkouni Landry Aristide', 'MASCULIN', '1999-06-09 02:00:00', NULL, NULL, NULL, NULL, '74 95 68 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 16:57:47', '2018-09-17 16:57:47'),
(1249, 'ZONGO', 'Aurelie Flavy Rufine', 'MASCULIN', '2000-03-25 02:00:00', NULL, NULL, NULL, NULL, '63 11 23 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 17:20:32', '2018-09-17 17:20:32'),
(1250, 'OUEDRAOGO', 'Aïssata', 'FEMININ', '1999-01-22 02:00:00', NULL, NULL, NULL, NULL, '72 06 06 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 17:23:32', '2018-09-17 17:23:32'),
(1251, 'OUEDRAOGO', 'Konyimsom Simone', 'FEMININ', '1997-10-28 02:00:00', NULL, NULL, NULL, NULL, '66 62 11 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 17:27:07', '2018-09-17 17:27:07'),
(1252, 'OUEDRAOGO', 'Oumarou Jonathan', 'MASCULIN', '2002-05-22 02:00:00', NULL, NULL, NULL, NULL, '61 87 62 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-17 17:47:11', '2018-09-17 17:47:11'),
(1253, 'TRAORE', 'Djamilatou', 'FEMININ', '2000-04-13 00:00:00', NULL, NULL, NULL, NULL, '72536101', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 09:02:41', '2018-09-18 09:02:41'),
(1254, 'LOBOUE', 'Laeticia Jacqueline', 'FEMININ', '1999-12-07 00:00:00', NULL, NULL, NULL, NULL, '63254630', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 09:06:02', '2018-09-18 09:06:02'),
(1255, 'TRAORE', 'Carlos', 'MASCULIN', '1998-03-15 00:00:00', NULL, NULL, NULL, NULL, '62893938', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:06:34', '2018-09-18 09:06:34'),
(1256, 'KOUTOU', 'Oumar', 'MASCULIN', '1997-10-12 00:00:00', NULL, NULL, NULL, NULL, '62216597', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:09:50', '2018-09-18 09:09:50'),
(1257, 'COULIBALY', 'Jonathan', 'MASCULIN', '1997-08-15 00:00:00', NULL, NULL, NULL, NULL, '60343324', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:11:49', '2018-09-18 09:11:49'),
(1258, 'KABORE', 'Justin', 'MASCULIN', '1996-12-30 00:00:00', NULL, NULL, NULL, NULL, '62466160', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:13:36', '2018-09-18 09:13:36'),
(1259, 'SAWADOGO', 'Zakaria', 'MASCULIN', '1997-03-29 00:00:00', NULL, NULL, NULL, NULL, '78888806', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:15:36', '2018-09-18 09:15:36'),
(1260, 'LANKOANDE', 'Edwige', 'FEMININ', '1997-04-15 00:00:00', NULL, NULL, NULL, NULL, '70564575', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:17:54', '2018-09-18 09:17:54'),
(1261, 'AYORO', 'Dounou Stéphane', 'MASCULIN', '2000-03-29 00:00:00', NULL, NULL, NULL, NULL, '63668127', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 09:18:06', '2018-09-18 09:18:06'),
(1262, 'LANKOANDE', 'Edwige', 'FEMININ', '1997-04-15 00:00:00', NULL, NULL, NULL, NULL, '70564575', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:20:55', '2018-09-18 09:20:55'),
(1263, 'DAOUEGA', 'Fidel Fasnewendé', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '79290549', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:26:51', '2018-09-18 09:26:51'),
(1264, 'NOUKOUBRI', 'Assita', 'FEMININ', '1999-05-01 00:00:00', NULL, NULL, NULL, NULL, '70414240', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:29:25', '2018-09-18 09:29:25'),
(1265, 'OUEDRAOGO', 'Rasmané', 'MASCULIN', '1998-05-23 00:00:00', NULL, NULL, NULL, NULL, '65479594', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:32:45', '2018-09-18 09:32:45'),
(1266, 'ZONGO', 'Frédéric', 'MASCULIN', '1996-01-04 00:00:00', NULL, NULL, NULL, NULL, '79596599', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:34:27', '2018-09-18 09:34:27'),
(1267, 'OUEDRAOGO', 'Wendnoogdo', 'MASCULIN', '1999-07-22 00:00:00', NULL, NULL, NULL, NULL, '64532014', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:36:12', '2018-09-18 09:36:12'),
(1268, 'NIKIEMA', 'Nestor 1er Jumeau', 'MASCULIN', '1998-03-04 00:00:00', NULL, NULL, NULL, NULL, '63074425', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:39:58', '2018-09-18 09:39:58'),
(1269, 'ZAPRE', 'Sié Moctar', 'MASCULIN', '1999-09-23 00:00:00', NULL, NULL, NULL, NULL, '57473774', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 09:40:14', '2018-09-18 09:40:14'),
(1270, 'OUEDRAOGO', 'Nématou', 'FEMININ', '1997-08-15 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:41:32', '2018-09-18 09:41:32'),
(1271, 'SIA', 'Ouindouko Aïcha', 'FEMININ', '1999-01-01 00:00:00', NULL, NULL, NULL, NULL, '56713418', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:44:02', '2018-09-18 09:44:02'),
(1272, 'SORE', 'Fatimata', 'FEMININ', '1998-07-19 00:00:00', NULL, NULL, NULL, NULL, '77759119', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:45:40', '2018-09-18 09:45:40'),
(1273, 'YONLI', 'Diabida Christian', 'MASCULIN', '1999-11-10 00:00:00', NULL, NULL, NULL, NULL, '62070970', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 09:46:50', '2018-09-18 09:46:50'),
(1274, 'OUEDRAOGO', 'Ninguimbé', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '77368823', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:47:22', '2018-09-18 09:47:22'),
(1275, 'BADO', 'Yiyerega Carole Lesly', 'FEMININ', '2000-12-23 00:00:00', NULL, NULL, NULL, NULL, '62705295', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 09:49:53', '2018-09-18 09:49:53'),
(1276, 'SAWADOGO', 'Karim', 'MASCULIN', '1998-01-31 02:00:00', NULL, NULL, NULL, NULL, '62 55 05 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 09:50:04', '2018-09-18 09:50:04'),
(1277, 'YAOGO', 'Hermane', 'MASCULIN', '1998-09-19 02:00:00', NULL, NULL, NULL, NULL, '73 44 57 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 09:52:21', '2018-09-18 09:52:21'),
(1278, 'ZONGO', 'Wendinda Romuald', 'MASCULIN', '1998-04-29 00:00:00', NULL, NULL, NULL, NULL, '63265978', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 09:54:12', '2018-09-18 09:54:12'),
(1279, 'ZOUNGRANA', 'Silvère Ulrich Wendesoa', 'MASCULIN', '1997-05-05 02:00:00', NULL, NULL, NULL, NULL, '62 65 48 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 09:56:03', '2018-09-18 09:56:03'),
(1280, 'SOME', 'Saturnin', 'MASCULIN', '1998-11-29 00:00:00', NULL, NULL, NULL, NULL, '71052477', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 09:56:20', '2018-09-18 09:56:20'),
(1281, 'SANKARA', 'Rayimwendé Rebecca', 'FEMININ', '1999-05-18 00:00:00', NULL, NULL, NULL, NULL, '71884361', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 09:58:49', '2018-09-18 09:58:49'),
(1282, 'ZOURE', 'Alizèta', 'FEMININ', '2000-06-12 00:00:00', NULL, NULL, NULL, NULL, '57592654', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 10:00:40', '2018-09-18 10:00:40'),
(1283, 'TRAORE', 'Abdoul Rahim', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '74004323', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 10:00:42', '2018-09-18 10:00:42'),
(1284, 'DIANDA', 'Hamidou', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 42 88 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 10:03:32', '2018-09-18 10:03:32'),
(1285, 'WARE', 'Wendpagnagda Achille Macaire', 'MASCULIN', '1996-05-12 00:00:00', NULL, NULL, NULL, NULL, '71970370', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 10:03:37', '2018-09-18 10:03:37'),
(1286, 'KABORE', 'Issaka', 'MASCULIN', '1998-01-13 00:00:00', NULL, NULL, NULL, NULL, '79817059', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 10:04:39', '2018-09-18 10:04:39'),
(1287, 'OUEDRAOGO', 'Wendyam Djamila Flavi Miriam', 'FEMININ', '1999-05-30 00:00:00', NULL, NULL, NULL, NULL, '51665774', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 10:05:55', '2018-09-18 10:05:55'),
(1288, 'KIENTEGA', 'Josiane', 'FEMININ', '1998-08-29 02:00:00', NULL, NULL, NULL, NULL, '66 83 51 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 10:06:08', '2018-09-18 10:06:08'),
(1289, 'TOE', 'Arnaud Lawazena', 'MASCULIN', '2000-08-31 00:00:00', NULL, NULL, NULL, NULL, '70321205', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 10:08:21', '2018-09-18 10:08:21'),
(1290, 'ZOROME', 'Amadé', 'MASCULIN', '2000-06-22 02:00:00', NULL, NULL, NULL, NULL, '67 75 67 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 10:09:44', '2018-09-18 10:09:44'),
(1291, 'ZOU', 'Awa 2e jumelle', 'FEMININ', '1998-08-11 00:00:00', NULL, NULL, NULL, NULL, '56625829', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 10:10:43', '2018-09-18 10:10:43'),
(1292, 'SAWADOGO', 'Youssouf', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72907788', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 10:13:01', '2018-09-18 10:13:01'),
(1293, 'TAO', 'Djissinkoaré Zakaria', 'MASCULIN', '1996-05-13 02:00:00', NULL, NULL, NULL, NULL, '61 99 17 30', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 10:13:23', '2018-09-18 10:13:23'),
(1294, 'ZALLE', 'Salifou', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 54 38 71', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 10:22:40', '2018-09-18 10:22:40'),
(1295, 'SOW', 'Abdoul Rachid', 'MASCULIN', '1999-08-12 00:00:00', NULL, NULL, NULL, NULL, '70958740', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 10:24:23', '2018-09-18 10:24:23'),
(1296, 'DAVOU', 'Simbou', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '65447682', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 10:24:25', '2018-09-18 10:24:25'),
(1297, 'ZONGO', 'Adéline', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 10:26:07', '2018-09-18 10:26:07'),
(1298, 'SAVADOGO', 'Nonguemwaoga', 'MASCULIN', '1996-04-14 02:00:00', NULL, NULL, NULL, NULL, '65 54 10 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 10:28:13', '2018-09-18 10:28:13'),
(1299, 'DAKUYO', 'Yézoumahan Dite Natacha', 'FEMININ', '1997-08-29 00:00:00', NULL, NULL, NULL, NULL, '55628584', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 10:28:25', '2018-09-18 10:28:25'),
(1300, 'SERME', 'Djénéba', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '63681401', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 10:31:08', '2018-09-18 10:31:08'),
(1301, 'DIABATE', 'Daouda', 'MASCULIN', '1998-12-29 00:00:00', NULL, NULL, NULL, NULL, '63835466', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 10:33:42', '2018-09-18 10:33:42'),
(1302, 'KABORE', 'Rachidi', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 96 18 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 10:35:21', '2018-09-18 10:35:21'),
(1303, 'DAKIO', 'Judhite', 'FEMININ', '1998-07-08 00:00:00', NULL, NULL, NULL, NULL, '61021646', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 10:36:10', '2018-09-18 10:36:10');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(1304, 'MANO', 'Yenoufoudima Boris', 'MASCULIN', '1998-04-08 00:00:00', NULL, NULL, NULL, NULL, '72 17 34 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 10:37:15', '2018-09-18 10:37:15'),
(1305, 'TRAORE', 'Nathalie Perpétue', 'FEMININ', '1997-03-05 00:00:00', NULL, NULL, NULL, NULL, '63815208', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 10:37:44', '2018-09-18 10:37:44'),
(1306, 'BADO', 'Hubert Bali', 'MASCULIN', '1997-11-15 00:00:00', NULL, NULL, NULL, NULL, '73 10 44 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 10:39:05', '2018-09-18 10:39:05'),
(1307, 'TIENDREBEOGO', 'Mariam', 'FEMININ', '1999-04-20 00:00:00', NULL, NULL, NULL, NULL, '61604906', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 10:45:15', '2018-09-18 10:45:15'),
(1308, 'PARE', 'Roseline Flora', 'FEMININ', '1997-09-21 00:00:00', NULL, NULL, NULL, NULL, '72064003', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 10:49:27', '2018-09-18 10:49:27'),
(1309, 'OUATTARA', 'Assane Krist Yacou Lallé Bafa', 'MASCULIN', '1998-06-22 00:00:00', NULL, NULL, NULL, NULL, '61 20 18 78', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 10:50:52', '2018-09-18 10:50:52'),
(1310, 'SAWADOGO', 'Wendkouni Esaï', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '64 12 36 76', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 10:51:06', '2018-09-18 10:51:06'),
(1311, 'KABRE', 'Kouka Lydia Nadège', 'FEMININ', '1996-12-15 00:00:00', NULL, NULL, NULL, NULL, '74 89 02 01', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 10:53:54', '2018-09-18 10:53:54'),
(1312, 'KABORE', 'Inoussa', 'MASCULIN', '1996-05-22 02:00:00', NULL, NULL, NULL, NULL, '65 48 37 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 10:55:44', '2018-09-18 10:55:44'),
(1313, 'YATTARA', 'Aminata', 'FEMININ', '1998-06-10 00:00:00', NULL, NULL, NULL, NULL, '78 01 37 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 10:56:11', '2018-09-18 10:56:11'),
(1314, 'COULIBALY', 'Benoît Marie', 'MASCULIN', '1999-05-30 00:00:00', NULL, NULL, NULL, NULL, '61326339', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:00:33', '2018-09-18 11:00:33'),
(1315, 'OUEDRAOGO', 'Siméon', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '62289166', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:03:41', '2018-09-18 11:03:41'),
(1316, 'SEREME', 'Tonkondji Ramata', 'FEMININ', '1999-11-28 00:00:00', NULL, NULL, NULL, NULL, '61077775', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:05:10', '2018-09-18 11:05:10'),
(1317, 'KIEMA', 'Pamagui Bernard', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:06:20', '2018-09-18 11:06:20'),
(1318, 'SORY', 'Djélikouna Iliassou Abraham', 'MASCULIN', '2000-10-30 00:00:00', NULL, NULL, NULL, NULL, '71553367', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:09:40', '2018-09-18 11:09:40'),
(1319, 'TAITA', 'Armand Vital Wenceslas', 'MASCULIN', '1996-09-19 00:00:00', NULL, NULL, NULL, NULL, '71902777', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:10:54', '2018-09-18 11:10:54'),
(1320, 'SANOU', 'Malik', 'MASCULIN', '2000-01-15 00:00:00', NULL, NULL, NULL, NULL, '56214919', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:12:49', '2018-09-18 11:12:49'),
(1321, 'MAÏGA', 'Ousséni', 'MASCULIN', '1998-05-28 00:00:00', NULL, NULL, NULL, NULL, '66652668', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:14:35', '2018-09-18 11:14:35'),
(1322, 'OUEDRAOGO', 'Lamine', 'MASCULIN', '1997-04-04 00:00:00', NULL, NULL, NULL, NULL, '64275132', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:16:18', '2018-09-18 11:16:18'),
(1323, 'SANKARA', 'Kéren Hodavia Wendlavim', 'FEMININ', '1999-09-22 00:00:00', NULL, NULL, NULL, NULL, '72344405', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:16:40', '2018-09-18 11:16:40'),
(1324, 'OUOBA', 'Boama Mireille', 'FEMININ', '1999-03-27 00:00:00', NULL, NULL, NULL, NULL, '60847471', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:19:44', '2018-09-18 11:19:44'),
(1325, 'ZONGO', 'Wendpagnangdé Olivia Fabienne', 'FEMININ', '2000-03-05 00:00:00', NULL, NULL, NULL, NULL, '70127167', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:22:35', '2018-09-18 11:22:35'),
(1326, 'BARO', 'Fayçal Razak', 'MASCULIN', '1999-07-05 00:00:00', NULL, NULL, NULL, NULL, '51174115', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:24:38', '2018-09-18 11:24:38'),
(1327, 'TAPSOBA', 'Ghislain Wenddenda', 'MASCULIN', '1999-05-23 00:00:00', NULL, NULL, NULL, NULL, '71232414', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:26:27', '2018-09-18 11:26:27'),
(1328, 'DICKO', 'Salamatou Hama', 'MASCULIN', '1997-10-07 00:00:00', NULL, NULL, NULL, NULL, '73710410', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:28:58', '2018-09-18 11:28:58'),
(1329, 'KABORE', 'Issac Saabir wend-Gounda', 'MASCULIN', '1999-12-20 00:00:00', NULL, NULL, NULL, NULL, '78817805', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:32:25', '2018-09-18 11:32:25'),
(1330, 'SOMDA', 'Terlièrè Ulrich Marcel', 'MASCULIN', '2000-05-28 00:00:00', NULL, NULL, NULL, NULL, '57174927', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:32:45', '2018-09-18 11:32:45'),
(1331, 'NION', 'Atiga désiré', 'MASCULIN', '1997-05-05 00:00:00', NULL, NULL, NULL, NULL, '79217801', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:34:49', '2018-09-18 11:34:49'),
(1332, 'SOMBIE', 'Hamed', 'MASCULIN', '1999-09-19 00:00:00', NULL, NULL, NULL, NULL, '71461519', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:36:24', '2018-09-18 11:36:24'),
(1333, 'KOALGA', 'Olivier', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '64072095', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:38:06', '2018-09-18 11:38:06'),
(1334, 'DEMBEGA', 'Nobila Nadia Rasmata', 'FEMININ', '2000-10-08 00:00:00', NULL, NULL, NULL, NULL, '70181178', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:38:12', '2018-09-18 11:38:12'),
(1335, 'OUALI', 'Amsoaguini Brigitte', 'FEMININ', '1998-10-06 00:00:00', NULL, NULL, NULL, NULL, '63684526', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:40:31', '2018-09-18 11:40:31'),
(1336, 'BELEM', 'Serge Iloriste Noboth', 'MASCULIN', '1997-09-21 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:42:22', '2018-09-18 11:42:22'),
(1337, 'SABOUE', 'Julien', 'MASCULIN', '1997-09-20 00:00:00', NULL, NULL, NULL, NULL, '62865832', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:43:02', '2018-09-18 11:43:02'),
(1338, 'DEMBELE', 'Stéphane Innocent', 'MASCULIN', '1999-03-13 00:00:00', NULL, NULL, NULL, NULL, '61676792', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:45:37', '2018-09-18 11:45:37'),
(1339, 'KABRE', 'Aïcha Bienvenue', 'FEMININ', '1998-09-18 00:00:00', NULL, NULL, NULL, NULL, '57753157', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:49:34', '2018-09-18 11:49:34'),
(1340, 'HEMA', 'Koubadiaba', 'FEMININ', '1996-02-28 00:00:00', NULL, NULL, NULL, NULL, '76 59 12 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 11:50:15', '2018-09-18 11:50:15'),
(1341, 'BOUDA', 'Abdou Ablasse', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:50:25', '2018-09-18 11:50:25'),
(1342, 'FORGO', 'Rayangnéwindé Abdel Fahd', 'MASCULIN', '2000-03-08 02:00:00', NULL, NULL, NULL, NULL, '62 79 73 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 11:51:06', '2018-09-18 11:51:06'),
(1343, 'ZONGO', 'Mariétou', 'FEMININ', '1999-05-18 00:00:00', NULL, NULL, NULL, NULL, '71 54 10 04', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 11:51:58', '2018-09-18 11:51:58'),
(1344, 'OUEDRAOGO', 'Soumaïla', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 41 61 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 11:53:02', '2018-09-18 11:53:02'),
(1345, 'KOURANE', 'Lydie Lawalo Victorine', 'FEMININ', '1997-03-22 00:00:00', NULL, NULL, NULL, NULL, '72727648', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:53:11', '2018-09-18 11:53:11'),
(1346, 'TRAORE', 'Rama Fatimata', 'FEMININ', '2000-09-28 00:00:00', NULL, NULL, NULL, NULL, '74 00 81 72', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 11:54:10', '2018-09-18 11:54:10'),
(1347, 'SAWADOGO', 'Pingwendé', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '61208264', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:54:12', '2018-09-18 11:54:12'),
(1348, 'OUEDRAOGO', 'Hamadé', 'MASCULIN', '1997-02-04 02:00:00', NULL, NULL, NULL, NULL, '73 67 03 62', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 11:55:31', '2018-09-18 11:55:31'),
(1349, 'DJIBO', 'Aïcha', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '73 30 78 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 11:56:01', '2018-09-18 11:56:01'),
(1350, 'YAMEOGO', 'Wensongda Arnaud', 'MASCULIN', '1997-07-25 00:00:00', NULL, NULL, NULL, NULL, '72703031', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:56:13', '2018-09-18 11:56:13'),
(1351, 'KOALA', 'Amandine', 'FEMININ', '1996-07-10 00:00:00', NULL, NULL, NULL, NULL, '78251883', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:56:25', '2018-09-18 11:56:25'),
(1352, 'PARE', 'Emiline', 'FEMININ', '1996-07-30 00:00:00', NULL, NULL, NULL, NULL, '62 91 29 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 11:57:39', '2018-09-18 11:57:39'),
(1353, 'OUEDRAOGO', 'Aboubakar Sidiki', 'MASCULIN', '1999-04-15 02:00:00', NULL, NULL, NULL, NULL, '72 32 77 86', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 11:57:55', '2018-09-18 11:57:55'),
(1354, 'KARAMBIRI', 'Louis', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72608595', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 11:58:05', '2018-09-18 11:58:05'),
(1355, 'SONOGO', 'Bassiriky', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '61325775', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 11:59:45', '2018-09-18 11:59:45'),
(1356, 'OUEDRAOGO', 'Faïssal', 'MASCULIN', '1998-10-26 02:00:00', NULL, NULL, NULL, NULL, '65 78 75 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 11:59:59', '2018-09-18 11:59:59'),
(1357, 'BOUDA', 'Pingdwendé Léonce', 'FEMININ', '1998-06-18 00:00:00', NULL, NULL, NULL, NULL, '76 58 89 05', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 12:00:45', '2018-09-18 12:00:45'),
(1358, 'NANA', 'Pogbi', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '74034135', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 12:01:03', '2018-09-18 12:01:03'),
(1359, 'TOE', 'Victor', 'MASCULIN', '1996-03-17 02:00:00', NULL, NULL, NULL, NULL, '72 16 81 32', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 12:01:47', '2018-09-18 12:01:47'),
(1360, 'NAON', 'Atia', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 65 14 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 12:03:04', '2018-09-18 12:03:04'),
(1361, 'NARE', 'Nawfal Lorenzo', 'MASCULIN', '2000-05-08 00:00:00', NULL, NULL, NULL, NULL, '70844565', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 12:03:08', '2018-09-18 12:03:08'),
(1362, 'COMPAORE', 'Veronique', 'MASCULIN', '1999-02-01 00:00:00', NULL, NULL, NULL, NULL, '69602652', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 12:03:25', '2018-09-18 12:03:25'),
(1363, 'SAWADOGO', 'Saïdou', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 84 90 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 12:03:36', '2018-09-18 12:03:36'),
(1364, 'SOME', 'Lydie Jédidia', 'FEMININ', '1999-01-18 00:00:00', NULL, NULL, NULL, NULL, '55 01 83 91', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 12:04:54', '2018-09-18 12:04:54'),
(1365, 'BELEM', 'Bachir Abdallah', 'MASCULIN', '1999-05-16 00:00:00', NULL, NULL, NULL, NULL, '62580115', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 12:05:26', '2018-09-18 12:05:26'),
(1366, 'NIKIEMA', 'Albert', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72353274', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 12:05:53', '2018-09-18 12:05:53'),
(1367, 'SAMPEBGO', 'Justin', 'MASCULIN', '1997-05-25 02:00:00', NULL, NULL, NULL, NULL, '73 21 62 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 12:06:27', '2018-09-18 12:06:27'),
(1368, 'TAPSOBA', 'Nafissatou', 'FEMININ', '1996-05-04 00:00:00', NULL, NULL, NULL, NULL, '71 84 21 22', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 12:06:54', '2018-09-18 12:06:54'),
(1369, 'COMPAORE', 'Alima', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '66489425', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 12:07:54', '2018-09-18 12:07:54'),
(1370, 'TOU', 'Kadiatou', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '51 07 06 72', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 12:08:25', '2018-09-18 12:08:25'),
(1371, 'PARE', 'Aïda Flore', 'FEMININ', '1997-11-18 00:00:00', NULL, NULL, NULL, NULL, '73614020', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 12:08:48', '2018-09-18 12:08:48'),
(1372, 'ZOURI', 'Aminatou', 'FEMININ', '1999-10-13 00:00:00', NULL, NULL, NULL, NULL, '72 18 21 26', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 12:10:05', '2018-09-18 12:10:05'),
(1373, 'SAWADOGO', 'Nafissatou', 'FEMININ', '1999-02-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 12:10:13', '2018-09-18 12:10:13'),
(1374, 'SAWADOGO', 'Ousséni', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '74843635', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 12:10:43', '2018-09-18 12:10:43'),
(1375, 'KOURA', 'Halemiyi', 'FEMININ', '1998-10-07 00:00:00', NULL, NULL, NULL, NULL, '51 97 50 13', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 12:12:59', '2018-09-18 12:12:59'),
(1376, 'DIASSO', 'Arouna', 'MASCULIN', '1998-12-03 00:00:00', NULL, NULL, NULL, NULL, '66633079', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 12:13:01', '2018-09-18 12:13:01'),
(1377, 'OUEDRAOGO', 'Alizèta Madina', 'FEMININ', '1999-01-08 00:00:00', NULL, NULL, NULL, NULL, '78 82 55 10', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 12:15:08', '2018-09-18 12:15:08'),
(1378, 'NIAMPA', 'Payandé Latifatou', 'FEMININ', '1999-04-13 00:00:00', NULL, NULL, NULL, NULL, '62 98 86 92', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 12:21:47', '2018-09-18 12:21:47'),
(1379, 'ZONGO', 'Alice', 'FEMININ', '1997-12-08 00:00:00', NULL, NULL, NULL, NULL, '73 33 53 60', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 12:25:43', '2018-09-18 12:25:43'),
(1380, 'BOUDA', 'Pawendtaoré Jacob', 'MASCULIN', '1998-06-17 00:00:00', NULL, NULL, NULL, NULL, '74988538', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 12:28:07', '2018-09-18 12:28:07'),
(1381, 'RAMDE', 'Joël', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '72245061', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 12:30:56', '2018-09-18 12:30:56'),
(1382, 'SAMPO', 'Barkwendé Siméon', 'MASCULIN', '2000-12-17 02:00:00', NULL, NULL, NULL, NULL, '63 19 32 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:03:32', '2018-09-18 13:03:32'),
(1383, 'SOME', 'Etienne', 'MASCULIN', '1998-03-07 02:00:00', NULL, NULL, NULL, NULL, '62 20 20 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:05:52', '2018-09-18 13:05:52'),
(1384, 'SAWADOGO', 'Abdou', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 01 18 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:08:57', '2018-09-18 13:08:57'),
(1385, 'SOME', 'Kpièzié', 'MASCULIN', '1997-01-01 02:00:00', NULL, NULL, NULL, NULL, '70 01 26 27', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:12:26', '2018-09-18 13:12:26'),
(1386, 'TIENDREBEOGO', 'Sibiri Hamado', 'MASCULIN', '1998-11-28 02:00:00', NULL, NULL, NULL, NULL, '60 41 90 27', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:15:24', '2018-09-18 13:15:24'),
(1387, 'SOME', 'Naaba Victorien', 'MASCULIN', '1997-08-22 02:00:00', NULL, NULL, NULL, NULL, '61 20 64 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:17:38', '2018-09-18 13:17:38'),
(1388, 'SOGLI', 'Mariama Ingrid', 'FEMININ', '2000-09-02 02:00:00', NULL, NULL, NULL, NULL, '78 88 56 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:20:25', '2018-09-18 13:20:25'),
(1389, 'SIA', 'Judith', 'FEMININ', '1998-05-04 02:00:00', NULL, NULL, NULL, NULL, '77 96 11 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:22:40', '2018-09-18 13:22:40'),
(1390, 'TAPSOBA', 'Seni', 'MASCULIN', '1996-02-06 02:00:00', NULL, NULL, NULL, NULL, '76 57 79 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:24:34', '2018-09-18 13:24:34'),
(1391, 'SAKO', 'Rachelle Adissa', 'FEMININ', '1998-06-15 02:00:00', NULL, NULL, NULL, NULL, '62 64 34 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:26:34', '2018-09-18 13:26:34'),
(1392, 'DOUAMBA', 'Wango Abdoul Fataf Salif', 'MASCULIN', '1998-05-05 02:00:00', NULL, NULL, NULL, NULL, '73 08 47 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:29:28', '2018-09-18 13:29:28'),
(1393, 'DIPAMA', 'Pêgdwendé Alix Sandrine', 'FEMININ', '1999-01-09 02:00:00', NULL, NULL, NULL, NULL, '66 31 12 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:31:41', '2018-09-18 13:31:41'),
(1394, 'BENE', 'Roukiatou', 'FEMININ', '1999-10-27 02:00:00', NULL, NULL, NULL, NULL, '60 34 89 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:33:38', '2018-09-18 13:33:38'),
(1395, 'AGUIGUIHOUE', 'Babadarwé Charlotte', 'FEMININ', '1999-07-17 02:00:00', NULL, NULL, NULL, NULL, '76 70 48 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:37:32', '2018-09-18 13:37:32'),
(1396, 'OUEDRAOGO', 'Alicia Glwadys', 'FEMININ', '1999-06-02 02:00:00', NULL, NULL, NULL, NULL, '77 94 56 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:39:24', '2018-09-18 13:39:24'),
(1397, 'GYEBRE', 'Jessica Renelde Touwendé', 'FEMININ', '2000-09-02 02:00:00', NULL, NULL, NULL, NULL, '70 73 77 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:41:50', '2018-09-18 13:41:50'),
(1398, 'SARAMBE', 'Pèllo Jeanne', 'FEMININ', '1997-02-03 02:00:00', NULL, NULL, NULL, NULL, '62 71 05 13', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:45:14', '2018-09-18 13:45:14'),
(1399, 'KAM', 'Sami', 'MASCULIN', '1997-09-27 02:00:00', NULL, NULL, NULL, NULL, '72 55 62 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 13:47:30', '2018-09-18 13:47:30'),
(1400, 'OUEDRAOGO', 'Mohamed', 'MASCULIN', '1997-10-16 00:00:00', NULL, NULL, NULL, NULL, '57146705', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 13:57:42', '2018-09-18 13:57:42'),
(1401, 'NANA', 'Léon Sibiri', 'MASCULIN', '1997-11-08 00:00:00', NULL, NULL, NULL, NULL, '60449736', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 13:59:17', '2018-09-18 13:59:17'),
(1402, 'BILGO', 'Florence', 'MASCULIN', '1999-08-20 00:00:00', NULL, NULL, NULL, NULL, '66757483', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 14:00:46', '2018-09-18 14:00:46'),
(1403, 'DABO', 'Nématou', 'FEMININ', '1997-11-25 00:00:00', NULL, NULL, NULL, NULL, '00226', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 14:03:35', '2018-09-18 14:03:35'),
(1404, 'OUEDRAOGO', 'Harouna', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '70403767', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 14:05:03', '2018-09-18 14:05:03'),
(1405, 'BAGAYA', 'Issaka', 'MASCULIN', '1999-03-17 00:00:00', NULL, NULL, NULL, NULL, '70196998', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 14:06:59', '2018-09-18 14:06:59'),
(1406, 'KEBRE', 'Boureima', 'MASCULIN', '1996-11-10 00:00:00', NULL, NULL, NULL, NULL, '57547802', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 14:08:34', '2018-09-18 14:08:34'),
(1407, 'BONONGO', 'Roukiatou', 'MASCULIN', '1996-07-07 00:00:00', NULL, NULL, NULL, NULL, '69612884', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 14:10:46', '2018-09-18 14:10:46'),
(1408, 'BILLA', 'Abdel Kader Isidore', 'MASCULIN', '2001-02-21 00:00:00', NULL, NULL, NULL, NULL, '61740261', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 14:12:51', '2018-09-18 14:12:51'),
(1409, 'BIKIENGA', 'Djamilatou', 'FEMININ', '1999-03-13 00:00:00', NULL, NULL, NULL, NULL, '75155380', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 14:14:36', '2018-09-18 14:14:36'),
(1410, 'BARRY', 'Azéta', 'FEMININ', '1996-10-09 00:00:00', NULL, NULL, NULL, NULL, '62487307', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 14:23:26', '2018-09-18 14:23:26'),
(1411, 'TAMBOURA', 'Marie Lyse', 'FEMININ', '1998-07-22 02:00:00', NULL, NULL, NULL, NULL, '73 60 52 39', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 14:26:24', '2018-09-18 14:26:24'),
(1412, 'ZONO', 'Adama', 'MASCULIN', '1996-09-05 00:00:00', NULL, NULL, NULL, NULL, '60752746', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 14:26:26', '2018-09-18 14:26:26'),
(1413, 'SAWADOGO', 'Céline', 'FEMININ', '1996-10-28 00:00:00', NULL, NULL, NULL, NULL, '56865104', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 14:30:10', '2018-09-18 14:30:10'),
(1414, 'SAHOUN', 'Roland', 'MASCULIN', '1999-09-30 02:00:00', NULL, NULL, NULL, NULL, '73 00 32 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 14:30:32', '2018-09-18 14:30:32'),
(1415, 'ROAMBA', 'Rakissida Lydie', 'FEMININ', '1999-10-09 02:00:00', NULL, NULL, NULL, NULL, '64 58 04 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 14:32:50', '2018-09-18 14:32:50'),
(1416, 'TRAORE', 'Bagnoumou Ulrich', 'MASCULIN', '1996-09-03 02:00:00', NULL, NULL, NULL, NULL, '67 96 00 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 14:35:11', '2018-09-18 14:35:11'),
(1417, 'OUEDRAOGO', 'Charrifate Houmaïda', 'FEMININ', '1999-07-08 00:00:00', NULL, NULL, NULL, NULL, '72311241', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 14:36:42', '2018-09-18 14:36:42'),
(1418, 'FAYE', 'Pape Amadou', 'MASCULIN', '1999-01-23 02:00:00', NULL, NULL, NULL, NULL, '71 54 03 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 14:39:45', '2018-09-18 14:39:45'),
(1419, 'PALOGO', 'Aniel Blandine', 'MASCULIN', '1998-06-20 00:00:00', NULL, NULL, NULL, NULL, '77484706', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 14:42:15', '2018-09-18 14:42:15'),
(1420, 'YAMEOGO', 'Kevin Abraham Wend-Panga', 'MASCULIN', '2000-07-02 02:00:00', NULL, NULL, NULL, NULL, '70 70 05 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 14:43:42', '2018-09-18 14:43:42'),
(1421, 'BA', 'Aïchatou', 'FEMININ', '1998-11-07 00:00:00', NULL, NULL, NULL, NULL, '61656966', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 14:44:26', '2018-09-18 14:44:26'),
(1422, 'TUINA', 'Jude', 'MASCULIN', '1998-02-17 00:00:00', NULL, NULL, NULL, NULL, '57362927', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 14:52:20', '2018-09-18 14:52:20'),
(1423, 'HEMA', 'Souleymane', 'MASCULIN', '1996-11-09 02:00:00', NULL, NULL, NULL, NULL, '63 62 52 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 14:54:26', '2018-09-18 14:54:26'),
(1424, 'SESSOUMA', 'Salikou', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 07 92 93', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 14:56:57', '2018-09-18 14:56:57'),
(1425, 'FAYAMA', 'Ruth Suadjo Jeanne', 'FEMININ', '1999-10-07 02:00:00', NULL, NULL, NULL, NULL, '67 35 27 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 14:59:22', '2018-09-18 14:59:22'),
(1426, 'SALAMBERE', 'Alida Guiamila', 'FEMININ', '1999-08-19 02:00:00', NULL, NULL, NULL, NULL, '52 98 94 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 15:04:44', '2018-09-18 15:04:44'),
(1427, 'SORE', 'Faouzia', 'FEMININ', '1998-12-13 02:00:00', NULL, NULL, NULL, NULL, '60 35 35 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 15:08:20', '2018-09-18 15:08:20'),
(1428, 'SAWADOGO', 'Mouniratou', 'FEMININ', '2000-03-03 02:00:00', NULL, NULL, NULL, NULL, '63 25 83 53', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 15:10:30', '2018-09-18 15:10:30'),
(1429, 'COMPAORE', 'Wendkouni Rosalie', 'FEMININ', '1998-01-18 00:00:00', NULL, NULL, NULL, NULL, '62 01 37 88', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:13:22', '2018-09-18 15:13:22'),
(1430, 'KABORE', 'Yasmila Sadia', 'FEMININ', '1997-11-18 00:00:00', NULL, NULL, NULL, NULL, '71 99 03 23', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:15:01', '2018-09-18 15:15:01'),
(1431, 'KINDO', 'Faasnewêndé Emmanuel', 'MASCULIN', '1998-07-25 00:00:00', NULL, NULL, NULL, NULL, '70147345', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 15:15:52', '2018-09-18 15:15:52'),
(1432, 'OUEDRAOGO', 'Aminata', 'FEMININ', '1996-02-03 00:00:00', NULL, NULL, NULL, NULL, '70 01 71 36', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:16:41', '2018-09-18 15:16:41'),
(1433, 'SONDO', 'Agnès', 'FEMININ', '1999-11-08 02:00:00', NULL, NULL, NULL, NULL, '75 21 56 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 15:17:13', '2018-09-18 15:17:13'),
(1434, 'OUEDRAOGO', 'Oumou Koulousoume', 'FEMININ', '1997-10-17 00:00:00', NULL, NULL, NULL, NULL, '77 57 15 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:18:47', '2018-09-18 15:18:47'),
(1435, 'OUEDRAOGO', 'Caroline', 'FEMININ', '1997-11-07 00:00:00', NULL, NULL, NULL, NULL, '70 37 30 11', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:20:17', '2018-09-18 15:20:17'),
(1436, 'OUATTARA', 'Joelle Alexisi Fahozia', 'FEMININ', '1999-08-25 00:00:00', NULL, NULL, NULL, NULL, '64 13 81 40', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:24:37', '2018-09-18 15:24:37'),
(1437, 'TAPSOBA', 'Peingud-Ouindé Macaire', 'MASCULIN', '1999-10-06 00:00:00', NULL, NULL, NULL, NULL, '65609888', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 15:26:42', '2018-09-18 15:26:42'),
(1438, 'SOME', 'Miwa Déborah', 'FEMININ', '1996-09-09 00:00:00', NULL, NULL, NULL, NULL, '71 64 50 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:26:55', '2018-09-18 15:26:55'),
(1439, 'DABIRE', 'Sanyir', 'MASCULIN', '1998-04-19 00:00:00', NULL, NULL, NULL, NULL, '52555006', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 15:28:34', '2018-09-18 15:28:34'),
(1440, 'SAVADOGO', 'Guyséla Bernice', 'FEMININ', '1999-05-21 00:00:00', NULL, NULL, NULL, NULL, '73 61 29 11', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:28:56', '2018-09-18 15:28:56'),
(1441, 'BAFIOGO', 'Rélwendé Viviane', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '76900035', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 15:30:03', '2018-09-18 15:30:03'),
(1442, 'TOU', 'Awa', 'FEMININ', '1997-10-14 00:00:00', NULL, NULL, NULL, NULL, '64 65 81 26', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:30:41', '2018-09-18 15:30:41'),
(1443, 'BAGAGNAN', 'Mamounata', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '70956453', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 15:32:47', '2018-09-18 15:32:47'),
(1444, 'BATIONO', 'Arlette Jacqueline Coronien', 'FEMININ', '1997-08-04 00:00:00', NULL, NULL, NULL, NULL, '71 65 25 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:32:47', '2018-09-18 15:32:47'),
(1445, 'KUELA', 'Tarwend-Panga Xavier', 'MASCULIN', '1997-01-02 00:00:00', NULL, NULL, NULL, NULL, '56797559', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 15:33:37', '2018-09-18 15:33:37'),
(1446, 'TRAORE', 'Nefissa Fatoumata', 'FEMININ', '2000-02-01 00:00:00', NULL, NULL, NULL, NULL, '63 89 77 00', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:34:31', '2018-09-18 15:34:31'),
(1447, 'BANHORO', 'Bernard', 'MASCULIN', '1997-01-23 00:00:00', NULL, NULL, NULL, NULL, '79664845', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 15:35:04', '2018-09-18 15:35:04'),
(1448, 'NASSA', 'Wendyolsdé Judith', 'FEMININ', '1997-06-03 00:00:00', NULL, NULL, NULL, NULL, '70 08 85 75', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:36:29', '2018-09-18 15:36:29'),
(1449, 'KOALA', 'Romain', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '61126680', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 15:37:09', '2018-09-18 15:37:09'),
(1450, 'NACANABO', 'Safi', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 48 72 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:38:20', '2018-09-18 15:38:20'),
(1451, 'HIEN', 'Bêbê', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '62205968', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 15:39:00', '2018-09-18 15:39:00'),
(1452, 'GANAME', 'Taybatou', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '64 40 61 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:40:01', '2018-09-18 15:40:01'),
(1453, 'KABORE', 'Daouda', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '72638690', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 15:40:16', '2018-09-18 15:40:16'),
(1454, 'BONKOUNGOU', 'Nafissatou', 'FEMININ', '1999-04-24 00:00:00', NULL, NULL, NULL, NULL, '79663708', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 15:40:47', '2018-09-18 15:40:47'),
(1455, 'DJIEBRE', 'Saodata', 'FEMININ', '1998-09-14 00:00:00', NULL, NULL, NULL, NULL, '63 00 44 62', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:42:21', '2018-09-18 15:42:21'),
(1456, 'BELEM', 'Kadidiatou', 'FEMININ', '1996-08-22 00:00:00', NULL, NULL, NULL, NULL, '79983887', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 15:42:32', '2018-09-18 15:42:32'),
(1457, 'KABRE', 'Managamogo Emma', 'FEMININ', '1997-05-17 00:00:00', NULL, NULL, NULL, NULL, '73 56 21 96', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:44:13', '2018-09-18 15:44:13'),
(1458, 'GOUBA', 'Maud Alice', 'FEMININ', '1998-01-22 00:00:00', NULL, NULL, NULL, NULL, '77033685', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 15:44:16', '2018-09-18 15:44:16'),
(1459, 'YOUGBARE', 'Wendpayagda Ismaël', 'MASCULIN', '1998-04-16 00:00:00', NULL, NULL, NULL, NULL, '77844509', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 15:44:29', '2018-09-18 15:44:29'),
(1460, 'TAPSOBA', 'Faouzia', 'FEMININ', '2000-02-29 02:00:00', NULL, NULL, NULL, NULL, '71 81 70 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 15:45:01', '2018-09-18 15:45:01'),
(1461, 'KABORE', 'Sanata', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '65268580', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-18 15:45:38', '2018-09-18 15:45:38'),
(1462, 'MILOUNGOU', 'Leslye Monia Toussida', 'FEMININ', '1999-02-12 00:00:00', NULL, NULL, NULL, NULL, '70 61 44 72', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 15:46:12', '2018-09-18 15:46:12'),
(1463, 'SOME', 'Faati-Louise Anna', 'FEMININ', '2000-07-10 02:00:00', NULL, NULL, NULL, NULL, '62 56 52 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 15:47:55', '2018-09-18 15:47:55'),
(1464, 'SIMPORE', 'Wenglasida Yasmina', 'FEMININ', '2000-09-26 02:00:00', NULL, NULL, NULL, NULL, '63 64 79 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 15:51:19', '2018-09-18 15:51:19'),
(1465, 'TAMBOURA', 'Fatimata', 'FEMININ', '1999-08-13 02:00:00', NULL, NULL, NULL, NULL, '60 17 39 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 15:53:54', '2018-09-18 15:53:54'),
(1466, 'SILGA', 'Pegdwendé Vanessa', 'FEMININ', '2000-02-23 02:00:00', NULL, NULL, NULL, NULL, '71 52 68 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 15:59:46', '2018-09-18 15:59:46'),
(1467, 'OUEDRAOGO', 'Pegdwendé Augustine Marie Adéline', 'FEMININ', '1997-05-27 00:00:00', NULL, NULL, NULL, NULL, '70 10 22 32', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 16:01:32', '2018-09-18 16:01:32'),
(1468, 'DABIRE', 'Inès Felicia', 'FEMININ', '1996-09-10 00:00:00', NULL, NULL, NULL, NULL, '61 58 52 06', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 16:04:00', '2018-09-18 16:04:00'),
(1469, 'TIENDREBEOGO', 'Wendkouni Marie Gladys', 'FEMININ', '1999-10-19 00:00:00', NULL, NULL, NULL, NULL, '60 56 98 29', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 16:06:03', '2018-09-18 16:06:03'),
(1470, 'VEBAMBA', 'Alphonsine Priscilla Sinthia', 'FEMININ', '1998-07-02 00:00:00', NULL, NULL, NULL, NULL, '73 66 48 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 16:07:51', '2018-09-18 16:07:51'),
(1471, 'YAMEOGO', 'Neb-laboum Laétitia', 'FEMININ', '1998-10-23 00:00:00', NULL, NULL, NULL, NULL, '71 76 31 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 16:12:54', '2018-09-18 16:12:54'),
(1472, 'SEDOGO', 'Mariam Latifa', 'FEMININ', '2000-11-05 02:00:00', NULL, NULL, NULL, NULL, '72 46 07 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 16:14:36', '2018-09-18 16:14:36'),
(1473, 'BAYALA', 'Jouvencelle Ingrid Stéphanie P.', 'FEMININ', '1996-10-12 00:00:00', NULL, NULL, NULL, NULL, '55 51 43 58', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 16:14:55', '2018-09-18 16:14:55'),
(1474, 'KABORE', 'Safiata', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '70 28 13 14', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-18 16:16:22', '2018-09-18 16:16:22'),
(1475, 'SIAMBO', 'Wendgoundy Carine Jessica', 'FEMININ', '1998-09-04 02:00:00', NULL, NULL, NULL, NULL, '73 12 46 15', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 16:18:09', '2018-09-18 16:18:09'),
(1476, 'LANKOANDE', 'Joseph', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '68042432', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-18 16:25:48', '2018-09-18 16:25:48'),
(1477, 'SAVADOGO', 'Nour Iman', 'FEMININ', '2000-09-25 02:00:00', NULL, NULL, NULL, NULL, '73 47 83 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 16:54:10', '2018-09-18 16:54:10'),
(1478, 'SAWADOGO', 'Rayang-Newendé Isabelle Faridatou', 'FEMININ', '2000-02-21 02:00:00', NULL, NULL, NULL, NULL, '70 72 33 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 16:57:32', '2018-09-18 16:57:32'),
(1479, 'SANGARE', 'Peye Prisca', 'FEMININ', '1997-01-20 02:00:00', NULL, NULL, NULL, NULL, '73 45 03 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:01:12', '2018-09-18 17:01:12'),
(1480, 'SIMPORE', 'Némata', 'FEMININ', '1997-05-06 02:00:00', NULL, NULL, NULL, NULL, '61 71 02 62', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:06:26', '2018-09-18 17:06:26'),
(1481, 'OUOBA', 'Delphine Kiswendsida Sourgremani', 'FEMININ', '1999-09-20 02:00:00', NULL, NULL, NULL, NULL, '61 34 91 12', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:10:54', '2018-09-18 17:10:54'),
(1482, 'SOUDRE', 'Salamata', 'FEMININ', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 02 84 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:12:49', '2018-09-18 17:12:49'),
(1483, 'SAWADOGO', 'Larissa Sandrine', 'FEMININ', '2000-03-27 02:00:00', NULL, NULL, NULL, NULL, '62 14 58 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:18:09', '2018-09-18 17:18:09'),
(1484, 'TRAORE', 'Laoko Aïcha Nadia', 'FEMININ', '1999-07-24 02:00:00', NULL, NULL, NULL, NULL, '61 19 22 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:32:49', '2018-09-18 17:32:49'),
(1485, 'SOME', 'Mini Rosalie', 'FEMININ', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 88 62 40', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:35:28', '2018-09-18 17:35:28'),
(1486, 'TRAORE', 'Gnidé Latifatou Odilia', 'FEMININ', '1999-12-15 02:00:00', NULL, NULL, NULL, NULL, '70 25 65 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:39:13', '2018-09-18 17:39:13'),
(1487, 'MAIGA', 'Tacko Daliatou', 'FEMININ', '1999-10-25 02:00:00', NULL, NULL, NULL, NULL, '71 49 71 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:42:33', '2018-09-18 17:42:33'),
(1488, 'SALOU', 'Wendinso Zeïna', 'FEMININ', '1999-08-24 02:00:00', NULL, NULL, NULL, NULL, '70 09 03 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:44:41', '2018-09-18 17:44:41'),
(1489, 'KIEMDE', 'Amssètou', 'FEMININ', '1999-08-05 02:00:00', NULL, NULL, NULL, NULL, '78 87 49 18', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:46:40', '2018-09-18 17:46:40'),
(1490, 'TRAORE', 'Djamilatou Noura', 'FEMININ', '2000-07-10 02:00:00', NULL, NULL, NULL, NULL, '60 55 15 4', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:48:18', '2018-09-18 17:48:18'),
(1491, 'SOME', 'Esther Alice Souonta', 'FEMININ', '2000-09-21 02:00:00', NULL, NULL, NULL, NULL, '70 40 40 70', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:51:03', '2018-09-18 17:51:03'),
(1492, 'SAWADOGO', 'Farida', 'FEMININ', '1999-10-04 02:00:00', NULL, NULL, NULL, NULL, '72 60 60 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:55:42', '2018-09-18 17:55:42'),
(1493, 'BOCOUM', 'Belko Fatimata', 'FEMININ', '1997-09-20 02:00:00', NULL, NULL, NULL, NULL, '75 65 94 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 17:57:39', '2018-09-18 17:57:39'),
(1494, 'TANKOANO', 'Issouf', 'MASCULIN', '1999-08-04 02:00:00', NULL, NULL, NULL, NULL, '51 40 28 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:04:10', '2018-09-18 18:04:10'),
(1495, 'NOALI', 'Josué', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '57 05 90 58', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:06:32', '2018-09-18 18:06:32'),
(1496, 'SANDWIDI', 'Abdoul Sharifou Djibril', 'MASCULIN', '2000-05-28 02:00:00', NULL, NULL, NULL, NULL, '61 02 89 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:08:55', '2018-09-18 18:08:55'),
(1497, 'NABA', 'Idrissa', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '73 77 01 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:33:07', '2018-09-18 18:33:07'),
(1498, 'COMBARY', 'Yemboani', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 85 59 91', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:39:58', '2018-09-18 18:39:58'),
(1499, 'WAONGO', 'Souleymane', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 99 43 76', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:42:28', '2018-09-18 18:42:28'),
(1500, 'NATAMA', 'Bangba Moumini', 'MASCULIN', '1999-11-03 02:00:00', NULL, NULL, NULL, NULL, '70 31 14 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:45:12', '2018-09-18 18:45:12'),
(1501, 'TINDANO', 'Théodore', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '64 10 00 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:47:35', '2018-09-18 18:47:35'),
(1502, 'ONADJA', 'Abraham', 'MASCULIN', '2000-12-20 02:00:00', NULL, NULL, NULL, NULL, '70 71 40 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:50:05', '2018-09-18 18:50:05'),
(1503, 'COULIBALY', 'Shamma Daniella Shurly Barkwendé', 'FEMININ', '2000-10-21 02:00:00', NULL, NULL, NULL, NULL, '61 85 49 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:54:10', '2018-09-18 18:54:10'),
(1504, 'IDANI', 'Yendié Josué', 'MASCULIN', '2000-02-04 02:00:00', NULL, NULL, NULL, NULL, '72 84 72 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:56:22', '2018-09-18 18:56:22'),
(1505, 'TINDANO', 'Etienne', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 44 38 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 18:59:35', '2018-09-18 18:59:35'),
(1506, 'THIOMBIANO', 'Bapougouni Elisabeth', 'FEMININ', '1998-09-03 02:00:00', NULL, NULL, NULL, NULL, '72 91 88 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-18 19:02:01', '2018-09-18 19:02:01'),
(1507, 'GUITANGA', 'Banloaguin Chantal', 'FEMININ', '1997-12-12 00:00:00', NULL, NULL, NULL, NULL, '76 01 09 91', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:16:48', '2018-09-19 08:16:48'),
(1508, 'BARRY', 'Hachim', 'MASCULIN', '1998-01-03 00:00:00', NULL, NULL, NULL, NULL, '78106142', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 08:20:57', '2018-09-19 08:20:57'),
(1509, 'BILLA', 'Aïchatou', 'FEMININ', '1997-02-23 00:00:00', NULL, NULL, NULL, NULL, '73 46 00 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:21:22', '2018-09-19 08:21:22'),
(1510, 'YELKOUNI', 'André', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '70689048', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 08:22:35', '2018-09-19 08:22:35'),
(1511, 'SONDE', 'Ousmane', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '51285377', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 08:24:21', '2018-09-19 08:24:21'),
(1512, 'OUEDRAOGO', 'Maïmouna Roussina', 'FEMININ', '2000-10-24 00:00:00', NULL, NULL, NULL, NULL, '71 27 00 68', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:33:38', '2018-09-19 08:33:38'),
(1513, 'BANI', 'Tiemite Annick Josianr M.', 'FEMININ', '1999-03-16 00:00:00', NULL, NULL, NULL, NULL, '71 19 33 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:35:56', '2018-09-19 08:35:56'),
(1514, 'TAPSOBA', 'Assia', 'FEMININ', '1998-11-28 00:00:00', NULL, NULL, NULL, NULL, '60 43 90 29', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:37:44', '2018-09-19 08:37:44'),
(1515, 'BARRY', 'Barkissa', 'FEMININ', '1997-05-13 00:00:00', NULL, NULL, NULL, NULL, '70 22 52 88', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:39:31', '2018-09-19 08:39:31'),
(1516, 'SAWADOGO', 'Pegdwendé Rakiatou', 'FEMININ', '1996-09-25 00:00:00', NULL, NULL, NULL, NULL, '60 41 33 29', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:41:46', '2018-09-19 08:41:46'),
(1517, 'BAMOGO', 'Elodie', 'FEMININ', '1996-10-16 00:00:00', NULL, NULL, NULL, NULL, '62 83 93 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:43:54', '2018-09-19 08:43:54'),
(1518, 'SANFO', 'Fadilatou', 'FEMININ', '1997-05-31 00:00:00', NULL, NULL, NULL, NULL, '68 83 52 23', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:45:40', '2018-09-19 08:45:40'),
(1519, 'NIKIEMA', 'Alima', 'FEMININ', '1997-06-22 00:00:00', NULL, NULL, NULL, NULL, '70 62 12 34', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:47:22', '2018-09-19 08:47:22'),
(1520, 'LENGANI', 'Abibata', 'FEMININ', '1996-07-06 00:00:00', NULL, NULL, NULL, NULL, '60 40 04 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:49:09', '2018-09-19 08:49:09'),
(1521, 'KABORE', 'Cynthia Lamoussa Mouniqua', 'FEMININ', '1998-08-27 00:00:00', NULL, NULL, NULL, NULL, '76 88 63 87', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 08:54:42', '2018-09-19 08:54:42'),
(1522, 'KONATE', 'Sakinatou', 'FEMININ', '2000-11-08 00:00:00', NULL, NULL, NULL, NULL, '70 31 84 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:00:36', '2018-09-19 09:00:36'),
(1523, 'PORGO', 'Fahdilatou', 'FEMININ', '2000-05-27 00:00:00', NULL, NULL, NULL, NULL, '61 86 34 95', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:04:25', '2018-09-19 09:04:25'),
(1524, 'SIRIMA', 'Farida Marie', 'FEMININ', '1998-03-10 00:00:00', NULL, NULL, NULL, NULL, '70 23 58 19', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:08:07', '2018-09-19 09:08:07'),
(1525, 'KOLOGO', 'Baowendmalgré Charlotte Sévérine', 'FEMININ', '1998-01-20 00:00:00', NULL, NULL, NULL, NULL, '71 56 71 31', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:10:42', '2018-09-19 09:10:42'),
(1526, 'SAWADOGO', 'Aminata', 'FEMININ', '1996-08-09 00:00:00', NULL, NULL, NULL, NULL, '73 21 73 97', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:15:17', '2018-09-19 09:15:17'),
(1527, 'OUEDRAOGO', 'Ziwendtaoré Bénédicte Marie Sidoine', 'FEMININ', '1999-11-13 00:00:00', NULL, NULL, NULL, NULL, '60 18 63 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:18:15', '2018-09-19 09:18:15'),
(1528, 'OUEDRAOGO', 'Nafissatou', 'FEMININ', '1997-09-16 00:00:00', NULL, NULL, NULL, NULL, '72 07 21 31', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:20:08', '2018-09-19 09:20:08'),
(1529, 'GUELBEOGO', 'Wendéso', 'FEMININ', '1996-04-03 00:00:00', NULL, NULL, NULL, NULL, '77 58 84 23', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:21:45', '2018-09-19 09:21:45'),
(1530, 'ZEMBA', 'Héline', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '79 77 22 98', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:23:27', '2018-09-19 09:23:27'),
(1531, 'TABOUDOU', 'Kadidiatou', 'FEMININ', '1998-09-09 00:00:00', NULL, NULL, NULL, NULL, '72 47 68 43', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:25:44', '2018-09-19 09:25:44'),
(1532, 'NAKOULMA', 'Nathalie', 'FEMININ', '1996-10-17 00:00:00', NULL, NULL, NULL, NULL, '70 53 61 96', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:27:39', '2018-09-19 09:27:39'),
(1533, 'SOUOBOU', 'Bampalou', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '68199819', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 09:28:48', '2018-09-19 09:28:48'),
(1534, 'OUEDRAOGO', 'Alizeta', 'FEMININ', '1999-02-03 00:00:00', NULL, NULL, NULL, NULL, '78 15 82 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:29:28', '2018-09-19 09:29:28'),
(1535, 'SANDWIDI', 'Rahim', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '71683468', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 09:31:08', '2018-09-19 09:31:08'),
(1536, 'OUEDRAOGO', 'Faosyatou', 'FEMININ', '1997-10-23 00:00:00', NULL, NULL, NULL, NULL, '63 27 07 29', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:32:03', '2018-09-19 09:32:03'),
(1537, 'COMBARI', 'Lamoudi', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '57723764', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 09:32:58', '2018-09-19 09:32:58'),
(1538, 'SANKARA', 'Wendnegoudi Miriame', 'FEMININ', '1999-11-09 00:00:00', NULL, NULL, NULL, NULL, '64 70 83 13', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:34:05', '2018-09-19 09:34:05'),
(1539, 'YONLI', 'Yemboado Ernest', 'MASCULIN', '1997-03-25 00:00:00', NULL, NULL, NULL, NULL, '63301914', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 09:35:44', '2018-09-19 09:35:44'),
(1540, 'SAWADOGO', 'Bouchouratou', 'FEMININ', '1998-10-15 00:00:00', NULL, NULL, NULL, NULL, '76 61 19 58', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:36:26', '2018-09-19 09:36:26'),
(1541, 'SOGODOGO', 'Oumou', 'FEMININ', '1996-03-12 00:00:00', NULL, NULL, NULL, NULL, '57 21 67 98', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:38:16', '2018-09-19 09:38:16'),
(1542, 'KINDA', 'Naguesba', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '61881172', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 09:38:56', '2018-09-19 09:38:56'),
(1543, 'DOSSAMA', 'Aïcha Aurelie', 'FEMININ', '1998-03-08 00:00:00', NULL, NULL, NULL, NULL, '67 98 00 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:40:27', '2018-09-19 09:40:27'),
(1544, 'OUATTARA', 'Awa Mélika', 'FEMININ', '1998-10-28 00:00:00', NULL, NULL, NULL, NULL, '64 46 96 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:42:34', '2018-09-19 09:42:34'),
(1545, 'BAMOUNI', 'Diane Stellane', 'FEMININ', '1999-11-21 00:00:00', NULL, NULL, NULL, NULL, '66 88 34 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:44:44', '2018-09-19 09:44:44'),
(1546, 'FOFANA', 'Aïdi', 'FEMININ', '1998-03-24 00:00:00', NULL, NULL, NULL, NULL, '75 11 30 12', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:46:58', '2018-09-19 09:46:58'),
(1547, 'DERRA', 'Rokiatou', 'FEMININ', '1996-10-16 00:00:00', NULL, NULL, NULL, NULL, '66 48 37 13', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:48:40', '2018-09-19 09:48:40'),
(1548, 'SAWADOGO', 'Abdoul Latif', 'MASCULIN', '1999-02-10 00:00:00', NULL, NULL, NULL, NULL, '72 53 19 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:53:03', '2018-09-19 09:53:03'),
(1549, 'DIALLO', 'Abdoulaye', 'MASCULIN', '1999-01-26 00:00:00', NULL, NULL, NULL, NULL, '73 18 22 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:55:07', '2018-09-19 09:55:07'),
(1550, 'WIBGA', 'Boureima', 'MASCULIN', '1998-08-01 00:00:00', NULL, NULL, NULL, NULL, '56194783', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 09:55:48', '2018-09-19 09:55:48'),
(1551, 'BONKOUNGOU', 'Samiratou', 'FEMININ', '2000-08-10 00:00:00', NULL, NULL, NULL, NULL, '72 21 07 92', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 09:58:18', '2018-09-19 09:58:18'),
(1552, 'DAMA', 'Boureima Ladji', 'MASCULIN', '1999-02-19 00:00:00', NULL, NULL, NULL, NULL, '60896225', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:01:19', '2018-09-19 10:01:19'),
(1553, 'DOULKOUM', 'Adama', 'MASCULIN', '1999-06-11 00:00:00', NULL, NULL, NULL, NULL, '62 54 75 14', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:01:45', '2018-09-19 10:01:45'),
(1554, 'SORE', 'Ben Amed', 'MASCULIN', '1999-12-16 00:00:00', NULL, NULL, NULL, NULL, '61 28 54 04', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:04:03', '2018-09-19 10:04:03'),
(1555, 'KIENOU', 'Alexandre', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '61500961', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:05:33', '2018-09-19 10:05:33'),
(1556, 'SOSSA', 'Koffivi Ama Noé Serge', 'MASCULIN', '1999-12-25 00:00:00', NULL, NULL, NULL, NULL, '70 73 62 64', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:06:25', '2018-09-19 10:06:25'),
(1557, 'LAMY', 'Lamoussa', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '65858573', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:07:15', '2018-09-19 10:07:15'),
(1558, 'ZOURI', 'Damien', 'MASCULIN', '1996-09-26 00:00:00', NULL, NULL, NULL, NULL, '61072203', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:08:51', '2018-09-19 10:08:51'),
(1559, 'DERME', 'Abdoul Aziz', 'MASCULIN', '1999-04-21 00:00:00', NULL, NULL, NULL, NULL, '70 28 85 60', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:09:07', '2018-09-19 10:09:07'),
(1560, 'SIDIBE', 'Seydou', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '62507425', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:10:40', '2018-09-19 10:10:40');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(1561, 'TOPAN', 'Cheick Omar', 'MASCULIN', '2000-11-29 00:00:00', NULL, NULL, NULL, NULL, '71 98 91 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:11:38', '2018-09-19 10:11:38'),
(1562, 'COULIBALY', 'Alassane Sannek Patrick', 'MASCULIN', '1999-10-29 00:00:00', NULL, NULL, NULL, NULL, '61849601', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:12:43', '2018-09-19 10:12:43'),
(1563, 'KONE', 'Aboubacar', 'MASCULIN', '2000-05-10 00:00:00', NULL, NULL, NULL, NULL, '70 31 39 50', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:13:38', '2018-09-19 10:13:38'),
(1564, 'KONATE', 'Drissa', 'MASCULIN', '1998-08-15 00:00:00', NULL, NULL, NULL, NULL, '55840080', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:14:19', '2018-09-19 10:14:19'),
(1565, 'OUEDRAOGO', 'Stéphane Abdoul Kader W.', 'MASCULIN', '1998-11-24 00:00:00', NULL, NULL, NULL, NULL, '73 47 57 74', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:15:45', '2018-09-19 10:15:45'),
(1566, 'KONE', 'Dénis', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '67677610', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:16:13', '2018-09-19 10:16:13'),
(1567, 'TIAMA', 'Scherif Labougnan Arcmad', 'MASCULIN', '2000-02-24 00:00:00', NULL, NULL, NULL, NULL, '64 24 29 34', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:17:49', '2018-09-19 10:17:49'),
(1568, 'SANKARA', 'Abdoul Nassiri', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '64844485', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:17:53', '2018-09-19 10:17:53'),
(1569, 'OUEDRAOGO', 'Abdoul Salam', 'MASCULIN', '1998-06-12 00:00:00', NULL, NULL, NULL, NULL, '65 88 94 23', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:19:31', '2018-09-19 10:19:31'),
(1570, 'SARE', 'Sébilé Emile', 'MASCULIN', '1999-09-19 00:00:00', NULL, NULL, NULL, NULL, '73 64 08 31', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:21:19', '2018-09-19 10:21:19'),
(1571, 'COMBARY', 'Sandrine Florence', 'FEMININ', '1998-04-02 00:00:00', NULL, NULL, NULL, NULL, '51332409', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 10:21:48', '2018-09-19 10:21:48'),
(1572, 'NAGANDA', 'Pierre', 'MASCULIN', '1998-06-17 00:00:00', NULL, NULL, NULL, NULL, '73 55 56 51', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 10:22:57', '2018-09-19 10:22:57'),
(1573, 'COMBARY', 'Arlette Yentenma', 'FEMININ', '2000-06-18 00:00:00', NULL, NULL, NULL, NULL, '52251353', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 10:25:19', '2018-09-19 10:25:19'),
(1574, 'LOMPO', 'Salif', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '72657340', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 10:29:29', '2018-09-19 10:29:29'),
(1575, 'DAI', 'Abdoulaye', 'MASCULIN', '1998-09-05 00:00:00', NULL, NULL, NULL, NULL, '78742449', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:29:54', '2018-09-19 10:29:54'),
(1576, 'KONATE', 'Fatié', 'MASCULIN', '1996-04-20 00:00:00', NULL, NULL, NULL, NULL, '62965567', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:31:32', '2018-09-19 10:31:32'),
(1577, 'SAWADOGO', 'Jérémie', 'MASCULIN', '1998-11-25 00:00:00', NULL, NULL, NULL, NULL, '61037764', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 10:31:34', '2018-09-19 10:31:34'),
(1578, 'FARMA', 'Boukary', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '71761737', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:32:53', '2018-09-19 10:32:53'),
(1579, 'TRAORE', 'Oumarou', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '66035510', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:34:28', '2018-09-19 10:34:28'),
(1580, 'KIENOU', 'Koussé', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '67224739', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:36:12', '2018-09-19 10:36:12'),
(1581, 'ZERBO', 'Blaise', 'MASCULIN', '1999-02-03 00:00:00', NULL, NULL, NULL, NULL, '61181129', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:37:50', '2018-09-19 10:37:50'),
(1582, 'DABOURGOU', 'Larba', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '77541479', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 10:39:59', '2018-09-19 10:39:59'),
(1583, 'GUIMBOU', 'Rasmata', 'FEMININ', '1998-03-30 00:00:00', NULL, NULL, NULL, NULL, '52091622', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:40:23', '2018-09-19 10:40:23'),
(1584, 'SENI', 'Annastasie', 'FEMININ', '1997-05-02 00:00:00', NULL, NULL, NULL, NULL, '75316942', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:42:51', '2018-09-19 10:42:51'),
(1585, 'GONDE', 'Abdoul-Razago', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '78853374', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:44:31', '2018-09-19 10:44:31'),
(1586, 'BOULOU', 'Abdoul Aziz', 'MASCULIN', '1996-02-10 00:00:00', NULL, NULL, NULL, NULL, '70010399', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:46:43', '2018-09-19 10:46:43'),
(1587, 'SIRANYAN', 'Luc', 'MASCULIN', '1999-07-17 00:00:00', NULL, NULL, NULL, NULL, '70269546', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:48:15', '2018-09-19 10:48:15'),
(1588, 'TRAORE', 'Issouf', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '62740446', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:52:48', '2018-09-19 10:52:48'),
(1589, 'TRAORE', 'Sâ Seydou', 'MASCULIN', '1996-05-28 00:00:00', NULL, NULL, NULL, NULL, '75885361', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 10:54:38', '2018-09-19 10:54:38'),
(1590, 'BANGOU', 'Mariam', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '61497178', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 10:58:27', '2018-09-19 10:58:27'),
(1591, 'COULIBALY', 'Yves', 'MASCULIN', '1997-05-14 00:00:00', NULL, NULL, NULL, NULL, '62984613', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:07:22', '2018-09-19 11:07:22'),
(1592, 'KOANDA', 'Nabi Fayçal', 'MASCULIN', '2000-11-05 00:00:00', NULL, NULL, NULL, NULL, '70 25 74 54', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:09:01', '2018-09-19 11:09:01'),
(1593, 'LENGLENGUE', 'Mouniratou', 'FEMININ', '1997-10-28 00:00:00', NULL, NULL, NULL, NULL, '71 82 65 38', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:10:47', '2018-09-19 11:10:47'),
(1594, 'NIOULA', 'Soamboala', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72534363', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:12:01', '2018-09-19 11:12:01'),
(1595, 'OUATTARA', 'Moumouni', 'MASCULIN', '1997-07-11 00:00:00', NULL, NULL, NULL, NULL, '70069107', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:12:03', '2018-09-19 11:12:03'),
(1596, 'MAMBONE', 'Harouna', 'MASCULIN', '1998-01-22 00:00:00', NULL, NULL, NULL, NULL, '73 20 06 31', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:12:22', '2018-09-19 11:12:22'),
(1597, 'BARRY', 'Abasse', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '62052495', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:13:39', '2018-09-19 11:13:39'),
(1598, 'TIABONDOU', 'Joseph', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '67977328', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:14:38', '2018-09-19 11:14:38'),
(1599, 'CISSOUMA', 'Abdoul Aziz', 'MASCULIN', '1999-01-20 00:00:00', NULL, NULL, NULL, NULL, '72 04 55 45', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:14:44', '2018-09-19 11:14:44'),
(1600, 'SOULI', 'Cheik Hamed', 'MASCULIN', '2000-08-22 00:00:00', NULL, NULL, NULL, NULL, '70 46 03 32', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:16:13', '2018-09-19 11:16:13'),
(1601, 'NIOULA', 'Yéripagaba', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '71422509', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:17:07', '2018-09-19 11:17:07'),
(1602, 'KAFANDO', 'Félicité', 'MASCULIN', '1996-06-17 00:00:00', NULL, NULL, NULL, NULL, '62950981', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:17:35', '2018-09-19 11:17:35'),
(1603, 'NOULA', 'Palamanga', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 47 04 06', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:18:07', '2018-09-19 11:18:07'),
(1604, 'KABORE', 'Solange', 'FEMININ', '1997-04-25 00:00:00', NULL, NULL, NULL, NULL, '66806419', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:18:56', '2018-09-19 11:18:56'),
(1605, 'NADINGA', 'Elie', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70 96 80 93', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:19:37', '2018-09-19 11:19:37'),
(1606, 'BIDIGA', 'Zenabou', 'FEMININ', '1998-10-10 00:00:00', NULL, NULL, NULL, NULL, '64501123', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:19:56', '2018-09-19 11:19:56'),
(1607, 'KABORE', 'Paligwendé', 'MASCULIN', '1996-12-30 00:00:00', NULL, NULL, NULL, NULL, '61583796', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:20:26', '2018-09-19 11:20:26'),
(1608, 'BERE', 'Diane', 'FEMININ', '1997-07-07 00:00:00', NULL, NULL, NULL, NULL, '62436862', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:21:53', '2018-09-19 11:21:53'),
(1609, 'AKIO', 'Abdoul Gafarou', 'MASCULIN', '1998-03-18 00:00:00', NULL, NULL, NULL, NULL, '70 89 18 15', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:22:11', '2018-09-19 11:22:11'),
(1610, 'KOURAOGO', 'Abdoul- Rachid', 'MASCULIN', '1996-02-16 00:00:00', NULL, NULL, NULL, NULL, '70713975', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:22:16', '2018-09-19 11:22:16'),
(1611, 'WAONGO', 'Gomwendé Léonce Fabrice', 'MASCULIN', '1999-11-15 00:00:00', NULL, NULL, NULL, NULL, '61 06 10 15', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:24:15', '2018-09-19 11:24:15'),
(1612, 'GAMPENE', 'Ayouba', 'MASCULIN', '1996-07-27 00:00:00', NULL, NULL, NULL, NULL, '74023379', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:24:27', '2018-09-19 11:24:27'),
(1613, 'OUOBA', 'K. Théodore', 'MASCULIN', '1997-11-11 00:00:00', NULL, NULL, NULL, NULL, '71948682', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:25:54', '2018-09-19 11:25:54'),
(1614, 'OUOBA', 'Minyemba Aimé Léonel', 'MASCULIN', '2000-09-13 00:00:00', NULL, NULL, NULL, NULL, '62 25 26 76', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:26:15', '2018-09-19 11:26:15'),
(1615, 'BAGAGNE', 'Assiatou', 'FEMININ', '1997-12-21 00:00:00', NULL, NULL, NULL, NULL, '61549326', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:26:35', '2018-09-19 11:26:35'),
(1616, 'ZOUGMORE', 'Mouhammed Salahouddine Oubeydoullah', 'MASCULIN', '1998-07-02 00:00:00', NULL, NULL, NULL, NULL, '70 25 88 64', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:29:19', '2018-09-19 11:29:19'),
(1617, 'ZOROM', 'Soumaïla', 'MASCULIN', '1997-07-19 00:00:00', NULL, NULL, NULL, NULL, '63392291', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:29:26', '2018-09-19 11:29:26'),
(1618, 'OUEDRAOGO', 'Oroukiatou', 'FEMININ', '1998-08-25 00:00:00', NULL, NULL, NULL, NULL, '76 41 88 81', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:30:54', '2018-09-19 11:30:54'),
(1619, 'ZOUNGRANA', 'Latifatou', 'FEMININ', '1998-10-16 00:00:00', NULL, NULL, NULL, NULL, '63262613', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:31:49', '2018-09-19 11:31:49'),
(1620, 'KINDA', 'Madi', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '77 18 43 93', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:32:30', '2018-09-19 11:32:30'),
(1621, 'GNADA', 'David', 'MASCULIN', '1998-07-24 00:00:00', NULL, NULL, NULL, NULL, '51059962', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:33:11', '2018-09-19 11:33:11'),
(1622, 'OUEDRAOGO', 'Zakaria', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '77044878', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:33:51', '2018-09-19 11:33:51'),
(1623, 'KOUDOUGOU', 'Sambo Aziz', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 48 90 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:35:03', '2018-09-19 11:35:03'),
(1624, 'CHIMBIANO', 'Barkié', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '73425436', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:36:23', '2018-09-19 11:36:23'),
(1625, 'DIALLO', 'Abdou Ramane', 'MASCULIN', '1999-08-22 00:00:00', NULL, NULL, NULL, NULL, '71 41 79 04', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:36:40', '2018-09-19 11:36:40'),
(1626, 'ZEBA', 'Abdoul Guélilou', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '77011305', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:36:57', '2018-09-19 11:36:57'),
(1627, 'BAZIE', 'Wênnemi Néhémie', 'MASCULIN', '2000-10-06 00:00:00', NULL, NULL, NULL, NULL, '51 22 66 74', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:38:43', '2018-09-19 11:38:43'),
(1628, 'BOURGOU', 'Séraphin', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '75 31 97 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:40:13', '2018-09-19 11:40:13'),
(1629, 'ZABDA', 'Boubacar', 'MASCULIN', '1999-07-21 00:00:00', NULL, NULL, NULL, NULL, '70229934', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:41:45', '2018-09-19 11:41:45'),
(1630, 'DENAKPO', 'Richard Joie Nounagnon', 'MASCULIN', '1999-03-25 00:00:00', NULL, NULL, NULL, NULL, '72 95 89 99', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:42:29', '2018-09-19 11:42:29'),
(1631, 'SOME', 'Mouonzoumon', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '63710335', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:43:25', '2018-09-19 11:43:25'),
(1632, 'TOUGMA', 'Touwindsida Caroline', 'FEMININ', '1999-07-16 00:00:00', NULL, NULL, NULL, NULL, '0', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:44:17', '2018-09-19 11:44:17'),
(1633, 'SISSA', 'Sâamdpawendé Davy Victorien', 'MASCULIN', '1999-09-20 00:00:00', NULL, NULL, NULL, NULL, '73 39 75 05', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 11:45:02', '2018-09-19 11:45:02'),
(1634, 'KONTA', 'Bassana', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '56288081', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:45:30', '2018-09-19 11:45:30'),
(1635, 'SORGHO', 'Souleymane', 'MASCULIN', '2000-02-15 00:00:00', NULL, NULL, NULL, NULL, '71860748', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 11:45:57', '2018-09-19 11:45:57'),
(1636, 'TRAORE', 'Lukiman', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '60161272', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 11:46:45', '2018-09-19 11:46:45'),
(1637, 'TARNAGDA', 'Maïmouna', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '62974384', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 13:24:47', '2018-09-19 13:24:47'),
(1638, 'SANDWIDI', 'Laure Eudoxis', 'FEMININ', '1999-09-26 00:00:00', NULL, NULL, NULL, NULL, '63060082', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 13:27:57', '2018-09-19 13:27:57'),
(1639, 'MINOUGOU', 'Nafissatou', 'FEMININ', '1998-11-09 00:00:00', NULL, NULL, NULL, NULL, '55519004', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 13:30:06', '2018-09-19 13:30:06'),
(1640, 'SOURGOU', 'Hémata', 'FEMININ', '1999-08-30 00:00:00', NULL, NULL, NULL, NULL, '68511658', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 13:32:23', '2018-09-19 13:32:23'),
(1641, 'OUEDRAOGO', 'Aïssa', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '63108271', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 13:34:50', '2018-09-19 13:34:50'),
(1642, 'GAO', 'Dofinlè', 'MASCULIN', '1997-08-12 00:00:00', NULL, NULL, NULL, NULL, '71160880', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 13:37:23', '2018-09-19 13:37:23'),
(1643, 'SELOUGROU', 'Attawoura Valérie', 'FEMININ', '2000-04-24 00:00:00', NULL, NULL, NULL, NULL, '65226121', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 13:41:14', '2018-09-19 13:41:14'),
(1644, 'TRAORE', 'Moussa', 'MASCULIN', '1996-01-02 00:00:00', NULL, NULL, NULL, NULL, '70808236', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 13:42:24', '2018-09-19 13:42:24'),
(1645, 'OUEDRAOGO', 'Hamed Nourdine', 'MASCULIN', '1999-03-24 00:00:00', NULL, NULL, NULL, NULL, '66299466', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 13:44:54', '2018-09-19 13:44:54'),
(1646, 'GARBA', 'Marina Judicaël Wendlassida', 'FEMININ', '1998-07-19 00:00:00', NULL, NULL, NULL, NULL, '62681604', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 13:45:04', '2018-09-19 13:45:04'),
(1647, 'PASGO', 'Mahamadou', 'MASCULIN', '1998-01-07 00:00:00', NULL, NULL, NULL, NULL, '70622436', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 13:46:42', '2018-09-19 13:46:42'),
(1648, 'DAMBINA', 'Banfourdignana', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '79446109', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 13:48:39', '2018-09-19 13:48:39'),
(1649, 'LALLOGO', 'Ablassé', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '62164129', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 13:50:17', '2018-09-19 13:50:17'),
(1650, 'SARE', 'Gnanisso', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '67 82 47 71', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 13:51:32', '2018-09-19 13:51:32'),
(1651, 'SAWADOGO', 'Adama', 'MASCULIN', '1997-04-03 00:00:00', NULL, NULL, NULL, NULL, '75 40 09 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 13:53:45', '2018-09-19 13:53:45'),
(1652, 'KIENTEGA', 'Marie Claire', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '65451322', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 13:54:55', '2018-09-19 13:54:55'),
(1653, 'BALIMA', 'Lionel Steve', 'MASCULIN', '1999-12-24 00:00:00', NULL, NULL, NULL, NULL, '70 28 34 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 13:55:35', '2018-09-19 13:55:35'),
(1654, 'KIEMTORE', 'Amed', 'MASCULIN', '1999-01-19 00:00:00', NULL, NULL, NULL, NULL, '72 89 69 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 13:57:14', '2018-09-19 13:57:14'),
(1655, 'COULIDIATI', 'Eléonore', 'FEMININ', '1999-11-13 00:00:00', NULL, NULL, NULL, NULL, '52166996', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 13:57:59', '2018-09-19 13:57:59'),
(1656, 'NANA', 'Mahamadi', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '75 41 20 12', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:00:22', '2018-09-19 14:00:22'),
(1657, 'SANKARA', 'Yasmine Wendyam Ursule', 'FEMININ', '2000-03-05 00:00:00', NULL, NULL, NULL, NULL, '63081232', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:01:45', '2018-09-19 14:01:45'),
(1658, 'YARGA', 'Benjamin Edouard', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '78 78 83 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:02:16', '2018-09-19 14:02:16'),
(1659, 'SANGA', 'Wend-sôm Justin', 'MASCULIN', '1999-09-09 00:00:00', NULL, NULL, NULL, NULL, '64 36 26 39', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:04:25', '2018-09-19 14:04:25'),
(1660, 'OUEDRAOGO', 'Ousséni', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '65 23 62 23', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:06:47', '2018-09-19 14:06:47'),
(1661, 'KAFANDO', 'Salifatou', 'FEMININ', '1998-12-17 00:00:00', NULL, NULL, NULL, NULL, '68520280', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:06:59', '2018-09-19 14:06:59'),
(1662, 'SAWADOGO', 'Estelle', 'FEMININ', '1997-09-30 00:00:00', NULL, NULL, NULL, NULL, '67819600', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:08:38', '2018-09-19 14:08:38'),
(1663, 'BAGUIAN', 'Harouna', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 31 09 63', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:08:46', '2018-09-19 14:08:46'),
(1664, 'SOME', 'Bèyelkè Julie Constance', 'FEMININ', '2000-09-24 00:00:00', NULL, NULL, NULL, NULL, '71132657', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:10:41', '2018-09-19 14:10:41'),
(1665, 'SEMDE', 'Ibrahim', 'MASCULIN', '2000-05-15 00:00:00', NULL, NULL, NULL, NULL, '62 64 02 48', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:10:53', '2018-09-19 14:10:53'),
(1666, 'SANKARA', 'Haoussétou', 'FEMININ', '1997-10-09 00:00:00', NULL, NULL, NULL, NULL, '76751256', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:12:17', '2018-09-19 14:12:17'),
(1667, 'KOULIBALY', 'Tuinsi Gérald', 'MASCULIN', '1999-12-13 00:00:00', NULL, NULL, NULL, NULL, '51 99 75 57', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:12:57', '2018-09-19 14:12:57'),
(1668, 'BERE', 'Sidbe Dimdolomsom', 'MASCULIN', '2000-10-03 00:00:00', NULL, NULL, NULL, NULL, '67 99 35 72', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:15:30', '2018-09-19 14:15:30'),
(1669, 'SAOUADOGO', 'Salifou', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '73 08 75 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:17:15', '2018-09-19 14:17:15'),
(1670, 'SAWADOGO', 'Wendtoin Eliane', 'FEMININ', '2000-01-14 00:00:00', NULL, NULL, NULL, NULL, '63462797', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:17:46', '2018-09-19 14:17:46'),
(1671, 'ONADJA', 'Palamanga Abdoul Rachid', 'MASCULIN', '1999-12-09 00:00:00', NULL, NULL, NULL, NULL, '60 02 88 00', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:18:47', '2018-09-19 14:18:47'),
(1672, 'SANOU', 'Mathilde Syntuche Larissa', 'FEMININ', '1996-06-28 00:00:00', NULL, NULL, NULL, NULL, '61523054', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:19:32', '2018-09-19 14:19:32'),
(1673, 'DABRE', 'Abdul Fathao Rahym', 'MASCULIN', '1999-05-24 00:00:00', NULL, NULL, NULL, NULL, '64 17 74 43', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:20:35', '2018-09-19 14:20:35'),
(1674, 'TRAORE', 'Woé Assita', 'MASCULIN', '1998-04-18 00:00:00', NULL, NULL, NULL, NULL, '73020116', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:21:03', '2018-09-19 14:21:03'),
(1675, 'SANOU', 'Marie Rose', 'FEMININ', '1998-05-30 00:00:00', NULL, NULL, NULL, NULL, '71313356', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:22:34', '2018-09-19 14:22:34'),
(1676, 'OUEDRAOGO', 'Abdoulaye', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '51 10 92 67', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:23:00', '2018-09-19 14:23:00'),
(1677, 'SAWADOGO', 'Sophie Wendenpuig', 'FEMININ', '1996-05-24 00:00:00', NULL, NULL, NULL, NULL, '63663832', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:24:45', '2018-09-19 14:24:45'),
(1678, 'DIANOU', 'Fabrice', 'MASCULIN', '1997-09-22 00:00:00', NULL, NULL, NULL, NULL, '54 86 10 58', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:24:53', '2018-09-19 14:24:53'),
(1679, 'SOMDAKOUMA', 'Mariam', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '72559722', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:26:22', '2018-09-19 14:26:22'),
(1680, 'DOUAMBA', 'Fadila Wendigoudi 2ème jumelle', 'FEMININ', '2000-01-04 00:00:00', NULL, NULL, NULL, NULL, '73 01 33 51', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:27:00', '2018-09-19 14:27:00'),
(1681, 'SANDWIDI', 'Astride Elodie', 'FEMININ', '2000-10-25 00:00:00', NULL, NULL, NULL, NULL, '63416765', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:28:09', '2018-09-19 14:28:09'),
(1682, 'KAMBWOLE', 'Malia Floriane', 'FEMININ', '1999-07-12 00:00:00', NULL, NULL, NULL, NULL, '70 26 10 48', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:29:03', '2018-09-19 14:29:03'),
(1683, 'SANA', 'Adjaratou', 'FEMININ', '1999-05-26 00:00:00', NULL, NULL, NULL, NULL, '60745841', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:30:12', '2018-09-19 14:30:12'),
(1684, 'DELMA', 'Abdoulaye', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '61656591', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 14:31:19', '2018-09-19 14:31:19'),
(1685, 'MEDA', 'Nawine Barca Henri Suso', 'MASCULIN', '1997-01-25 00:00:00', NULL, NULL, NULL, NULL, '70 43 60 54', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:31:38', '2018-09-19 14:31:38'),
(1686, 'DIMA', 'Ousmane', 'MASCULIN', '1999-06-06 00:00:00', NULL, NULL, NULL, NULL, '60 77 91 63', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:33:08', '2018-09-19 14:33:08'),
(1687, 'BAMOGO', 'Souleymane', 'MASCULIN', '1999-06-21 00:00:00', NULL, NULL, NULL, NULL, '64 99 96 76', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:34:38', '2018-09-19 14:34:38'),
(1688, 'BAMOGO', 'Joachim Tampouiré', 'MASCULIN', '1999-12-30 00:00:00', NULL, NULL, NULL, NULL, '51368940', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 14:34:49', '2018-09-19 14:34:49'),
(1689, 'DAOUDONGAR', 'Axel Loyanta', 'MASCULIN', '2000-07-02 00:00:00', NULL, NULL, NULL, NULL, '72 00 10 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:37:37', '2018-09-19 14:37:37'),
(1690, 'DABIRE', 'Kow Jean Michel', 'MASCULIN', '1998-02-12 00:00:00', NULL, NULL, NULL, NULL, '74308264', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 14:38:00', '2018-09-19 14:38:00'),
(1691, 'OUEDRAOGO', 'Pascal', 'MASCULIN', '1996-04-02 00:00:00', NULL, NULL, NULL, NULL, '62 97 50 20', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:39:18', '2018-09-19 14:39:18'),
(1692, 'SAWADOGO', 'Abdoul Fatahou', 'MASCULIN', '1996-10-30 00:00:00', NULL, NULL, NULL, NULL, '61 94 16 55', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:41:07', '2018-09-19 14:41:07'),
(1693, 'DABIRE', 'Dieudonné', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 93 93 42', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:42:45', '2018-09-19 14:42:45'),
(1694, 'DICKO', 'Amadou', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '64221182', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 14:43:50', '2018-09-19 14:43:50'),
(1695, 'BEOGO', 'Ange Silver', 'MASCULIN', '1999-10-16 00:00:00', NULL, NULL, NULL, NULL, '70 01 99 76', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:44:23', '2018-09-19 14:44:23'),
(1696, 'BONKOUNGOU', 'Abdoul Aziz', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '76 68 61 89', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:46:00', '2018-09-19 14:46:00'),
(1697, 'BONKOUNGOU', 'Wendpouiré Blanche Marie Prudence', 'FEMININ', '1998-09-14 00:00:00', NULL, NULL, NULL, NULL, '71406717', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 14:46:22', '2018-09-19 14:46:22'),
(1698, 'DAH', 'Lucien', 'MASCULIN', '1998-03-04 00:00:00', NULL, NULL, NULL, NULL, '60580655', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 14:48:21', '2018-09-19 14:48:21'),
(1699, 'MILA', 'Wendpagnagdé Jerry Paul Robin', 'MASCULIN', '1999-11-03 00:00:00', NULL, NULL, NULL, NULL, '76 60 91 79', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:50:29', '2018-09-19 14:50:29'),
(1700, 'KABRE', 'Pegdwendé Sylvère', 'MASCULIN', '1998-09-15 00:00:00', NULL, NULL, NULL, NULL, '63946267', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 14:52:18', '2018-09-19 14:52:18'),
(1701, 'THIOMBIANO', 'Tani Bertille', 'MASCULIN', '1998-11-02 00:00:00', NULL, NULL, NULL, NULL, '62573424', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:52:34', '2018-09-19 14:52:34'),
(1702, 'BOUGMA', 'Raoul Fredy Sidnomwindé', 'MASCULIN', '2000-05-03 02:00:00', NULL, NULL, NULL, NULL, '74 10 00 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 14:52:37', '2018-09-19 14:52:37'),
(1703, 'YADIA', 'Nahoa Josias Venceslas', 'MASCULIN', '1999-04-26 00:00:00', NULL, NULL, NULL, NULL, '54 99 15 50', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:53:00', '2018-09-19 14:53:00'),
(1704, 'KOURA', 'Nicodem', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 35 64 98', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:54:37', '2018-09-19 14:54:37'),
(1705, 'KI', 'Laure Mathilde', 'FEMININ', '2000-05-15 00:00:00', NULL, NULL, NULL, NULL, '71 44 69 96', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:56:50', '2018-09-19 14:56:50'),
(1706, 'OUEDRAOGO', 'Faosiatou', 'FEMININ', '2000-11-21 02:00:00', NULL, NULL, NULL, NULL, '73 60 42 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 14:57:05', '2018-09-19 14:57:05'),
(1707, 'OUEDRAOGO', 'Jacques', 'MASCULIN', '1998-08-10 00:00:00', NULL, NULL, NULL, NULL, '77 54 55 01', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 14:58:31', '2018-09-19 14:58:31'),
(1708, 'ILBOUDO', 'Habibou', 'FEMININ', '1998-01-16 00:00:00', NULL, NULL, NULL, NULL, '51414950', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 14:58:33', '2018-09-19 14:58:33'),
(1709, 'SAWADOGO', 'Kiswindsida Soumaïla', 'MASCULIN', '2000-04-13 00:00:00', NULL, NULL, NULL, NULL, '73 11 09 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:00:12', '2018-09-19 15:00:12'),
(1710, 'ZOUNGRANA', 'Wendnémi Nadège', 'FEMININ', '2001-05-31 00:00:00', NULL, NULL, NULL, NULL, '70060420', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 15:00:17', '2018-09-19 15:00:17'),
(1711, 'SAWADOGO', 'Ramata', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '62293101', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 15:01:47', '2018-09-19 15:01:47'),
(1712, 'ZAMPOU', 'Rahim Fabrice Kevin', 'MASCULIN', '2000-03-13 00:00:00', NULL, NULL, NULL, NULL, '63 08 15 51', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:02:32', '2018-09-19 15:02:32'),
(1713, 'SANTI', 'Balkissa', 'FEMININ', '1996-05-07 00:00:00', NULL, NULL, NULL, NULL, '61144450', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 15:03:20', '2018-09-19 15:03:20'),
(1714, 'SAWADOGO', 'Yirmegnan Bienvenu Abdoul Aziz', 'MASCULIN', '2000-01-23 00:00:00', NULL, NULL, NULL, NULL, '63 00 50 44', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:04:59', '2018-09-19 15:04:59'),
(1715, 'SANA', 'Aminata', 'FEMININ', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '54817283', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 15:05:02', '2018-09-19 15:05:02'),
(1716, 'DABIRE', 'Ambaompouo', 'MASCULIN', '1998-03-22 00:00:00', NULL, NULL, NULL, NULL, '61 31 60 89', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:07:29', '2018-09-19 15:07:29'),
(1717, 'KONKOBO', 'Bene-Wendé Landry', 'MASCULIN', '2000-01-18 00:00:00', NULL, NULL, NULL, NULL, '68771200', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:15:12', '2018-09-19 15:15:12'),
(1718, 'SAVADOGO', 'Somkaoguinda Arzouma Valérie', 'FEMININ', '1999-12-10 00:00:00', NULL, NULL, NULL, NULL, '51936423', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 15:18:23', '2018-09-19 15:18:23'),
(1719, 'SORE', 'Sara', 'FEMININ', '1996-05-12 00:00:00', NULL, NULL, NULL, NULL, '51173442', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 15:24:11', '2018-09-19 15:24:11'),
(1720, 'BASSOLE', 'Ulrich Yipénè', 'MASCULIN', '1998-07-08 00:00:00', NULL, NULL, NULL, NULL, '72318375', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:24:22', '2018-09-19 15:24:22'),
(1721, 'ROAMBA', 'Sophie', 'FEMININ', '1999-05-24 00:00:00', NULL, NULL, NULL, NULL, '60020099', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 15:25:40', '2018-09-19 15:25:40'),
(1722, 'OUATTARA', 'Kibtio Julienne', 'FEMININ', '1999-04-09 00:00:00', NULL, NULL, NULL, NULL, '66713009', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:26:44', '2018-09-19 15:26:44'),
(1723, 'SANKARA', 'Fati', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '51006898', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 15:27:13', '2018-09-19 15:27:13'),
(1724, 'MOGMENGA', 'Sidlawindé Waliou', 'MASCULIN', '1999-02-24 02:00:00', NULL, NULL, NULL, NULL, '71 30 48 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 15:28:19', '2018-09-19 15:28:19'),
(1725, 'BONKOUNGOU', 'Bénéwendé Diane Raïnatou', 'FEMININ', '2000-08-16 00:00:00', NULL, NULL, NULL, NULL, '60 41 41 80', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:28:33', '2018-09-19 15:28:33'),
(1726, 'SANA', 'Fadilatou', 'FEMININ', '1998-07-18 00:00:00', NULL, NULL, NULL, NULL, '78558135', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-19 15:28:55', '2018-09-19 15:28:55'),
(1727, 'KONE', 'Alice', 'FEMININ', '1999-12-12 00:00:00', NULL, NULL, NULL, NULL, '51472470', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:29:59', '2018-09-19 15:29:59'),
(1728, 'OUEDRAOGO', 'Wendpouiré Astrid Evodie', 'FEMININ', '2000-02-12 00:00:00', NULL, NULL, NULL, NULL, '63 38 26 01', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:31:04', '2018-09-19 15:31:04'),
(1729, 'DEMBELE', 'Mohamed Lamine', 'MASCULIN', '2000-02-16 00:00:00', NULL, NULL, NULL, NULL, '73128518', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:32:04', '2018-09-19 15:32:04'),
(1730, 'DJIGUEMDE', 'Rasmata', 'FEMININ', '1998-02-02 02:00:00', NULL, NULL, NULL, NULL, '73 41 55 58', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 15:32:31', '2018-09-19 15:32:31'),
(1731, 'BARRA', 'Rahmata', 'FEMININ', '1999-07-07 00:00:00', NULL, NULL, NULL, NULL, '66498450', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:34:33', '2018-09-19 15:34:33'),
(1732, 'BEMBAMBA', 'Inoussa', 'MASCULIN', '1999-02-28 02:00:00', NULL, NULL, NULL, NULL, '71 32 26 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 15:35:53', '2018-09-19 15:35:53'),
(1733, 'AOUBA', 'Yacine Annour Samsdine Bali', 'MASCULIN', '2001-01-28 00:00:00', NULL, NULL, NULL, NULL, '73 26 16 53', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:36:00', '2018-09-19 15:36:00'),
(1734, 'KINDA', 'Pinrègma', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '77845545', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:37:10', '2018-09-19 15:37:10'),
(1735, 'OUEDRAOGO', 'Antonella Sombénédo', 'FEMININ', '2000-11-07 00:00:00', NULL, NULL, NULL, NULL, '79 17 65 05', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:38:00', '2018-09-19 15:38:00'),
(1736, 'FOLANE', 'Michel', 'MASCULIN', '1998-01-04 02:00:00', NULL, NULL, NULL, NULL, '64 66 76 12', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 15:41:03', '2018-09-19 15:41:03'),
(1737, 'KABORE', 'Flora Armelle Pagnan', 'FEMININ', '2000-06-19 00:00:00', NULL, NULL, NULL, NULL, '70393880', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:41:36', '2018-09-19 15:41:36'),
(1738, 'COMPAORE', 'Bienvenue Martine', 'FEMININ', '1996-07-23 02:00:00', NULL, NULL, NULL, NULL, '63 00 36 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 15:43:00', '2018-09-19 15:43:00'),
(1739, 'OUANGO', 'Wend-Yam Kévin', 'MASCULIN', '1998-06-03 00:00:00', NULL, NULL, NULL, NULL, '60612073', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:45:07', '2018-09-19 15:45:07'),
(1740, 'DOAMBA', 'Emerentienne Antoinette Baowend-Boum', 'FEMININ', '1998-01-19 02:00:00', NULL, NULL, NULL, NULL, '60 81 03 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 15:46:18', '2018-09-19 15:46:18'),
(1741, 'OUEDRAOGO', 'aFSATOU', 'FEMININ', '1999-12-01 00:00:00', NULL, NULL, NULL, NULL, '73 91 28 71', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:46:38', '2018-09-19 15:46:38'),
(1742, 'HIEN', 'Domènouor', 'MASCULIN', '1998-12-30 00:00:00', NULL, NULL, NULL, NULL, '72126692', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:47:29', '2018-09-19 15:47:29'),
(1743, 'KONKOBO', 'Wendinso Trophine', 'MASCULIN', '1999-11-09 00:00:00', NULL, NULL, NULL, NULL, '74 94 21 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:48:54', '2018-09-19 15:48:54'),
(1744, 'KIENDREBEOGO', 'Narcice', 'MASCULIN', '1997-09-24 02:00:00', NULL, NULL, NULL, NULL, '54 90 48 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 15:48:57', '2018-09-19 15:48:57'),
(1745, 'NIKIEMA', 'Barkissa 1ère Jumelle', 'FEMININ', '1998-10-31 00:00:00', NULL, NULL, NULL, NULL, '73 56 16 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:50:37', '2018-09-19 15:50:37'),
(1746, 'BAGAGNAN', 'Moumini', 'MASCULIN', '1998-12-30 00:00:00', NULL, NULL, NULL, NULL, '70649994', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 15:50:58', '2018-09-19 15:50:58'),
(1747, 'KABORE', 'Michelle Veridiane', 'FEMININ', '2000-09-29 02:00:00', NULL, NULL, NULL, NULL, '70 26 95 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 15:52:05', '2018-09-19 15:52:05'),
(1748, 'NEBIE', 'Kevin Amderson Lemuel', 'MASCULIN', '2000-01-04 00:00:00', NULL, NULL, NULL, NULL, '70 32 06 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:52:31', '2018-09-19 15:52:31'),
(1749, 'ZEBRET', 'Abdoul Aziz Assimi', 'MASCULIN', '1999-11-19 00:00:00', NULL, NULL, NULL, NULL, '73 59 30 30', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:54:09', '2018-09-19 15:54:09'),
(1750, 'BATIONO', 'Serge Yipènè Bienvenu', 'MASCULIN', '1999-08-04 02:00:00', NULL, NULL, NULL, NULL, '63 57 00 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 15:55:45', '2018-09-19 15:55:45'),
(1751, 'YAMEOGO', 'Tegawindé Zephirin', 'MASCULIN', '1998-01-20 00:00:00', NULL, NULL, NULL, NULL, '60 31 79 11', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:56:15', '2018-09-19 15:56:15'),
(1752, 'OUATTARA', 'Lamini Abdoul Mas\'oud', 'MASCULIN', '2000-08-28 00:00:00', NULL, NULL, NULL, NULL, '70 74 87 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 15:58:45', '2018-09-19 15:58:45'),
(1753, 'OUEDRAOGO', 'Pengdwendé', 'MASCULIN', '1999-07-08 02:00:00', NULL, NULL, NULL, NULL, '54 23 01 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 15:59:12', '2018-09-19 15:59:12'),
(1754, 'WANHIRE', 'Adouahiré Hervé', 'MASCULIN', '2001-04-28 00:00:00', NULL, NULL, NULL, NULL, '67 14 64 14', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 16:01:45', '2018-09-19 16:01:45'),
(1755, 'OUEDRAOGO', 'Marcel', 'MASCULIN', '1998-01-16 00:00:00', NULL, NULL, NULL, NULL, '63 35 76 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-19 16:03:21', '2018-09-19 16:03:21'),
(1756, 'SAWADOGO', 'Sid-Nomawendé Sylvestre Sandrine', 'FEMININ', '1998-08-02 02:00:00', NULL, NULL, NULL, NULL, '62 83 13 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:04:34', '2018-09-19 16:04:34'),
(1757, 'DOMBA', 'Albert Zimancha', 'MASCULIN', '1999-11-14 02:00:00', NULL, NULL, NULL, NULL, '72 55 32 19', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:11:12', '2018-09-19 16:11:12'),
(1758, 'KPODA', 'Navindib Patrice', 'MASCULIN', '1998-04-19 00:00:00', NULL, NULL, NULL, NULL, '77989708', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:13:14', '2018-09-19 16:13:14'),
(1759, 'MEDA', 'Nawinkoume Aristide', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '55 62 17 15', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:15:37', '2018-09-19 16:15:37'),
(1760, 'BAKOUAN', 'Ysso Rose Patricia', 'FEMININ', '2000-06-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:16:46', '2018-09-19 16:16:46'),
(1761, 'OUEDRAOGO', 'Mamounata', 'FEMININ', '1998-09-29 02:00:00', NULL, NULL, NULL, NULL, '76 84 90 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:19:39', '2018-09-19 16:19:39'),
(1762, 'BAMOUNI', 'Jean Yinijugnè', 'MASCULIN', '1998-10-08 00:00:00', NULL, NULL, NULL, NULL, '60538480', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:19:57', '2018-09-19 16:19:57'),
(1763, 'IDO', 'Souleymane', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 80 47 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:21:53', '2018-09-19 16:21:53'),
(1764, 'SOMDA', 'Yirlo Liliane', 'FEMININ', '2000-12-28 00:00:00', NULL, NULL, NULL, NULL, '57537393', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:24:09', '2018-09-19 16:24:09'),
(1765, 'ZARE', 'Abdoul Aboubacar', 'MASCULIN', '1997-09-27 02:00:00', NULL, NULL, NULL, NULL, '70 53 77 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:24:33', '2018-09-19 16:24:33'),
(1766, 'YAMEOGO', 'Cindy', 'FEMININ', '1998-05-15 00:00:00', NULL, NULL, NULL, NULL, '60541043', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:25:52', '2018-09-19 16:25:52'),
(1767, 'SANOU', 'Hamidou', 'MASCULIN', '1997-09-22 02:00:00', NULL, NULL, NULL, NULL, '66 90 78 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:26:54', '2018-09-19 16:26:54'),
(1768, 'ZAGRE', 'Wendkouni Bernadine', 'FEMININ', '1999-10-06 00:00:00', NULL, NULL, NULL, NULL, '62680493', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:28:08', '2018-09-19 16:28:08'),
(1769, 'TAPSOBA', 'Zarata', 'FEMININ', '1996-09-24 02:00:00', NULL, NULL, NULL, NULL, '74 65 26 27', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:28:45', '2018-09-19 16:28:45'),
(1770, 'OUEDRAOGO', 'Landry', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '52 72 66 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:32:01', '2018-09-19 16:32:01'),
(1771, 'NIKIEMA', 'Yemdaogo', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 52 46 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:34:00', '2018-09-19 16:34:00'),
(1772, 'KABRE', 'Sidbilimda Pamela Miriam', 'FEMININ', '2000-05-25 00:00:00', NULL, NULL, NULL, NULL, '70212477', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:34:56', '2018-09-19 16:34:56'),
(1773, 'ZOMA', 'Rassondé-Yimbà Boris Levis', 'MASCULIN', '1997-10-13 00:00:00', NULL, NULL, NULL, NULL, '62753941', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:37:38', '2018-09-19 16:37:38'),
(1774, 'IOGO', 'Adama', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 45 43 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:38:50', '2018-09-19 16:38:50'),
(1775, 'ZOUNGRANA', 'Jerôme', 'MASCULIN', '1997-08-30 00:00:00', NULL, NULL, NULL, NULL, '54160566', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:39:38', '2018-09-19 16:39:38'),
(1776, 'NAKOULMA', 'Kirsi Joseph', 'MASCULIN', '1999-08-10 00:00:00', NULL, NULL, NULL, NULL, '74009902', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:42:08', '2018-09-19 16:42:08'),
(1777, 'NIGNAN', 'Bali', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '64636486', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:43:59', '2018-09-19 16:43:59'),
(1778, 'SOURABIE', 'Soutiome Youssouf Assad', 'MASCULIN', '2000-05-11 02:00:00', NULL, NULL, NULL, NULL, '70 14 54 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:44:52', '2018-09-19 16:44:52'),
(1779, 'DEME', 'Abdoulaye', 'MASCULIN', '1999-09-11 00:00:00', NULL, NULL, NULL, NULL, '64417295', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:45:41', '2018-09-19 16:45:41'),
(1780, 'OUEDRAOGO', 'Souleymane', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '69317980', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:47:16', '2018-09-19 16:47:16'),
(1781, 'BACYE', 'Yipèné Anna Jennifer', 'FEMININ', '1999-09-24 02:00:00', NULL, NULL, NULL, NULL, '66 71 00 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:48:37', '2018-09-19 16:48:37'),
(1782, 'YARBANGA', 'Patindé', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '64627568', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:50:14', '2018-09-19 16:50:14'),
(1783, 'BICABA', 'Zoumabo Thierry Ignace', 'MASCULIN', '1997-08-02 00:00:00', NULL, NULL, NULL, NULL, '73139166', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:52:56', '2018-09-19 16:52:56'),
(1784, 'ZONGO', 'Rasmané', 'MASCULIN', '1998-10-24 02:00:00', NULL, NULL, NULL, NULL, '77 82 59 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-19 16:53:11', '2018-09-19 16:53:11'),
(1785, 'SAWADOGO', 'Aminata', 'FEMININ', '1997-04-06 00:00:00', NULL, NULL, NULL, NULL, '65214165', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:54:28', '2018-09-19 16:54:28'),
(1786, 'DIARRA', 'Mariam', 'FEMININ', '1996-10-05 00:00:00', NULL, NULL, NULL, NULL, '63735791', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:56:22', '2018-09-19 16:56:22'),
(1787, 'GUIRA', 'Salimata', 'FEMININ', '1997-01-02 00:00:00', NULL, NULL, NULL, NULL, '62703496', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-19 16:58:02', '2018-09-19 16:58:02'),
(1788, 'KINDA', 'Yacouba', 'MASCULIN', '1998-11-27 00:00:00', NULL, NULL, NULL, NULL, '77 56 71 43', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:11:22', '2018-09-20 08:11:22'),
(1789, 'IBRANGO', 'Abdina', 'MASCULIN', '1999-10-06 00:00:00', NULL, NULL, NULL, NULL, '76 66 18 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:12:46', '2018-09-20 08:12:46'),
(1790, 'TOUGMA', 'Bamba Yamain Jean-Christopher', 'MASCULIN', '1999-09-25 00:00:00', NULL, NULL, NULL, NULL, '62238884', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 08:15:08', '2018-09-20 08:15:08'),
(1791, 'SANFO', 'Moussa', 'MASCULIN', '1999-06-17 00:00:00', NULL, NULL, NULL, NULL, '63 54 87 98', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:15:14', '2018-09-20 08:15:14'),
(1792, 'KAFANDO', 'Sompayaadé Lucien', 'MASCULIN', '1998-01-05 00:00:00', NULL, NULL, NULL, NULL, '65 99 96 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:16:49', '2018-09-20 08:16:49'),
(1793, 'SOMDA', 'Mwintour Christelle Marie Justin', 'FEMININ', '2000-08-07 00:00:00', NULL, NULL, NULL, NULL, '60 80 06 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:19:36', '2018-09-20 08:19:36'),
(1794, 'OUEDRAOGO', 'Noëlie', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '74423644', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 08:21:29', '2018-09-20 08:21:29'),
(1795, 'REGTOUMDA', 'Bébéwendé Serge Adama', 'MASCULIN', '2000-09-22 00:00:00', NULL, NULL, NULL, NULL, '75 23 52 75', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:22:03', '2018-09-20 08:22:03'),
(1796, 'OUEDRAOGO', 'Almissi Léon', 'MASCULIN', '1998-11-10 00:00:00', NULL, NULL, NULL, NULL, '61030928', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 08:24:49', '2018-09-20 08:24:49'),
(1797, 'SAWADOGO', 'Issaka', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 95 79 35', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:26:22', '2018-09-20 08:26:22'),
(1798, 'YAMEOGO', 'Kiswensida Yannik Martial', 'MASCULIN', '1999-07-09 02:00:00', NULL, NULL, NULL, NULL, '70 31 57 35', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 08:28:32', '2018-09-20 08:28:32'),
(1799, 'GUIGMA', 'Armand', 'MASCULIN', '1999-01-02 00:00:00', NULL, NULL, NULL, NULL, '73 29 83 39', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:28:42', '2018-09-20 08:28:42'),
(1800, 'OUEDRAOGO', 'Abdoul Razak', 'MASCULIN', '1997-04-11 00:00:00', NULL, NULL, NULL, NULL, '62 19 06 18', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:30:16', '2018-09-20 08:30:16'),
(1801, 'SEDOGO', 'Stéphane', 'MASCULIN', '1996-08-29 02:00:00', NULL, NULL, NULL, NULL, '3', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 08:31:19', '2018-09-20 08:31:19'),
(1802, 'DAMIBA', 'Boukary', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '73 53 79 63', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:32:27', '2018-09-20 08:32:27'),
(1803, 'SOUBEIGA', 'Alexandre', 'MASCULIN', '1998-04-27 00:00:00', NULL, NULL, NULL, NULL, '62 38 74 51', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:34:02', '2018-09-20 08:34:02'),
(1804, 'OUOBA', 'Boundia Clément', 'MASCULIN', '1999-11-23 02:00:00', NULL, NULL, NULL, NULL, '51 66 59 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 08:36:03', '2018-09-20 08:36:03'),
(1805, 'YAMBRESSINGA', 'Jérôme', 'MASCULIN', '2000-02-08 00:00:00', NULL, NULL, NULL, NULL, '72 83 72 55', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:36:23', '2018-09-20 08:36:23'),
(1806, 'BA', 'Farid Aboubacar Man-Mani', 'MASCULIN', '2000-10-18 00:00:00', NULL, NULL, NULL, NULL, '70 33 32 79', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:39:00', '2018-09-20 08:39:00'),
(1807, 'GANGO', 'Pingwendé Regis Michaël', 'MASCULIN', '2000-08-29 00:00:00', NULL, NULL, NULL, NULL, '71 91 11 52', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:42:48', '2018-09-20 08:42:48'),
(1808, 'NIKIEMA', 'Raoul Cédric', 'MASCULIN', '1999-12-19 00:00:00', NULL, NULL, NULL, NULL, '63712092', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 08:44:35', '2018-09-20 08:44:35'),
(1809, 'PORGO', 'Abdoulaziz', 'MASCULIN', '1999-12-17 00:00:00', NULL, NULL, NULL, NULL, '72 46 00 15', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:45:33', '2018-09-20 08:45:33'),
(1810, 'SAWADOGO', 'Rasmata', 'FEMININ', '1998-10-16 00:00:00', NULL, NULL, NULL, NULL, '75141519', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 08:46:37', '2018-09-20 08:46:37'),
(1811, 'DABONE', 'Mohamed', 'MASCULIN', '2000-01-23 00:00:00', NULL, NULL, NULL, NULL, '63654787', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 08:48:31', '2018-09-20 08:48:31'),
(1812, 'OUEDRAOGO', 'Seydou', 'MASCULIN', '1999-12-29 00:00:00', NULL, NULL, NULL, NULL, '70 36 59 87', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:48:47', '2018-09-20 08:48:47'),
(1813, 'BOUSSIM', 'Salam', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '76646677', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 08:50:41', '2018-09-20 08:50:41'),
(1814, 'TAPSOBA', 'Wendkuni Mohamed', 'MASCULIN', '2000-06-28 00:00:00', NULL, NULL, NULL, NULL, '76 60 53 85', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:51:03', '2018-09-20 08:51:03'),
(1815, 'NIKIEMA', 'Steeve Fabien Wendzoodo', 'MASCULIN', '1999-11-09 00:00:00', NULL, NULL, NULL, NULL, '61 57 05 41', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:52:59', '2018-09-20 08:52:59'),
(1816, 'BADO', 'Honorine Ywalo', 'FEMININ', '1998-01-23 00:00:00', NULL, NULL, NULL, NULL, '61848080', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 08:54:21', '2018-09-20 08:54:21');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(1817, 'SANOU', 'Ségué Julie', 'FEMININ', '1999-04-08 00:00:00', NULL, NULL, NULL, NULL, '51539759', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 08:55:58', '2018-09-20 08:55:58'),
(1818, 'OUEDRAOGO', 'Noago Sadja Zoulaihate', 'FEMININ', '2000-08-03 00:00:00', NULL, NULL, NULL, NULL, '64 82 37 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:56:58', '2018-09-20 08:56:58'),
(1819, 'BADOLO', 'Diakadidia', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '77486340', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 08:57:40', '2018-09-20 08:57:40'),
(1820, 'OUEDRAOGO', 'Wendkouni Boliamine Félix', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '73377060', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 08:58:25', '2018-09-20 08:58:25'),
(1821, 'KALMOGO', 'Laetitia', 'FEMININ', '1999-12-19 00:00:00', NULL, NULL, NULL, NULL, '62 34 65 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 08:59:23', '2018-09-20 08:59:23'),
(1822, 'SEOGO', 'Rouquayatou', 'FEMININ', '1997-05-02 00:00:00', NULL, NULL, NULL, NULL, '70898220', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 08:59:35', '2018-09-20 08:59:35'),
(1823, 'DELMA', 'Sayouba', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '55 03 24 52', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:01:03', '2018-09-20 09:01:03'),
(1824, 'COMPAORE', 'Nassiratou', 'FEMININ', '1997-09-25 00:00:00', NULL, NULL, NULL, NULL, '70444023', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:01:31', '2018-09-20 09:01:31'),
(1825, 'MABILA', 'Sandaogo', 'MASCULIN', '1998-08-03 00:00:00', NULL, NULL, NULL, NULL, '68 13 23 30', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:02:51', '2018-09-20 09:02:51'),
(1826, 'KABORE', 'Martin', 'MASCULIN', '1999-11-11 00:00:00', NULL, NULL, NULL, NULL, '62 60 74 95', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:04:46', '2018-09-20 09:04:46'),
(1827, 'DAILA', 'Bapian Hubert', 'MASCULIN', '1997-11-11 00:00:00', NULL, NULL, NULL, NULL, '60503401', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:04:53', '2018-09-20 09:04:53'),
(1828, 'BAKOUAN', 'Daouda', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70 70 69 07', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:06:20', '2018-09-20 09:06:20'),
(1829, 'TOUGMA', 'Nicole', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '60922689', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:07:35', '2018-09-20 09:07:35'),
(1830, 'PODA', 'Ollo Clément', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '77 42 09 07', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:09:07', '2018-09-20 09:09:07'),
(1831, 'NIKIEMA', 'Oumou Kolsoum', 'MASCULIN', '1996-01-01 00:00:00', NULL, NULL, NULL, NULL, '75918972', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:10:22', '2018-09-20 09:10:22'),
(1832, 'SAMADOULOUGOU', 'Andie Erwan Kiswendsida', 'MASCULIN', '2000-11-16 00:00:00', NULL, NULL, NULL, NULL, '57 40 10 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:12:01', '2018-09-20 09:12:01'),
(1833, 'BELEM', 'Oumoul Koulsoum', 'FEMININ', '1998-04-07 00:00:00', NULL, NULL, NULL, NULL, '78122631', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:13:11', '2018-09-20 09:13:11'),
(1834, 'OUATTARA', 'Abdoul Kader', 'MASCULIN', '1999-02-18 00:00:00', NULL, NULL, NULL, NULL, '64 58 42 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:13:50', '2018-09-20 09:13:50'),
(1835, 'BAMOGO', 'Wendyolsdé Débora', 'FEMININ', '1998-09-03 00:00:00', NULL, NULL, NULL, NULL, '63375680', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:15:37', '2018-09-20 09:15:37'),
(1836, 'LENGLENGUE', 'Abdoul Rachid Saïd', 'MASCULIN', '2000-07-12 00:00:00', NULL, NULL, NULL, NULL, '70 65 12 60', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:15:53', '2018-09-20 09:15:53'),
(1837, 'OUEDRAOGO', 'Cathérine', 'FEMININ', '1998-09-22 00:00:00', NULL, NULL, NULL, NULL, '78450432', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:17:15', '2018-09-20 09:17:15'),
(1838, 'OUEDRAOGO', 'Abdoul Nassir', 'MASCULIN', '1997-05-08 00:00:00', NULL, NULL, NULL, NULL, '75 41 91 41', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:17:48', '2018-09-20 09:17:48'),
(1839, 'ZONGO', 'Kouka Gisèle', 'FEMININ', '1998-03-18 00:00:00', NULL, NULL, NULL, NULL, '77135421', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:18:56', '2018-09-20 09:18:56'),
(1840, 'GUIRA', 'Hassami', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 10 20 38', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:19:26', '2018-09-20 09:19:26'),
(1841, 'GOUBA', 'Hamidou', 'MASCULIN', '1999-07-08 00:00:00', NULL, NULL, NULL, NULL, '56398411', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:20:46', '2018-09-20 09:20:46'),
(1842, 'DANEM', 'François', 'MASCULIN', '1998-03-09 00:00:00', NULL, NULL, NULL, NULL, '64 08 41 32', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:21:17', '2018-09-20 09:21:17'),
(1843, 'YANKINE', 'Ousséni', 'MASCULIN', '1997-09-01 00:00:00', NULL, NULL, NULL, NULL, '56369018', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:22:37', '2018-09-20 09:22:37'),
(1844, 'KABORE', 'Mady', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 43 36 93', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:22:57', '2018-09-20 09:22:57'),
(1845, 'DABONE', 'Souleymane', 'MASCULIN', '2000-07-22 00:00:00', NULL, NULL, NULL, NULL, '64 53 39 75', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:24:48', '2018-09-20 09:24:48'),
(1846, 'IBRIGA', 'Aïda', 'FEMININ', '1996-11-06 00:00:00', NULL, NULL, NULL, NULL, '70190156', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:25:18', '2018-09-20 09:25:18'),
(1847, 'YODA', 'Wosfom Elkana', 'MASCULIN', '1999-03-06 00:00:00', NULL, NULL, NULL, NULL, '52 64 64 88', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:26:40', '2018-09-20 09:26:40'),
(1848, 'KANKOUAN', 'Safiatou', 'FEMININ', '1996-08-21 00:00:00', NULL, NULL, NULL, NULL, '60720381', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:27:19', '2018-09-20 09:27:19'),
(1849, 'KINDO', 'Ahassane Haïdara', 'MASCULIN', '1997-11-16 00:00:00', NULL, NULL, NULL, NULL, '73 78 79 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:28:56', '2018-09-20 09:28:56'),
(1850, 'ZOUNGRANA', 'Mamounata', 'FEMININ', '1999-08-14 00:00:00', NULL, NULL, NULL, NULL, '71863076', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:29:12', '2018-09-20 09:29:12'),
(1851, 'TIENDREBEOGO', 'Abdoul Kader', 'MASCULIN', '1998-07-01 00:00:00', NULL, NULL, NULL, NULL, '70124282', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:31:16', '2018-09-20 09:31:16'),
(1852, 'OUOBA', 'Lamoudi Dominique', 'MASCULIN', '1998-05-14 00:00:00', NULL, NULL, NULL, NULL, '55130230', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:33:13', '2018-09-20 09:33:13'),
(1853, 'TUINA', 'Isaac Sanmou', 'MASCULIN', '1997-01-21 00:00:00', NULL, NULL, NULL, NULL, '71 87 55 80', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:33:20', '2018-09-20 09:33:20'),
(1854, 'SAWADOGO', 'Sidi Zoulkarnaïni', 'MASCULIN', '2001-01-01 00:00:00', NULL, NULL, NULL, NULL, '76 82 89 96', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:35:35', '2018-09-20 09:35:35'),
(1855, 'KOWANE', 'Joël Lawadou', 'MASCULIN', '1996-10-24 00:00:00', NULL, NULL, NULL, NULL, '61677730', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:35:55', '2018-09-20 09:35:55'),
(1856, 'OUAGARAOUA', 'Antoinette', 'FEMININ', '1999-04-23 00:00:00', NULL, NULL, NULL, NULL, '72015127', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:37:47', '2018-09-20 09:37:47'),
(1857, 'SIEZA', 'Sikimité Elioste Dine', 'MASCULIN', '2000-05-17 00:00:00', NULL, NULL, NULL, NULL, '67 90 81 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:37:50', '2018-09-20 09:37:50'),
(1858, 'RABO', 'Mohamadi', 'MASCULIN', '1998-07-22 00:00:00', NULL, NULL, NULL, NULL, '55 20 78 99', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:39:32', '2018-09-20 09:39:32'),
(1859, 'ROUAMBA', 'Abdoul Aziz', 'MASCULIN', '1998-02-04 00:00:00', NULL, NULL, NULL, NULL, '64490841', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:40:08', '2018-09-20 09:40:08'),
(1860, 'COMPAORE', 'Adama', 'MASCULIN', '1999-02-05 00:00:00', NULL, NULL, NULL, NULL, '61 49 81 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:41:04', '2018-09-20 09:41:04'),
(1861, 'BANDE', 'Oumarou', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '62452305', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:41:48', '2018-09-20 09:41:48'),
(1862, 'SANA', 'Moumouni', 'MASCULIN', '1997-08-21 00:00:00', NULL, NULL, NULL, NULL, '60 38 70 62', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:43:27', '2018-09-20 09:43:27'),
(1863, 'KORBEOGO', 'Yacouba', 'MASCULIN', '1999-04-26 00:00:00', NULL, NULL, NULL, NULL, '72 67 73 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:45:27', '2018-09-20 09:45:27'),
(1864, 'ILBOUDO', 'Zoubéré', 'MASCULIN', '2001-09-02 00:00:00', NULL, NULL, NULL, NULL, '67 37 04 80', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:47:33', '2018-09-20 09:47:33'),
(1865, 'ILBOUDO', 'Josiane Pulchérie', 'FEMININ', '1998-11-08 00:00:00', NULL, NULL, NULL, NULL, '76763837', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:48:10', '2018-09-20 09:48:10'),
(1866, 'SAWADOGO', 'Wend-Bénéma Yves Isidine', 'MASCULIN', '2000-07-21 00:00:00', NULL, NULL, NULL, NULL, '76 76 11 72', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:49:52', '2018-09-20 09:49:52'),
(1867, 'SANON', 'Hassimi', 'MASCULIN', '1999-08-20 00:00:00', NULL, NULL, NULL, NULL, '64 40 34 89', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:51:42', '2018-09-20 09:51:42'),
(1868, 'NABI', 'Oscar', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '67 39 34 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:53:16', '2018-09-20 09:53:16'),
(1869, 'DABO', 'Mohamed Bassir', 'MASCULIN', '1999-09-15 00:00:00', NULL, NULL, NULL, NULL, '61046637', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:54:53', '2018-09-20 09:54:53'),
(1870, 'ZONGO', 'Wendbénédo Neil Audy Regis', 'MASCULIN', '2000-07-13 00:00:00', NULL, NULL, NULL, NULL, '72 62 61 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:56:27', '2018-09-20 09:56:27'),
(1871, 'DJIGUEMDE', 'Valentine', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '66544940', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:56:38', '2018-09-20 09:56:38'),
(1872, 'ZAIDA', 'Moussa', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '62 01 87 47', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 09:58:01', '2018-09-20 09:58:01'),
(1873, 'BASSOLE', 'Charif Moussa', 'MASCULIN', '1999-06-07 00:00:00', NULL, NULL, NULL, NULL, '62984655', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 09:58:53', '2018-09-20 09:58:53'),
(1874, 'OUEDRAOGO', 'Mohamed Faysal', 'MASCULIN', '1997-01-13 00:00:00', NULL, NULL, NULL, NULL, '60 65 22 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 10:00:41', '2018-09-20 10:00:41'),
(1875, 'ONADJA', 'Polenli', 'FEMININ', '1998-01-01 00:00:00', NULL, NULL, NULL, NULL, '51574467', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:01:34', '2018-09-20 10:01:34'),
(1876, 'OUEDRAOGO', 'Mamounata', 'FEMININ', '1998-12-20 00:00:00', NULL, NULL, NULL, NULL, '70070499', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:04:12', '2018-09-20 10:04:12'),
(1877, 'SARE', 'Fatoumata', 'FEMININ', '1996-02-07 00:00:00', NULL, NULL, NULL, NULL, '66328157', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:05:45', '2018-09-20 10:05:45'),
(1878, 'SANE', 'Cheick Abdoul Kader', 'MASCULIN', '1999-12-02 00:00:00', NULL, NULL, NULL, NULL, '60 10 96 86', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 10:06:13', '2018-09-20 10:06:13'),
(1879, 'LOUGUE', 'Nicolas', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 64 16 20', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 10:08:28', '2018-09-20 10:08:28'),
(1880, 'BADINI', 'Rasmané', 'MASCULIN', '1999-01-16 00:00:00', NULL, NULL, NULL, NULL, '60669548', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:09:10', '2018-09-20 10:09:10'),
(1881, 'ILBOUDO', 'Peegdwendé Landry', 'MASCULIN', '1999-08-25 00:00:00', NULL, NULL, NULL, NULL, '65223735', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:11:41', '2018-09-20 10:11:41'),
(1882, 'FORO', 'Jean Marc', 'MASCULIN', '1998-10-21 00:00:00', NULL, NULL, NULL, NULL, '71657189', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:13:03', '2018-09-20 10:13:03'),
(1883, 'KABORE', 'Salif', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '70606532', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:14:03', '2018-09-20 10:14:03'),
(1884, 'KOMBASSERE', 'Romuald', 'MASCULIN', '1998-10-31 00:00:00', NULL, NULL, NULL, NULL, '75578411', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:15:25', '2018-09-20 10:15:25'),
(1885, 'TOUGRI', 'Mohamadi Bassirou', 'MASCULIN', '2000-11-02 00:00:00', NULL, NULL, NULL, NULL, '71405536', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:15:43', '2018-09-20 10:15:43'),
(1886, 'KABORE', 'Delwendé Nadine Anestine', 'FEMININ', '2000-01-14 00:00:00', NULL, NULL, NULL, NULL, '70147377', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:17:37', '2018-09-20 10:17:37'),
(1887, 'SAWADOGO', 'Sayouba', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '70726013', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:19:15', '2018-09-20 10:19:15'),
(1888, 'YAMBA', 'Abdoul Néhémi dit Moussa', 'MASCULIN', '1999-10-15 00:00:00', NULL, NULL, NULL, NULL, '70 72 82 12', NULL, '15/10/1999', 'aouangraoua', 'aouangraoua', '2018-09-20 10:19:27', '2018-09-20 10:19:27'),
(1889, 'COMPAORE', 'Thomas', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70391028', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:20:44', '2018-09-20 10:20:44'),
(1890, 'BOURGOU', 'Vincent', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '75778764', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:22:20', '2018-09-20 10:22:20'),
(1891, 'NIKIEMA', 'Guy Arthur', 'MASCULIN', '1999-01-01 00:00:00', NULL, NULL, NULL, NULL, '62 63 44 28', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 10:22:25', '2018-09-20 10:22:25'),
(1892, 'KOUSSOUBE', 'Camille Lanfo', 'MASCULIN', '1999-07-04 00:00:00', NULL, NULL, NULL, NULL, '55071103', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:22:41', '2018-09-20 10:22:41'),
(1893, 'SANKARA', 'Ouendteebnoma Chadrac', 'MASCULIN', '1999-10-27 00:00:00', NULL, NULL, NULL, NULL, '78635410', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:24:59', '2018-09-20 10:24:59'),
(1894, 'BAMA', 'Yignès Justin', 'MASCULIN', '1997-03-12 00:00:00', NULL, NULL, NULL, NULL, '62521189', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:25:32', '2018-09-20 10:25:32'),
(1895, 'BAMOGO', 'Yasmine', 'FEMININ', '1999-09-21 00:00:00', NULL, NULL, NULL, NULL, '70210509', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:26:48', '2018-09-20 10:26:48'),
(1896, 'KORGO', 'Rasmané', 'MASCULIN', '1996-06-29 00:00:00', NULL, NULL, NULL, NULL, '72143030', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:28:30', '2018-09-20 10:28:30'),
(1897, 'DAGNOGO', 'Bagnoumana', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '64322448', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:29:32', '2018-09-20 10:29:32'),
(1898, 'POUYA', 'Sammuel Paméla', 'MASCULIN', '1998-11-01 00:00:00', NULL, NULL, NULL, NULL, '70132397', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:30:34', '2018-09-20 10:30:34'),
(1899, 'GUEMBRE', 'Kader Moussa', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '74627764', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:31:43', '2018-09-20 10:31:43'),
(1900, 'TRAORE', 'Nata Kassoum', 'MASCULIN', '1997-09-27 00:00:00', NULL, NULL, NULL, NULL, '73021415', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:33:35', '2018-09-20 10:33:35'),
(1901, 'POUYA', 'Patinda Barnabé', 'MASCULIN', '1998-10-17 00:00:00', NULL, NULL, NULL, NULL, '71172582', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 10:33:49', '2018-09-20 10:33:49'),
(1902, 'AJAVON', 'Carine Akuélé 1ère Jumelle', 'FEMININ', '1999-11-07 00:00:00', NULL, NULL, NULL, NULL, '55 25 40 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 10:34:24', '2018-09-20 10:34:24'),
(1903, 'YAMEOGO', 'Ryhanata', 'FEMININ', '1999-08-10 00:00:00', NULL, NULL, NULL, NULL, '77783188', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:36:08', '2018-09-20 10:36:08'),
(1904, 'TRAORE', 'Siaka', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '77566144', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:37:51', '2018-09-20 10:37:51'),
(1905, 'KOAMA', 'Victor', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '64472696', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:42:04', '2018-09-20 10:42:04'),
(1906, 'MISSARE', 'Faosia', 'FEMININ', '2000-04-02 00:00:00', NULL, NULL, NULL, NULL, '62471632', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:45:47', '2018-09-20 10:45:47'),
(1907, 'SAKANDE', 'Rokya Marie', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '60633927', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:48:31', '2018-09-20 10:48:31'),
(1908, 'SOMBIE', 'Amadou', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '64169936', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:50:43', '2018-09-20 10:50:43'),
(1909, 'OUATTARA', 'Djénéba', 'FEMININ', '1999-06-22 00:00:00', NULL, NULL, NULL, NULL, '61059301', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:52:56', '2018-09-20 10:52:56'),
(1910, 'TIENTEGA', 'Goombasga Donald Aymard', 'MASCULIN', '2000-05-10 00:00:00', NULL, NULL, NULL, NULL, '61 22 02 54', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 10:54:41', '2018-09-20 10:54:41'),
(1911, 'OUATTARA', 'Siaka', 'MASCULIN', '1999-04-26 00:00:00', NULL, NULL, NULL, NULL, '72 00 56 11', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 10:56:18', '2018-09-20 10:56:18'),
(1912, 'SOULAM', 'N\'Fâ Kamon Adama', 'MASCULIN', '1998-12-14 00:00:00', NULL, NULL, NULL, NULL, '61071161', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:57:07', '2018-09-20 10:57:07'),
(1913, 'KABORE', 'Jerusha Téné Zinesida', 'FEMININ', '1999-11-01 00:00:00', NULL, NULL, NULL, NULL, '70 75 38 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 10:58:56', '2018-09-20 10:58:56'),
(1914, 'SOMTORE', 'Palingwendé Irène Raïssa', 'MASCULIN', '2000-06-10 00:00:00', NULL, NULL, NULL, NULL, '63825775', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 10:59:56', '2018-09-20 10:59:56'),
(1915, 'KABORE', 'Cheick Omar', 'MASCULIN', '1997-12-23 00:00:00', NULL, NULL, NULL, NULL, '0', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:02:43', '2018-09-20 11:02:43'),
(1916, 'YAMEOGO', 'Lucky Hendrix', 'MASCULIN', '1998-03-05 00:00:00', NULL, NULL, NULL, NULL, '70450826', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:04:45', '2018-09-20 11:04:45'),
(1917, 'KANE', 'Iliassa', 'MASCULIN', '2001-11-02 00:00:00', NULL, NULL, NULL, NULL, '54 26 10 70', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:05:38', '2018-09-20 11:05:38'),
(1918, 'LEZOGO', 'Ismaël Aristide Pingdwendé', 'MASCULIN', '1998-07-11 00:00:00', NULL, NULL, NULL, NULL, '77455303', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 11:06:09', '2018-09-20 11:06:09'),
(1919, 'PARE', 'Mélanie Karoll', 'FEMININ', '2000-11-20 00:00:00', NULL, NULL, NULL, NULL, '62508870', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:07:08', '2018-09-20 11:07:08'),
(1920, 'KIENTEGA', 'Adama', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 20 80 75', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:07:13', '2018-09-20 11:07:13'),
(1921, 'BOLOGO', 'Asseta Alice Wendkuni', 'FEMININ', '2000-10-01 00:00:00', NULL, NULL, NULL, NULL, '51432316', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 11:08:12', '2018-09-20 11:08:12'),
(1922, 'YAMEOGO', 'Guillaume', 'MASCULIN', '1997-01-08 00:00:00', NULL, NULL, NULL, NULL, '60896015', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:08:48', '2018-09-20 11:08:48'),
(1923, 'OUEDRAOGO', 'Réné', 'MASCULIN', '1997-10-22 00:00:00', NULL, NULL, NULL, NULL, '55 12 34 26', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:08:50', '2018-09-20 11:08:50'),
(1924, 'TAO', 'Kadiguéta', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '52504980', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:11:09', '2018-09-20 11:11:09'),
(1925, 'KABORE', 'Sacquinatou Asmao 2ème Jumelle', 'FEMININ', '1999-06-06 00:00:00', NULL, NULL, NULL, NULL, '70 12 09 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:11:54', '2018-09-20 11:11:54'),
(1926, 'TRAORE', 'Dia Haoua', 'FEMININ', '1998-02-05 00:00:00', NULL, NULL, NULL, NULL, '70 29 98 47', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:13:28', '2018-09-20 11:13:28'),
(1927, 'NANA', 'Wendpouiré Julien Florantin', 'MASCULIN', '1999-04-12 00:00:00', NULL, NULL, NULL, NULL, '72100606', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:13:56', '2018-09-20 11:13:56'),
(1928, 'KABORE', 'Ousséni', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '77 34 12 68', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:14:53', '2018-09-20 11:14:53'),
(1929, 'GUENE', 'Nasserou', 'MASCULIN', '1999-06-13 00:00:00', NULL, NULL, NULL, NULL, '75 21 12 63', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:16:53', '2018-09-20 11:16:53'),
(1930, 'OUOBA', 'Sita', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '67 71 64 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:18:23', '2018-09-20 11:18:23'),
(1931, 'SAVADOGO', 'Abdoul Fatao', 'MASCULIN', '1998-05-07 00:00:00', NULL, NULL, NULL, NULL, '64 04 61 93', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:21:09', '2018-09-20 11:21:09'),
(1932, 'OUEDRAOGO', 'Emmanuel', 'MASCULIN', '1997-10-25 00:00:00', NULL, NULL, NULL, NULL, '63 05 29 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:23:23', '2018-09-20 11:23:23'),
(1933, 'DOUROUDJAYE', 'Daouda Alade', 'MASCULIN', '1997-11-11 00:00:00', NULL, NULL, NULL, NULL, '70 64 67 01', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:25:13', '2018-09-20 11:25:13'),
(1934, 'OUEDRAOGO', 'Relwendé Sbastien Idrissa', 'MASCULIN', '1999-11-04 00:00:00', NULL, NULL, NULL, NULL, '65 96 20 89', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:26:56', '2018-09-20 11:26:56'),
(1935, 'TRAORE', 'Awa', 'FEMININ', '1998-11-24 00:00:00', NULL, NULL, NULL, NULL, '75856243', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:27:00', '2018-09-20 11:27:00'),
(1936, 'YABRE', 'Thomas', 'MASCULIN', '1999-12-10 00:00:00', NULL, NULL, NULL, NULL, '74 48 86 42', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:29:13', '2018-09-20 11:29:13'),
(1937, 'SAWADOGO', 'Philippe', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 89 86 55', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:30:49', '2018-09-20 11:30:49'),
(1938, 'YERBANGA', 'Guetemanegda Thomas', 'MASCULIN', '1998-04-06 00:00:00', NULL, NULL, NULL, NULL, '62 18 49 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:32:33', '2018-09-20 11:32:33'),
(1939, 'COULIBALY', 'Harouna', 'MASCULIN', '1996-08-05 00:00:00', NULL, NULL, NULL, NULL, '67767899', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:33:27', '2018-09-20 11:33:27'),
(1940, 'SEOGO', 'Patrice', 'MASCULIN', '1998-12-12 00:00:00', NULL, NULL, NULL, NULL, '63 77 07 25', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:34:20', '2018-09-20 11:34:20'),
(1941, 'TRAORE', 'Sié Mohamed Ben Sériba', 'MASCULIN', '2000-03-13 00:00:00', NULL, NULL, NULL, NULL, '65203666', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:35:24', '2018-09-20 11:35:24'),
(1942, 'SERE', 'Ahmed Aristide', 'MASCULIN', '2000-05-23 00:00:00', NULL, NULL, NULL, NULL, '71 28 45 11', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:36:00', '2018-09-20 11:36:00'),
(1943, 'MAIGA', 'Ousmane', 'MASCULIN', '1999-02-24 00:00:00', NULL, NULL, NULL, NULL, '62 57 13 07', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:39:33', '2018-09-20 11:39:33'),
(1944, 'DOMBOUE', 'Dofinibè dit Casimir', 'MASCULIN', '1996-09-09 00:00:00', NULL, NULL, NULL, NULL, '65292283', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:41:46', '2018-09-20 11:41:46'),
(1945, 'KABORE', 'Kiswendsida Romaric', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72  19 12 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:42:25', '2018-09-20 11:42:25'),
(1946, 'BARRO', 'Adiara', 'FEMININ', '1997-06-04 00:00:00', NULL, NULL, NULL, NULL, '63441230', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:43:44', '2018-09-20 11:43:44'),
(1947, 'OUEDRAOGO', 'Naafissatou', 'FEMININ', '1998-11-27 02:00:00', NULL, NULL, NULL, NULL, '70 24 56 08', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 11:44:24', '2018-09-20 11:44:24'),
(1948, 'TRAORE', 'Londjédé Aminata', 'FEMININ', '1998-11-21 00:00:00', NULL, NULL, NULL, NULL, '71632542', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:46:13', '2018-09-20 11:46:13'),
(1949, 'GUINDEGA', 'Noé', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '73 41 21 19', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:47:21', '2018-09-20 11:47:21'),
(1950, 'YAMEOGO', 'Baowendnéré Michaël', 'MASCULIN', '1997-10-26 00:00:00', NULL, NULL, NULL, NULL, '62 76 37 45', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:49:54', '2018-09-20 11:49:54'),
(1951, 'HEMA', 'Nombié Mohamed', 'MASCULIN', '1997-12-15 00:00:00', NULL, NULL, NULL, NULL, '75776819', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:50:57', '2018-09-20 11:50:57'),
(1952, 'O', 'Boureima', 'MASCULIN', '1997-08-11 02:00:00', NULL, NULL, NULL, NULL, '78 07 15 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 11:52:32', '2018-09-20 11:52:32'),
(1953, 'IDO', 'Awomon Nemoyou Laeticia Angela', 'FEMININ', '1999-11-14 00:00:00', NULL, NULL, NULL, NULL, '70 43 71 27', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:53:05', '2018-09-20 11:53:05'),
(1954, 'SOULAMA', 'Salimata', 'FEMININ', '1998-02-06 00:00:00', NULL, NULL, NULL, NULL, '70747312', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:53:24', '2018-09-20 11:53:24'),
(1955, 'DIABATE', 'Raïs Moustapha Abdou Nassir', 'MASCULIN', '2000-06-01 00:00:00', NULL, NULL, NULL, NULL, '66 43 77 67', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:55:28', '2018-09-20 11:55:28'),
(1956, 'SERE', 'Mariam', 'FEMININ', '1999-06-21 00:00:00', NULL, NULL, NULL, NULL, '60028311', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 11:57:46', '2018-09-20 11:57:46'),
(1957, 'OUATTARA', 'Rachidatou Germaine Verdiane', 'FEMININ', '2001-10-11 00:00:00', NULL, NULL, NULL, NULL, '70 74 87 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 11:58:13', '2018-09-20 11:58:13'),
(1958, 'NANA', 'Wendinkonté Salmon', 'MASCULIN', '1999-02-27 00:00:00', NULL, NULL, NULL, NULL, '71 93 33 55', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:00:23', '2018-09-20 12:00:23'),
(1959, 'TRAORE', 'Tchikou Lidy Kletien', 'FEMININ', '1998-11-12 00:00:00', NULL, NULL, NULL, NULL, '61310015', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:01:03', '2018-09-20 12:01:03'),
(1960, 'MEDAH', 'Frédéric', 'MASCULIN', '1998-02-10 00:00:00', NULL, NULL, NULL, NULL, '75957368', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:03:40', '2018-09-20 12:03:40'),
(1961, 'SALAMBERE', 'Safiatou', 'FEMININ', '1999-06-16 00:00:00', NULL, NULL, NULL, NULL, '73735139', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:06:15', '2018-09-20 12:06:15'),
(1962, 'OUEDRAOGO', 'Mariette', 'FEMININ', '1999-05-14 00:00:00', NULL, NULL, NULL, NULL, '73 09 06 80', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:07:05', '2018-09-20 12:07:05'),
(1963, 'BAMBARA', 'Amadine', 'FEMININ', '2000-10-15 00:00:00', NULL, NULL, NULL, NULL, '71056778', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:08:55', '2018-09-20 12:08:55'),
(1964, 'BASSOLE', 'Iréné Cyrille Benjamin', 'MASCULIN', '2000-03-18 00:00:00', NULL, NULL, NULL, NULL, '71 57 54 31', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:08:55', '2018-09-20 12:08:55'),
(1965, 'OUEDRAOGO', 'Abdoul Aziz', 'MASCULIN', '1999-07-05 00:00:00', NULL, NULL, NULL, NULL, '70703740', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:11:21', '2018-09-20 12:11:21'),
(1966, 'OUEDRAOGO', 'Lamine', 'MASCULIN', '1998-02-10 00:00:00', NULL, NULL, NULL, NULL, '65 66 13 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:14:47', '2018-09-20 12:14:47'),
(1967, 'BOUNTOULGOU', 'Stéphane', 'MASCULIN', '1999-04-28 00:00:00', NULL, NULL, NULL, NULL, '71453842', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:16:12', '2018-09-20 12:16:12'),
(1968, 'SARRE', 'Marie Eudoxe', 'MASCULIN', '1999-09-27 00:00:00', NULL, NULL, NULL, NULL, '70695453', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:18:45', '2018-09-20 12:18:45'),
(1969, 'KOANDA', 'Abdoul Aziz', 'MASCULIN', '1998-11-20 00:00:00', NULL, NULL, NULL, NULL, '73 92 39 92', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:20:10', '2018-09-20 12:20:10'),
(1970, 'BOUGMA', 'Sougr-Noma Honoré', 'MASCULIN', '1998-05-16 00:00:00', NULL, NULL, NULL, NULL, '79374471', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:21:21', '2018-09-20 12:21:21'),
(1971, 'OUOBA', 'Berydaughter', 'FEMININ', '2000-09-23 00:00:00', NULL, NULL, NULL, NULL, '72529281', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:23:29', '2018-09-20 12:23:29'),
(1972, 'KAFANDO', 'Adama', 'MASCULIN', '2001-12-20 00:00:00', NULL, NULL, NULL, NULL, '70 06 91 40', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:23:40', '2018-09-20 12:23:40'),
(1973, 'BABINE', 'Evariste Jean Rodolphe Yidia', 'MASCULIN', '2000-06-11 00:00:00', NULL, NULL, NULL, NULL, '61 69 98 76', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:26:11', '2018-09-20 12:26:11'),
(1974, 'OUOBA', 'Wendpègda Reine Nadège', 'FEMININ', '1997-05-22 00:00:00', NULL, NULL, NULL, NULL, '70775916', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:26:16', '2018-09-20 12:26:16'),
(1975, 'TIENDREBEOGO', 'Stéphane Wendinso', 'MASCULIN', '1999-11-12 00:00:00', NULL, NULL, NULL, NULL, '73 43 29 41', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:27:58', '2018-09-20 12:27:58'),
(1976, 'NABI', 'Hermione Sandrine Wendyam', 'FEMININ', '2000-04-02 00:00:00', NULL, NULL, NULL, NULL, '73535707', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:30:55', '2018-09-20 12:30:55'),
(1977, 'OUEDRAOGO', 'Wendmalegré Ina Djamilatou', 'FEMININ', '1999-04-17 00:00:00', NULL, NULL, NULL, NULL, '55383438', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:33:20', '2018-09-20 12:33:20'),
(1978, 'SANFO', 'Mohamed', 'MASCULIN', '1999-02-05 00:00:00', NULL, NULL, NULL, NULL, '52 00 32 36', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:34:50', '2018-09-20 12:34:50'),
(1979, 'OUOBA', 'Yalhana Reine Aude Grace', 'FEMININ', '1998-11-19 00:00:00', NULL, NULL, NULL, NULL, '65949004', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:35:36', '2018-09-20 12:35:36'),
(1980, 'NIKIEMA', 'Wendinmi Nadège', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '65 36 72 48', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:37:14', '2018-09-20 12:37:14'),
(1981, 'HIEN', 'Hibal Hilary Jessica Leticia', 'FEMININ', '1999-03-13 00:00:00', NULL, NULL, NULL, NULL, '0', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:38:17', '2018-09-20 12:38:17'),
(1982, 'SANOGO', 'Moussa Steve Belvin', 'MASCULIN', '2000-03-13 00:00:00', NULL, NULL, NULL, NULL, '71 99 45 04', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:39:00', '2018-09-20 12:39:00'),
(1983, 'BADOLO', 'Wilfried Check Amed', 'MASCULIN', '2000-02-05 00:00:00', NULL, NULL, NULL, NULL, '70079684', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:40:12', '2018-09-20 12:40:12'),
(1984, 'KOALA', 'Pingdwendé', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '61 11 17 00', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:40:38', '2018-09-20 12:40:38'),
(1985, 'TRAORE', 'Gnanggnéré Cécile Aïchata', 'FEMININ', '2000-11-29 00:00:00', NULL, NULL, NULL, NULL, '65117968', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:42:29', '2018-09-20 12:42:29'),
(1986, 'BALMA', 'Timgnoma Cédric Paterne', 'MASCULIN', '2000-09-19 00:00:00', NULL, NULL, NULL, NULL, '70318423', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:44:47', '2018-09-20 12:44:47'),
(1987, 'OUEDRAOGO', 'Balkiss', 'FEMININ', '2000-06-13 00:00:00', NULL, NULL, NULL, NULL, '70 36 59 87', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:45:44', '2018-09-20 12:45:44'),
(1988, 'DERME', 'Samiiha', 'FEMININ', '1999-09-07 00:00:00', NULL, NULL, NULL, NULL, '71123712', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:46:41', '2018-09-20 12:46:41'),
(1989, 'SAOURA', 'Wendégoudi Edmond', 'MASCULIN', '1996-11-20 00:00:00', NULL, NULL, NULL, NULL, '62 48 33 63', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 12:48:40', '2018-09-20 12:48:40'),
(1990, 'SOSSO', 'Iliassa Lètala', 'MASCULIN', '1999-09-14 00:00:00', NULL, NULL, NULL, NULL, '63898506', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:49:04', '2018-09-20 12:49:04'),
(1991, 'YELEMOU', 'Hénoc Joél Diatoma', 'MASCULIN', '2001-01-12 00:00:00', NULL, NULL, NULL, NULL, '60189938', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:51:34', '2018-09-20 12:51:34'),
(1992, 'ROUAMBA', 'Cinthia Débora Wendkouni', 'FEMININ', '1999-05-17 00:00:00', NULL, NULL, NULL, NULL, '70560968', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:53:29', '2018-09-20 12:53:29'),
(1993, 'BONKOUNGOU', 'Pegdwendé Oumaïdatout', 'FEMININ', '1999-12-11 00:00:00', NULL, NULL, NULL, NULL, '64336695', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:55:28', '2018-09-20 12:55:28'),
(1994, 'SANGA', 'Saïdatou', 'FEMININ', '1999-05-27 00:00:00', NULL, NULL, NULL, NULL, '70153365', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:57:21', '2018-09-20 12:57:21'),
(1995, 'ZOMODO', 'Aboubacar', 'MASCULIN', '2000-07-23 00:00:00', NULL, NULL, NULL, NULL, '55387231', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 12:59:14', '2018-09-20 12:59:14'),
(1996, 'BAKO', 'Gaston', 'MASCULIN', '1997-02-07 00:00:00', NULL, NULL, NULL, NULL, '77058874', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 13:00:57', '2018-09-20 13:00:57'),
(1997, 'GOROGO', 'Arnaud Donald Goudouma', 'MASCULIN', '1999-09-22 00:00:00', NULL, NULL, NULL, NULL, '57 09 47 11', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 13:14:54', '2018-09-20 13:14:54'),
(1998, 'BONKOUNGOU', 'Thiry', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 21 16 85', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 13:16:31', '2018-09-20 13:16:31'),
(1999, 'TRAORE', 'Daryl Wendpanga Yoromi El Rachid Steeven', 'MASCULIN', '2001-11-07 00:00:00', NULL, NULL, NULL, NULL, '71 72 37 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 13:19:04', '2018-09-20 13:19:04'),
(2000, 'ALKADRY', 'Jasminatou', 'FEMININ', '1999-11-08 02:00:00', NULL, NULL, NULL, NULL, '62 19 59 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 13:20:51', '2018-09-20 13:20:51'),
(2001, 'SORE', 'Azize', 'MASCULIN', '1996-12-22 00:00:00', NULL, NULL, NULL, NULL, '56 11 02 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 13:21:02', '2018-09-20 13:21:02'),
(2002, 'TANKOANO', 'Talardia Léonce Romaric', 'MASCULIN', '1999-06-22 00:00:00', NULL, NULL, NULL, NULL, '72 61 68 89', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 13:23:36', '2018-09-20 13:23:36'),
(2003, 'SOMA', 'Madjahaye', 'MASCULIN', '1997-11-29 02:00:00', NULL, NULL, NULL, NULL, '68 99 09 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 13:23:56', '2018-09-20 13:23:56'),
(2004, 'OUOBA', 'Palamanga Bienvenu Gaël', 'MASCULIN', '1999-01-22 00:00:00', NULL, NULL, NULL, NULL, '51722081', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 13:30:58', '2018-09-20 13:30:58'),
(2005, 'ZONGO', 'Yebessan Abdel Aziz Ben Idrissa', 'MASCULIN', '1998-05-10 00:00:00', NULL, NULL, NULL, NULL, '70110302', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 13:33:02', '2018-09-20 13:33:02'),
(2006, 'OUEDRAOGO', 'Tiga Solenge', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '51110780', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 13:36:35', '2018-09-20 13:36:35'),
(2007, 'KASSAMBA', 'Amed Diaby', 'MASCULIN', '1996-06-16 00:00:00', NULL, NULL, NULL, NULL, '51223631', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 13:38:19', '2018-09-20 13:38:19'),
(2008, 'TIENDREBEOGO', 'Odile', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '77928890', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 13:39:57', '2018-09-20 13:39:57'),
(2009, 'OUEDRAOGO', 'Bénéba Aimée Sharon', 'FEMININ', '1997-12-17 00:00:00', NULL, NULL, NULL, NULL, '61643428', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 13:41:56', '2018-09-20 13:41:56'),
(2010, 'ZERBO', 'Awa', 'FEMININ', '2000-09-28 00:00:00', NULL, NULL, NULL, NULL, '52097543', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 13:44:08', '2018-09-20 13:44:08'),
(2011, 'YAMEOGO', 'Oumoule Fadyle Vanessa', 'FEMININ', '2000-10-23 00:00:00', NULL, NULL, NULL, NULL, '71252798', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 13:47:15', '2018-09-20 13:47:15'),
(2012, 'COMPAORE', 'Omar', 'MASCULIN', '1997-10-19 00:00:00', NULL, NULL, NULL, NULL, '71 56 36 23', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 14:13:23', '2018-09-20 14:13:23'),
(2013, 'OUEDRAOGO', 'Mamadou', 'MASCULIN', '1996-06-12 00:00:00', NULL, NULL, NULL, NULL, '77 26 95 19', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 14:26:04', '2018-09-20 14:26:04'),
(2014, 'COMPAORE', 'Bengwendé Urbain', 'MASCULIN', '1996-12-16 00:00:00', NULL, NULL, NULL, NULL, '72182112', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 14:35:39', '2018-09-20 14:35:39'),
(2015, 'NIGNAN', 'Zaïna Dorcasse', 'FEMININ', '2000-09-24 02:00:00', NULL, NULL, NULL, NULL, '70 26 70 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 14:36:24', '2018-09-20 14:36:24'),
(2016, 'GAMA', 'Désiré', 'MASCULIN', '1998-05-10 00:00:00', NULL, NULL, NULL, NULL, '70536140', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 14:37:49', '2018-09-20 14:37:49'),
(2017, 'KOTE', 'Zakaria', 'MASCULIN', '1996-09-18 00:00:00', NULL, NULL, NULL, NULL, '67515909', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 14:39:54', '2018-09-20 14:39:54'),
(2018, 'YAMEOGO', 'Abdoul Razak', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '77782721', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 14:41:44', '2018-09-20 14:41:44'),
(2019, 'SANOU', 'Alfred stanislas', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '67130880', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 14:43:27', '2018-09-20 14:43:27'),
(2020, 'TRAORE', 'Lassina', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '75 23 18 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 14:45:28', '2018-09-20 14:45:28'),
(2021, 'SAWADOGO', 'Thomas', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '77655841', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 14:45:44', '2018-09-20 14:45:44'),
(2022, 'OUEDRAOGO', 'Abdoulaye', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '71744545', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 14:47:19', '2018-09-20 14:47:19'),
(2023, 'SEGDA', 'Latifatou', 'FEMININ', '1999-11-04 02:00:00', NULL, NULL, NULL, NULL, '70 24 51 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 14:48:00', '2018-09-20 14:48:00'),
(2024, 'OUEDRAOGO', 'Yabraogo Oumar', 'MASCULIN', '1999-10-17 00:00:00', NULL, NULL, NULL, NULL, '73068715', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 14:49:12', '2018-09-20 14:49:12'),
(2025, 'COMPAORE', 'Baowendwaogré', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '75745504', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 14:51:48', '2018-09-20 14:51:48'),
(2026, 'KASSIA', 'Aboubacar', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '71259154', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:03:28', '2018-09-20 15:03:28'),
(2027, 'TOUGMA', 'Gérard', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '57205519', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:06:40', '2018-09-20 15:06:40'),
(2028, 'KONE', 'Ismaël Cédric', 'MASCULIN', '1996-12-17 00:00:00', NULL, NULL, NULL, NULL, '60859496', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:10:21', '2018-09-20 15:10:21'),
(2029, 'TRAORE', 'Moussa', 'MASCULIN', '1998-08-16 00:00:00', NULL, NULL, NULL, NULL, '72393536', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:12:24', '2018-09-20 15:12:24'),
(2030, 'YALA', 'Moustapha', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 80 83 30', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:12:46', '2018-09-20 15:12:46'),
(2031, 'LOMPO', 'Emmanuel', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '52 79 88 10', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:14:26', '2018-09-20 15:14:26'),
(2032, 'TAOKO', 'Abdoul-Ramane', 'MASCULIN', '1997-04-20 00:00:00', NULL, NULL, NULL, NULL, '79 94 62 65', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:14:36', '2018-09-20 15:14:36'),
(2033, 'BOLY', 'Fatoumata', 'FEMININ', '1997-02-10 00:00:00', NULL, NULL, NULL, NULL, '72007606', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:14:53', '2018-09-20 15:14:53'),
(2034, 'SAWADOGO', 'Alimata', 'FEMININ', '1998-10-26 02:00:00', NULL, NULL, NULL, NULL, '70 04 55 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:16:09', '2018-09-20 15:16:09'),
(2035, 'KOLA', 'Rayiimwendé David', 'MASCULIN', '1996-10-15 00:00:00', NULL, NULL, NULL, NULL, '73 30 17 44', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:16:44', '2018-09-20 15:16:44'),
(2036, 'SAVADOGO', 'Zalissa', 'FEMININ', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '63086504', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:17:24', '2018-09-20 15:17:24'),
(2037, 'TAPSOBA', 'Inès', 'FEMININ', '1998-08-13 00:00:00', NULL, NULL, NULL, NULL, '13/08/1998', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:18:29', '2018-09-20 15:18:29'),
(2038, 'NAGANDA', 'Olivia Déborah', 'FEMININ', '2000-06-26 02:00:00', NULL, NULL, NULL, NULL, '70 24 63 31', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:18:32', '2018-09-20 15:18:32'),
(2039, 'SEDEDO', 'Namèmrogo Yacouba', 'MASCULIN', '1996-06-11 00:00:00', NULL, NULL, NULL, NULL, '74 57 66 04', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:20:41', '2018-09-20 15:20:41'),
(2040, 'TRAORE', 'Noëlla Louis Dayanewendé Eunice', 'FEMININ', '1998-11-19 02:00:00', NULL, NULL, NULL, NULL, '70 70 33 95', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:21:19', '2018-09-20 15:21:19'),
(2041, 'TINDANO', 'Manipougsiba', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '72258650', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:22:42', '2018-09-20 15:22:42'),
(2042, 'KAMA', 'Kollé Joseph', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '65 55 15 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:22:58', '2018-09-20 15:22:58'),
(2043, 'OUEDRAOGO', 'Wendkouni Davy Gaël', 'MASCULIN', '1999-08-14 00:00:00', NULL, NULL, NULL, NULL, '71 03 01 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:23:13', '2018-09-20 15:23:13'),
(2044, 'ILLY', 'Silvain', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 56 07 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:24:45', '2018-09-20 15:24:45'),
(2045, 'COMPAORE', 'Mahamoudou', 'MASCULIN', '1998-01-13 00:00:00', NULL, NULL, NULL, NULL, '61 85 23 29', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:25:01', '2018-09-20 15:25:01'),
(2046, 'OUEDRAOGO', 'Anane Djemina', 'FEMININ', '1998-09-17 00:00:00', NULL, NULL, NULL, NULL, '73270327', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:25:04', '2018-09-20 15:25:04'),
(2047, 'LANKOANDE', 'Abdoul-Karim', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '63 04 70 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:26:40', '2018-09-20 15:26:40'),
(2048, 'MEDA', 'Bèzèba Clovis Louis Igor', 'MASCULIN', '1998-05-25 00:00:00', NULL, NULL, NULL, NULL, '70 77 32 53', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:27:17', '2018-09-20 15:27:17'),
(2049, 'TRAORE', 'Soma', 'MASCULIN', '1998-03-08 00:00:00', NULL, NULL, NULL, NULL, '51144616', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:27:28', '2018-09-20 15:27:28'),
(2050, 'KONGO', 'Nadège', 'FEMININ', '1999-07-08 02:00:00', NULL, NULL, NULL, NULL, '72 97 75 15', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:28:51', '2018-09-20 15:28:51'),
(2051, 'SAWADOGO', 'Kibsa Bénoît', 'MASCULIN', '1997-04-17 00:00:00', NULL, NULL, NULL, NULL, '62284117', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:29:48', '2018-09-20 15:29:48'),
(2052, 'NACOULMA', 'Delwendé Pierre Wilfried', 'MASCULIN', '1998-08-11 00:00:00', NULL, NULL, NULL, NULL, '51 47 58 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:31:12', '2018-09-20 15:31:12'),
(2053, 'DABIRE', 'Nanwinfor Laetitia Murielle', 'FEMININ', '1999-05-28 02:00:00', NULL, NULL, NULL, NULL, '70 09 91 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:31:48', '2018-09-20 15:31:48'),
(2054, 'SANDWIDI', 'Ziwendtaoré Michaël', 'MASCULIN', '1997-08-31 00:00:00', NULL, NULL, NULL, NULL, '74899765', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:32:46', '2018-09-20 15:32:46'),
(2055, 'DOAMBA', 'Wendso Régis', 'MASCULIN', '1998-06-25 00:00:00', NULL, NULL, NULL, NULL, '74 00 52 60', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:33:49', '2018-09-20 15:33:49'),
(2056, 'SAWADOGO', 'Ardjouma Théophile', 'MASCULIN', '1997-12-28 00:00:00', NULL, NULL, NULL, NULL, '72301751', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:34:52', '2018-09-20 15:34:52'),
(2057, 'BAGRE', 'Woubi Samuel', 'MASCULIN', '1997-07-26 02:00:00', NULL, NULL, NULL, NULL, '55 31 12 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:35:37', '2018-09-20 15:35:37'),
(2058, 'SAWADOGO', 'Wend-kuuni Boris Jean Arnard', 'MASCULIN', '1997-11-14 00:00:00', NULL, NULL, NULL, NULL, '60 29 15 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:35:58', '2018-09-20 15:35:58'),
(2059, 'SANDWIDI', 'Rihanata Flore', 'FEMININ', '1998-08-17 00:00:00', NULL, NULL, NULL, NULL, '73276480', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:36:58', '2018-09-20 15:36:58'),
(2060, 'COMPAORE', 'Tasséré', 'MASCULIN', '1996-04-02 02:00:00', NULL, NULL, NULL, NULL, '66 91 63 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:37:20', '2018-09-20 15:37:20'),
(2061, 'SANFO', 'Mahamadi', 'MASCULIN', '1997-09-21 00:00:00', NULL, NULL, NULL, NULL, '73 94 15 94', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:37:54', '2018-09-20 15:37:54'),
(2062, 'OUEDRAOGO', 'Daouda', 'MASCULIN', '1999-09-15 00:00:00', NULL, NULL, NULL, NULL, '66618456', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:38:41', '2018-09-20 15:38:41'),
(2063, 'BANDRE', 'Emile', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 79 75 71', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:39:37', '2018-09-20 15:39:37'),
(2064, 'ZOETYANDE', 'Mohamed', 'MASCULIN', '1998-09-07 00:00:00', NULL, NULL, NULL, NULL, '71 25 97 54', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:39:56', '2018-09-20 15:39:56'),
(2065, 'TRAORE', 'Kadidja', 'FEMININ', '1998-01-03 00:00:00', NULL, NULL, NULL, NULL, '71803108', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:40:27', '2018-09-20 15:40:27'),
(2066, 'SOUBYABIGA', 'Yabyouré Thierry', 'MASCULIN', '1997-05-13 00:00:00', NULL, NULL, NULL, NULL, '70 42 15 26', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:42:09', '2018-09-20 15:42:09'),
(2067, 'ZANGRE', 'Wendpanga Barthélémy', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '75 06 82 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:42:57', '2018-09-20 15:42:57'),
(2068, 'SAWADOGO', 'Abzèta', 'FEMININ', '1998-08-10 00:00:00', NULL, NULL, NULL, NULL, '51993945', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:42:59', '2018-09-20 15:42:59'),
(2069, 'SANKARA', 'Zakaria', 'MASCULIN', '1999-03-16 00:00:00', NULL, NULL, NULL, NULL, '79 38 27 28', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:44:08', '2018-09-20 15:44:08'),
(2070, 'ZOUNDI', 'Wend-Yam Ariane', 'FEMININ', '1998-09-10 02:00:00', NULL, NULL, NULL, NULL, '78 34 47 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-20 15:45:30', '2018-09-20 15:45:30'),
(2071, 'OUEDRAOGO', 'Falilata', 'FEMININ', '1998-10-14 00:00:00', NULL, NULL, NULL, NULL, '62 15 33 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:45:52', '2018-09-20 15:45:52');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(2072, 'YAO', 'Safiatou', 'FEMININ', '2001-12-31 00:00:00', NULL, NULL, NULL, NULL, '67596837', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:45:58', '2018-09-20 15:45:58'),
(2073, 'ZONGO', 'Pawendtaoré Bertille Fernadez', 'MASCULIN', '1998-08-04 00:00:00', NULL, NULL, NULL, NULL, '63619951', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 15:47:38', '2018-09-20 15:47:38'),
(2074, 'ILBOUDO', 'Kiswendsida Dimitri Férol', 'MASCULIN', '1998-10-26 00:00:00', NULL, NULL, NULL, NULL, '61731735', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:48:15', '2018-09-20 15:48:15'),
(2075, 'SAWADOGO', 'Manegawenden Is-dine', 'MASCULIN', '1996-06-28 00:00:00', NULL, NULL, NULL, NULL, '76 02 80 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-20 15:48:46', '2018-09-20 15:48:46'),
(2076, 'ZOUNGRANA', 'Wendkuni Brice Yannick', 'MASCULIN', '2000-08-30 00:00:00', NULL, NULL, NULL, NULL, '66406228', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 15:50:11', '2018-09-20 15:50:11'),
(2077, 'ILBOUDO', 'Wendata Henriette', 'FEMININ', '1999-07-13 00:00:00', NULL, NULL, NULL, NULL, '71477912', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 15:52:02', '2018-09-20 15:52:02'),
(2078, 'SEONI', 'Zigho Abdoul Fataou', 'MASCULIN', '2000-02-09 00:00:00', NULL, NULL, NULL, NULL, '61273165', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:52:26', '2018-09-20 15:52:26'),
(2079, 'DIARRA', 'Abdoul Karim', 'MASCULIN', '1996-11-19 00:00:00', NULL, NULL, NULL, NULL, '73892885', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-20 15:53:42', '2018-09-20 15:53:42'),
(2080, 'ZIBA', 'Batiama Christophe', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '67001742', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:57:21', '2018-09-20 15:57:21'),
(2081, 'SOUOBOU', 'Azizi', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '78097993', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 15:59:45', '2018-09-20 15:59:45'),
(2082, 'SAWADOGO', 'Salimata', 'FEMININ', '1999-06-23 00:00:00', NULL, NULL, NULL, NULL, '62977282', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:02:09', '2018-09-20 16:02:09'),
(2083, 'TIENDREBEOGO', 'Rachèle', 'FEMININ', '1998-03-18 00:00:00', NULL, NULL, NULL, NULL, '71921030', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:06:34', '2018-09-20 16:06:34'),
(2084, 'YAMEOGO', 'Wendpayangdé Emma Anselme', 'MASCULIN', '1999-04-20 00:00:00', NULL, NULL, NULL, NULL, '73862861', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:14:23', '2018-09-20 16:14:23'),
(2085, 'OUEDRAOGO', 'Aïssèta', 'FEMININ', '1999-01-28 00:00:00', NULL, NULL, NULL, NULL, '57821212', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:17:17', '2018-09-20 16:17:17'),
(2086, 'SOUGUE', 'Babeka Elisée', 'MASCULIN', '1997-06-16 00:00:00', NULL, NULL, NULL, NULL, '77419385', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:19:13', '2018-09-20 16:19:13'),
(2087, 'YIGO', 'Davy Edouard', 'MASCULIN', '1997-11-29 00:00:00', NULL, NULL, NULL, NULL, '77677353', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:21:01', '2018-09-20 16:21:01'),
(2088, 'DABRE', 'René', 'MASCULIN', '1998-04-30 00:00:00', NULL, NULL, NULL, NULL, '67440682', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:23:20', '2018-09-20 16:23:20'),
(2089, 'YAMEOGO', 'Wendkuuni Dédan', 'MASCULIN', '1999-04-19 00:00:00', NULL, NULL, NULL, NULL, '60650247', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:25:39', '2018-09-20 16:25:39'),
(2090, 'KOUTOU', 'Mariam', 'FEMININ', '1998-01-27 00:00:00', NULL, NULL, NULL, NULL, '61200061', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:27:37', '2018-09-20 16:27:37'),
(2091, 'KIENTEGA', 'Frédéric', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '65453988', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:29:13', '2018-09-20 16:29:13'),
(2092, 'YAMEOGO', 'Wendwaoga Christian', 'MASCULIN', '1996-11-14 00:00:00', NULL, NULL, NULL, NULL, '72065554', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:31:03', '2018-09-20 16:31:03'),
(2093, 'NAGALO', 'Eli Odile', 'FEMININ', '1998-01-01 00:00:00', NULL, NULL, NULL, NULL, '73968108', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:33:44', '2018-09-20 16:33:44'),
(2094, 'BAZONGO', 'Bada Alain', 'MASCULIN', '1999-09-09 00:00:00', NULL, NULL, NULL, NULL, '77272181', NULL, 'n', 'okpascaline', 'okpascaline', '2018-09-20 16:35:59', '2018-09-20 16:35:59'),
(2095, 'ZOMA', 'Ouango', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '67688187', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:38:02', '2018-09-20 16:38:02'),
(2096, 'DIALLO', 'Mohammad', 'MASCULIN', '1998-07-03 00:00:00', NULL, NULL, NULL, NULL, '64740686', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:41:12', '2018-09-20 16:41:12'),
(2097, 'ILBOUDO', 'Abdoul Rachid', 'MASCULIN', '1998-10-08 00:00:00', NULL, NULL, NULL, NULL, '64151793', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:48:23', '2018-09-20 16:48:23'),
(2098, 'DIPAMA', 'Panongbné Colette', 'FEMININ', '1999-03-06 00:00:00', NULL, NULL, NULL, NULL, '66794483', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:50:54', '2018-09-20 16:50:54'),
(2099, 'YE', 'Oumar', 'MASCULIN', '1996-07-25 00:00:00', NULL, NULL, NULL, NULL, '60292519', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:52:39', '2018-09-20 16:52:39'),
(2100, 'OUATTARA', 'Siguizanga Eric', 'MASCULIN', '1999-05-23 00:00:00', NULL, NULL, NULL, NULL, '73443273', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-20 16:54:56', '2018-09-20 16:54:56'),
(2101, 'KOUANDA', 'Abdoul Aziz', 'MASCULIN', '1997-05-30 00:00:00', NULL, NULL, NULL, NULL, '76067778', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 07:44:43', '2018-09-21 07:44:43'),
(2102, 'OUEDRAOGO', 'Salif', 'MASCULIN', '1999-03-30 00:00:00', NULL, NULL, NULL, NULL, '66354145', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 07:46:18', '2018-09-21 07:46:18'),
(2103, 'BAMOGO', 'Dénis', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '77364523', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 07:47:37', '2018-09-21 07:47:37'),
(2104, 'SAGDOU', 'Constant', 'MASCULIN', '1996-09-23 00:00:00', NULL, NULL, NULL, NULL, '70054301', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 07:49:18', '2018-09-21 07:49:18'),
(2105, 'OUEDRAOGO', 'Clément', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '74041205', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 07:50:42', '2018-09-21 07:50:42'),
(2106, 'TRAORE', 'Maïmouna', 'FEMININ', '1999-04-18 00:00:00', NULL, NULL, NULL, NULL, '76515118', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 07:52:26', '2018-09-21 07:52:26'),
(2107, 'ZANGRE', 'Mariame', 'FEMININ', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '65 98 75 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 08:32:01', '2018-09-21 08:32:01'),
(2108, 'KONATE', 'Tibidéhan', 'FEMININ', '1998-11-25 00:00:00', NULL, NULL, NULL, NULL, '75646302', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:33:59', '2018-09-21 08:33:59'),
(2109, 'SABDANO', 'Olivier', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '729432', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:35:22', '2018-09-21 08:35:22'),
(2110, 'DABOURGOU', 'Diagnoagou', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '62130302', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:37:00', '2018-09-21 08:37:00'),
(2111, 'KOIDIMA', 'Caleb', 'MASCULIN', '1999-08-02 00:00:00', NULL, NULL, NULL, NULL, '73631228', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:38:39', '2018-09-21 08:38:39'),
(2112, 'OUYA', 'Marius', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '66287191', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:40:01', '2018-09-21 08:40:01'),
(2113, 'OUATTARA', 'Zanga Daouda', 'MASCULIN', '2000-02-15 00:00:00', NULL, NULL, NULL, NULL, '66823760', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:41:26', '2018-09-21 08:41:26'),
(2114, 'CISSE', 'Adama', 'MASCULIN', '1997-09-05 00:00:00', NULL, NULL, NULL, NULL, '71733249', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:42:51', '2018-09-21 08:42:51'),
(2115, 'DIAWARA', 'Adjara', 'FEMININ', '1998-02-09 00:00:00', NULL, NULL, NULL, NULL, '76041324', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:44:50', '2018-09-21 08:44:50'),
(2116, 'SAYORE', 'Daouda', 'MASCULIN', '1997-02-04 00:00:00', NULL, NULL, NULL, NULL, '74583492', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:46:25', '2018-09-21 08:46:25'),
(2117, 'ZANGO', 'Saidou', 'MASCULIN', '1998-11-25 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:48:28', '2018-09-21 08:48:28'),
(2118, 'OUEDRAOGO', 'Boubacar', 'MASCULIN', '1997-03-22 00:00:00', NULL, NULL, NULL, NULL, '75487801', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:50:06', '2018-09-21 08:50:06'),
(2119, 'DAO', 'Madou', 'MASCULIN', '1999-06-07 00:00:00', NULL, NULL, NULL, NULL, '65212389', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:51:43', '2018-09-21 08:51:43'),
(2120, 'PALENFO', 'Bellingta Juste', 'MASCULIN', '1999-10-14 00:00:00', NULL, NULL, NULL, NULL, '75184839', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:54:18', '2018-09-21 08:54:18'),
(2121, 'ZONGO', 'Wendyam Claudine Mireille', 'FEMININ', '1998-01-15 02:00:00', NULL, NULL, NULL, NULL, '66 62 63 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 08:55:16', '2018-09-21 08:55:16'),
(2122, 'BARRO', 'Mamadou', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '63895208', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:55:46', '2018-09-21 08:55:46'),
(2123, 'DABILOUGOU', 'Nafissatou', 'FEMININ', '1996-11-29 00:00:00', NULL, NULL, NULL, NULL, '76653595', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:57:28', '2018-09-21 08:57:28'),
(2124, 'DIANDA', 'Soumaïla', 'MASCULIN', '1997-10-04 00:00:00', NULL, NULL, NULL, NULL, '74222022', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 08:58:55', '2018-09-21 08:58:55'),
(2125, 'PORGO', 'Yassina', 'MASCULIN', '1997-01-14 00:00:00', NULL, NULL, NULL, NULL, '76798036', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:01:04', '2018-09-21 09:01:04'),
(2126, 'ZONGO', 'Issiaka', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '66554854', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:02:29', '2018-09-21 09:02:29'),
(2127, 'BONZI', 'Tikaana Emmanuel', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 02 84 02', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:02:45', '2018-09-21 09:02:45'),
(2128, 'SIMBIRI', 'Abdoul Karim', 'MASCULIN', '1998-11-18 00:00:00', NULL, NULL, NULL, NULL, '64333188', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:04:06', '2018-09-21 09:04:06'),
(2129, 'BANSE', 'Abdoul Mohamino', 'MASCULIN', '1999-11-06 00:00:00', NULL, NULL, NULL, NULL, '62226698', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:05:52', '2018-09-21 09:05:52'),
(2130, 'KABORE', 'Issa', 'MASCULIN', '1998-01-01 00:00:00', NULL, NULL, NULL, NULL, '71 11 81 71', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:05:53', '2018-09-21 09:05:53'),
(2131, 'BELLA', 'Mahamady', 'MASCULIN', '1997-09-18 00:00:00', NULL, NULL, NULL, NULL, '67744164', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:07:25', '2018-09-21 09:07:25'),
(2132, 'SANA', 'Abdoul Aziz', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '72022143', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:08:43', '2018-09-21 09:08:43'),
(2133, 'DIAO', 'Abdoul', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '61 53 18 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:09:28', '2018-09-21 09:09:28'),
(2134, 'MANKOUDOUGOU', 'Abdoul Fatar Clovis', 'MASCULIN', '1998-06-01 02:00:00', NULL, NULL, NULL, NULL, '63 43 83 88', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 09:11:00', '2018-09-21 09:11:00'),
(2135, 'SAWADOGO', 'ismael', 'MASCULIN', '1996-06-04 00:00:00', NULL, NULL, NULL, NULL, '70 95 89 64', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:11:27', '2018-09-21 09:11:27'),
(2136, 'SAWADOGO', 'Mariam', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '77 29 24 30', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:13:38', '2018-09-21 09:13:38'),
(2137, 'KIENTEGA', 'Bernard', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 13 63 91', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:15:21', '2018-09-21 09:15:21'),
(2138, 'TRAORE', 'Faïssal Mohamed', 'MASCULIN', '1998-02-24 02:00:00', NULL, NULL, NULL, NULL, '66 74 24 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 09:16:05', '2018-09-21 09:16:05'),
(2139, 'ZABRE', 'Oumar', 'MASCULIN', '1996-01-16 00:00:00', NULL, NULL, NULL, NULL, '71 35 40 23', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:17:20', '2018-09-21 09:17:20'),
(2140, 'SOULAMA', 'Adama', 'MASCULIN', '1998-06-25 02:00:00', NULL, NULL, NULL, NULL, '61 67 69 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 09:20:16', '2018-09-21 09:20:16'),
(2141, 'DABIRE', 'Berkouwin Ange Kenneth', 'MASCULIN', '1999-10-05 00:00:00', NULL, NULL, NULL, NULL, '73 52 91 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:21:00', '2018-09-21 09:21:00'),
(2142, 'SANKARA', 'Wendlassida Idrissa', 'MASCULIN', '1998-10-28 02:00:00', NULL, NULL, NULL, NULL, '74 35 77 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 09:22:37', '2018-09-21 09:22:37'),
(2143, 'ZONGO', 'Dieudonné', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '67 85 87 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 09:26:02', '2018-09-21 09:26:02'),
(2144, 'DIPAMA', 'Mohamady', 'MASCULIN', '1997-11-18 00:00:00', NULL, NULL, NULL, NULL, '62842001', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 09:36:05', '2018-09-21 09:36:05'),
(2145, 'BAKOUANE', 'Jacques', 'MASCULIN', '1998-05-03 00:00:00', NULL, NULL, NULL, NULL, '75658253', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 09:38:00', '2018-09-21 09:38:00'),
(2146, 'MAIGA', 'Rachdétou', 'FEMININ', '1999-02-18 00:00:00', NULL, NULL, NULL, NULL, '73681816', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 09:41:08', '2018-09-21 09:41:08'),
(2147, 'KONFE', 'Ismaël', 'MASCULIN', '1998-12-14 00:00:00', NULL, NULL, NULL, NULL, '63901009', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:43:15', '2018-09-21 09:43:15'),
(2148, 'NADOUNKE', 'Hubert', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '64986789', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:45:01', '2018-09-21 09:45:01'),
(2149, 'KAFANDO', 'Maxime', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '66663911', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 09:46:10', '2018-09-21 09:46:10'),
(2150, 'SANOGO', 'Modibo', 'MASCULIN', '1997-04-09 00:00:00', NULL, NULL, NULL, NULL, '65566573', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:46:35', '2018-09-21 09:46:35'),
(2151, 'ZAGRE', 'Ousmane', 'MASCULIN', '1998-06-27 00:00:00', NULL, NULL, NULL, NULL, '66726605', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:48:13', '2018-09-21 09:48:13'),
(2152, 'OUEDRAOGO', 'Pêgdwendé Karel Maria Espérance', 'MASCULIN', '2000-04-05 02:00:00', NULL, NULL, NULL, NULL, '73 97 06 85', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 09:49:27', '2018-09-21 09:49:27'),
(2153, 'OUATTARA', 'Baga Moussa', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '73648459', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:50:13', '2018-09-21 09:50:13'),
(2154, 'DIMA', 'Wenedoina Augustin', 'MASCULIN', '1997-04-09 00:00:00', NULL, NULL, NULL, NULL, '71477326', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 09:50:17', '2018-09-21 09:50:17'),
(2155, 'HEBIE', 'Tiama Roland', 'MASCULIN', '1997-09-15 02:00:00', NULL, NULL, NULL, NULL, '65 30 31 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 09:51:55', '2018-09-21 09:51:55'),
(2156, 'OUATTARA', 'Mamaré Yasmine', 'FEMININ', '1998-06-13 00:00:00', NULL, NULL, NULL, NULL, '56289710', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:51:55', '2018-09-21 09:51:55'),
(2157, 'ZONGO', 'Emma', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '78379555', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 09:52:47', '2018-09-21 09:52:47'),
(2158, 'DAO', 'Alimata Christelle', 'FEMININ', '2000-08-18 00:00:00', NULL, NULL, NULL, NULL, '63218663', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:53:44', '2018-09-21 09:53:44'),
(2159, 'GNIENHOUN', 'Mouwé Léandres', 'MASCULIN', '1997-03-22 00:00:00', NULL, NULL, NULL, NULL, '62 88 36 16', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:54:16', '2018-09-21 09:54:16'),
(2160, 'ZOROME', 'Aboubacar', 'MASCULIN', '1996-06-02 00:00:00', NULL, NULL, NULL, NULL, '55566653', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 09:55:50', '2018-09-21 09:55:50'),
(2161, 'SONTIE', 'Mafadikom Fatoumata', 'FEMININ', '1997-06-28 00:00:00', NULL, NULL, NULL, NULL, '73455883', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:56:06', '2018-09-21 09:56:06'),
(2162, 'SAWADOGO', 'Pougwendé Ezechiel', 'MASCULIN', '1999-01-05 00:00:00', NULL, NULL, NULL, NULL, '62 82 68 57', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:57:04', '2018-09-21 09:57:04'),
(2163, 'SAWADOGO', 'Assétou', 'FEMININ', '1999-11-29 00:00:00', NULL, NULL, NULL, NULL, '64566050', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 09:57:46', '2018-09-21 09:57:46'),
(2164, 'TRAORE', 'Sy Armand', 'MASCULIN', '1998-12-08 00:00:00', NULL, NULL, NULL, NULL, '55 53 08 97', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 09:59:16', '2018-09-21 09:59:16'),
(2165, 'CONGO', 'Olivia Yasmine', 'FEMININ', '1998-09-14 00:00:00', NULL, NULL, NULL, NULL, '60349404', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:00:21', '2018-09-21 10:00:21'),
(2166, 'ILBOUDO', 'Wend-Kouni Alida', 'FEMININ', '1996-09-30 00:00:00', NULL, NULL, NULL, NULL, '71306703', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:01:05', '2018-09-21 10:01:05'),
(2167, 'KIENDREBEOGO', 'Cheick Omar', 'MASCULIN', '2000-05-31 02:00:00', NULL, NULL, NULL, NULL, '61 70 53 53', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 10:02:02', '2018-09-21 10:02:02'),
(2168, 'OUEDRAOGO', 'Wende So Gloria Bertille', 'FEMININ', '1998-03-16 00:00:00', NULL, NULL, NULL, NULL, '60 51 26 82', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:02:40', '2018-09-21 10:02:40'),
(2169, 'BABA MOUSSA', 'Abdul Hafizou', 'MASCULIN', '1999-01-16 00:00:00', NULL, NULL, NULL, NULL, '73189421', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:02:54', '2018-09-21 10:02:54'),
(2170, 'KABORE', 'Safa-ou', 'FEMININ', '1999-09-13 00:00:00', NULL, NULL, NULL, NULL, '55317093', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:03:44', '2018-09-21 10:03:44'),
(2171, 'KOGO', 'Paul', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '78 41 56 97', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:04:13', '2018-09-21 10:04:13'),
(2172, 'SORGHO', 'Pagnagda Oumou Koulsoum', 'FEMININ', '2000-12-14 02:00:00', NULL, NULL, NULL, NULL, '70 72 23 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 10:05:22', '2018-09-21 10:05:22'),
(2173, 'NONGUIERMA', 'Wendpayangdé Fabrice Rachid Charles', 'MASCULIN', '1998-01-11 00:00:00', NULL, NULL, NULL, NULL, '61682775', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:05:32', '2018-09-21 10:05:32'),
(2174, 'KAGAMBEGA', 'Joël', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '62030660', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:05:46', '2018-09-21 10:05:46'),
(2175, 'OUEDRAOGO', 'Salimata', 'FEMININ', '1999-12-21 00:00:00', NULL, NULL, NULL, NULL, '61 67 86 32', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:06:03', '2018-09-21 10:06:03'),
(2176, 'KINDO', 'Daouda', 'MASCULIN', '1997-11-12 00:00:00', NULL, NULL, NULL, NULL, '78 30 37 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:08:03', '2018-09-21 10:08:03'),
(2177, 'SOME', 'Awonossina', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '55 80 57 06', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:09:46', '2018-09-21 10:09:46'),
(2178, 'KABORE', 'Béatrice', 'FEMININ', '2000-01-08 00:00:00', NULL, NULL, NULL, NULL, '66581051', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:11:07', '2018-09-21 10:11:07'),
(2179, 'LENGANI', 'Wend-Ida Rakiatou', 'FEMININ', '1996-11-20 00:00:00', NULL, NULL, NULL, NULL, '78 86 41 01', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:11:52', '2018-09-21 10:11:52'),
(2180, 'FOGO', 'Shérifa Yasmine', 'FEMININ', '1997-04-15 00:00:00', NULL, NULL, NULL, NULL, '61510914', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:12:42', '2018-09-21 10:12:42'),
(2181, 'NANA', 'Adama', 'MASCULIN', '1996-03-22 00:00:00', NULL, NULL, NULL, NULL, '74 05 43 42', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:13:47', '2018-09-21 10:13:47'),
(2182, 'CISSE', 'Djamilatou', 'FEMININ', '1998-06-29 00:00:00', NULL, NULL, NULL, NULL, '65144615', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:14:15', '2018-09-21 10:14:15'),
(2183, 'ZONGO', 'Mahamadi', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '65309777', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:14:17', '2018-09-21 10:14:17'),
(2184, 'OUEDRAOGO', 'Ragnagnéwendé Laurent', 'MASCULIN', '1996-07-05 00:00:00', NULL, NULL, NULL, NULL, '58 58 18 14', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:15:43', '2018-09-21 10:15:43'),
(2185, 'TASSEMBEDO', 'Abenie', 'FEMININ', '2000-05-25 00:00:00', NULL, NULL, NULL, NULL, '64356953', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:17:57', '2018-09-21 10:17:57'),
(2186, 'OUEDRAOGO', 'Kiendamanégda Firmin', 'MASCULIN', '1998-10-11 00:00:00', NULL, NULL, NULL, NULL, '76 19 60 72', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:18:19', '2018-09-21 10:18:19'),
(2187, 'IRA', 'Souleymane', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '77 36 09 91', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:20:51', '2018-09-21 10:20:51'),
(2188, 'SAWADOGO', 'Paligwendé Rose Ange', 'FEMININ', '1999-08-23 00:00:00', NULL, NULL, NULL, NULL, '62867428', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:21:47', '2018-09-21 10:21:47'),
(2189, 'DIABATE', 'Jean Yacouba', 'MASCULIN', '1999-04-10 02:00:00', NULL, NULL, NULL, NULL, '73 87 39 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 10:23:36', '2018-09-21 10:23:36'),
(2190, 'OUATTARA', 'Fatoumata', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '76163273', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:24:19', '2018-09-21 10:24:19'),
(2191, 'PALE', 'Audrey Natacha', 'FEMININ', '2000-05-26 00:00:00', NULL, NULL, NULL, NULL, '78891152', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:26:08', '2018-09-21 10:26:08'),
(2192, 'KABORE', 'Daniel', 'MASCULIN', '1996-11-03 00:00:00', NULL, NULL, NULL, NULL, '73695144', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:26:28', '2018-09-21 10:26:28'),
(2193, 'TRAORE', 'Fatimata', 'FEMININ', '1999-07-02 00:00:00', NULL, NULL, NULL, NULL, '77404622', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:28:35', '2018-09-21 10:28:35'),
(2194, 'TANI', 'Yassir Balipougny', 'MASCULIN', '1996-10-12 00:00:00', NULL, NULL, NULL, NULL, '72 42 82 44', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:29:09', '2018-09-21 10:29:09'),
(2195, 'OUATTARA', 'Piengwindé Mathieu', 'MASCULIN', '1998-09-21 00:00:00', NULL, NULL, NULL, NULL, '63 62 06 93', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:30:48', '2018-09-21 10:30:48'),
(2196, 'ZOUNGRANA', 'Sahidathou', 'FEMININ', '2000-07-07 00:00:00', NULL, NULL, NULL, NULL, '66597948', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:31:07', '2018-09-21 10:31:07'),
(2197, 'TAGNAN', 'Issouf Baya', 'MASCULIN', '1996-07-30 00:00:00', NULL, NULL, NULL, NULL, '73 63 97 96', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 10:32:32', '2018-09-21 10:32:32'),
(2198, 'DABIRE', 'Yandar Leslie Roxane', 'FEMININ', '2000-03-13 00:00:00', NULL, NULL, NULL, NULL, '70739069', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:33:17', '2018-09-21 10:33:17'),
(2199, 'RAMDE', 'Jean', 'MASCULIN', '1997-04-01 02:00:00', NULL, NULL, NULL, NULL, '76 27 74 46', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 10:34:33', '2018-09-21 10:34:33'),
(2200, 'ZONGO', 'Pingdwendé Aurore Jessica', 'FEMININ', '2000-04-18 00:00:00', NULL, NULL, NULL, NULL, '66162408', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:35:13', '2018-09-21 10:35:13'),
(2201, 'SANOU', 'Mariam', 'FEMININ', '1999-03-28 00:00:00', NULL, NULL, NULL, NULL, '70318435', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:36:47', '2018-09-21 10:36:47'),
(2202, 'DABIRE', 'Farabéne Emelienne', 'FEMININ', '1997-03-05 00:00:00', NULL, NULL, NULL, NULL, '57368454', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:38:22', '2018-09-21 10:38:22'),
(2203, 'YABRE', 'Denis', 'MASCULIN', '1996-10-01 00:00:00', NULL, NULL, NULL, NULL, '75575323', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:41:47', '2018-09-21 10:41:47'),
(2204, 'SANFO', 'Aïsseta', 'FEMININ', '2000-07-22 00:00:00', NULL, NULL, NULL, NULL, '71567681', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:42:33', '2018-09-21 10:42:33'),
(2205, 'TONDE', 'Alexis', 'MASCULIN', '1998-02-09 00:00:00', NULL, NULL, NULL, NULL, '78527674', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:43:48', '2018-09-21 10:43:48'),
(2206, 'COMPAORE', 'Fadila kelly Aïda', 'MASCULIN', '1997-10-11 00:00:00', NULL, NULL, NULL, NULL, '71124688', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:44:15', '2018-09-21 10:44:15'),
(2207, 'FAHO', 'Abdoul Fayçal Jessy', 'MASCULIN', '1999-03-21 00:00:00', NULL, NULL, NULL, NULL, '73397280', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:46:09', '2018-09-21 10:46:09'),
(2208, 'DONDASSE', 'Abdoul Fatass', 'MASCULIN', '1999-08-01 00:00:00', NULL, NULL, NULL, NULL, '65957477', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:48:27', '2018-09-21 10:48:27'),
(2209, 'DIONE', 'Rachidatou', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '1533672', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 10:50:01', '2018-09-21 10:50:01'),
(2210, 'RAMDE', 'Gilbert', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 38 04 25', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 10:55:14', '2018-09-21 10:55:14'),
(2211, 'YAWANA', 'Kobina', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '67609847', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 10:57:24', '2018-09-21 10:57:24'),
(2212, 'SAMADOULOUGOU', 'Alizèta', 'FEMININ', '1998-08-01 00:00:00', NULL, NULL, NULL, NULL, '51686204', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 11:00:26', '2018-09-21 11:00:26'),
(2213, 'KAMBOU', 'Nata Ulrich Lionel', 'MASCULIN', '2000-11-22 00:00:00', NULL, NULL, NULL, NULL, '78858976', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:02:01', '2018-09-21 11:02:01'),
(2214, 'SAWADOGO', 'Léonie', 'FEMININ', '1999-09-12 00:00:00', NULL, NULL, NULL, NULL, '71095581', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 11:03:42', '2018-09-21 11:03:42'),
(2215, 'SAWADOGO', 'Windkouni Joseph', 'MASCULIN', '1997-03-26 00:00:00', NULL, NULL, NULL, NULL, '64581664', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 11:07:07', '2018-09-21 11:07:07'),
(2216, 'BAGORO', 'Ingrid Stéphanie', 'FEMININ', '1999-06-24 00:00:00', NULL, NULL, NULL, NULL, '76683492', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:08:59', '2018-09-21 11:08:59'),
(2217, 'BAGRE', 'Nana Wendé Hermann', 'MASCULIN', '1997-07-27 00:00:00', NULL, NULL, NULL, NULL, '70453643', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:11:48', '2018-09-21 11:11:48'),
(2218, 'GUIRE', 'Djélika Axelle Doria', 'FEMININ', '2000-07-28 00:00:00', NULL, NULL, NULL, NULL, '62575371', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 11:12:09', '2018-09-21 11:12:09'),
(2219, 'ZONGO', 'Serge Flavien', 'MASCULIN', '1998-01-11 00:00:00', NULL, NULL, NULL, NULL, '63036939', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:13:28', '2018-09-21 11:13:28'),
(2220, 'KOUAMA', 'Gildas', 'MASCULIN', '1996-01-29 00:00:00', NULL, NULL, NULL, NULL, '71793225', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:15:09', '2018-09-21 11:15:09'),
(2221, 'BONEGO', 'Pierre Boudouin', 'MASCULIN', '1997-10-17 00:00:00', NULL, NULL, NULL, NULL, '61331317', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:16:56', '2018-09-21 11:16:56'),
(2222, 'DERA', 'Amédée Wend-Bénédo', 'MASCULIN', '2000-02-07 00:00:00', NULL, NULL, NULL, NULL, '56833675', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:18:36', '2018-09-21 11:18:36'),
(2223, 'NACOULMA', 'Oumar', 'MASCULIN', '1998-07-10 00:00:00', NULL, NULL, NULL, NULL, '72935637', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 11:21:27', '2018-09-21 11:21:27'),
(2224, 'KOUNKORGO', 'Kévin Alcine Aziz', 'MASCULIN', '1997-03-12 00:00:00', NULL, NULL, NULL, NULL, '60180972', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:24:16', '2018-09-21 11:24:16'),
(2225, 'OUATTARA', 'Anis Rafik Mountasir', 'MASCULIN', '1999-11-27 00:00:00', NULL, NULL, NULL, NULL, '64339945', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:25:55', '2018-09-21 11:25:55'),
(2226, 'KONE', 'Sayouba', 'MASCULIN', '1998-08-03 00:00:00', NULL, NULL, NULL, NULL, '73425142', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 11:27:16', '2018-09-21 11:27:16'),
(2227, 'HOMBOUE', 'Hayazouma Sidonie', 'FEMININ', '1997-11-14 00:00:00', NULL, NULL, NULL, NULL, '69065672', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:27:54', '2018-09-21 11:27:54'),
(2228, 'KAM', 'Togué Daniel', 'MASCULIN', '1997-04-29 00:00:00', NULL, NULL, NULL, NULL, '75900312', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:29:39', '2018-09-21 11:29:39'),
(2229, 'KABORE', 'Cédric Têegawendé', 'MASCULIN', '1999-11-14 00:00:00', NULL, NULL, NULL, NULL, '51541434', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 11:29:41', '2018-09-21 11:29:41'),
(2230, 'KYENDREBEOGO', 'Wendyam Natacha', 'FEMININ', '1998-08-23 00:00:00', NULL, NULL, NULL, NULL, '72166403', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:31:19', '2018-09-21 11:31:19'),
(2231, 'KIEMDE', 'Alicia Marie Leslie', 'FEMININ', '1999-08-31 00:00:00', NULL, NULL, NULL, NULL, '61509699', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:33:12', '2018-09-21 11:33:12'),
(2232, 'METOUOR SOME', 'Dagaratouoyèrè Jules Yacinthe', 'MASCULIN', '1999-04-27 00:00:00', NULL, NULL, NULL, NULL, '60037525', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:35:18', '2018-09-21 11:35:18'),
(2233, 'COMPAORE', 'Lassané', 'MASCULIN', '1998-12-03 00:00:00', NULL, NULL, NULL, NULL, '60420742', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 11:36:16', '2018-09-21 11:36:16'),
(2234, 'SEOGO', 'Abdoul Fattah', 'MASCULIN', '1999-11-10 00:00:00', NULL, NULL, NULL, NULL, '75019851', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 11:36:58', '2018-09-21 11:36:58'),
(2235, 'KABORE', 'Touwendesida Emiliene', 'FEMININ', '1996-09-03 00:00:00', NULL, NULL, NULL, NULL, '77 36 52 73', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 11:46:38', '2018-09-21 11:46:38'),
(2236, 'KABORE', 'Pengdwendé John Ulrich Léonel', 'MASCULIN', '1999-01-31 00:00:00', NULL, NULL, NULL, NULL, '60 76 04 62', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 11:48:56', '2018-09-21 11:48:56'),
(2237, 'YAMEOGO', 'Alfa Bassirou', 'MASCULIN', '1996-07-05 00:00:00', NULL, NULL, NULL, NULL, '60 20 58 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 11:51:29', '2018-09-21 11:51:29'),
(2238, 'GANSAORE', 'Françoise', 'FEMININ', '1996-05-09 00:00:00', NULL, NULL, NULL, NULL, '69 28 42 79', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 11:53:09', '2018-09-21 11:53:09'),
(2239, 'MALKA', 'Dimitri', 'MASCULIN', '1996-10-26 00:00:00', NULL, NULL, NULL, NULL, '60 02 84 65', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 11:55:28', '2018-09-21 11:55:28'),
(2240, 'KAGAMBEGA', 'Latifatou', 'FEMININ', '1999-03-17 02:00:00', NULL, NULL, NULL, NULL, '71 72 97 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 11:56:42', '2018-09-21 11:56:42'),
(2241, 'KONATE', 'Dignon Désiré', 'MASCULIN', '1996-01-04 00:00:00', NULL, NULL, NULL, NULL, '72 18 19 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 11:58:10', '2018-09-21 11:58:10'),
(2242, 'ZONGO', 'Tarwendpanga Aser', 'MASCULIN', '1998-11-07 00:00:00', NULL, NULL, NULL, NULL, '70 73 08 64', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:00:27', '2018-09-21 12:00:27'),
(2243, 'YERBANGA', 'Eugène', 'MASCULIN', '1996-01-23 02:00:00', NULL, NULL, NULL, NULL, '72 60 82 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 12:00:43', '2018-09-21 12:00:43'),
(2244, 'TRAORE', 'Sabéré Rigobert', 'MASCULIN', '1999-05-16 00:00:00', NULL, NULL, NULL, NULL, '72 53 66 55', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:02:28', '2018-09-21 12:02:28'),
(2245, 'BADO', 'Adama', 'MASCULIN', '1997-10-17 02:00:00', NULL, NULL, NULL, NULL, '79 36 64 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 12:02:30', '2018-09-21 12:02:30'),
(2246, 'KABORE', 'Ibrahim', 'MASCULIN', '1999-09-26 00:00:00', NULL, NULL, NULL, NULL, '65195355', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 12:03:33', '2018-09-21 12:03:33'),
(2247, 'GARGO', 'Yacouba', 'MASCULIN', '1996-11-11 00:00:00', NULL, NULL, NULL, NULL, '71 99 90 38', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:04:17', '2018-09-21 12:04:17'),
(2248, 'BAKOUAN', 'Bamila', 'MASCULIN', '1996-11-26 02:00:00', NULL, NULL, NULL, NULL, '71 11 85 66', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 12:05:23', '2018-09-21 12:05:23'),
(2249, 'BAMOGO', 'Abdouquemio', 'MASCULIN', '2000-05-08 00:00:00', NULL, NULL, NULL, NULL, '60737006', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 12:06:02', '2018-09-21 12:06:02'),
(2250, 'KOUDOGBO-KIKI', 'Murielle Aimée Odilia Mahulé', 'FEMININ', '1999-02-20 00:00:00', NULL, NULL, NULL, NULL, '72 69 65 18', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:07:04', '2018-09-21 12:07:04'),
(2251, 'KOLOGO', 'Leslie Christabelle', 'FEMININ', '2000-07-30 00:00:00', NULL, NULL, NULL, NULL, '60 01 29 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:08:53', '2018-09-21 12:08:53'),
(2252, 'SAWADOGO', 'Boenzemwendé Arsène Freeman', 'MASCULIN', '2000-05-04 02:00:00', NULL, NULL, NULL, NULL, '61 61 74 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 12:12:49', '2018-09-21 12:12:49'),
(2253, 'KABORE', 'syrina Leila 1ère Jumelle', 'FEMININ', '1999-06-06 00:00:00', NULL, NULL, NULL, NULL, '70 12 09 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:14:51', '2018-09-21 12:14:51'),
(2254, 'NIKIEMA', 'Alira Yasmine Zénabou', 'FEMININ', '1998-05-24 02:00:00', NULL, NULL, NULL, NULL, '78 83 80 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 12:15:56', '2018-09-21 12:15:56'),
(2255, 'KABORE', 'Wendpouiré Cedric Bertin', 'MASCULIN', '1999-01-06 02:00:00', NULL, NULL, NULL, NULL, '51 47 00 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 12:20:03', '2018-09-21 12:20:03'),
(2256, 'ZONGO', 'Absétou', 'FEMININ', '1998-09-13 02:00:00', NULL, NULL, NULL, NULL, '63 72 60 18', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 12:26:07', '2018-09-21 12:26:07'),
(2257, 'SANA', 'Oumarou', 'MASCULIN', '1996-08-25 00:00:00', NULL, NULL, NULL, NULL, '67904551', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:28:10', '2018-09-21 12:28:10'),
(2258, 'OUATTARA', 'Djouma Irène', 'FEMININ', '1999-11-12 00:00:00', NULL, NULL, NULL, NULL, '66935085', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:30:13', '2018-09-21 12:30:13'),
(2259, 'DABIRE', 'Mwimalo Bertrand', 'MASCULIN', '1999-05-11 02:00:00', NULL, NULL, NULL, NULL, '72 99 96 15', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 12:32:55', '2018-09-21 12:32:55'),
(2260, 'NACOULMA', 'Maïdina Sévérine', 'FEMININ', '2000-01-28 00:00:00', NULL, NULL, NULL, NULL, '71926002', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:32:58', '2018-09-21 12:32:58'),
(2261, 'KAM', 'Lobka', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '64708312', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:35:24', '2018-09-21 12:35:24'),
(2262, 'OUEDRAOGO', 'Jacqueline dite Wendengûudi', 'FEMININ', '1998-03-12 00:00:00', NULL, NULL, NULL, NULL, '62127687', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:38:55', '2018-09-21 12:38:55'),
(2263, 'NADIE', 'Nassirou', 'MASCULIN', '1997-01-09 00:00:00', NULL, NULL, NULL, NULL, '55107013', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:41:48', '2018-09-21 12:41:48'),
(2264, 'OUEDRAOGO', 'Ismaël', 'MASCULIN', '1997-08-30 00:00:00', NULL, NULL, NULL, NULL, '78933044', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:44:04', '2018-09-21 12:44:04'),
(2265, 'SAWADOGO', 'Tambi', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '66 57 24 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:44:08', '2018-09-21 12:44:08'),
(2266, 'NAPON', 'Emile', 'MASCULIN', '1996-07-02 00:00:00', NULL, NULL, NULL, NULL, '63 09 31 31', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:45:51', '2018-09-21 12:45:51'),
(2267, 'OUATTARA', 'Oumou', 'FEMININ', '1999-11-29 00:00:00', NULL, NULL, NULL, NULL, '56083799', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:46:08', '2018-09-21 12:46:08'),
(2268, 'SAYAOGO', 'Wendwaoga Josué', 'MASCULIN', '1999-02-07 00:00:00', NULL, NULL, NULL, NULL, '70 33 78 39', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:48:33', '2018-09-21 12:48:33'),
(2269, 'LANKOANDE', 'Shelly Jemima', 'FEMININ', '1999-07-29 00:00:00', NULL, NULL, NULL, NULL, '70220362', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:48:38', '2018-09-21 12:48:38'),
(2270, 'YAMEOGO', 'Koudegma Jérémie', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70 37 30 03', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:50:39', '2018-09-21 12:50:39'),
(2271, 'ILBOUDO', 'Pierre', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '75019605', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:50:40', '2018-09-21 12:50:40'),
(2272, 'ZOUMA', 'Wilfried Wendpagnagdé', 'MASCULIN', '1999-12-17 00:00:00', NULL, NULL, NULL, NULL, '74 39 49 42', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:52:12', '2018-09-21 12:52:12'),
(2273, 'POODA', 'N\'Tolebelour July Chantal', 'FEMININ', '1997-06-27 00:00:00', NULL, NULL, NULL, NULL, '71140079', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:52:58', '2018-09-21 12:52:58'),
(2274, 'KABORE', 'Rémi', 'MASCULIN', '1998-01-14 00:00:00', NULL, NULL, NULL, NULL, '67599804', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 12:54:58', '2018-09-21 12:54:58'),
(2275, 'SANOU', 'Ali', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '75 49 12 16', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:55:00', '2018-09-21 12:55:00'),
(2276, 'MEDA', 'N. Boris', 'MASCULIN', '1999-09-19 00:00:00', NULL, NULL, NULL, NULL, '66 71 93 38', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 12:57:28', '2018-09-21 12:57:28'),
(2277, 'TRAORE', 'Klema Ismaël Kevin', 'MASCULIN', '1998-09-19 00:00:00', NULL, NULL, NULL, NULL, '64 32 66 40', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:00:03', '2018-09-21 13:00:03'),
(2278, 'BAYILI', 'Antoine', 'MASCULIN', '1998-08-16 00:00:00', NULL, NULL, NULL, NULL, '65 34 88 44', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:02:16', '2018-09-21 13:02:16'),
(2279, 'WEREME', 'Malika Fatim Diane', 'FEMININ', '2000-01-25 00:00:00', NULL, NULL, NULL, NULL, '64 17 79 15', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:05:12', '2018-09-21 13:05:12'),
(2280, 'OUEDRAOGO', 'Wendelamita Abdoul Djibril', 'MASCULIN', '2000-01-28 00:00:00', NULL, NULL, NULL, NULL, '72 71 95 98', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:07:03', '2018-09-21 13:07:03'),
(2281, 'KABORE', 'Abulkader', 'MASCULIN', '1997-10-03 00:00:00', NULL, NULL, NULL, NULL, '74 11 75 68', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:08:55', '2018-09-21 13:08:55'),
(2282, 'KABORE', 'Fousséni', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 46 96 47', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:10:17', '2018-09-21 13:10:17'),
(2283, 'SEDOGO', 'Abdoul Hafiz', 'MASCULIN', '1999-08-21 00:00:00', NULL, NULL, NULL, NULL, '70 76 28 00', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:12:13', '2018-09-21 13:12:13'),
(2284, 'DRABO', 'Inoussa', 'MASCULIN', '1999-08-23 00:00:00', NULL, NULL, NULL, NULL, '66 79 04 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:13:41', '2018-09-21 13:13:41'),
(2285, 'KABORE', 'Synthia Astride Touwendsida', 'FEMININ', '1999-08-21 00:00:00', NULL, NULL, NULL, NULL, '63 58 85 38', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:15:27', '2018-09-21 13:15:27'),
(2286, 'SAWADOGO', 'John Ozaâré', 'MASCULIN', '2000-05-22 00:00:00', NULL, NULL, NULL, NULL, '51 49 81 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:20:00', '2018-09-21 13:20:00'),
(2287, 'OUEDRAOGO', 'Moussa', 'MASCULIN', '1999-07-12 00:00:00', NULL, NULL, NULL, NULL, '65 81 21 13', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:22:08', '2018-09-21 13:22:08'),
(2288, 'BAYILI', 'Gerard', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '74 82 52 05', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:23:41', '2018-09-21 13:23:41'),
(2289, 'SAWADOGO', 'Djibrina', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 59 92 14', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:26:00', '2018-09-21 13:26:00'),
(2290, 'SAKO', 'Adama', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '66 27 63 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:27:49', '2018-09-21 13:27:49'),
(2291, 'KABORE', 'Kiswendsida Thomas', 'MASCULIN', '1998-07-03 00:00:00', NULL, NULL, NULL, NULL, '62 60 77 03', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:29:51', '2018-09-21 13:29:51'),
(2292, 'ZONGO', 'Souleymane', 'MASCULIN', '1997-05-13 00:00:00', NULL, NULL, NULL, NULL, '67 08 75 47', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:33:06', '2018-09-21 13:33:06'),
(2293, 'BARRO', 'Belli Hubert', 'MASCULIN', '1998-03-26 00:00:00', NULL, NULL, NULL, NULL, '77 36 30 89', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 13:36:44', '2018-09-21 13:36:44'),
(2294, 'SAWADOGO', 'Pierre Anselme Wendsongda', 'MASCULIN', '1997-10-08 00:00:00', NULL, NULL, NULL, NULL, '75727836', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 13:45:59', '2018-09-21 13:45:59'),
(2295, 'COMPAORE', 'Asmao', 'FEMININ', '1999-05-08 00:00:00', NULL, NULL, NULL, NULL, '65084117', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 13:51:37', '2018-09-21 13:51:37'),
(2296, 'OUEDRAOGO', 'Patricia Farida', 'FEMININ', '1996-09-14 00:00:00', NULL, NULL, NULL, NULL, '74424340', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 13:53:33', '2018-09-21 13:53:33'),
(2297, 'ZARE', 'Yacouba', 'MASCULIN', '1998-09-27 00:00:00', NULL, NULL, NULL, NULL, '70733121', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 13:56:55', '2018-09-21 13:56:55'),
(2298, 'BOGNINI', 'Dofinikamou Benjamin 1er Jumeau', 'MASCULIN', '1999-09-18 00:00:00', NULL, NULL, NULL, NULL, '75053410', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:00:08', '2018-09-21 14:00:08'),
(2299, 'SOW', 'Assoumaw Falilat', 'MASCULIN', '2000-09-26 00:00:00', NULL, NULL, NULL, NULL, '70949435', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:05:25', '2018-09-21 14:05:25'),
(2300, 'TAMBARA', 'Adama Malika', 'FEMININ', '2000-08-11 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:05:48', '2018-09-21 14:05:48'),
(2301, 'HEMA', 'Nansarbiè', 'MASCULIN', '1997-12-04 00:00:00', NULL, NULL, NULL, NULL, '75247964', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:09:42', '2018-09-21 14:09:42'),
(2302, 'THIOMBIANO', 'Taamba Brice Bedel', 'MASCULIN', '2000-04-11 00:00:00', NULL, NULL, NULL, NULL, '51105869', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:10:04', '2018-09-21 14:10:04'),
(2303, 'SANOU', 'Georges', 'MASCULIN', '1999-04-23 00:00:00', NULL, NULL, NULL, NULL, '74203209', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:11:58', '2018-09-21 14:11:58'),
(2304, 'LODOUN', 'Hayabassoum', 'FEMININ', '2000-12-03 00:00:00', NULL, NULL, NULL, NULL, '52055656', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:13:01', '2018-09-21 14:13:01'),
(2305, 'BONCOUNGOU', 'Tinbpidian Carole', 'MASCULIN', '2000-03-19 00:00:00', NULL, NULL, NULL, NULL, '73659947', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:14:33', '2018-09-21 14:14:33'),
(2306, 'DRABO', 'Moustapha', 'MASCULIN', '1999-09-25 00:00:00', NULL, NULL, NULL, NULL, '63018202', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:14:50', '2018-09-21 14:14:50'),
(2307, 'OUOBA', 'Alexandre Antoé Né Wendé', 'MASCULIN', '1998-08-12 00:00:00', NULL, NULL, NULL, NULL, '62849458', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:19:54', '2018-09-21 14:19:54'),
(2308, 'KAFANDO', 'Abdoul Moumoun', 'MASCULIN', '1996-12-02 00:00:00', NULL, NULL, NULL, NULL, '78234305', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:21:28', '2018-09-21 14:21:28'),
(2309, 'COMPAORE', 'Kévin Sidbéwendé Wilfried', 'MASCULIN', '1998-11-22 00:00:00', NULL, NULL, NULL, NULL, '60121452', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:21:57', '2018-09-21 14:21:57'),
(2310, 'SAVADOGO', 'Issoufou', 'MASCULIN', '1997-06-06 00:00:00', NULL, NULL, NULL, NULL, '78756035', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:23:08', '2018-09-21 14:23:08'),
(2311, 'KABORE', 'Pend-Wendé Fidèle', 'MASCULIN', '1998-01-22 02:00:00', NULL, NULL, NULL, NULL, '61 16 59 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 14:23:11', '2018-09-21 14:23:11'),
(2312, 'SANGO', 'Abdoul Ganinou', 'MASCULIN', '1999-01-10 00:00:00', NULL, NULL, NULL, NULL, '72037284', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:25:33', '2018-09-21 14:25:33'),
(2313, 'DABILOUGOU', 'Adamdaogo', 'MASCULIN', '2000-04-10 00:00:00', NULL, NULL, NULL, NULL, '66217948', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:25:53', '2018-09-21 14:25:53'),
(2314, 'DENE', 'Bassiratou', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:27:17', '2018-09-21 14:27:17'),
(2315, 'DAMIBA', 'Nicolas Donal Ragnang Newendé', 'MASCULIN', '1998-12-06 00:00:00', NULL, NULL, NULL, NULL, '72750779', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:27:58', '2018-09-21 14:27:58'),
(2316, 'SALAMBERE', 'Safiata Fawziyya', 'FEMININ', '1999-08-26 00:00:00', NULL, NULL, NULL, NULL, '73707088', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:30:34', '2018-09-21 14:30:34'),
(2317, 'BOENA', 'Nabonswendé Serge Alain', 'MASCULIN', '1998-10-07 00:00:00', NULL, NULL, NULL, NULL, '65530490', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:33:25', '2018-09-21 14:33:25'),
(2318, 'DIPAMA', 'Oumar', 'MASCULIN', '1997-08-08 00:00:00', NULL, NULL, NULL, NULL, '74041408', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:34:54', '2018-09-21 14:34:54'),
(2319, 'HIEN', 'Sabmbateryouo marina', 'FEMININ', '1997-07-19 00:00:00', NULL, NULL, NULL, NULL, '51927413', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:37:09', '2018-09-21 14:37:09'),
(2320, 'DABO', 'Bassite', 'MASCULIN', '1998-03-26 00:00:00', NULL, NULL, NULL, NULL, '70847833', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:38:38', '2018-09-21 14:38:38'),
(2321, 'DAMIBA', 'Oumarou', 'MASCULIN', '1998-03-16 00:00:00', NULL, NULL, NULL, NULL, '72499791', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:40:02', '2018-09-21 14:40:02'),
(2322, 'NIKIEMA', 'Salimata', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '75565760', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:41:29', '2018-09-21 14:41:29'),
(2323, 'SAGNON', 'Siépoua Issouf', 'MASCULIN', '1999-05-27 00:00:00', NULL, NULL, NULL, NULL, '61529082', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:42:55', '2018-09-21 14:42:55'),
(2324, 'OUEDRAOGO', 'Abdoul Aziz', 'MASCULIN', '1996-10-15 00:00:00', NULL, NULL, NULL, NULL, '78637224', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:44:04', '2018-09-21 14:44:04'),
(2325, 'ZIDA', 'Kadiatou', 'FEMININ', '1999-11-11 00:00:00', NULL, NULL, NULL, NULL, '71766008', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:45:34', '2018-09-21 14:45:34'),
(2326, 'ZOUNGRANA', 'Christian Didier 2è Jumeau', 'MASCULIN', '1996-04-29 00:00:00', NULL, NULL, NULL, NULL, '70259970', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:47:09', '2018-09-21 14:47:09'),
(2327, 'SAMA', 'Crépin', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '51329101', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:49:23', '2018-09-21 14:49:23'),
(2328, 'SOMBIE', 'N\'Pié Hodou Abdallah', 'MASCULIN', '1997-06-08 00:00:00', NULL, NULL, NULL, NULL, '73020181', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:50:15', '2018-09-21 14:50:15'),
(2329, 'OUEDRAOGO', 'Salamata Nafissatou', 'FEMININ', '1998-12-09 00:00:00', NULL, NULL, NULL, NULL, '72 71 89 85', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 14:50:34', '2018-09-21 14:50:34');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(2330, 'TARO', 'Pascal', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '61506028', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:51:06', '2018-09-21 14:51:06'),
(2331, 'TRAORE', 'Tiohe Benjamin', 'MASCULIN', '1997-01-15 00:00:00', NULL, NULL, NULL, NULL, '1694772', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:52:15', '2018-09-21 14:52:15'),
(2332, 'KOROGO', 'Idrissa', 'MASCULIN', '1997-05-15 00:00:00', NULL, NULL, NULL, NULL, '76 24 50 38', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 14:52:24', '2018-09-21 14:52:24'),
(2333, 'OUEDRAOGO', 'Rasmané', 'MASCULIN', '1997-02-01 00:00:00', NULL, NULL, NULL, NULL, '77911505', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:53:02', '2018-09-21 14:53:02'),
(2334, 'FARMA', 'Bourami Siméon', 'MASCULIN', '1998-12-09 00:00:00', NULL, NULL, NULL, NULL, '60 27 89 79', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 14:54:02', '2018-09-21 14:54:02'),
(2335, 'KY', 'Félicité', 'FEMININ', '1999-03-20 00:00:00', NULL, NULL, NULL, NULL, '57 31 96 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 14:55:35', '2018-09-21 14:55:35'),
(2336, 'NYAME', 'Bénoît Freeman Fadily Ange', 'MASCULIN', '2000-10-24 00:00:00', NULL, NULL, NULL, NULL, '76251285', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 14:55:46', '2018-09-21 14:55:46'),
(2337, 'BAKO', 'Gnama Serge Stanislas', 'MASCULIN', '1999-11-11 00:00:00', NULL, NULL, NULL, NULL, '51431722', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 14:56:32', '2018-09-21 14:56:32'),
(2338, 'GUIRE', 'Ibrahim', 'MASCULIN', '1997-11-22 00:00:00', NULL, NULL, NULL, NULL, '75 31 60 38', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 14:57:18', '2018-09-21 14:57:18'),
(2339, 'KABORE', 'Nassiri', 'MASCULIN', '1997-03-06 00:00:00', NULL, NULL, NULL, NULL, '60 28 22 34', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 14:58:58', '2018-09-21 14:58:58'),
(2340, 'OUEDRAOGO', 'Missibahou', 'MASCULIN', '1998-08-31 00:00:00', NULL, NULL, NULL, NULL, '73343475', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:00:32', '2018-09-21 15:00:32'),
(2341, 'ILBOUDO', 'Ibrahim', 'MASCULIN', '1998-03-22 00:00:00', NULL, NULL, NULL, NULL, '70 46 50 08', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:00:36', '2018-09-21 15:00:36'),
(2342, 'GANSONRE', 'Wendpanga Cédrique', 'MASCULIN', '1996-06-18 00:00:00', NULL, NULL, NULL, NULL, '72 56 47 87', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:02:51', '2018-09-21 15:02:51'),
(2343, 'DABIRE', 'Buoyan Ines', 'FEMININ', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '72744519', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:03:01', '2018-09-21 15:03:01'),
(2344, 'COMPAORE', 'Adama Léonard', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '74363840', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:05:05', '2018-09-21 15:05:05'),
(2345, 'LOUE', 'Ely Bernadette Marie Justin', 'FEMININ', '2001-01-01 00:00:00', NULL, NULL, NULL, NULL, '76 60 43 58', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:05:07', '2018-09-21 15:05:07'),
(2346, 'BADINI', 'Sayouba', 'MASCULIN', '1998-03-12 00:00:00', NULL, NULL, NULL, NULL, '73400447', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:07:13', '2018-09-21 15:07:13'),
(2347, 'OUEDRAOGO', 'Boureima', 'MASCULIN', '1998-03-10 00:00:00', NULL, NULL, NULL, NULL, '74 49 94 47', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:07:41', '2018-09-21 15:07:41'),
(2348, 'KONMIMTANGA', 'Aristide Kévin', 'MASCULIN', '1998-03-23 00:00:00', NULL, NULL, NULL, NULL, '73299906', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:08:59', '2018-09-21 15:08:59'),
(2349, 'KABORE', 'Palingwendé Anita Inès', 'FEMININ', '1999-06-12 00:00:00', NULL, NULL, NULL, NULL, '63 75 36 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:10:03', '2018-09-21 15:10:03'),
(2350, 'OUEDRAOGO', 'Aminata', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '78057986', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:10:28', '2018-09-21 15:10:28'),
(2351, 'KIEMDE', 'Koudouregma Alain', 'MASCULIN', '1998-09-07 00:00:00', NULL, NULL, NULL, NULL, '73 29 16 41', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:12:24', '2018-09-21 15:12:24'),
(2352, 'ONADJA', 'Pougoumba Sakina', 'FEMININ', '1997-10-06 00:00:00', NULL, NULL, NULL, NULL, '70323924', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:12:38', '2018-09-21 15:12:38'),
(2353, 'OUEDRAOGO', 'Mouniratou', 'FEMININ', '1997-08-17 00:00:00', NULL, NULL, NULL, NULL, '60093284', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:14:03', '2018-09-21 15:14:03'),
(2354, 'ZOUNDI', 'Hervé', 'MASCULIN', '1999-06-20 00:00:00', NULL, NULL, NULL, NULL, '71 45 77 94', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:14:08', '2018-09-21 15:14:08'),
(2355, 'KABORE', 'Malegdebkièta Sibiri Jean Yves', 'MASCULIN', '1997-04-12 00:00:00', NULL, NULL, NULL, NULL, '72 81 94 82', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:16:09', '2018-09-21 15:16:09'),
(2356, 'KABRE', 'Yvette', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 90 63 74', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:18:28', '2018-09-21 15:18:28'),
(2357, 'BITIBALY', 'Emmanuel', 'MASCULIN', '1998-07-21 00:00:00', NULL, NULL, NULL, NULL, '72969882', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:18:44', '2018-09-21 15:18:44'),
(2358, 'SAMBA', 'Kuilga Hypolite', 'MASCULIN', '1997-02-10 00:00:00', NULL, NULL, NULL, NULL, '56 77 91 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:20:26', '2018-09-21 15:20:26'),
(2359, 'BERE', 'Téwendé Daryl Rodrigue', 'MASCULIN', '2000-10-20 00:00:00', NULL, NULL, NULL, NULL, '60298703', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:20:56', '2018-09-21 15:20:56'),
(2360, 'KABORE', 'Isaïe', 'MASCULIN', '1998-10-18 00:00:00', NULL, NULL, NULL, NULL, '71 41 68 50', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:22:16', '2018-09-21 15:22:16'),
(2361, 'SAWADOGO', 'Abou Soufiane', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '74973626', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:23:19', '2018-09-21 15:23:19'),
(2362, 'KIEMDE', 'Rita', 'FEMININ', '1996-05-19 00:00:00', NULL, NULL, NULL, NULL, '54 86 68 35', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:24:01', '2018-09-21 15:24:01'),
(2363, 'DAH', 'Tièrauh Suona Eric', 'MASCULIN', '1998-02-24 00:00:00', NULL, NULL, NULL, NULL, '64566802', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:25:21', '2018-09-21 15:25:21'),
(2364, 'SAWADOGO', 'Paténéma', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '55 20 77 87', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:25:46', '2018-09-21 15:25:46'),
(2365, 'BAMOUNI', 'Ben Rachid', 'MASCULIN', '1996-09-20 00:00:00', NULL, NULL, NULL, NULL, '7413384', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:27:19', '2018-09-21 15:27:19'),
(2366, 'GUINDO', 'Ousséni', 'MASCULIN', '1996-11-28 00:00:00', NULL, NULL, NULL, NULL, '70 56 25 18', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:27:47', '2018-09-21 15:27:47'),
(2367, 'SAWADOGO', 'Moumini', 'MASCULIN', '1997-11-01 00:00:00', NULL, NULL, NULL, NULL, '71077444', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:28:55', '2018-09-21 15:28:55'),
(2368, 'PIERRIWABGA', 'Sayouba', 'MASCULIN', '1998-10-26 00:00:00', NULL, NULL, NULL, NULL, '61117638', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-21 15:31:04', '2018-09-21 15:31:04'),
(2369, 'SAWADOGO', 'Moussa', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '67 79 25 25', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:32:40', '2018-09-21 15:32:40'),
(2370, 'MADIEGA', 'Wouro', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '71338717', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 15:36:54', '2018-09-21 15:36:54'),
(2371, 'OUEDRAOGO', 'Adaré', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '77 48 84 35', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:37:27', '2018-09-21 15:37:27'),
(2372, 'GANSONRE', 'Hamidou', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 40 01 63', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:42:51', '2018-09-21 15:42:51'),
(2373, 'SOME', 'Sambahoro François', 'MASCULIN', '1999-03-14 00:00:00', NULL, NULL, NULL, NULL, '76 46 79 98', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 15:51:22', '2018-09-21 15:51:22'),
(2374, 'SAWADOGO', 'Barthelemy', 'MASCULIN', '1998-01-11 00:00:00', NULL, NULL, NULL, NULL, '72043271', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 15:53:34', '2018-09-21 15:53:34'),
(2375, 'KIEMDE', 'Wendingoundi Benjamine Bienvenue', 'FEMININ', '1999-11-29 00:00:00', NULL, NULL, NULL, NULL, '51397438', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 15:55:57', '2018-09-21 15:55:57'),
(2376, 'SISSAO', 'Nina Elsa Sougrinooma', 'FEMININ', '2001-01-11 00:00:00', NULL, NULL, NULL, NULL, '73184399', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 15:59:26', '2018-09-21 15:59:26'),
(2377, 'SOMBIE', 'Dramane', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '67 13 68 67', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:00:07', '2018-09-21 16:00:07'),
(2378, 'TAGNABOU', 'Sylvain', 'MASCULIN', '1999-11-05 00:00:00', NULL, NULL, NULL, NULL, '61751535', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:01:31', '2018-09-21 16:01:31'),
(2379, 'COMPAORE', 'Mohamadi Bassirou', 'MASCULIN', '1999-05-17 00:00:00', NULL, NULL, NULL, NULL, '75 11 44 45', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:02:46', '2018-09-21 16:02:46'),
(2380, 'TOE', 'Caleb Aristide', 'MASCULIN', '1998-09-25 00:00:00', NULL, NULL, NULL, NULL, '61309636', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:03:26', '2018-09-21 16:03:26'),
(2381, 'DOLY', 'Tôgô Etienne', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '75911319', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:06:12', '2018-09-21 16:06:12'),
(2382, 'OUEDRAOGO', 'Youssouf', 'MASCULIN', '1999-10-09 00:00:00', NULL, NULL, NULL, NULL, '77 83 83 57', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:07:20', '2018-09-21 16:07:20'),
(2383, 'BOUDA', 'Amal Kenza Noura', 'FEMININ', '2000-08-01 00:00:00', NULL, NULL, NULL, NULL, '70513113', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:08:32', '2018-09-21 16:08:32'),
(2384, 'OUEDRAOGO', 'Rimedo', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '65 85 04 96', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:09:42', '2018-09-21 16:09:42'),
(2385, 'KABORE', 'Saïbou', 'MASCULIN', '1996-06-20 00:00:00', NULL, NULL, NULL, NULL, '61 16 52 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:11:23', '2018-09-21 16:11:23'),
(2386, 'TRAORE', 'Isadora Astrid', 'FEMININ', '2001-05-23 00:00:00', NULL, NULL, NULL, NULL, '70064455', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:11:41', '2018-09-21 16:11:41'),
(2387, 'OUOBA', 'Dialinli', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 38 42 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:12:57', '2018-09-21 16:12:57'),
(2388, 'BAMBARA', 'Nourdine Martial', 'MASCULIN', '2000-07-19 00:00:00', NULL, NULL, NULL, NULL, '60 71 46 05', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:14:23', '2018-09-21 16:14:23'),
(2389, 'KABORE', 'Thomas', 'MASCULIN', '1998-10-26 00:00:00', NULL, NULL, NULL, NULL, '72 18 27 93', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:15:55', '2018-09-21 16:15:55'),
(2390, 'SOMA', 'Awa Farida', 'FEMININ', '1999-06-11 00:00:00', NULL, NULL, NULL, NULL, '63618116', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:16:34', '2018-09-21 16:16:34'),
(2391, 'KISSOU', 'Gerassime Wenne Waooga', 'MASCULIN', '1998-03-05 00:00:00', NULL, NULL, NULL, NULL, '71 55 96 55', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:18:07', '2018-09-21 16:18:07'),
(2392, 'SAWADOGO', 'Kiswendsida Judicaël', 'MASCULIN', '2000-04-03 00:00:00', NULL, NULL, NULL, NULL, '63700848', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:18:52', '2018-09-21 16:18:52'),
(2393, 'SESSOUMA', 'Amadou Tianzé', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 38 87 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:19:49', '2018-09-21 16:19:49'),
(2394, 'KABORE', 'Sidwaya Noufou', 'MASCULIN', '2000-10-09 00:00:00', NULL, NULL, NULL, NULL, '65 74 13 44', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-21 16:21:27', '2018-09-21 16:21:27'),
(2395, 'SOURA', 'Dounefalma Ben Mohamed', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '63735152', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:24:46', '2018-09-21 16:24:46'),
(2396, 'OUEDRAOGO', 'Mouhyidine', 'MASCULIN', '2000-08-01 00:00:00', NULL, NULL, NULL, NULL, '73433889', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:27:01', '2018-09-21 16:27:01'),
(2397, 'OUEDRAOGO', 'Wendyam Marie Kévine Roxane', 'FEMININ', '1999-11-15 00:00:00', NULL, NULL, NULL, NULL, '70446500', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:29:29', '2018-09-21 16:29:29'),
(2398, 'OUEDRAOGO', 'Patinda Dieudonné', 'MASCULIN', '1998-05-07 02:00:00', NULL, NULL, NULL, NULL, '56 94 18 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 16:32:55', '2018-09-21 16:32:55'),
(2399, 'KIMA', 'Palingwendé Brice William', 'MASCULIN', '2001-01-23 00:00:00', NULL, NULL, NULL, NULL, '61594096', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:34:07', '2018-09-21 16:34:07'),
(2400, 'SORE', 'Abdoul Fattaf', 'MASCULIN', '1997-10-16 02:00:00', NULL, NULL, NULL, NULL, '51 30 34 70', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 16:38:14', '2018-09-21 16:38:14'),
(2401, 'DRABO', 'Farida', 'FEMININ', '1999-04-27 00:00:00', NULL, NULL, NULL, NULL, '70281830', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:38:29', '2018-09-21 16:38:29'),
(2402, 'BATIONO', 'Hermann Judicaël', 'MASCULIN', '1996-09-18 02:00:00', NULL, NULL, NULL, NULL, '72 65 66 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 16:40:51', '2018-09-21 16:40:51'),
(2403, 'KOASSA', 'Kiswend-Sida Antoine', 'MASCULIN', '1997-02-17 00:00:00', NULL, NULL, NULL, NULL, '60681385', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:40:53', '2018-09-21 16:40:53'),
(2404, 'LANKOANDE', 'Job', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '66172042', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:42:42', '2018-09-21 16:42:42'),
(2405, 'TIENDREBEOGO', 'Marie-Césarine', 'FEMININ', '1997-04-03 02:00:00', NULL, NULL, NULL, NULL, '60 00 10 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 16:44:36', '2018-09-21 16:44:36'),
(2406, 'OUEDRAOGO', 'Luc', 'MASCULIN', '1996-10-18 02:00:00', NULL, NULL, NULL, NULL, '74 10 98 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 16:46:13', '2018-09-21 16:46:13'),
(2407, 'NIADA', 'Wend-Konta Dominique', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '51609736', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:47:05', '2018-09-21 16:47:05'),
(2408, 'NEBIE', 'Yves', 'MASCULIN', '1996-03-10 02:00:00', NULL, NULL, NULL, NULL, '71 71 77 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 16:49:44', '2018-09-21 16:49:44'),
(2409, 'LALOGO', 'Dakiswendé Axelle Aurélie', 'FEMININ', '2000-10-03 00:00:00', NULL, NULL, NULL, NULL, '51404523', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 16:52:28', '2018-09-21 16:52:28'),
(2410, 'YAMEOGO', 'Rateba Lynda Laeticia', 'FEMININ', '1998-10-22 02:00:00', NULL, NULL, NULL, NULL, '70 38 29 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 16:53:24', '2018-09-21 16:53:24'),
(2411, 'SAMBA', 'Koudaogo', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '78 37 63 40', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 16:57:58', '2018-09-21 16:57:58'),
(2412, 'NAMOUNTOUGOU', 'Larba', 'MASCULIN', '1997-10-28 00:00:00', NULL, NULL, NULL, NULL, '72953056', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:00:31', '2018-09-21 17:00:31'),
(2413, 'WIBGA', 'Ibrahim', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '57 80 89 65', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 17:02:03', '2018-09-21 17:02:03'),
(2414, 'LANKOANDE', 'Sougrouma', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '77092929', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:02:55', '2018-09-21 17:02:55'),
(2415, 'COULIBALY', 'Tankian Aimé de Christ', 'MASCULIN', '1999-03-01 02:00:00', NULL, NULL, NULL, NULL, '57 11 97 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 17:04:52', '2018-09-21 17:04:52'),
(2416, 'COULIDIATI', 'Alizéta', 'FEMININ', '1998-08-28 00:00:00', NULL, NULL, NULL, NULL, '61038300', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:08:04', '2018-09-21 17:08:04'),
(2417, 'TEBDA', 'Mathieu', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 09 52 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-21 17:08:20', '2018-09-21 17:08:20'),
(2418, 'NAMOUNTOUGOU', 'Barnabé', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '7215362727', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:12:57', '2018-09-21 17:12:57'),
(2419, 'BELEM', 'Abdou Guelilou', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '55868411', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:24:14', '2018-09-21 17:24:14'),
(2420, 'BAMBARA', 'Anne Habib', 'FEMININ', '1999-07-26 00:00:00', NULL, NULL, NULL, NULL, '63921366', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:27:27', '2018-09-21 17:27:27'),
(2421, 'ZOMBRE', 'Larba Anselme', 'MASCULIN', '1999-04-21 00:00:00', NULL, NULL, NULL, NULL, '61048973', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:32:32', '2018-09-21 17:32:32'),
(2422, 'WANDAOGO', 'Djouwêratou', 'FEMININ', '1998-05-23 00:00:00', NULL, NULL, NULL, NULL, '70684367', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:35:26', '2018-09-21 17:35:26'),
(2423, 'SORGHO', 'Boureima', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '72182336', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:37:32', '2018-09-21 17:37:32'),
(2424, 'SAWADOGO', 'Sandra', 'FEMININ', '2000-09-14 00:00:00', NULL, NULL, NULL, NULL, '61564173', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:39:20', '2018-09-21 17:39:20'),
(2425, 'SOME', 'Bienvenu', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '61880360', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:42:37', '2018-09-21 17:42:37'),
(2426, 'SAWADOGO', 'nESTOR', 'MASCULIN', '1996-02-25 00:00:00', NULL, NULL, NULL, NULL, '66019062', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:45:09', '2018-09-21 17:45:09'),
(2427, 'BADOLO', 'Séverin Yisharh', 'MASCULIN', '1999-11-27 00:00:00', NULL, NULL, NULL, NULL, '73545348', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-21 17:47:50', '2018-09-21 17:47:50'),
(2428, 'KIENDREBEOGO', 'Ismaïla', 'MASCULIN', '1999-06-15 00:00:00', NULL, NULL, NULL, NULL, '61918727', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 08:05:28', '2018-09-24 08:05:28'),
(2429, 'ZIBA', 'Mariam Lania', 'FEMININ', '2001-10-24 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 08:07:40', '2018-09-24 08:07:40'),
(2430, 'OUEDRAOGO', 'Evrard', 'MASCULIN', '1997-05-05 00:00:00', NULL, NULL, NULL, NULL, '71536793', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 08:09:13', '2018-09-24 08:09:13'),
(2431, 'KABORE', 'Wend-Kuni Carole', 'FEMININ', '2000-03-22 00:00:00', NULL, NULL, NULL, NULL, '62405060', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 08:11:05', '2018-09-24 08:11:05'),
(2432, 'BA', 'Mariam', 'FEMININ', '1996-09-14 00:00:00', NULL, NULL, NULL, NULL, '72231126', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 08:12:45', '2018-09-24 08:12:45'),
(2433, 'TAPSOBA', 'Wendkouni Asmao', 'MASCULIN', '2000-06-03 00:00:00', NULL, NULL, NULL, NULL, '60412971', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 08:15:18', '2018-09-24 08:15:18'),
(2434, 'ZARE', 'Paul Léon Christian', 'MASCULIN', '1999-11-10 00:00:00', NULL, NULL, NULL, NULL, '71793421', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 08:17:03', '2018-09-24 08:17:03'),
(2435, 'TRAORE', 'Djidé Arianne Thérèse Sita', 'FEMININ', '1999-09-30 00:00:00', NULL, NULL, NULL, NULL, '71518779', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 08:19:15', '2018-09-24 08:19:15'),
(2436, 'COMPAORE', 'Wendlassida Sevérin', 'MASCULIN', '1999-11-26 00:00:00', NULL, NULL, NULL, NULL, '71478388', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 08:21:10', '2018-09-24 08:21:10'),
(2437, 'KOAMA', 'Abdoul Fatach', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '62 36 54 14', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:32:12', '2018-09-24 08:32:12'),
(2438, 'KOURAOGO', 'Ousmane', 'MASCULIN', '1997-06-30 00:00:00', NULL, NULL, NULL, NULL, '63 25 46 29', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:35:23', '2018-09-24 08:35:23'),
(2439, 'ZONOU', 'Mohamed Rachid', 'MASCULIN', '1997-06-13 00:00:00', NULL, NULL, NULL, NULL, '73 63 02 68', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:40:17', '2018-09-24 08:40:17'),
(2440, 'ZOUNDI', 'Têgawendé Lionel', 'MASCULIN', '2000-07-26 00:00:00', NULL, NULL, NULL, NULL, '72389424', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 08:42:17', '2018-09-24 08:42:17'),
(2441, 'COMPAORE', 'Salif', 'MASCULIN', '1996-07-24 00:00:00', NULL, NULL, NULL, NULL, '71 67 22 34', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:43:36', '2018-09-24 08:43:36'),
(2442, 'SAVADOGO', 'Adama', 'MASCULIN', '1996-06-07 00:00:00', NULL, NULL, NULL, NULL, '65 87 23 60', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:45:37', '2018-09-24 08:45:37'),
(2443, 'KABORE', 'Boukari', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '55 89 03 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:47:18', '2018-09-24 08:47:18'),
(2444, 'KABORE', 'Martin', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 84 68 22', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:48:48', '2018-09-24 08:48:48'),
(2445, 'SANDWIDI', 'Edgard', 'MASCULIN', '1998-10-16 00:00:00', NULL, NULL, NULL, NULL, '60 72 43 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:50:54', '2018-09-24 08:50:54'),
(2446, 'BILGO', 'Nourou', 'MASCULIN', '1999-09-05 00:00:00', NULL, NULL, NULL, NULL, '51 48 45 68', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:52:37', '2018-09-24 08:52:37'),
(2447, 'KIENDREBEOGO', 'Robert', 'MASCULIN', '1996-05-01 00:00:00', NULL, NULL, NULL, NULL, '64 15 22 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:54:12', '2018-09-24 08:54:12'),
(2448, 'BELEM', 'Ayman Fadil E. Sombnobgnan', 'MASCULIN', '2001-01-22 00:00:00', NULL, NULL, NULL, NULL, '70 25 18 80', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 08:57:19', '2018-09-24 08:57:19'),
(2449, 'DRABO', 'Abdoul Azize Taofik', 'MASCULIN', '1996-11-15 02:00:00', NULL, NULL, NULL, NULL, '71 51 60 53', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 08:59:06', '2018-09-24 08:59:06'),
(2450, 'TIENDREBEOGO', 'Mohamadi', 'MASCULIN', '1998-02-15 00:00:00', NULL, NULL, NULL, NULL, '60 57 54 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:00:09', '2018-09-24 09:00:09'),
(2451, 'BENIN', 'Amza Jean-Baptiste', 'MASCULIN', '1997-12-27 00:00:00', NULL, NULL, NULL, NULL, '73339982', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:00:24', '2018-09-24 09:00:24'),
(2452, 'SANFO', 'Yaya', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '69185256', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:01:43', '2018-09-24 09:01:43'),
(2453, 'KABORE', 'Raymond', 'MASCULIN', '1998-01-04 00:00:00', NULL, NULL, NULL, NULL, '74 43 99 53', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:02:35', '2018-09-24 09:02:35'),
(2454, 'NIKIEMA', 'François', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '66 50 27 88', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:05:15', '2018-09-24 09:05:15'),
(2455, 'TRAORE', 'Fawzya Thana', 'FEMININ', '2001-02-20 00:00:00', NULL, NULL, NULL, NULL, '63723437', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:06:54', '2018-09-24 09:06:54'),
(2456, 'ILBOUDO', 'Wendpanga Louis Ephrem', 'MASCULIN', '1997-11-30 00:00:00', NULL, NULL, NULL, NULL, '76 47 22 64', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:08:21', '2018-09-24 09:08:21'),
(2457, 'BADO', 'Richard', 'MASCULIN', '1997-01-01 00:00:00', NULL, NULL, NULL, NULL, '77414251', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:12:03', '2018-09-24 09:12:03'),
(2458, 'OUEDRAOGO', 'Abdoul Rachid', 'MASCULIN', '1997-10-02 00:00:00', NULL, NULL, NULL, NULL, '61 40 41 73', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:12:30', '2018-09-24 09:12:30'),
(2459, 'OUEDRAOGO', 'Isidore', 'MASCULIN', '1998-04-16 00:00:00', NULL, NULL, NULL, NULL, '78249682', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:13:27', '2018-09-24 09:13:27'),
(2460, 'KIEMTORE', 'Abdoul Tatahou', 'MASCULIN', '1996-03-07 00:00:00', NULL, NULL, NULL, NULL, '79 79 55 53', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:15:18', '2018-09-24 09:15:18'),
(2461, 'YIESSIEN', 'Samira Nadine', 'FEMININ', '1996-09-06 00:00:00', NULL, NULL, NULL, NULL, '72325319', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:16:46', '2018-09-24 09:16:46'),
(2462, 'OUALI', 'Mindiéba', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '73 73 78 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:17:58', '2018-09-24 09:17:58'),
(2463, 'NOBA', 'Carine', 'FEMININ', '1999-02-15 00:00:00', NULL, NULL, NULL, NULL, '73361610', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:18:20', '2018-09-24 09:18:20'),
(2464, 'TRAORE', 'Abdoul Aziz', 'MASCULIN', '1996-06-30 02:00:00', NULL, NULL, NULL, NULL, '70 85 73 48', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 09:21:15', '2018-09-24 09:21:15'),
(2465, 'OUATTARA', 'Fatogoma Abdoul Aziz', 'MASCULIN', '2000-11-19 00:00:00', NULL, NULL, NULL, NULL, '77 35 83 53', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:22:04', '2018-09-24 09:22:04'),
(2466, 'SAWADOGO', 'Abdoul Moumouni', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '65 77 32 65', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:24:43', '2018-09-24 09:24:43'),
(2467, 'DIALLO', 'Yacouba', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 49 96 64', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:27:28', '2018-09-24 09:27:28'),
(2468, 'DEMBELE', 'Lohoyiwa Irénée', 'MASCULIN', '1996-09-08 02:00:00', NULL, NULL, NULL, NULL, '62 28 75 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 09:28:32', '2018-09-24 09:28:32'),
(2469, 'OUEDRAOGO', 'Sayouba', 'MASCULIN', '1998-04-24 00:00:00', NULL, NULL, NULL, NULL, '77606760', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 09:29:18', '2018-09-24 09:29:18'),
(2470, 'SAWADOGO', 'Abdallah', 'MASCULIN', '2000-04-26 00:00:00', NULL, NULL, NULL, NULL, '73 45 54 04', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:30:20', '2018-09-24 09:30:20'),
(2471, 'DIALLO', 'Aïda Alicia Welhorè', 'FEMININ', '2000-09-15 00:00:00', NULL, NULL, NULL, NULL, '62696622', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 09:32:06', '2018-09-24 09:32:06'),
(2472, 'SAWADOGO', 'Boukary', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '62 37 42 51', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:32:29', '2018-09-24 09:32:29'),
(2473, 'GUIGEMDE', 'Lassina', 'MASCULIN', '1998-01-22 00:00:00', NULL, NULL, NULL, NULL, '64847885', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 09:34:30', '2018-09-24 09:34:30'),
(2474, 'SAWADOGO', 'Aziz', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '70 81 23 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:34:39', '2018-09-24 09:34:39'),
(2475, 'TIENDREBEOGO', 'Daouda', 'MASCULIN', '1997-04-28 00:00:00', NULL, NULL, NULL, NULL, '70 97 32 44', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:36:44', '2018-09-24 09:36:44'),
(2476, 'BAMOUNI', 'Armel Bienveniu', 'MASCULIN', '1998-08-15 00:00:00', NULL, NULL, NULL, NULL, '63 28 86 32', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:38:49', '2018-09-24 09:38:49'),
(2477, 'BAGUIAN', 'Rasmata', 'FEMININ', '1996-03-09 00:00:00', NULL, NULL, NULL, NULL, '68 69 87 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:41:42', '2018-09-24 09:41:42'),
(2478, 'NACANABO', 'Thècle Emmanuel', 'MASCULIN', '2000-04-19 00:00:00', NULL, NULL, NULL, NULL, '73837013', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 09:42:48', '2018-09-24 09:42:48'),
(2479, 'ZABRE', 'Issa', 'MASCULIN', '1998-01-08 00:00:00', NULL, NULL, NULL, NULL, '75 28 32 42', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:45:01', '2018-09-24 09:45:01'),
(2480, 'BAZONGO', 'Carine Annick Sandra', 'FEMININ', '1999-05-17 00:00:00', NULL, NULL, NULL, NULL, '70276935', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:47:00', '2018-09-24 09:47:00'),
(2481, 'ILBOUDO', 'Cheick Omar', 'MASCULIN', '1997-08-20 00:00:00', NULL, NULL, NULL, NULL, '70140881', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:48:56', '2018-09-24 09:48:56'),
(2482, 'OUATTARA', 'Leïla Diane', 'FEMININ', '2000-06-20 00:00:00', NULL, NULL, NULL, NULL, '62689335', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 09:49:00', '2018-09-24 09:49:00'),
(2483, 'TAPSOBA', 'Ali', 'MASCULIN', '1998-10-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:50:21', '2018-09-24 09:50:21'),
(2484, 'ZABA', 'Lassané', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '67741493', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:51:05', '2018-09-24 09:51:05'),
(2485, 'GARBA', 'Jean', 'MASCULIN', '1997-12-27 00:00:00', NULL, NULL, NULL, NULL, '60 12 65 88', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:52:06', '2018-09-24 09:52:06'),
(2486, 'GNANDA', 'Pougwendé Alain', 'MASCULIN', '1996-09-08 00:00:00', NULL, NULL, NULL, NULL, '73 55 76 05', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 09:54:27', '2018-09-24 09:54:27'),
(2487, 'GUIRO', 'Mariettou', 'FEMININ', '1997-06-19 00:00:00', NULL, NULL, NULL, NULL, '58021474', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:56:56', '2018-09-24 09:56:56'),
(2488, 'OUEDRAOGO', 'Nouroud-Dîne', 'FEMININ', '1999-10-24 00:00:00', NULL, NULL, NULL, NULL, '60287401', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 09:59:13', '2018-09-24 09:59:13'),
(2489, 'BOINA', 'Ousmane', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:00:39', '2018-09-24 10:00:39'),
(2490, 'BAGAYA', 'Djamilatou', 'FEMININ', '2000-01-29 00:00:00', NULL, NULL, NULL, NULL, '76608535', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:02:13', '2018-09-24 10:02:13'),
(2491, 'SENDE', 'Rayiboudou Mari Sédrique Amed', 'MASCULIN', '1999-02-15 00:00:00', NULL, NULL, NULL, NULL, '72585335', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:04:30', '2018-09-24 10:04:30'),
(2492, 'DAHOUROU', 'Bernardin', 'MASCULIN', '1999-05-20 00:00:00', NULL, NULL, NULL, NULL, '77573455', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:06:28', '2018-09-24 10:06:28'),
(2493, 'SANOU', 'Blaise Ilatéré', 'MASCULIN', '1996-02-03 00:00:00', NULL, NULL, NULL, NULL, '64161354', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:08:07', '2018-09-24 10:08:07'),
(2494, 'YEYE', 'Hermann', 'MASCULIN', '2000-01-01 02:00:00', NULL, NULL, NULL, NULL, '60 89 35 26', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:08:47', '2018-09-24 10:08:47'),
(2495, 'YARO', 'Yida Juldas Abdoul Karim', 'MASCULIN', '1999-02-14 00:00:00', NULL, NULL, NULL, NULL, '64008042', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 10:10:00', '2018-09-24 10:10:00'),
(2496, 'DABOUE', 'Joseph Stéphane Benjamin', 'MASCULIN', '1999-11-09 00:00:00', NULL, NULL, NULL, NULL, '72979747', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:10:03', '2018-09-24 10:10:03'),
(2497, 'SANOGO', 'Fabien Hamel', 'MASCULIN', '2000-04-01 00:00:00', NULL, NULL, NULL, NULL, '63765758', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:11:49', '2018-09-24 10:11:49'),
(2498, 'SOME', 'Winbanfo Ulrich Nataël', 'MASCULIN', '1999-09-14 00:00:00', NULL, NULL, NULL, NULL, '66625901', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 10:12:35', '2018-09-24 10:12:35'),
(2499, 'GANSONRE', 'Azize', 'MASCULIN', '1997-10-10 00:00:00', NULL, NULL, NULL, NULL, '75655041', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:13:53', '2018-09-24 10:13:53'),
(2500, 'SAMA', 'Dominique Gaetan Ulrich', 'MASCULIN', '1999-08-08 02:00:00', NULL, NULL, NULL, NULL, '72 38 53 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:15:36', '2018-09-24 10:15:36'),
(2501, 'OUEDRAOGO', 'Zourata', 'FEMININ', '1998-07-28 00:00:00', NULL, NULL, NULL, NULL, '56724463', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:17:09', '2018-09-24 10:17:09'),
(2502, 'GAMSORE', 'Ousmane', 'MASCULIN', '1997-10-04 02:00:00', NULL, NULL, NULL, NULL, '70 55 37 53', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:20:22', '2018-09-24 10:20:22'),
(2503, 'SAWADOGO', 'Salamata', 'FEMININ', '1997-03-28 00:00:00', NULL, NULL, NULL, NULL, '61601351', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:23:28', '2018-09-24 10:23:28'),
(2504, 'DRAME', 'Oumarou', 'MASCULIN', '1996-10-18 02:00:00', NULL, NULL, NULL, NULL, '63 06 42 24', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:23:56', '2018-09-24 10:23:56'),
(2505, 'BELEM', 'Saïdou', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '65373673', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:24:53', '2018-09-24 10:24:53'),
(2506, 'BELEM', 'Madi', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '62968097', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:26:54', '2018-09-24 10:26:54'),
(2507, 'SOMDA', 'Nanwin-yo Larissa', 'FEMININ', '2000-07-31 00:00:00', NULL, NULL, NULL, NULL, '71414925', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 10:27:51', '2018-09-24 10:27:51'),
(2508, 'KOUSSOUBE', 'Blaise', 'MASCULIN', '1998-02-18 02:00:00', NULL, NULL, NULL, NULL, '51 33 05 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:28:24', '2018-09-24 10:28:24'),
(2509, 'ZONO', 'ABDOULAYE', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:28:48', '2018-09-24 10:28:48'),
(2510, 'OUEDRAOGO', 'Amadé', 'MASCULIN', '1998-03-03 00:00:00', NULL, NULL, NULL, NULL, '63355039', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:30:39', '2018-09-24 10:30:39'),
(2511, 'KINDO', 'Ousmane', 'MASCULIN', '1998-04-20 02:00:00', NULL, NULL, NULL, NULL, '60 57 06 30', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:31:49', '2018-09-24 10:31:49'),
(2512, 'OUEDRAOGO', 'Saïd Abass', 'MASCULIN', '1998-06-10 00:00:00', NULL, NULL, NULL, NULL, '62520309', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:32:44', '2018-09-24 10:32:44'),
(2513, 'RAKISTABA', 'Pawimdésson', 'MASCULIN', '1998-03-01 02:00:00', NULL, NULL, NULL, NULL, '72 84 01 73', NULL, 'I', 'urielle', 'urielle', '2018-09-24 10:36:29', '2018-09-24 10:36:29'),
(2514, 'KIEMA', 'Marie Gaëlle', 'FEMININ', '2000-05-29 00:00:00', NULL, NULL, NULL, NULL, '61729191', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 10:37:20', '2018-09-24 10:37:20'),
(2515, 'SORO', 'Zakaria', 'MASCULIN', '1998-11-03 02:00:00', NULL, NULL, NULL, NULL, '54 26 54 22', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:40:30', '2018-09-24 10:40:30'),
(2516, 'BADO', 'Nicolas', 'MASCULIN', '1999-12-06 00:00:00', NULL, NULL, NULL, NULL, '62345017', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 10:41:04', '2018-09-24 10:41:04'),
(2517, 'TRAORE', 'Germain', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '61 10 16 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:43:24', '2018-09-24 10:43:24'),
(2518, 'DIALLO', 'Adama', 'MASCULIN', '1997-08-24 00:00:00', NULL, NULL, NULL, NULL, '75679825', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:43:26', '2018-09-24 10:43:26'),
(2519, 'SAVADOGO', 'Ramata', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:45:03', '2018-09-24 10:45:03'),
(2520, 'OUEDRAOGO', 'Azèta', 'FEMININ', '1996-09-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:46:37', '2018-09-24 10:46:37'),
(2521, 'ZONO', 'Ousmane', 'MASCULIN', '1997-01-01 00:00:00', NULL, NULL, NULL, NULL, '71685000', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:47:59', '2018-09-24 10:47:59'),
(2522, 'KIENTEGA', 'Jérôme', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '60 51 29 66', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:48:31', '2018-09-24 10:48:31'),
(2523, 'OUEDRAOGO', 'Khaled', 'MASCULIN', '1999-02-18 00:00:00', NULL, NULL, NULL, NULL, '60153035', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:50:33', '2018-09-24 10:50:33'),
(2524, 'SAWADOGO', 'Ayouba', 'MASCULIN', '1996-10-24 02:00:00', NULL, NULL, NULL, NULL, '67 22 79 41', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:51:10', '2018-09-24 10:51:10'),
(2525, 'YAMEOGO', 'Wendyam Franck Olivier', 'MASCULIN', '1999-10-28 00:00:00', NULL, NULL, NULL, NULL, '62609857', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:52:15', '2018-09-24 10:52:15'),
(2526, 'KONE', 'Patrice Mory', 'MASCULIN', '1996-07-27 02:00:00', NULL, NULL, NULL, NULL, '72 16 01 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:53:42', '2018-09-24 10:53:42'),
(2527, 'PAGBELGUEM', 'Kiswendsida Emmanuel', 'MASCULIN', '1997-05-15 02:00:00', NULL, NULL, NULL, NULL, '62 29 24 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 10:57:29', '2018-09-24 10:57:29'),
(2528, 'OUEDRAOGO', 'Nématou', 'FEMININ', '1997-10-12 00:00:00', NULL, NULL, NULL, NULL, '60172996', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:57:41', '2018-09-24 10:57:41'),
(2529, 'KONFE', 'Aïssatou', 'FEMININ', '1999-11-07 00:00:00', NULL, NULL, NULL, NULL, '61421516', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 10:59:40', '2018-09-24 10:59:40'),
(2530, 'OUEDRAOGO', 'Tibo Nabonswendé Gildas', 'MASCULIN', '1997-06-08 00:00:00', NULL, NULL, NULL, NULL, '73731954', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:01:52', '2018-09-24 11:01:52'),
(2531, 'DEMBELE', 'Patrice', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 05 95 93', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 11:02:38', '2018-09-24 11:02:38'),
(2532, 'SAWADOGO', 'Lassané', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '62 22 94 91', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:03:32', '2018-09-24 11:03:32'),
(2533, 'ZEYE', 'Arouna', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '62 29 29 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 11:06:48', '2018-09-24 11:06:48'),
(2534, 'KABORE', 'Abdoul-Fayssal', 'MASCULIN', '1998-09-28 00:00:00', NULL, NULL, NULL, NULL, '76058353', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 11:07:06', '2018-09-24 11:07:06'),
(2535, 'OUATTARA', 'Augustin', 'MASCULIN', '1998-08-27 00:00:00', NULL, NULL, NULL, NULL, '72 97 25 54', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:07:33', '2018-09-24 11:07:33'),
(2536, 'KONE', 'Harouna', 'MASCULIN', '1999-03-01 02:00:00', NULL, NULL, NULL, NULL, '65 42 36 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 11:08:59', '2018-09-24 11:08:59'),
(2537, 'TIEMTORE', 'Moussa', 'MASCULIN', '1997-05-02 00:00:00', NULL, NULL, NULL, NULL, '65 07 87 31', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:09:22', '2018-09-24 11:09:22'),
(2538, 'SAVADOGO', 'Ouindékonté Abdoul Hakim', 'MASCULIN', '1999-12-22 00:00:00', NULL, NULL, NULL, NULL, '70595749', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:09:23', '2018-09-24 11:09:23'),
(2539, 'SEGDA', 'Malick', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '70 72 00 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:11:15', '2018-09-24 11:11:15'),
(2540, 'OUEDRAOGO', 'Abdoul Razack', 'MASCULIN', '2000-03-09 00:00:00', NULL, NULL, NULL, NULL, '60127052', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:11:39', '2018-09-24 11:11:39'),
(2541, 'OUEDRAOGO', 'Aïssata', 'FEMININ', '1997-02-03 00:00:00', NULL, NULL, NULL, NULL, '77207114', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:13:09', '2018-09-24 11:13:09'),
(2542, 'TIAHO', 'Fulgence', 'MASCULIN', '1997-01-01 02:00:00', NULL, NULL, NULL, NULL, '60 29 89 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 11:13:10', '2018-09-24 11:13:10'),
(2543, 'OUEDRAOGO', 'Wen Denda Armand', 'MASCULIN', '1996-12-17 00:00:00', NULL, NULL, NULL, NULL, '74 69 44 40', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:13:13', '2018-09-24 11:13:13'),
(2544, 'DRABO', 'Issouf Yves', 'MASCULIN', '1999-12-29 00:00:00', NULL, NULL, NULL, NULL, '70 88 69 42', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:15:58', '2018-09-24 11:15:58'),
(2545, 'SANKARA', 'Ibrahim', 'MASCULIN', '1997-11-14 02:00:00', NULL, NULL, NULL, NULL, '61 53 27 21', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 11:17:02', '2018-09-24 11:17:02'),
(2546, 'OUEDRAOGO', 'Kiswendsida Marcellin', 'MASCULIN', '1998-04-05 00:00:00', NULL, NULL, NULL, NULL, '57338387', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 11:17:29', '2018-09-24 11:17:29'),
(2547, 'HILOU', 'Abdoulaye', 'MASCULIN', '1998-10-30 00:00:00', NULL, NULL, NULL, NULL, '61 25 03 52', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:17:57', '2018-09-24 11:17:57'),
(2548, 'OUEDRAOGO', 'Safiétou', 'FEMININ', '1995-05-15 00:00:00', NULL, NULL, NULL, NULL, '61160527', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:18:48', '2018-09-24 11:18:48'),
(2549, 'KINDO', 'Moumouni', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:20:26', '2018-09-24 11:20:26'),
(2550, 'KATINA-DAKIKARA', 'Abdoul-Lamine', 'MASCULIN', '1997-03-10 00:00:00', NULL, NULL, NULL, NULL, '60 01 77 97', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:20:39', '2018-09-24 11:20:39'),
(2551, 'COULIBALY', 'Tihanko', 'MASCULIN', '1997-10-14 02:00:00', NULL, NULL, NULL, NULL, '69 41 33 04', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 11:20:50', '2018-09-24 11:20:50'),
(2552, 'BANGAGNE', 'Mohamed', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '77 27 73 26', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:22:36', '2018-09-24 11:22:36'),
(2553, 'OUEDRAOGO', 'Salif', 'MASCULIN', '1998-02-15 02:00:00', NULL, NULL, NULL, NULL, '65 66 92 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 11:23:14', '2018-09-24 11:23:14'),
(2554, 'BONSA', 'Cheick Omar Wend-yélé', 'FEMININ', '1999-06-17 00:00:00', NULL, NULL, NULL, NULL, '63050069', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:23:53', '2018-09-24 11:23:53'),
(2555, 'TIENDREBEOGO', 'Aboussoufouyane', 'MASCULIN', '1996-10-07 00:00:00', NULL, NULL, NULL, NULL, '61 86 36 03', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:24:21', '2018-09-24 11:24:21'),
(2556, 'BELEM', 'Iliasse', 'MASCULIN', '1998-12-11 00:00:00', NULL, NULL, NULL, NULL, '73745798', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 11:24:38', '2018-09-24 11:24:38'),
(2557, 'OUEDRAOGO', 'Dénis', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:26:16', '2018-09-24 11:26:16'),
(2558, 'TRAORE', 'Ahmed Zanga Ridouane', 'MASCULIN', '2000-01-23 00:00:00', NULL, NULL, NULL, NULL, '67 07 75 37', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:26:16', '2018-09-24 11:26:16'),
(2559, 'SIMPORE', 'Delwendé Isac', 'MASCULIN', '1998-06-04 02:00:00', NULL, NULL, NULL, NULL, '78 69 01 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 11:26:38', '2018-09-24 11:26:38'),
(2560, 'BELEM', 'Adama', 'MASCULIN', '1997-04-18 00:00:00', NULL, NULL, NULL, NULL, '70415875', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:27:41', '2018-09-24 11:27:41'),
(2561, 'TIOGO', 'Roland Cédric', 'MASCULIN', '1997-09-15 00:00:00', NULL, NULL, NULL, NULL, '61 70 71 28', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:28:11', '2018-09-24 11:28:11'),
(2562, 'TRAORE', 'Salimata', 'FEMININ', '1999-05-05 00:00:00', NULL, NULL, NULL, NULL, '63898385', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 11:28:14', '2018-09-24 11:28:14'),
(2563, 'KOMA', 'Joseph', 'MASCULIN', '1997-03-14 02:00:00', NULL, NULL, NULL, NULL, '51 46 90 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 11:29:00', '2018-09-24 11:29:00'),
(2564, 'DIALLO', 'Salmata', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:29:04', '2018-09-24 11:29:04'),
(2565, 'HIE', 'Tiembié Djifama Cherif Aristide', 'MASCULIN', '1999-08-31 00:00:00', NULL, NULL, NULL, NULL, '70 69 53 26', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:30:31', '2018-09-24 11:30:31'),
(2566, 'SODRE', 'Amed', 'MASCULIN', '1998-07-15 00:00:00', NULL, NULL, NULL, NULL, '61400430', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:30:45', '2018-09-24 11:30:45'),
(2567, 'COULIBALY', 'Ouô Martine Jessica', 'FEMININ', '2000-01-16 00:00:00', NULL, NULL, NULL, NULL, '71658897', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 11:30:55', '2018-09-24 11:30:55'),
(2568, 'BELEM', 'Amadé', 'MASCULIN', '2000-01-29 00:00:00', NULL, NULL, NULL, NULL, '77010534', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:32:26', '2018-09-24 11:32:26'),
(2569, 'NANA', 'Hamza', 'MASCULIN', '1998-03-02 00:00:00', NULL, NULL, NULL, NULL, '72 93 12 95', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:32:29', '2018-09-24 11:32:29'),
(2570, 'OUEDRAOGO', 'Salif', 'MASCULIN', '1998-08-20 00:00:00', NULL, NULL, NULL, NULL, '77018209', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:33:59', '2018-09-24 11:33:59'),
(2571, 'KIEMA', 'Florent', 'MASCULIN', '1998-07-04 00:00:00', NULL, NULL, NULL, NULL, '63 10 38 21', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:34:55', '2018-09-24 11:34:55'),
(2572, 'SANOU', 'Tounko Christophe', 'MASCULIN', '1997-09-19 00:00:00', NULL, NULL, NULL, NULL, '67864267', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 11:35:40', '2018-09-24 11:35:40'),
(2573, 'BONKOUNGOU', 'Wendyam Josias', 'MASCULIN', '1996-05-27 00:00:00', NULL, NULL, NULL, NULL, '76 62 78 94', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:36:32', '2018-09-24 11:36:32'),
(2574, 'OUEDRAOGO', 'Wendkouni Ange Claver', 'MASCULIN', '1997-06-21 00:00:00', NULL, NULL, NULL, NULL, '71 59 99 38', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:38:12', '2018-09-24 11:38:12'),
(2575, 'OUEDRAOGO', 'Samba Roger', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:39:11', '2018-09-24 11:39:11'),
(2576, 'OUEDRAOGO', 'Bobodo Cheick Aboubacar', 'MASCULIN', '1999-09-25 00:00:00', NULL, NULL, NULL, NULL, '62 79 15 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:40:25', '2018-09-24 11:40:25'),
(2577, 'COMPAORE', 'Noufou', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '74103502', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:40:42', '2018-09-24 11:40:42'),
(2578, 'YOUANE', 'Fidèle', 'MASCULIN', '1996-03-19 00:00:00', NULL, NULL, NULL, NULL, '61 03 21 30', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:42:16', '2018-09-24 11:42:16'),
(2579, 'PINDE', 'Loyiémin', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '56060598', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:42:23', '2018-09-24 11:42:23'),
(2580, 'OUEDRAOGO', 'Moussa', 'MASCULIN', '2000-02-29 00:00:00', NULL, NULL, NULL, NULL, '71 53 67 84', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:43:51', '2018-09-24 11:43:51'),
(2581, 'SOW', 'EDWIGE', 'FEMININ', '1997-03-11 00:00:00', NULL, NULL, NULL, NULL, '61019228', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:43:55', '2018-09-24 11:43:55'),
(2582, 'NAYETE', 'Samira Safoura', 'FEMININ', '2000-03-03 00:00:00', NULL, NULL, NULL, NULL, '79211195', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:46:03', '2018-09-24 11:46:03'),
(2583, 'KONSEIGA', 'Mohamed Bertrand', 'MASCULIN', '1998-09-06 00:00:00', NULL, NULL, NULL, NULL, '70 36 89 43', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:47:13', '2018-09-24 11:47:13'),
(2584, 'KABRE', 'Guétapinda', 'MASCULIN', '1998-08-01 00:00:00', NULL, NULL, NULL, NULL, '67129149', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 11:48:43', '2018-09-24 11:48:43'),
(2585, 'KONE', 'Tiégoué Abdel Jamid', 'MASCULIN', '1999-05-29 00:00:00', NULL, NULL, NULL, NULL, '70 25 63 28', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:51:10', '2018-09-24 11:51:10'),
(2586, 'SAWADOGO', 'Hugue Zéphirin Wendpayadé', 'MASCULIN', '1999-10-19 00:00:00', NULL, NULL, NULL, NULL, '73 23 43 52', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:53:26', '2018-09-24 11:53:26'),
(2587, 'NOUGTARA', 'Marc', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '71 43 77 35', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:55:54', '2018-09-24 11:55:54');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(2588, 'NIKIEMA', 'Salif', 'MASCULIN', '1997-02-08 00:00:00', NULL, NULL, NULL, NULL, '60 11 73 82', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 11:58:50', '2018-09-24 11:58:50'),
(2589, 'MAIGA', 'Abdoul Dadjid', 'MASCULIN', '1998-04-27 00:00:00', NULL, NULL, NULL, NULL, '60 11 75 95', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:00:58', '2018-09-24 12:00:58'),
(2590, 'BELEMKOABGA', 'Germain', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 75 46 45', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:02:59', '2018-09-24 12:02:59'),
(2591, 'KABORE', 'Abdoul Aziz', 'MASCULIN', '1999-06-10 00:00:00', NULL, NULL, NULL, NULL, '70 24 13 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:05:01', '2018-09-24 12:05:01'),
(2592, 'NANAMA', 'Pawitta Noufou', 'MASCULIN', '1996-10-30 00:00:00', NULL, NULL, NULL, NULL, '71 39 54 78', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:08:37', '2018-09-24 12:08:37'),
(2593, 'BONKOUNGOU', 'Bernadin', 'MASCULIN', '1998-09-30 00:00:00', NULL, NULL, NULL, NULL, '71 67 23 27', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:10:53', '2018-09-24 12:10:53'),
(2594, 'TRAORE', 'Moussa', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '77 62 51 35', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:16:28', '2018-09-24 12:16:28'),
(2595, 'OUEDRAOGO', 'Ramata', 'FEMININ', '1996-05-31 00:00:00', NULL, NULL, NULL, NULL, '77 74 10 35', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:19:25', '2018-09-24 12:19:25'),
(2596, 'PODA', 'Bê Michel', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 96 51 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:21:11', '2018-09-24 12:21:11'),
(2597, 'OUEDRAOGO', 'Ibrahim', 'MASCULIN', '2000-03-06 00:00:00', NULL, NULL, NULL, NULL, '77 57 37 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:23:01', '2018-09-24 12:23:01'),
(2598, 'SANDWIDI', 'Paligwendé Jean Arsène', 'MASCULIN', '1996-07-19 00:00:00', NULL, NULL, NULL, NULL, '73 55 22 81', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:25:47', '2018-09-24 12:25:47'),
(2599, 'SAWADOGO', 'Nestor', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '61 10 54 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:27:24', '2018-09-24 12:27:24'),
(2600, 'TRAORE', 'Dia Juliette', 'FEMININ', '1997-07-28 00:00:00', NULL, NULL, NULL, NULL, '28/07/1997', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:30:39', '2018-09-24 12:30:39'),
(2601, 'COMPAORE', 'Chris Jesson', 'MASCULIN', '1998-11-07 00:00:00', NULL, NULL, NULL, NULL, '68 39 22 00', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:34:28', '2018-09-24 12:34:28'),
(2602, 'KAMBOU', 'Siébou', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '63123070', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 12:38:47', '2018-09-24 12:38:47'),
(2603, 'SIRIMA', 'Mohamed', 'MASCULIN', '1999-12-22 00:00:00', NULL, NULL, NULL, NULL, '63246749', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 12:40:36', '2018-09-24 12:40:36'),
(2604, 'DIALLO', 'Djénèbou', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '75804450', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 12:48:27', '2018-09-24 12:48:27'),
(2605, 'SAVADOGO', 'Adaman', 'MASCULIN', '1996-11-07 00:00:00', NULL, NULL, NULL, NULL, '61 25 75 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 12:54:58', '2018-09-24 12:54:58'),
(2606, 'DABIRE', 'Windigui', 'MASCULIN', '1999-01-01 00:00:00', NULL, NULL, NULL, NULL, '56637356', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 13:12:51', '2018-09-24 13:12:51'),
(2607, 'HIEN', 'Dékouwine Alexis', 'MASCULIN', '2000-12-08 00:00:00', NULL, NULL, NULL, NULL, '71127511', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 13:18:20', '2018-09-24 13:18:20'),
(2608, 'ZAONGO', 'Wend-tôognoma Pascal', 'MASCULIN', '1998-04-13 00:00:00', NULL, NULL, NULL, NULL, '61 50 96 54', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 13:26:40', '2018-09-24 13:26:40'),
(2609, 'KIEMA', 'Issaka', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '74658106', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 13:52:14', '2018-09-24 13:52:14'),
(2610, 'KABORE', 'Madinatou', 'FEMININ', '1998-04-18 00:00:00', NULL, NULL, NULL, NULL, '66365509', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 13:52:45', '2018-09-24 13:52:45'),
(2611, 'NAGABO', 'Delwendé Roland', 'MASCULIN', '1996-09-15 00:00:00', NULL, NULL, NULL, NULL, '73 38 02 73', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 13:54:59', '2018-09-24 13:54:59'),
(2612, 'DAMIBA', 'Bouendzemnewendé Achille Marie Désiré', 'MASCULIN', '1998-05-07 00:00:00', NULL, NULL, NULL, NULL, '70672628', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 13:55:12', '2018-09-24 13:55:12'),
(2613, 'SANDWIDI', 'Yacouba', 'MASCULIN', '1996-03-21 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 13:57:27', '2018-09-24 13:57:27'),
(2614, 'ZOUNGRANA', 'Wendkouni Ibrahim', 'MASCULIN', '1996-01-01 00:00:00', NULL, NULL, NULL, NULL, '73382872', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 13:57:33', '2018-09-24 13:57:33'),
(2615, 'KOURAOGO', 'Sidbewendé Guy Anselme', 'MASCULIN', '1997-04-21 00:00:00', NULL, NULL, NULL, NULL, '61 14 57 16', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 13:59:13', '2018-09-24 13:59:13'),
(2616, 'GANSANE', 'Bédouna Aboubacar Yacine', 'MASCULIN', '1998-01-13 00:00:00', NULL, NULL, NULL, NULL, '54292802', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:00:01', '2018-09-24 14:00:01'),
(2617, 'OUEDRAOGO', 'Pengwendé Jonathan', 'MASCULIN', '1999-11-13 00:00:00', NULL, NULL, NULL, NULL, '62 19 95 81', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:01:54', '2018-09-24 14:01:54'),
(2618, 'SIRIBIE', 'Perhaly Elyon Claude Hervé', 'MASCULIN', '1999-10-06 00:00:00', NULL, NULL, NULL, NULL, '65510879', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:03:05', '2018-09-24 14:03:05'),
(2619, 'DAO', 'Adonis Ornell', 'MASCULIN', '2001-07-20 00:00:00', NULL, NULL, NULL, NULL, '60405584', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 14:03:33', '2018-09-24 14:03:33'),
(2620, 'DABO', 'Aïda', 'FEMININ', '1996-12-20 00:00:00', NULL, NULL, NULL, NULL, '72 01 86 73', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:04:11', '2018-09-24 14:04:11'),
(2621, 'OUEDRAOGO', 'Neblasom Lucien', 'MASCULIN', '1998-10-18 00:00:00', NULL, NULL, NULL, NULL, '64605482', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:05:04', '2018-09-24 14:05:04'),
(2622, 'TRAORE', 'Bayou Shariffu', 'MASCULIN', '1999-06-20 00:00:00', NULL, NULL, NULL, NULL, '62 46 66 02', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:06:17', '2018-09-24 14:06:17'),
(2623, 'NIKIEMA', 'Stello', 'FEMININ', '2000-01-21 00:00:00', NULL, NULL, NULL, NULL, '70368400', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:07:04', '2018-09-24 14:07:04'),
(2624, 'ILBOUDO', 'Aguirata', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '62 81 29 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:10:33', '2018-09-24 14:10:33'),
(2625, 'SEBEGO', 'Pattaque Yelba Frédéric', 'MASCULIN', '1997-08-01 00:00:00', NULL, NULL, NULL, NULL, '77 28 45 25', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:12:26', '2018-09-24 14:12:26'),
(2626, 'KONSIMBO', 'Pascal', 'MASCULIN', '1996-05-11 00:00:00', NULL, NULL, NULL, NULL, '73 37 57 79', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:14:38', '2018-09-24 14:14:38'),
(2627, 'DAO', 'Kalidou', 'MASCULIN', '1998-10-05 00:00:00', NULL, NULL, NULL, NULL, '71500405', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 14:17:05', '2018-09-24 14:17:05'),
(2628, 'DRABO', 'Lanko Rachid', 'MASCULIN', '1997-08-13 00:00:00', NULL, NULL, NULL, NULL, '78 96 29 91', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:17:37', '2018-09-24 14:17:37'),
(2629, 'KABRE', 'Noé Wendyam', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '62 45 60 64', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:19:35', '2018-09-24 14:19:35'),
(2630, 'KANAZOE', 'Naimatou', 'FEMININ', '1996-09-25 00:00:00', NULL, NULL, NULL, NULL, '71 35 96 83', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:21:08', '2018-09-24 14:21:08'),
(2631, 'SEGDA', 'Safoura', 'FEMININ', '1997-04-28 00:00:00', NULL, NULL, NULL, NULL, '61 85 59 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:22:48', '2018-09-24 14:22:48'),
(2632, 'KABORE', 'Pinguedwendé Thomas', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 93 80 71', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:24:58', '2018-09-24 14:24:58'),
(2633, 'SESSOUMA', 'Amadou', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '78 93 43 25', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:27:17', '2018-09-24 14:27:17'),
(2634, 'IMA', 'Romain Pegdwendé', 'MASCULIN', '1996-02-25 00:00:00', NULL, NULL, NULL, NULL, '71 00 70 46', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:29:13', '2018-09-24 14:29:13'),
(2635, 'OUEDRAOGO', 'Aboubacar', 'MASCULIN', '2000-06-25 00:00:00', NULL, NULL, NULL, NULL, '62 45 33 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:34:53', '2018-09-24 14:34:53'),
(2636, 'OUEDRAOGO', 'Sayouba Seni', 'MASCULIN', '1998-10-29 00:00:00', NULL, NULL, NULL, NULL, '74 79 71 81', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:36:39', '2018-09-24 14:36:39'),
(2637, 'GANSONRE', 'Loukmane', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '73867673', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 14:36:47', '2018-09-24 14:36:47'),
(2638, 'YAMEOGO', 'Wendpagnangdé Cédric Raoul', 'MASCULIN', '1999-11-11 00:00:00', NULL, NULL, NULL, NULL, '60 42 17 40', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:39:06', '2018-09-24 14:39:06'),
(2639, 'SANGO', 'David', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '65 68 25 24', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:40:43', '2018-09-24 14:40:43'),
(2640, 'ILBOUDO', 'Rayengnewendé Arnaud', 'MASCULIN', '1999-04-30 00:00:00', NULL, NULL, NULL, NULL, '69 74 30 29', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:42:36', '2018-09-24 14:42:36'),
(2641, 'BOUDA', 'Sommanegda Achille Nelson', 'MASCULIN', '1997-11-27 00:00:00', NULL, NULL, NULL, NULL, '66600444', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:44:12', '2018-09-24 14:44:12'),
(2642, 'KINDA', 'Alice Wendpouiré Bernadine', 'FEMININ', '2000-11-08 00:00:00', NULL, NULL, NULL, NULL, '78 81 09 60', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:45:03', '2018-09-24 14:45:03'),
(2643, 'BAZIE', 'Wiokazi Alain', 'MASCULIN', '1999-09-10 00:00:00', NULL, NULL, NULL, NULL, '64582516', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:46:01', '2018-09-24 14:46:01'),
(2644, 'GUIRO', 'hAROUNA', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 14:46:32', '2018-09-24 14:46:32'),
(2645, 'GANAME', 'Seidou Babyouré', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '72 15 76 22', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:47:34', '2018-09-24 14:47:34'),
(2646, 'VOKOUMA', 'Théophane Joseph Wendyam', 'MASCULIN', '2000-02-02 00:00:00', NULL, NULL, NULL, NULL, '63773562', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:48:00', '2018-09-24 14:48:00'),
(2647, 'TAO', 'Wendwaoga Christophe', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '62519957', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 14:48:02', '2018-09-24 14:48:02'),
(2648, 'OUEDRAOGO', 'Rodrigue', 'MASCULIN', '1999-04-12 00:00:00', NULL, NULL, NULL, NULL, '60 67 21 01', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:49:08', '2018-09-24 14:49:08'),
(2649, 'SOUBEIGA', 'Harouna', 'MASCULIN', '1997-06-14 00:00:00', NULL, NULL, NULL, NULL, '69356607', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 14:49:54', '2018-09-24 14:49:54'),
(2650, 'GNANKARA', 'Adjaratou', 'FEMININ', '1997-05-27 00:00:00', NULL, NULL, NULL, NULL, '61377010', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:50:30', '2018-09-24 14:50:30'),
(2651, 'ILBOUDO', 'Raymond', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '60853869', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:52:55', '2018-09-24 14:52:55'),
(2652, 'TINDANO', 'Kiri Gerar', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '65580272', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 14:54:11', '2018-09-24 14:54:11'),
(2653, 'MANLI', 'Aboubacar Labidi', 'MASCULIN', '1999-08-08 00:00:00', NULL, NULL, NULL, NULL, '63 04 48 27', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 14:54:12', '2018-09-24 14:54:12'),
(2654, 'KABORE', 'Abdias', 'MASCULIN', '1999-11-19 02:00:00', NULL, NULL, NULL, NULL, '5 30 45 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 14:54:53', '2018-09-24 14:54:53'),
(2655, 'OUEDRAOGO', 'Windyam Jean-Pascal', 'MASCULIN', '1998-04-11 00:00:00', NULL, NULL, NULL, NULL, '61982876', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:55:24', '2018-09-24 14:55:24'),
(2656, 'NATAMA', 'Francis', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '67217741', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 14:57:07', '2018-09-24 14:57:07'),
(2657, 'DAH', 'Sié', 'MASCULIN', '1996-10-19 00:00:00', NULL, NULL, NULL, NULL, '71037004', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:57:28', '2018-09-24 14:57:28'),
(2658, 'BAGAYA', 'Zakaria', 'MASCULIN', '1997-02-04 00:00:00', NULL, NULL, NULL, NULL, '67878628', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 14:59:13', '2018-09-24 14:59:13'),
(2659, 'GANAME', 'Boukary', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '622190', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 14:59:26', '2018-09-24 14:59:26'),
(2660, 'KONENE', 'Bassirou', 'MASCULIN', '2000-09-22 00:00:00', NULL, NULL, NULL, NULL, '73135300', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 14:59:31', '2018-09-24 14:59:31'),
(2661, 'SAWADOGO', 'Bibata', 'FEMININ', '1999-07-04 00:00:00', NULL, NULL, NULL, NULL, '79223910', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 15:00:39', '2018-09-24 15:00:39'),
(2662, 'KOANDA', 'Sadiatou', 'FEMININ', '1997-07-31 02:00:00', NULL, NULL, NULL, NULL, '73 10 73 68', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 15:02:42', '2018-09-24 15:02:42'),
(2663, 'DRABO', 'Mansour', 'MASCULIN', '1998-03-06 00:00:00', NULL, NULL, NULL, NULL, '72969950', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 15:03:00', '2018-09-24 15:03:00'),
(2664, 'SARA', 'Ahmad Hussein Paco', 'MASCULIN', '2000-11-04 00:00:00', NULL, NULL, NULL, NULL, '72094748', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 15:05:11', '2018-09-24 15:05:11'),
(2665, 'SANKARA', 'Tasséré', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '71919283', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 15:06:30', '2018-09-24 15:06:30'),
(2666, 'TRAORE', 'Bémori', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '62150827', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 15:06:59', '2018-09-24 15:06:59'),
(2667, 'NAKANABO', 'Harouna', 'MASCULIN', '1996-05-22 02:00:00', NULL, NULL, NULL, NULL, '70 16 28 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 15:08:41', '2018-09-24 15:08:41'),
(2668, 'NIKIEMA', 'Damien', 'MASCULIN', '1998-02-20 00:00:00', NULL, NULL, NULL, NULL, '62112767', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 15:09:02', '2018-09-24 15:09:02'),
(2669, 'DENE', 'Rassirou', 'MASCULIN', '1998-05-21 00:00:00', NULL, NULL, NULL, NULL, '67896524', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 15:09:44', '2018-09-24 15:09:44'),
(2670, 'OUEDRAOGO', 'Moise', 'MASCULIN', '1996-12-21 00:00:00', NULL, NULL, NULL, NULL, '66012488', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 15:10:28', '2018-09-24 15:10:28'),
(2671, 'OUBDA', 'Rahim', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '56896400', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-24 15:11:04', '2018-09-24 15:11:04'),
(2672, 'SAWADOGO', 'Pêgd-Wendé Nazaire', 'MASCULIN', '1999-07-26 00:00:00', NULL, NULL, NULL, NULL, '71 34 84 29', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:12:04', '2018-09-24 15:12:04'),
(2673, 'MINOUGOU', 'Aline', 'FEMININ', '1997-09-09 00:00:00', NULL, NULL, NULL, NULL, '71506480', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 15:12:52', '2018-09-24 15:12:52'),
(2674, 'MOCKTAR', 'Yacouba', 'MASCULIN', '1998-07-30 00:00:00', NULL, NULL, NULL, NULL, '73 71 39 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:14:51', '2018-09-24 15:14:51'),
(2675, 'KOMKOBO', 'pierre', 'MASCULIN', '1996-07-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 15:16:35', '2018-09-24 15:16:35'),
(2676, 'ILLO', 'Hedes Nestor Jess', 'MASCULIN', '2000-02-03 00:00:00', NULL, NULL, NULL, NULL, '70 48 27 33', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:16:37', '2018-09-24 15:16:37'),
(2677, 'KOUDOUGOU', 'Abdoul-Razak', 'MASCULIN', '1998-01-30 00:00:00', NULL, NULL, NULL, NULL, '63370662', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 15:16:49', '2018-09-24 15:16:49'),
(2678, 'SANOU', 'Awa', 'FEMININ', '1996-02-12 02:00:00', NULL, NULL, NULL, NULL, '51 11 80 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 15:17:08', '2018-09-24 15:17:08'),
(2679, 'ILBOUDO', 'Patinda Sébastien', 'MASCULIN', '1997-01-20 02:00:00', NULL, NULL, NULL, NULL, '72 31 57 83', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 15:19:35', '2018-09-24 15:19:35'),
(2680, 'KERE', 'Afis', 'MASCULIN', '1998-09-08 00:00:00', NULL, NULL, NULL, NULL, '63413002', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 15:20:40', '2018-09-24 15:20:40'),
(2681, 'BARRO', 'Dialé Leiticia', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 15:21:20', '2018-09-24 15:21:20'),
(2682, 'KAGONE', 'Rakiiswendé Ezechiel', 'MASCULIN', '1998-08-17 00:00:00', NULL, NULL, NULL, NULL, '70 26 66 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:22:46', '2018-09-24 15:22:46'),
(2683, 'KIENTEGA', 'Landaogo', 'MASCULIN', '1996-10-01 00:00:00', NULL, NULL, NULL, NULL, '77 80 11 59', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:25:28', '2018-09-24 15:25:28'),
(2684, 'YEKOUNI', 'Wendpouiré Gaston', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '0', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 15:25:31', '2018-09-24 15:25:31'),
(2685, 'TRAORE', 'Guie Florence fCécikle', 'MASCULIN', '1998-12-07 00:00:00', NULL, NULL, NULL, NULL, '70377708', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 15:25:43', '2018-09-24 15:25:43'),
(2686, 'KONTOUGMA', 'Abdoul Aziz', 'MASCULIN', '2000-07-27 00:00:00', NULL, NULL, NULL, NULL, '62 61 50 39', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:27:00', '2018-09-24 15:27:00'),
(2687, 'SININI', 'Tounni Rachid', 'MASCULIN', '1998-01-20 00:00:00', NULL, NULL, NULL, NULL, '70 51 21 86', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:29:18', '2018-09-24 15:29:18'),
(2688, 'KABORE', 'Aminata Cheïdatou', 'FEMININ', '1998-08-31 00:00:00', NULL, NULL, NULL, NULL, '63 18 45 23', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:31:12', '2018-09-24 15:31:12'),
(2689, 'SAWADOGO', 'Abdoul Fatahou', 'MASCULIN', '1996-12-09 00:00:00', NULL, NULL, NULL, NULL, '63 10 45 61', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:33:03', '2018-09-24 15:33:03'),
(2690, 'ZONGO', 'Abdoul Razack', 'MASCULIN', '1997-10-28 00:00:00', NULL, NULL, NULL, NULL, '66 12 79 16', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:34:51', '2018-09-24 15:34:51'),
(2691, 'YE', 'Laurent', 'MASCULIN', '1998-03-25 00:00:00', NULL, NULL, NULL, NULL, '66 76 47 11', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:36:33', '2018-09-24 15:36:33'),
(2692, 'SANDWIDI', 'Félicité Teb-Waoga Marie Elodie', 'FEMININ', '1999-04-13 00:00:00', NULL, NULL, NULL, NULL, '62087718', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 15:38:06', '2018-09-24 15:38:06'),
(2693, 'MAIGA', 'Zakaria', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '76 94 33 13', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:38:18', '2018-09-24 15:38:18'),
(2694, 'BANDE', 'Paté', 'MASCULIN', '1996-11-17 00:00:00', NULL, NULL, NULL, NULL, '63 91 46 03', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:39:57', '2018-09-24 15:39:57'),
(2695, 'SAWADOGO', 'Abel', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '70104411', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 15:39:59', '2018-09-24 15:39:59'),
(2696, 'SEMPORE', 'Astrid Liliane Pogbi', 'FEMININ', '2001-09-05 02:00:00', NULL, NULL, NULL, NULL, '70 20 07 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 15:41:24', '2018-09-24 15:41:24'),
(2697, 'NOUFE', 'Yéri Maie Brigitte', 'FEMININ', '1997-08-15 00:00:00', NULL, NULL, NULL, NULL, '76 96 82 79', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:41:36', '2018-09-24 15:41:36'),
(2698, 'SAWADOGO', 'Songmèdo Ozias', 'MASCULIN', '1998-08-09 00:00:00', NULL, NULL, NULL, NULL, '62 24 83 62', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:43:26', '2018-09-24 15:43:26'),
(2699, 'OUEDRAOGO', 'Wend\'Panga Silver', 'MASCULIN', '1997-05-01 00:00:00', NULL, NULL, NULL, NULL, '70747337', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 15:44:33', '2018-09-24 15:44:33'),
(2700, 'OUEDRAOGO', 'Boureima', 'MASCULIN', '1997-06-16 02:00:00', NULL, NULL, NULL, NULL, '66 79 61 13', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 15:44:59', '2018-09-24 15:44:59'),
(2701, 'OUEDRAOGO', 'pEGDWEND2 jOSU2', 'MASCULIN', '1998-03-08 00:00:00', NULL, NULL, NULL, NULL, '60 15 12 55', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:45:02', '2018-09-24 15:45:02'),
(2702, 'OUEDRAOGO', 'Abdoul Nhourou', 'MASCULIN', '1998-05-30 00:00:00', NULL, NULL, NULL, NULL, '78974788', NULL, 'Abdoul Nhourou', 'damansalia', 'damansalia', '2018-09-24 15:46:40', '2018-09-24 15:46:40'),
(2703, 'DARE', 'Salfo', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '64 77 41 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 15:47:31', '2018-09-24 15:47:31'),
(2704, 'NAMOANO', 'Tatiana', 'FEMININ', '1999-12-28 00:00:00', NULL, NULL, NULL, NULL, '57553252', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 15:49:10', '2018-09-24 15:49:10'),
(2705, 'SANA', 'Souleymane', 'MASCULIN', '1997-12-23 00:00:00', NULL, NULL, NULL, NULL, '70 80 89 50', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:49:58', '2018-09-24 15:49:58'),
(2706, 'OUOBA', 'Samuel', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70 36 05 47', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:51:25', '2018-09-24 15:51:25'),
(2707, 'SAWADOGO', 'Alimata', 'FEMININ', '2000-03-16 02:00:00', NULL, NULL, NULL, NULL, '76 93 77 37', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 15:52:09', '2018-09-24 15:52:09'),
(2708, 'PACMOGDA', 'Wend-djila Alain Stépjane', 'MASCULIN', '1997-12-20 00:00:00', NULL, NULL, NULL, NULL, '60797402', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 15:54:44', '2018-09-24 15:54:44'),
(2709, 'OUEDRAOGO', 'Saïratou', 'FEMININ', '2000-08-22 02:00:00', NULL, NULL, NULL, NULL, '61 46 01 98', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 15:55:38', '2018-09-24 15:55:38'),
(2710, 'COMPAORE', 'Thierry Fernand', 'MASCULIN', '1996-06-27 00:00:00', NULL, NULL, NULL, NULL, '62 33 89 73', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-24 15:57:10', '2018-09-24 15:57:10'),
(2711, 'OUEDRAOGO', 'Mitaniba Arlette Regina', 'FEMININ', '2000-10-27 00:00:00', NULL, NULL, NULL, NULL, '60430503', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 15:58:29', '2018-09-24 15:58:29'),
(2712, 'ZALLE', 'Souleymane', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '72493508', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 15:59:14', '2018-09-24 15:59:14'),
(2713, 'KENDREBEOGO', 'Yassia', 'MASCULIN', '1998-12-23 00:00:00', NULL, NULL, NULL, NULL, '75469601', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 16:03:46', '2018-09-24 16:03:46'),
(2714, 'YAMEOGO', 'Gnegrekeita Blaise', 'MASCULIN', '1998-11-13 00:00:00', NULL, NULL, NULL, NULL, '70425734', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 16:06:06', '2018-09-24 16:06:06'),
(2715, 'KARAMA', 'Djamilatou Chaporo Chimere', 'FEMININ', '2000-06-04 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 16:11:52', '2018-09-24 16:11:52'),
(2716, 'ZABRE', 'Wendkuuni Abdoul Aziz', 'MASCULIN', '2000-10-11 00:00:00', NULL, NULL, NULL, NULL, '70748308', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 16:13:02', '2018-09-24 16:13:02'),
(2717, 'BIHOUN', 'Esther Hani', 'FEMININ', '2000-05-08 00:00:00', NULL, NULL, NULL, NULL, '76948091', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 16:16:26', '2018-09-24 16:16:26'),
(2718, 'KOHIO', 'Ambroisine Anaïs Kiswendsida Halomboki', 'FEMININ', '1999-09-12 02:00:00', NULL, NULL, NULL, NULL, '79 42 34 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 16:23:05', '2018-09-24 16:23:05'),
(2719, 'SAWADOGO', 'Hyacinthe', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '67 65 05 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 16:29:16', '2018-09-24 16:29:16'),
(2720, 'SEBGO', 'Halidou', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 60 75 54', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 16:33:46', '2018-09-24 16:33:46'),
(2721, 'SIMPORE', 'Fadilatou', 'FEMININ', '1997-10-20 02:00:00', NULL, NULL, NULL, NULL, '51 80 68 83', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 16:37:30', '2018-09-24 16:37:30'),
(2722, 'KALMOGO', 'Yilma Ingrid Marie', 'FEMININ', '1999-12-02 02:00:00', NULL, NULL, NULL, NULL, '72 11 22 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 16:42:05', '2018-09-24 16:42:05'),
(2723, 'SANON', 'Wilfried Yvan Max', 'MASCULIN', '1999-06-05 02:00:00', NULL, NULL, NULL, NULL, '65 76 16 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 16:45:39', '2018-09-24 16:45:39'),
(2724, 'OUEDRAOGO', 'Abdoul Nhourou', 'MASCULIN', '1998-05-30 00:00:00', NULL, NULL, NULL, NULL, '78974788', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 16:48:47', '2018-09-24 16:48:47'),
(2725, 'BADO', 'Bagnon Sylvestre', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 71 62 81', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 16:50:46', '2018-09-24 16:50:46'),
(2726, 'BOULOU', 'Oumou Koulsoum', 'FEMININ', '1996-10-22 02:00:00', NULL, NULL, NULL, NULL, '76 33 62 44', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 16:53:17', '2018-09-24 16:53:17'),
(2727, 'TIENDREBEOGO', 'Narcisse Ernest', 'MASCULIN', '1997-10-29 02:00:00', NULL, NULL, NULL, NULL, '79 22 96 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 16:55:45', '2018-09-24 16:55:45'),
(2728, 'OUEDRAOGO', 'Tambi', 'MASCULIN', '2000-11-13 02:00:00', NULL, NULL, NULL, NULL, '225 48 92 29 51', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 16:58:05', '2018-09-24 16:58:05'),
(2729, 'GUIRO', 'Harouna', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '75601303', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 17:00:43', '2018-09-24 17:00:43'),
(2730, 'KOUIBAGA', 'Ouibga Zakaria', 'MASCULIN', '1999-01-13 02:00:00', NULL, NULL, NULL, NULL, '60 93 12 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 17:01:24', '2018-09-24 17:01:24'),
(2731, 'PARKOUDA', 'Denis Emmanuel', 'MASCULIN', '1996-12-29 02:00:00', NULL, NULL, NULL, NULL, '73 66 86 57', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 17:05:47', '2018-09-24 17:05:47'),
(2732, 'SANKARA', 'Relwendé Donatien', 'MASCULIN', '1999-05-24 00:00:00', NULL, NULL, NULL, NULL, '56274416', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 17:06:28', '2018-09-24 17:06:28'),
(2733, 'BARA', 'Falilatou', 'FEMININ', '1999-05-22 02:00:00', NULL, NULL, NULL, NULL, '67 22 18 42', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-24 17:09:14', '2018-09-24 17:09:14'),
(2734, 'SAWADOGO', 'Bao-WEnd-Manegré Christian', 'MASCULIN', '1999-12-08 00:00:00', NULL, NULL, NULL, NULL, '61770378', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-24 17:12:25', '2018-09-24 17:12:25'),
(2735, 'SIGUIRE', 'Issiaka', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '72049536', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 17:25:52', '2018-09-24 17:25:52'),
(2736, 'SAWADOGO', 'Abdoul Fatahou', 'MASCULIN', '1998-05-04 00:00:00', NULL, NULL, NULL, NULL, '71731528', NULL, 'Abdoul Fatahou', 'damansalia', 'damansalia', '2018-09-24 17:39:43', '2018-09-24 17:39:43'),
(2737, 'SAWADOGO', 'Abdoul Bagui', 'MASCULIN', '1999-07-27 00:00:00', NULL, NULL, NULL, NULL, '70717679', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 17:44:38', '2018-09-24 17:44:38'),
(2738, 'OUEDRAOGO', 'Beninwindé Hfizat', 'MASCULIN', '1998-12-29 00:00:00', NULL, NULL, NULL, NULL, '70717679', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 17:49:25', '2018-09-24 17:49:25'),
(2739, 'SAWADOGO', 'Daouda', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '55090057', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 17:53:51', '2018-09-24 17:53:51'),
(2740, 'SAWADOGO', 'Sunita Yasmine', 'MASCULIN', '1999-06-29 00:00:00', NULL, NULL, NULL, NULL, '63067303', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 17:58:41', '2018-09-24 17:58:41'),
(2741, 'MAIGA', 'Adama', 'MASCULIN', '1996-07-26 00:00:00', NULL, NULL, NULL, NULL, '65449800', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 18:02:48', '2018-09-24 18:02:48'),
(2742, 'SAWADOGO', 'Aidara', 'MASCULIN', '1996-01-07 00:00:00', NULL, NULL, NULL, NULL, '67109263', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 18:10:29', '2018-09-24 18:10:29'),
(2743, 'ZONGO', 'Boris Armel Berenger', 'MASCULIN', '1999-09-05 00:00:00', NULL, NULL, NULL, NULL, '71543770', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 18:16:53', '2018-09-24 18:16:53'),
(2744, 'DIENDERE', 'Esdras Adiel', 'MASCULIN', '1998-02-21 00:00:00', NULL, NULL, NULL, NULL, '70103120', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 18:21:26', '2018-09-24 18:21:26'),
(2745, 'ILY', 'Passamnimba Honore', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '66357416', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 18:25:11', '2018-09-24 18:25:11'),
(2746, 'KABORE', 'Balguissa', 'FEMININ', '1999-11-22 00:00:00', NULL, NULL, NULL, NULL, '62713839', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 18:29:34', '2018-09-24 18:29:34'),
(2747, 'SANOU', 'A Alida Mélaine', 'MASCULIN', '2000-01-02 00:00:00', NULL, NULL, NULL, NULL, '64730819', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 18:33:55', '2018-09-24 18:33:55'),
(2748, 'OUEDRAOGO', 'Kiswendsida Marie Emmanuelle', 'FEMININ', '1997-10-17 00:00:00', NULL, NULL, NULL, NULL, '70294584', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-24 18:38:12', '2018-09-24 18:38:12'),
(2749, 'OUEDRAOGO', 'Bénin-windé Hafizat', 'FEMININ', '1998-12-29 00:00:00', NULL, NULL, NULL, NULL, '70717679', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 08:59:37', '2018-09-25 08:59:37'),
(2750, 'OUATTARA', 'Ya Yasminatou', 'FEMININ', '2000-04-19 00:00:00', NULL, NULL, NULL, NULL, '64553268', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 09:06:10', '2018-09-25 09:06:10'),
(2751, 'SAWADOGO', 'Abdoul Fatahou', 'MASCULIN', '1998-05-04 00:00:00', NULL, NULL, NULL, NULL, '71731528', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 09:11:30', '2018-09-25 09:11:30'),
(2752, 'OUATTARA', 'Ya Yasminatou', 'FEMININ', '2000-04-19 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 09:16:30', '2018-09-25 09:16:30'),
(2753, 'SAWADOGO', 'Pazisnewendé Pierrette', 'FEMININ', '1999-12-21 00:00:00', NULL, NULL, NULL, NULL, '51323927', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 09:24:24', '2018-09-25 09:24:24'),
(2754, 'TRAORE', 'Guie Florence Cécile', 'FEMININ', '1998-12-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 09:24:55', '2018-09-25 09:24:55'),
(2755, 'KINDO', 'Awa', 'FEMININ', '1999-03-31 00:00:00', NULL, NULL, NULL, NULL, '62044500', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 09:25:47', '2018-09-25 09:25:47'),
(2756, 'SONDO', 'Sidnoma Théophile', 'MASCULIN', '1997-02-08 00:00:00', NULL, NULL, NULL, NULL, '63573795', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 09:30:06', '2018-09-25 09:30:06'),
(2757, 'SIA', 'Tobiré Razo', 'MASCULIN', '1998-06-25 00:00:00', NULL, NULL, NULL, NULL, '74514590', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 09:32:25', '2018-09-25 09:32:25'),
(2758, 'BELEM', 'Fatimata', 'FEMININ', '1996-04-08 00:00:00', NULL, NULL, NULL, NULL, '75005526', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 09:34:17', '2018-09-25 09:34:17'),
(2759, 'BALIMA', 'Aissatou Leila Dano-Viel', 'FEMININ', '2000-06-18 00:00:00', NULL, NULL, NULL, NULL, '64869900', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 09:34:37', '2018-09-25 09:34:37'),
(2760, 'LALSAGA', 'Rebecca Sandrine', 'FEMININ', '1998-11-04 02:00:00', NULL, NULL, NULL, NULL, '70 39 68 18', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 09:39:43', '2018-09-25 09:39:43'),
(2761, 'ADA', 'Weidan Steve Adrian', 'MASCULIN', '2001-04-02 02:00:00', NULL, NULL, NULL, NULL, '70 26 76 28', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 09:41:48', '2018-09-25 09:41:48'),
(2762, 'KONSEIMBO', 'Chris Ewald Wend-Yaam', 'MASCULIN', '2000-10-03 00:00:00', NULL, NULL, NULL, NULL, '61388294', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 09:43:03', '2018-09-25 09:43:03'),
(2763, 'SELOUGOUROU', 'Ouédan Arsène', 'MASCULIN', '1997-11-22 02:00:00', NULL, NULL, NULL, NULL, '78 98 18 15', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 09:44:07', '2018-09-25 09:44:07'),
(2764, 'SOMDA', 'Anonyaon Gisèle', 'FEMININ', '1997-05-13 02:00:00', NULL, NULL, NULL, NULL, '78 11 90 68', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 09:46:02', '2018-09-25 09:46:02'),
(2765, 'SORY', 'Irassié', 'MASCULIN', '1999-10-20 02:00:00', NULL, NULL, NULL, NULL, '76 51 55 77', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 09:48:31', '2018-09-25 09:48:31'),
(2766, 'SAWADOGO', 'Rasmata', 'FEMININ', '1998-01-05 02:00:00', NULL, NULL, NULL, NULL, '77 34 75 09', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 09:50:27', '2018-09-25 09:50:27'),
(2767, 'ROUAMBA', 'Ragnangnewendé Flora  Estelle', 'FEMININ', '2000-01-01 00:00:00', NULL, NULL, NULL, NULL, '63527580', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 09:51:07', '2018-09-25 09:51:07'),
(2768, 'ZONGO', 'Sakinatou', 'FEMININ', '1998-08-25 00:00:00', NULL, NULL, NULL, NULL, '63105472', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 09:52:40', '2018-09-25 09:52:40'),
(2769, 'YIMIEN', 'Dabo Boris Nourdine', 'MASCULIN', '2000-10-21 02:00:00', NULL, NULL, NULL, NULL, '67 12 36 06', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 09:53:01', '2018-09-25 09:53:01'),
(2770, 'SANGO', 'Mahamoudou', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '64 87 21 79', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 09:56:46', '2018-09-25 09:56:46'),
(2771, 'BIGTOGO', 'Mathilde Marie Amadine', 'FEMININ', '2000-05-31 00:00:00', NULL, NULL, NULL, NULL, '70149724', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 09:57:25', '2018-09-25 09:57:25'),
(2772, 'KAMBOU', 'Soungari', 'MASCULIN', '1998-05-18 02:00:00', NULL, NULL, NULL, NULL, '77 43 57 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 09:59:24', '2018-09-25 09:59:24'),
(2773, 'SAREMBE', 'Fayçal Ezechiel Sifoma', 'MASCULIN', '2000-01-23 00:00:00', NULL, NULL, NULL, NULL, '60317853', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 10:06:59', '2018-09-25 10:06:59'),
(2774, 'OUALI', 'Dapougda Bienvenue', 'MASCULIN', '1998-10-29 00:00:00', NULL, NULL, NULL, NULL, '62999618', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 10:09:44', '2018-09-25 10:09:44'),
(2775, 'ZABRE', 'Adjaratou', 'FEMININ', '1998-03-21 00:00:00', NULL, NULL, NULL, NULL, '65471111', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:10:58', '2018-09-25 10:10:58'),
(2776, 'SANON', 'Tolo Serge Arnaud Latif', 'MASCULIN', '2000-05-14 02:00:00', NULL, NULL, NULL, NULL, '77 90 17 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:14:11', '2018-09-25 10:14:11'),
(2777, 'KINDO', 'Rachid', 'MASCULIN', '1999-07-29 00:00:00', NULL, NULL, NULL, NULL, '62476330', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:16:54', '2018-09-25 10:16:54'),
(2778, 'NIAONE', 'Cheick Omar', 'MASCULIN', '1999-10-28 02:00:00', NULL, NULL, NULL, NULL, '70 71 24 16', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:18:22', '2018-09-25 10:18:22'),
(2779, 'OUEDRAOGO', 'Djélica', 'FEMININ', '1996-04-13 00:00:00', NULL, NULL, NULL, NULL, '78610344', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:21:41', '2018-09-25 10:21:41'),
(2780, 'SOUMAILA', 'Moussa', 'MASCULIN', '1998-09-22 00:00:00', NULL, NULL, NULL, NULL, '70468255', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 10:22:22', '2018-09-25 10:22:22'),
(2781, 'SANOU', 'Gaoussou', 'MASCULIN', '1998-12-15 02:00:00', NULL, NULL, NULL, NULL, '77 33 65 71', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:24:08', '2018-09-25 10:24:08'),
(2782, 'SESSOUMA', 'Hamadou', 'MASCULIN', '1997-04-07 02:00:00', NULL, NULL, NULL, NULL, '63 45 21 31', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:32:20', '2018-09-25 10:32:20'),
(2783, 'NITIEMA', 'Wendbénindo Judicaêl', 'MASCULIN', '1998-04-09 00:00:00', NULL, NULL, NULL, NULL, '61375518', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:34:28', '2018-09-25 10:34:28'),
(2784, 'SANOU', 'Bilaly', 'MASCULIN', '1997-04-12 02:00:00', NULL, NULL, NULL, NULL, '64 76 86 20', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:34:38', '2018-09-25 10:34:38'),
(2785, 'SAWADOGO', 'Hamadé', 'MASCULIN', '1996-12-31 02:00:00', NULL, NULL, NULL, NULL, '64 00 51 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:37:18', '2018-09-25 10:37:18'),
(2786, 'BARRY', 'Abdoul Abass', 'MASCULIN', '1997-07-09 00:00:00', NULL, NULL, NULL, NULL, '73248887', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:38:47', '2018-09-25 10:38:47'),
(2787, 'TRAORE', 'Mariétou', 'FEMININ', '1997-04-22 02:00:00', NULL, NULL, NULL, NULL, '74 73 06 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:39:45', '2018-09-25 10:39:45'),
(2788, 'ZERBO', 'Issouf', 'MASCULIN', '1997-01-02 02:00:00', NULL, NULL, NULL, NULL, '65 82 70 93', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:42:53', '2018-09-25 10:42:53'),
(2789, 'SAWADOGO', 'Boureima', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:43:04', '2018-09-25 10:43:04'),
(2790, 'SAMTOUMA', 'Nongawendé Nathanaël', 'MASCULIN', '1997-08-30 02:00:00', NULL, NULL, NULL, NULL, '70 32 75 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:46:23', '2018-09-25 10:46:23'),
(2791, 'TRAORE', 'Soumana Abdelaziz', 'MASCULIN', '1999-09-19 00:00:00', NULL, NULL, NULL, NULL, '75372269', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 10:46:26', '2018-09-25 10:46:26'),
(2792, 'YOUNGA', 'Abdoul Aziz', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:46:48', '2018-09-25 10:46:48'),
(2793, 'KYENDREBEOGO', 'Wendkouni Joël Cédric', 'MASCULIN', '2000-07-13 00:00:00', NULL, NULL, NULL, NULL, '56568525', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 10:48:22', '2018-09-25 10:48:22'),
(2794, 'SORE', 'Samiratou', 'FEMININ', '1999-09-17 00:00:00', NULL, NULL, NULL, NULL, '73519139', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:49:42', '2018-09-25 10:49:42'),
(2795, 'SOU', 'Sami Aude Romaric', 'MASCULIN', '1999-11-18 00:00:00', NULL, NULL, NULL, NULL, '66826172', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 10:50:11', '2018-09-25 10:50:11'),
(2796, 'NABIE', 'Doubassan', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 97 21 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:51:10', '2018-09-25 10:51:10'),
(2797, 'BONZI', 'Zinso Moumouni', 'MASCULIN', '1999-11-16 00:00:00', NULL, NULL, NULL, NULL, '78104459', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 10:51:59', '2018-09-25 10:51:59'),
(2798, 'OUERMI', 'Lassané', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '65055006', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:52:37', '2018-09-25 10:52:37'),
(2799, 'ZONGO', 'Moumouni', 'MASCULIN', '1996-07-12 02:00:00', NULL, NULL, NULL, NULL, '66 54 35 68', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 10:54:01', '2018-09-25 10:54:01'),
(2800, 'BELEM', 'Abdoulaye', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '67524641', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:55:47', '2018-09-25 10:55:47'),
(2801, 'SAWADOGO', 'Salifou', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '61874786', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 10:58:50', '2018-09-25 10:58:50'),
(2802, 'SANON', 'Abdramane', 'MASCULIN', '1998-08-02 02:00:00', NULL, NULL, NULL, NULL, '76 47 30 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 11:00:43', '2018-09-25 11:00:43'),
(2803, 'OUARME', 'Abdoul-Karim', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70896736', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:03:03', '2018-09-25 11:03:03'),
(2804, 'YARO', 'Issoufou', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '55278882', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:07:11', '2018-09-25 11:07:11'),
(2805, 'OUEDRAOGO', 'Mahamadi', 'MASCULIN', '1998-11-05 00:00:00', NULL, NULL, NULL, NULL, '60585261', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:10:22', '2018-09-25 11:10:22'),
(2806, 'YOUGBARE', 'Stéphane Lionel', 'MASCULIN', '2000-07-03 00:00:00', NULL, NULL, NULL, NULL, '75672881', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:11:52', '2018-09-25 11:11:52'),
(2807, 'MILLOGO', 'Pierre Abraham', 'MASCULIN', '1999-01-23 00:00:00', NULL, NULL, NULL, NULL, '74612409', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:13:41', '2018-09-25 11:13:41'),
(2808, 'SAWADOGO', 'Mouniratou', 'FEMININ', '1999-03-11 00:00:00', NULL, NULL, NULL, NULL, '72380611', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:13:51', '2018-09-25 11:13:51'),
(2809, 'SAGNON', 'Fatoumata', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '62126254', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:15:27', '2018-09-25 11:15:27'),
(2810, 'PORGO', 'Abdoul Aziz', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:17:15', '2018-09-25 11:17:15'),
(2811, 'BOLY', 'Mariam Farida', 'FEMININ', '1999-12-03 00:00:00', NULL, NULL, NULL, NULL, '66696539', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:17:35', '2018-09-25 11:17:35'),
(2812, 'OUEDRAOGO', 'Fatou', 'FEMININ', '1999-06-26 00:00:00', NULL, NULL, NULL, NULL, '75739303', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:19:27', '2018-09-25 11:19:27'),
(2813, 'KOALA', 'Olivier', 'MASCULIN', '1997-10-30 00:00:00', NULL, NULL, NULL, NULL, '74031546', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:21:02', '2018-09-25 11:21:02'),
(2814, 'SOULAMA', 'Tiaranhogou', 'MASCULIN', '1996-01-14 00:00:00', NULL, NULL, NULL, NULL, '67672200', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:21:21', '2018-09-25 11:21:21'),
(2815, 'ZOUGMORE', 'Wendpouiré Abdoul Fatao', 'MASCULIN', '1997-05-13 00:00:00', NULL, NULL, NULL, NULL, '70 29 09 01', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 11:22:42', '2018-09-25 11:22:42'),
(2816, 'KINDO', 'Abdoul Fataf', 'MASCULIN', '1999-05-27 00:00:00', NULL, NULL, NULL, NULL, '67853935', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:24:49', '2018-09-25 11:24:49'),
(2817, 'OUEDRAOGO', 'Abdoul Bassirou', 'MASCULIN', '1995-06-04 00:00:00', NULL, NULL, NULL, NULL, '63 09 05 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 11:24:53', '2018-09-25 11:24:53'),
(2818, 'ZONGO', 'Wendpoueré Germain', 'MASCULIN', '1998-05-29 00:00:00', NULL, NULL, NULL, NULL, '72974777', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:25:56', '2018-09-25 11:25:56'),
(2819, 'KINDO', 'Inoussa', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:27:37', '2018-09-25 11:27:37'),
(2820, 'ZOROM', 'Saidou', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:27:54', '2018-09-25 11:27:54'),
(2821, 'NANA', 'Esdras Relwendé', 'MASCULIN', '1999-06-24 00:00:00', NULL, NULL, NULL, NULL, '64857594', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:29:34', '2018-09-25 11:29:34'),
(2822, 'TAOKO', 'Sombewindin Eliezer', 'MASCULIN', '1995-12-12 00:00:00', NULL, NULL, NULL, NULL, '70 50 21 25', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 11:29:48', '2018-09-25 11:29:48'),
(2823, 'COULIBALY', 'San Aly', 'MASCULIN', '1998-10-05 00:00:00', NULL, NULL, NULL, NULL, '73064345', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:31:17', '2018-09-25 11:31:17'),
(2824, 'ZOUNDI', 'Bienvenu', 'MASCULIN', '1996-08-16 00:00:00', NULL, NULL, NULL, NULL, '77703998', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:33:28', '2018-09-25 11:33:28'),
(2825, 'OUEDRAOGO', 'Wendkouni Ibrahima', 'MASCULIN', '1998-09-07 00:00:00', NULL, NULL, NULL, NULL, '71142017', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:34:29', '2018-09-25 11:34:29'),
(2826, 'SIRIBIE', 'Tiama Zoulkifri', 'MASCULIN', '1999-09-01 00:00:00', NULL, NULL, NULL, NULL, '65542016', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:37:03', '2018-09-25 11:37:03'),
(2827, 'YAMEOGO', 'Ganda Armel', 'MASCULIN', '1995-08-16 00:00:00', NULL, NULL, NULL, NULL, '73 22 22 41', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 11:37:07', '2018-09-25 11:37:07'),
(2828, 'BAKOUAN', 'Ousmane', 'MASCULIN', '1996-03-10 00:00:00', NULL, NULL, NULL, NULL, '57695487', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:38:57', '2018-09-25 11:38:57'),
(2829, 'BAGUI', 'Cheick Ibrahim', 'MASCULIN', '1998-05-18 00:00:00', NULL, NULL, NULL, NULL, '70 72 21 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 11:40:04', '2018-09-25 11:40:04'),
(2830, 'KOLOGO', 'Félicité', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:40:19', '2018-09-25 11:40:19'),
(2831, 'KONE', 'Koussé Inoussa', 'MASCULIN', '1997-10-03 00:00:00', NULL, NULL, NULL, NULL, '73582545', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:40:45', '2018-09-25 11:40:45'),
(2832, 'ZOUNGRANA', 'Prisca Kristmi', 'FEMININ', '1995-01-19 00:00:00', NULL, NULL, NULL, NULL, '72 85 78 35', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 11:42:17', '2018-09-25 11:42:17'),
(2833, 'DABRE', 'Salif', 'MASCULIN', '2000-11-24 00:00:00', NULL, NULL, NULL, NULL, '75900685', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 11:42:41', '2018-09-25 11:42:41'),
(2834, 'LOMPO', 'Etienne', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 21 86 88', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 11:45:23', '2018-09-25 11:45:23'),
(2835, 'OUEDRAOGO', 'Rachidatou', 'FEMININ', '1999-10-13 00:00:00', NULL, NULL, NULL, NULL, '79018153', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:46:50', '2018-09-25 11:46:50'),
(2836, 'NARE', 'Daniel Teg-Wendé', 'MASCULIN', '1997-04-12 00:00:00', NULL, NULL, NULL, NULL, '61 11 74 49', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 11:48:01', '2018-09-25 11:48:01'),
(2837, 'COMPAORE', 'Romain Ulrich', 'MASCULIN', '1996-10-09 00:00:00', NULL, NULL, NULL, NULL, '55068423', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:52:36', '2018-09-25 11:52:36'),
(2838, 'ZONGO', 'Sidonie', 'FEMININ', '1995-11-14 00:00:00', NULL, NULL, NULL, NULL, '13.52', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 11:53:50', '2018-09-25 11:53:50'),
(2839, 'OUEDRAOGO', 'Tounsida Prisca Sandrine', 'FEMININ', '1997-01-17 00:00:00', NULL, NULL, NULL, NULL, '71 71 79 72', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 11:56:10', '2018-09-25 11:56:10'),
(2840, 'COULIBALY', 'Kassoum', 'MASCULIN', '1999-07-22 00:00:00', NULL, NULL, NULL, NULL, '62767197', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 11:59:22', '2018-09-25 11:59:22'),
(2841, 'KIEMTORE', 'Soutong-Noma Romain Placide', 'MASCULIN', '1998-02-28 00:00:00', NULL, NULL, NULL, NULL, '73 51 92 41', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:03:18', '2018-09-25 12:03:18'),
(2842, 'BENGALY', 'Jessica Marielle', 'FEMININ', '2000-04-29 00:00:00', NULL, NULL, NULL, NULL, '62621410', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:04:21', '2018-09-25 12:04:21'),
(2843, 'OUATTARA', 'Alima Raïnatou', 'FEMININ', '1997-11-07 00:00:00', NULL, NULL, NULL, NULL, '70277846', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 12:06:27', '2018-09-25 12:06:27');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(2844, 'SAWADOGO', 'Boubacar', 'MASCULIN', '1998-01-15 00:00:00', NULL, NULL, NULL, NULL, '63 26 26 17', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:07:32', '2018-09-25 12:07:32'),
(2845, 'OUEDRAOGO', 'Mamounata', 'FEMININ', '1998-05-17 00:00:00', NULL, NULL, NULL, NULL, '76639130', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 12:08:39', '2018-09-25 12:08:39'),
(2846, 'SOULAMA', 'Daouda', 'MASCULIN', '2000-06-24 00:00:00', NULL, NULL, NULL, NULL, '74909649', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:09:03', '2018-09-25 12:09:03'),
(2847, 'SANA', 'Wendyaoda Yaachir Ben Ousmane', 'MASCULIN', '1996-11-24 00:00:00', NULL, NULL, NULL, NULL, '72627550', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:10:17', '2018-09-25 12:10:17'),
(2848, 'ILBOUDO', 'Mohamadi', 'MASCULIN', '1997-01-13 00:00:00', NULL, NULL, NULL, NULL, '78028669', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:12:40', '2018-09-25 12:12:40'),
(2849, 'KIENTEGA', 'Basnéwendé Ephraim', 'MASCULIN', '1998-03-31 00:00:00', NULL, NULL, NULL, NULL, '64 43 61 35', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:13:07', '2018-09-25 12:13:07'),
(2850, 'NARE', 'Ulrich', 'MASCULIN', '1997-07-19 00:00:00', NULL, NULL, NULL, NULL, '71 01 40 51', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:15:01', '2018-09-25 12:15:01'),
(2851, 'BANDRE', 'Wendlasida Marcus Jonathan', 'MASCULIN', '1998-11-17 00:00:00', NULL, NULL, NULL, NULL, '70850823', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:17:03', '2018-09-25 12:17:03'),
(2852, 'OUEDRAOGO', 'Tangkuilga Zakaria', 'MASCULIN', '1997-06-11 00:00:00', NULL, NULL, NULL, NULL, '63 01 88 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:17:13', '2018-09-25 12:17:13'),
(2853, 'LOMPO', 'Tadjoa', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 04 36 62', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:19:35', '2018-09-25 12:19:35'),
(2854, 'GANOU', 'Bassinadié Aimé', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '73 23 58 98', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:21:55', '2018-09-25 12:21:55'),
(2855, 'BELEM', 'Juliette', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '62 13 36 24', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:23:54', '2018-09-25 12:23:54'),
(2856, 'SAWADOGO', 'Issouf', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:24:13', '2018-09-25 12:24:13'),
(2857, 'BERE', 'Wendyam Davy', 'MASCULIN', '1998-09-20 00:00:00', NULL, NULL, NULL, NULL, '62 82 16 65', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:26:23', '2018-09-25 12:26:23'),
(2858, 'BAGAGNAN', 'Oumamata', 'FEMININ', '1998-11-25 00:00:00', NULL, NULL, NULL, NULL, '60598280', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:27:57', '2018-09-25 12:27:57'),
(2859, 'BONKOUNGOU', 'Martin', 'MASCULIN', '1997-01-01 00:00:00', NULL, NULL, NULL, NULL, '66 79 80 96', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-25 12:28:47', '2018-09-25 12:28:47'),
(2860, 'KABORE', 'Jules', 'MASCULIN', '1997-09-08 00:00:00', NULL, NULL, NULL, NULL, '12.46', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:30:35', '2018-09-25 12:30:35'),
(2861, 'OUEDRAOGO', 'Tegwendé Constantin', 'MASCULIN', '1997-05-21 00:00:00', NULL, NULL, NULL, NULL, '70463779', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:35:16', '2018-09-25 12:35:16'),
(2862, 'SAMAKE', 'Ousmane', 'MASCULIN', '1999-12-21 00:00:00', NULL, NULL, NULL, NULL, '1000000', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:39:30', '2018-09-25 12:39:30'),
(2863, 'KABORE', 'Abraham Wendpanga', 'MASCULIN', '1998-12-20 00:00:00', NULL, NULL, NULL, NULL, '73893836', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:44:55', '2018-09-25 12:44:55'),
(2864, 'SAWADOGO', 'Mahamadi', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '77 44 58 34', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 12:45:37', '2018-09-25 12:45:37'),
(2865, 'OUEDRAOGO', 'Teembnoma Gregoire', 'MASCULIN', '1997-09-03 02:00:00', NULL, NULL, NULL, NULL, '64 35 33 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 12:48:01', '2018-09-25 12:48:01'),
(2866, 'NIKIEMA', 'Souleymane', 'MASCULIN', '1999-07-02 00:00:00', NULL, NULL, NULL, NULL, '73251032', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:48:44', '2018-09-25 12:48:44'),
(2867, 'KABORE', 'Médard', 'MASCULIN', '1999-02-02 02:00:00', NULL, NULL, NULL, NULL, '64 84 71 74', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 12:50:47', '2018-09-25 12:50:47'),
(2868, 'KONE', 'Nanzi Laetitia Pascaline', 'FEMININ', '1999-04-04 02:00:00', NULL, NULL, NULL, NULL, '60 04 56 71', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 12:53:22', '2018-09-25 12:53:22'),
(2869, 'BAZIE', 'Yiwoupio Trypène', 'FEMININ', '2000-09-03 00:00:00', NULL, NULL, NULL, NULL, '63275131', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 12:55:59', '2018-09-25 12:55:59'),
(2870, 'TRAORE', 'Koura France Farida', 'FEMININ', '1999-01-18 02:00:00', NULL, NULL, NULL, NULL, '66 40 21 99', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 12:56:04', '2018-09-25 12:56:04'),
(2871, 'TOE', 'Mohamed', 'MASCULIN', '1998-08-09 02:00:00', NULL, NULL, NULL, NULL, '64 34 73 00', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 12:58:00', '2018-09-25 12:58:00'),
(2872, 'DA', 'Donmontiénou', 'FEMININ', '1997-08-08 00:00:00', NULL, NULL, NULL, NULL, '71050134', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 13:02:22', '2018-09-25 13:02:22'),
(2873, 'KABORE', 'Wendmalgda Sylvestre', 'MASCULIN', '1999-01-01 00:00:00', NULL, NULL, NULL, NULL, '73002734', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 13:06:11', '2018-09-25 13:06:11'),
(2874, 'KAMBOU', 'Yéri Diane', 'FEMININ', '2000-05-08 00:00:00', NULL, NULL, NULL, NULL, '67022689', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 13:48:36', '2018-09-25 13:48:36'),
(2875, 'OUAGARAOUA', 'Emile Delwendé', 'MASCULIN', '1998-05-22 00:00:00', NULL, NULL, NULL, NULL, '61163355', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 13:53:08', '2018-09-25 13:53:08'),
(2876, 'KONSEM', 'Ragnangnewendé Kévine', 'FEMININ', '1999-05-28 00:00:00', NULL, NULL, NULL, NULL, '76219666', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 13:55:24', '2018-09-25 13:55:24'),
(2877, 'ILBOUDO', 'Wendpasamdé Nathanaël Boewendsom', 'MASCULIN', '1999-01-09 00:00:00', NULL, NULL, NULL, NULL, '60565269', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 13:58:09', '2018-09-25 13:58:09'),
(2878, 'ZIDA', 'Wendinso Olivier', 'MASCULIN', '1997-03-06 00:00:00', NULL, NULL, NULL, NULL, '51535157', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:00:00', '2018-09-25 14:00:00'),
(2879, 'TRAORE', 'Yacouba', 'MASCULIN', '1996-10-12 00:00:00', NULL, NULL, NULL, NULL, '66671106', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:01:41', '2018-09-25 14:01:41'),
(2880, 'DIALLO', 'Fanta', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '72442343', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:03:35', '2018-09-25 14:03:35'),
(2881, 'OUATTARA', 'Sita', 'FEMININ', '1998-07-10 00:00:00', NULL, NULL, NULL, NULL, '60043525', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:05:47', '2018-09-25 14:05:47'),
(2882, 'OUERMI', 'Nafissatou', 'FEMININ', '1999-10-28 00:00:00', NULL, NULL, NULL, NULL, '74691674', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:07:47', '2018-09-25 14:07:47'),
(2883, 'OUEDRAOGO', 'Faridatou', 'FEMININ', '1999-01-01 00:00:00', NULL, NULL, NULL, NULL, '70279447', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:09:30', '2018-09-25 14:09:30'),
(2884, 'OUEDRAOGO', 'Windémi', 'FEMININ', '1998-07-25 00:00:00', NULL, NULL, NULL, NULL, '57971145', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:13:08', '2018-09-25 14:13:08'),
(2885, 'OUEDRAOGO', 'Nafissétou', 'FEMININ', '1997-10-08 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:14:56', '2018-09-25 14:14:56'),
(2886, 'NACOULMA', 'Zalissa', 'FEMININ', '1997-09-29 00:00:00', NULL, NULL, NULL, NULL, '78789773', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:17:29', '2018-09-25 14:17:29'),
(2887, 'KABORE', 'Viviane Doris', 'FEMININ', '1999-12-02 00:00:00', NULL, NULL, NULL, NULL, '60117565', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:23:11', '2018-09-25 14:23:11'),
(2888, 'SAWADOGO', 'Daouda', 'MASCULIN', '1998-07-15 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:25:48', '2018-09-25 14:25:48'),
(2889, 'TRAORE', 'Abdoulaye', 'MASCULIN', '1997-01-27 00:00:00', NULL, NULL, NULL, NULL, '63133614', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 14:25:55', '2018-09-25 14:25:55'),
(2890, 'KIENDREBEOGO', 'Wend-Kouni Thomas rodolphe', 'MASCULIN', '1999-12-06 00:00:00', NULL, NULL, NULL, NULL, '73527097', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:27:51', '2018-09-25 14:27:51'),
(2891, 'KOARA', 'Mohamed', 'MASCULIN', '2000-08-06 00:00:00', NULL, NULL, NULL, NULL, '63181838', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:29:56', '2018-09-25 14:29:56'),
(2892, 'DIARRA', 'Salif', 'MASCULIN', '1996-12-11 00:00:00', NULL, NULL, NULL, NULL, '61073818', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 14:29:59', '2018-09-25 14:29:59'),
(2893, 'MIRINDI', 'Yong HO Eric', 'MASCULIN', '1999-01-13 00:00:00', NULL, NULL, NULL, NULL, '60461250', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:31:48', '2018-09-25 14:31:48'),
(2894, 'COMPAORE', 'Sarifatou', 'FEMININ', '1999-04-04 00:00:00', NULL, NULL, NULL, NULL, '76154977', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 14:34:33', '2018-09-25 14:34:33'),
(2895, 'KABORE', 'Alexis', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 14:37:22', '2018-09-25 14:37:22'),
(2896, 'SOME', 'Esther Alice Souonta', 'FEMININ', '2000-09-21 02:00:00', NULL, NULL, NULL, NULL, '54 81 05 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 14:37:40', '2018-09-25 14:37:40'),
(2897, 'GUIGMA', 'Stéphane', 'MASCULIN', '1999-03-03 00:00:00', NULL, NULL, NULL, NULL, '62150700', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:38:21', '2018-09-25 14:38:21'),
(2898, 'KOANDA', 'Tiguènet', 'MASCULIN', '1997-06-27 00:00:00', NULL, NULL, NULL, NULL, '73645420', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 14:40:16', '2018-09-25 14:40:16'),
(2899, 'BADO', 'Harold-Kévin', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '31/12/1999', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 14:41:24', '2018-09-25 14:41:24'),
(2900, 'SOME', 'Nâawnin-Lièbou Eric', 'MASCULIN', '1998-12-10 02:00:00', NULL, NULL, NULL, NULL, '76 00 62 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 14:42:08', '2018-09-25 14:42:08'),
(2901, 'KONATE', 'Noufou Fatogoma', 'MASCULIN', '2000-02-03 02:00:00', NULL, NULL, NULL, NULL, '75 90 60 76', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 14:44:43', '2018-09-25 14:44:43'),
(2902, 'KONSEIGA', 'Saidou', 'MASCULIN', '1996-03-26 00:00:00', NULL, NULL, NULL, NULL, '76748607', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 14:46:32', '2018-09-25 14:46:32'),
(2903, 'SORE', 'Abdoulfataf', 'MASCULIN', '1999-04-07 02:00:00', NULL, NULL, NULL, NULL, '64 67 66 73', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 14:47:40', '2018-09-25 14:47:40'),
(2904, 'SAWADOGO', 'Abdoulaye', 'MASCULIN', '1997-12-31 02:00:00', NULL, NULL, NULL, NULL, '76 47 79 92', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 14:49:31', '2018-09-25 14:49:31'),
(2905, 'DEMBELE', 'Dramane', 'MASCULIN', '1996-06-28 00:00:00', NULL, NULL, NULL, NULL, '73220534', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 14:50:45', '2018-09-25 14:50:45'),
(2906, 'BONKOUNGOU', 'Wendlasida Nafissatou', 'MASCULIN', '1996-02-02 00:00:00', NULL, NULL, NULL, NULL, '70780400', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 14:54:24', '2018-09-25 14:54:24'),
(2907, 'SANON', 'Faïçale', 'MASCULIN', '1999-06-14 02:00:00', NULL, NULL, NULL, NULL, '60 23 61 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 14:54:44', '2018-09-25 14:54:44'),
(2908, 'DIALLO', 'Assane', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '70349134', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 14:58:31', '2018-09-25 14:58:31'),
(2909, 'NABI', 'Wend-MIMTIRI Danielle Synthia Enrique', 'FEMININ', '1997-12-11 00:00:00', NULL, NULL, NULL, NULL, '70486871', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:05:19', '2018-09-25 15:05:19'),
(2910, 'KABORE', 'Bilkissa', 'FEMININ', '1999-11-29 00:00:00', NULL, NULL, NULL, NULL, '64871886', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 15:05:25', '2018-09-25 15:05:25'),
(2911, 'OUATTARA', 'Djandjina Moctar', 'MASCULIN', '1999-09-19 02:00:00', NULL, NULL, NULL, NULL, '64 03 91 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:09:21', '2018-09-25 15:09:21'),
(2912, 'KABRE', 'Wendenda Basile', 'MASCULIN', '1999-04-29 00:00:00', NULL, NULL, NULL, NULL, '72399790', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:09:38', '2018-09-25 15:09:38'),
(2913, 'SOULI', 'Angèle', 'FEMININ', '1997-01-26 02:00:00', NULL, NULL, NULL, NULL, '63 11 06 02', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:12:05', '2018-09-25 15:12:05'),
(2914, 'KOANDA', 'Sadikou', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '79617553', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:14:12', '2018-09-25 15:14:12'),
(2915, 'OUEDRAOGO', 'Larissa', 'FEMININ', '1997-05-15 00:00:00', NULL, NULL, NULL, NULL, '68049431', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 15:14:29', '2018-09-25 15:14:29'),
(2916, 'ZONGO', 'Mariam', 'FEMININ', '1996-10-19 02:00:00', NULL, NULL, NULL, NULL, '75 83 52 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:14:36', '2018-09-25 15:14:36'),
(2917, 'KOTE', 'Drissa', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '67762175', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:15:48', '2018-09-25 15:15:48'),
(2918, 'SIDIBE', 'Moussa', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '60 30 65 68', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:16:17', '2018-09-25 15:16:17'),
(2919, 'HIEN', 'Yirtome', 'MASCULIN', '1996-04-25 00:00:00', NULL, NULL, NULL, NULL, '58066761', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 15:18:06', '2018-09-25 15:18:06'),
(2920, 'BONOU', 'Serge Roland', 'MASCULIN', '1999-07-24 02:00:00', NULL, NULL, NULL, NULL, '74 20 39 72', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:18:12', '2018-09-25 15:18:12'),
(2921, 'KAFANDO', 'Hamsa', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:18:12', '2018-09-25 15:18:12'),
(2922, 'KIENDREBEOGO', 'Albert', 'MASCULIN', '1996-10-02 00:00:00', NULL, NULL, NULL, NULL, '74628049', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:19:40', '2018-09-25 15:19:40'),
(2923, 'ZORE', 'Winsongh Mandiba Bienvenu', 'MASCULIN', '1999-11-19 02:00:00', NULL, NULL, NULL, NULL, '70 17 27 67', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:20:26', '2018-09-25 15:20:26'),
(2924, 'HEMA', 'Bamassi', 'MASCULIN', '1996-08-14 00:00:00', NULL, NULL, NULL, NULL, '60036894', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:21:14', '2018-09-25 15:21:14'),
(2925, 'GOMINA', 'Zégoulo', 'MASCULIN', '1997-08-23 00:00:00', NULL, NULL, NULL, NULL, '72483823', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 15:21:50', '2018-09-25 15:21:50'),
(2926, 'MOYENGA', 'Yann Yaurès', 'MASCULIN', '1999-06-25 00:00:00', NULL, NULL, NULL, NULL, '61824958', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:27:10', '2018-09-25 15:27:10'),
(2927, 'DOUNIO', 'Augustin Konon', 'MASCULIN', '1997-08-27 00:00:00', NULL, NULL, NULL, NULL, '65651698', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 15:27:38', '2018-09-25 15:27:38'),
(2928, 'SAKANDE', 'Salfo', 'MASCULIN', '1999-12-08 00:00:00', NULL, NULL, NULL, NULL, '63613901', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:28:29', '2018-09-25 15:28:29'),
(2929, 'ILBOUDO', 'Sougrinoma', 'MASCULIN', '1997-10-08 00:00:00', NULL, NULL, NULL, NULL, '64524407', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:30:03', '2018-09-25 15:30:03'),
(2930, 'BAYE', 'Careine Claudia', 'FEMININ', '2001-03-31 02:00:00', NULL, NULL, NULL, NULL, '74 37 42 03', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:31:08', '2018-09-25 15:31:08'),
(2931, 'KARFO', 'Roger', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '70231860', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 15:36:08', '2018-09-25 15:36:08'),
(2932, 'SOMANDE', 'Zitgnimgna Inoussa', 'MASCULIN', '1999-07-08 02:00:00', NULL, NULL, NULL, NULL, '66 88 39 47', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:36:20', '2018-09-25 15:36:20'),
(2933, 'BORO', 'Yannick Pierre Aristide', 'MASCULIN', '2000-06-21 02:00:00', NULL, NULL, NULL, NULL, '70 69 02 18', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:38:17', '2018-09-25 15:38:17'),
(2934, 'SANGARE', 'Mohamed', 'MASCULIN', '1998-10-04 02:00:00', NULL, NULL, NULL, NULL, '75 73 01 93', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:40:11', '2018-09-25 15:40:11'),
(2935, 'SINON', 'Ibrahim', 'MASCULIN', '1996-03-30 00:00:00', NULL, NULL, NULL, NULL, '64464745', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 15:41:13', '2018-09-25 15:41:13'),
(2936, 'SAWADOGO', 'Cheichh Abdoul Kader Marcus', 'MASCULIN', '2000-03-10 02:00:00', NULL, NULL, NULL, NULL, '76 44 17 45', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:42:56', '2018-09-25 15:42:56'),
(2937, 'SINARE', 'Boubacar Sontonnooma', 'MASCULIN', '1998-05-16 00:00:00', NULL, NULL, NULL, NULL, '78300315', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 15:44:59', '2018-09-25 15:44:59'),
(2938, 'SEBEDO', 'Wambi Jean Louis', 'MASCULIN', '1993-06-25 02:00:00', NULL, NULL, NULL, NULL, '65 62 05 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:45:07', '2018-09-25 15:45:07'),
(2939, 'BADO', 'Patrice', 'MASCULIN', '1998-03-03 02:00:00', NULL, NULL, NULL, NULL, '55 49 96 63', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:47:51', '2018-09-25 15:47:51'),
(2940, 'KAMBOU', 'Sansan Edouard', 'MASCULIN', '1999-01-05 00:00:00', NULL, NULL, NULL, NULL, '73435526', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:49:05', '2018-09-25 15:49:05'),
(2941, 'MASSA', 'Cheick Yassine', 'MASCULIN', '1999-01-24 02:00:00', NULL, NULL, NULL, NULL, '76 55 68 01', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:50:04', '2018-09-25 15:50:04'),
(2942, 'GNOUMOU', 'Dofinta Sékou Lionel', 'MASCULIN', '2000-05-14 00:00:00', NULL, NULL, NULL, NULL, '65282549', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:51:23', '2018-09-25 15:51:23'),
(2943, 'BARROU', 'Ahmed', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '70 08 42 97', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:52:06', '2018-09-25 15:52:06'),
(2944, 'KIRAKOYA', 'Abdoul Samathe', 'MASCULIN', '1996-05-14 00:00:00', NULL, NULL, NULL, NULL, '70257068', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:53:35', '2018-09-25 15:53:35'),
(2945, 'OUEDRAOGO', 'Teeg-Wendé Inoussa', 'MASCULIN', '1999-12-04 02:00:00', NULL, NULL, NULL, NULL, '76 56 84 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:54:05', '2018-09-25 15:54:05'),
(2946, 'OUEDRAOGO', 'Ousmane', 'MASCULIN', '1996-12-03 02:00:00', NULL, NULL, NULL, NULL, '64 26 47 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:55:40', '2018-09-25 15:55:40'),
(2947, 'SAWADOGO', 'Wendkuuni Kévin Landry', 'MASCULIN', '1996-12-01 00:00:00', NULL, NULL, NULL, NULL, '70295286', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:56:00', '2018-09-25 15:56:00'),
(2948, 'IMA', 'Bruno', 'MASCULIN', '1997-10-02 00:00:00', NULL, NULL, NULL, NULL, '73164721', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:57:15', '2018-09-25 15:57:15'),
(2949, 'KONATE', 'Abdoul-Kader', 'MASCULIN', '1996-04-23 02:00:00', NULL, NULL, NULL, NULL, '56 81 05 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:58:13', '2018-09-25 15:58:13'),
(2950, 'MAÏGA', 'Wendwaoga Abdoul Aziz', 'MASCULIN', '1999-08-02 00:00:00', NULL, NULL, NULL, NULL, '70063894', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 15:59:19', '2018-09-25 15:59:19'),
(2951, 'OUEDRAOGO', 'Bibata', 'FEMININ', '2000-09-05 02:00:00', NULL, NULL, NULL, NULL, '65 16 93 60', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 15:59:51', '2018-09-25 15:59:51'),
(2952, 'LOUGUE', 'Alassane', 'MASCULIN', '1998-12-29 00:00:00', NULL, NULL, NULL, NULL, '67073467', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 16:01:09', '2018-09-25 16:01:09'),
(2953, 'KY', 'ARISTIDE kowouli', 'MASCULIN', '1998-01-07 00:00:00', NULL, NULL, NULL, NULL, '64192962', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 16:03:15', '2018-09-25 16:03:15'),
(2954, 'KABORE', 'Reine Léa Pawendtaoré', 'FEMININ', '2001-01-11 02:00:00', NULL, NULL, NULL, NULL, '76 53 14 14', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 16:03:41', '2018-09-25 16:03:41'),
(2955, 'SAWADOGO', 'Axel Gildas Wendlapanga', 'MASCULIN', '2000-07-24 00:00:00', NULL, NULL, NULL, NULL, '71041004', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 16:05:02', '2018-09-25 16:05:02'),
(2956, 'NIKIEMA', 'Pegdwendé Alida Géraldine', 'FEMININ', '2000-11-12 00:00:00', NULL, NULL, NULL, NULL, '78040464', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-25 16:05:42', '2018-09-25 16:05:42'),
(2957, 'THIAM', 'Alioun', 'MASCULIN', '1999-06-29 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 16:11:03', '2018-09-25 16:11:03'),
(2958, 'VALEA', 'Pingdwindé Falonne', 'FEMININ', '1998-09-17 02:00:00', NULL, NULL, NULL, NULL, '74 91 00 31', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 16:11:48', '2018-09-25 16:11:48'),
(2959, 'MALGOUBRI', 'Lionel Micaêk Kevin', 'MASCULIN', '2000-06-03 00:00:00', NULL, NULL, NULL, NULL, '70112254', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 16:30:47', '2018-09-25 16:30:47'),
(2960, 'SANON', 'Moucharifa Ben Rodrigue', 'MASCULIN', '2000-05-20 00:00:00', NULL, NULL, NULL, NULL, '63505070', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 16:39:45', '2018-09-25 16:39:45'),
(2961, 'OUEDRAOGO', 'Kassoum', 'MASCULIN', '1997-04-20 00:00:00', NULL, NULL, NULL, NULL, '71096785', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 16:45:36', '2018-09-25 16:45:36'),
(2962, 'BELEM', 'Alban Eddy Ulrich', 'MASCULIN', '1999-11-18 00:00:00', NULL, NULL, NULL, NULL, '70754012', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 16:48:50', '2018-09-25 16:48:50'),
(2963, 'SANOU', 'Do Jessica', 'FEMININ', '2001-06-23 02:00:00', NULL, NULL, NULL, NULL, '72 74 78 75', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 16:56:43', '2018-09-25 16:56:43'),
(2964, 'SAWADOGO', 'Daouda', 'MASCULIN', '1997-03-04 00:00:00', NULL, NULL, NULL, NULL, '72227881', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 16:59:47', '2018-09-25 16:59:47'),
(2965, 'OUEDRAOGO', 'Ouagabamba Narcisse', 'MASCULIN', '1999-11-29 02:00:00', NULL, NULL, NULL, NULL, '76 32 82 07', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:00:06', '2018-09-25 17:00:06'),
(2966, 'OUEDRAOGO', 'Ousmane Savougne', 'MASCULIN', '1997-04-19 02:00:00', NULL, NULL, NULL, NULL, '74 95 14 64', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:02:41', '2018-09-25 17:02:41'),
(2967, 'SAWADOGO', 'Josué Donald Adina Japhet', 'MASCULIN', '1998-01-23 00:00:00', NULL, NULL, NULL, NULL, '60588469', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-25 17:03:19', '2018-09-25 17:03:19'),
(2968, 'KOROMA', 'Sanzié dit Seydou', 'MASCULIN', '1999-09-03 02:00:00', NULL, NULL, NULL, NULL, '64 00 70 23', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:04:30', '2018-09-25 17:04:30'),
(2969, 'ZONGO', 'Daouda', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '74 18 69 59', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:06:49', '2018-09-25 17:06:49'),
(2970, 'BERTE', 'Daouda', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 46 29 17', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:26:06', '2018-09-25 17:26:06'),
(2971, 'BARRO', 'Daouda Siré Juniore', 'MASCULIN', '1999-10-22 02:00:00', NULL, NULL, NULL, NULL, '72 33 62 95', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:36:19', '2018-09-25 17:36:19'),
(2972, 'PORGO', 'Halidou', 'MASCULIN', '1996-04-30 02:00:00', NULL, NULL, NULL, NULL, '76 34 92 43', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:38:08', '2018-09-25 17:38:08'),
(2973, 'TRAORE', 'Samouhan Mahovah Benedicta', 'FEMININ', '2000-04-12 02:00:00', NULL, NULL, NULL, NULL, '74 02 50 56', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:42:46', '2018-09-25 17:42:46'),
(2974, 'NACANABO', 'Zalihatou', 'FEMININ', '2000-01-21 02:00:00', NULL, NULL, NULL, NULL, '74 27 98 52', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:45:21', '2018-09-25 17:45:21'),
(2975, 'SAWADOGO', 'Théophile', 'MASCULIN', '1997-06-28 02:00:00', NULL, NULL, NULL, NULL, '66 95 79 74', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:47:28', '2018-09-25 17:47:28'),
(2976, 'OUEDRAOGO', 'Abass Ahmed', 'MASCULIN', '2000-02-16 02:00:00', NULL, NULL, NULL, NULL, '67 00 73 84', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:49:19', '2018-09-25 17:49:19'),
(2977, 'TRAORE', 'Zégué Abou Sidiki', 'MASCULIN', '1996-07-12 02:00:00', NULL, NULL, NULL, NULL, '56 08 40 33', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:51:13', '2018-09-25 17:51:13'),
(2978, 'KIENTEGA', 'Sévérin', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '65 82 13 82', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:53:16', '2018-09-25 17:53:16'),
(2979, 'ZOUNGRANA', 'Sournoma Thierry Cédric', 'MASCULIN', '1998-12-08 02:00:00', NULL, NULL, NULL, NULL, '67 39 67 11', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:55:57', '2018-09-25 17:55:57'),
(2980, 'NOUMA', 'Ambroise', 'MASCULIN', '1999-12-31 02:00:00', NULL, NULL, NULL, NULL, '75 72 45 29', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:58:00', '2018-09-25 17:58:00'),
(2981, 'YAMEOGO', 'Tabitha', 'FEMININ', '1997-07-23 02:00:00', NULL, NULL, NULL, NULL, '73 04 03 90', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 17:59:44', '2018-09-25 17:59:44'),
(2982, 'SANOU', 'Thierry Henri', 'MASCULIN', '1999-06-14 02:00:00', NULL, NULL, NULL, NULL, '77 46 61 62', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 18:01:35', '2018-09-25 18:01:35'),
(2983, 'SIMBIRI', 'Mariam', 'FEMININ', '1996-02-08 02:00:00', NULL, NULL, NULL, NULL, '64 09 50 55', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 18:03:26', '2018-09-25 18:03:26'),
(2984, 'SOME', 'Wantane', 'FEMININ', '1997-10-10 02:00:00', NULL, NULL, NULL, NULL, '56 98 52 05', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 18:05:27', '2018-09-25 18:05:27'),
(2985, 'KABORE', 'Abdoul Moubarak', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '71 39 40 13', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 18:07:14', '2018-09-25 18:07:14'),
(2986, 'DICKO', 'Aly', 'MASCULIN', '1999-01-31 02:00:00', NULL, NULL, NULL, NULL, '71 80 75 81', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 18:08:49', '2018-09-25 18:08:49'),
(2987, 'WARME', 'Tégawendé Faysal', 'MASCULIN', '1999-07-05 02:00:00', NULL, NULL, NULL, NULL, '75 22 87 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-25 18:11:23', '2018-09-25 18:11:23'),
(2988, 'ILBOUDO', 'Barkoindé Yannick', 'MASCULIN', '1997-07-16 00:00:00', NULL, NULL, NULL, NULL, '60082927', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 09:12:33', '2018-09-26 09:12:33'),
(2989, 'ILBOUDO', 'Wenninso- Puitibyam Henriette', 'FEMININ', '1998-07-13 00:00:00', NULL, NULL, NULL, NULL, '73185798', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 09:17:57', '2018-09-26 09:17:57'),
(2990, 'KAMBOU', 'Eugenie', 'FEMININ', '1997-06-07 00:00:00', NULL, NULL, NULL, NULL, '73405830', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 09:20:19', '2018-09-26 09:20:19'),
(2991, 'GANSONRE', 'Mariam', 'FEMININ', '1998-05-10 00:00:00', NULL, NULL, NULL, NULL, '68771597', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 09:21:52', '2018-09-26 09:21:52'),
(2992, 'TAPSOBA', 'Loukmane', 'MASCULIN', '1999-06-24 00:00:00', NULL, NULL, NULL, NULL, '78167935', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 09:27:05', '2018-09-26 09:27:05'),
(2993, 'KOBENDE', 'Assaghoin Mounhirou', 'MASCULIN', '1999-02-25 02:00:00', NULL, NULL, NULL, NULL, '64 75 01 94', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 09:30:06', '2018-09-26 09:30:06'),
(2994, 'SOME', 'Bongsalé Judicäel', 'MASCULIN', '1998-12-17 00:00:00', NULL, NULL, NULL, NULL, '62543780', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 09:34:08', '2018-09-26 09:34:08'),
(2995, 'SOME', 'Soôlièry', 'MASCULIN', '1999-08-30 00:00:00', NULL, NULL, NULL, NULL, '52333159', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 09:39:32', '2018-09-26 09:39:32'),
(2996, 'SOME', 'Sorgan', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 09:42:55', '2018-09-26 09:42:55'),
(2997, 'OUATTARA', 'Madeleine', 'FEMININ', '1996-12-24 00:00:00', NULL, NULL, NULL, NULL, '67576978', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 09:45:56', '2018-09-26 09:45:56'),
(2998, 'SEDOGO', 'Souleymane', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '60338850', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 09:47:00', '2018-09-26 09:47:00'),
(2999, 'GUINKO', 'Aliguetou', 'FEMININ', '2000-05-01 00:00:00', NULL, NULL, NULL, NULL, '70261456', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 09:49:59', '2018-09-26 09:49:59'),
(3000, 'SAWADOGO', 'Saïdou Lionel Wendinmy', 'MASCULIN', '1998-10-12 00:00:00', NULL, NULL, NULL, NULL, '64688352', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 09:50:59', '2018-09-26 09:50:59'),
(3001, 'DIAKITE', 'Djara', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '60874743', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 09:51:29', '2018-09-26 09:51:29'),
(3002, 'KERE', 'Pascaline', 'FEMININ', '2001-04-25 00:00:00', NULL, NULL, NULL, NULL, '67441021', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 09:53:14', '2018-09-26 09:53:14'),
(3003, 'KINDA', 'Abdoul Malick', 'MASCULIN', '1996-11-25 00:00:00', NULL, NULL, NULL, NULL, '76620077', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 09:54:31', '2018-09-26 09:54:31'),
(3004, 'OUEDRAOGO', 'Angèle Hadê', 'FEMININ', '1996-05-12 00:00:00', NULL, NULL, NULL, NULL, '65966026', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 09:54:55', '2018-09-26 09:54:55'),
(3005, 'COMPAORE', 'Adama', 'MASCULIN', '1997-01-17 00:00:00', NULL, NULL, NULL, NULL, '00226', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 09:57:49', '2018-09-26 09:57:49'),
(3006, 'SAWADOGO', 'Adama', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '65526590', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 09:57:53', '2018-09-26 09:57:53'),
(3007, 'SAWADOGO', 'Tégawindé Armel Epiphane', 'MASCULIN', '1998-01-08 00:00:00', NULL, NULL, NULL, NULL, '60890471', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 09:58:57', '2018-09-26 09:58:57'),
(3008, 'ZANRE', 'Joseph', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '65963143', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:00:17', '2018-09-26 10:00:17'),
(3009, 'DOUGOURI', 'Binso Maïmounata', 'FEMININ', '1998-11-24 00:00:00', NULL, NULL, NULL, NULL, '76603864', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:01:31', '2018-09-26 10:01:31'),
(3010, 'SANA', 'Abdoul Hamide', 'MASCULIN', '1998-04-30 00:00:00', NULL, NULL, NULL, NULL, '72081612', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:01:37', '2018-09-26 10:01:37'),
(3011, 'BATIONON', 'Marie Joseph Thérèse Audrey', 'FEMININ', '2000-06-23 00:00:00', NULL, NULL, NULL, NULL, '71992488', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:02:37', '2018-09-26 10:02:37'),
(3012, 'KEDREBEOGO', 'Wendzoodo Déogratias Georges Marie', 'MASCULIN', '1997-12-09 00:00:00', NULL, NULL, NULL, NULL, '74008009', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:04:36', '2018-09-26 10:04:36'),
(3013, 'NABALOUM', 'Pagomziri', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '76718924', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:05:03', '2018-09-26 10:05:03'),
(3014, 'TINDANO', 'Bounkierimaye', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '68545608', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:05:07', '2018-09-26 10:05:07'),
(3015, 'SAWADOGO', 'Rayangnewendé Frans Leny', 'MASCULIN', '2000-02-07 00:00:00', NULL, NULL, NULL, NULL, '61237105', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:06:46', '2018-09-26 10:06:46'),
(3016, 'DJIGUEMDE', 'Nongabamba Boureima', 'MASCULIN', '1997-09-22 00:00:00', NULL, NULL, NULL, NULL, '55359084', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:07:46', '2018-09-26 10:07:46'),
(3017, 'SAWADOGO', 'Nabonséba Pierre', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '75692390', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:08:33', '2018-09-26 10:08:33'),
(3018, 'TRAORE', 'Karidja', 'FEMININ', '1998-04-28 00:00:00', NULL, NULL, NULL, NULL, '62239385', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:08:42', '2018-09-26 10:08:42'),
(3019, 'OUEDRAOGO', 'Alizèta', 'FEMININ', '1999-12-18 00:00:00', NULL, NULL, NULL, NULL, '70231558', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:09:58', '2018-09-26 10:09:58'),
(3020, 'KALAGA', 'Harouna', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '64937391', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:10:10', '2018-09-26 10:10:10'),
(3021, 'KAMBIRE', 'Sami', 'MASCULIN', '1998-11-25 00:00:00', NULL, NULL, NULL, NULL, '51317515', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:12:03', '2018-09-26 10:12:03'),
(3022, 'OUEDRAOGO', 'Wendenda Aser', 'MASCULIN', '2000-06-28 00:00:00', NULL, NULL, NULL, NULL, '63032075', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:12:22', '2018-09-26 10:12:22'),
(3023, 'SANGARE', 'Adama', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '64325225', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:13:35', '2018-09-26 10:13:35'),
(3024, 'SAWADOGO', 'Kouka Rodrigue Tegawendé', 'MASCULIN', '1998-03-13 00:00:00', NULL, NULL, NULL, NULL, '57377080', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:15:02', '2018-09-26 10:15:02'),
(3025, 'NYOKOU', 'Abraham', 'MASCULIN', '1996-10-21 00:00:00', NULL, NULL, NULL, NULL, '69890663', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:15:09', '2018-09-26 10:15:09'),
(3026, 'TRAORE', 'Ainsa', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:15:40', '2018-09-26 10:15:40'),
(3027, 'YAMEOGO', 'Mamata', 'FEMININ', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70531531', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:16:49', '2018-09-26 10:16:49'),
(3028, 'SAWADOGO', 'Pégedwendé Abdoul Salam Joseph', 'MASCULIN', '1997-06-18 00:00:00', NULL, NULL, NULL, NULL, '71900980', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:17:51', '2018-09-26 10:17:51'),
(3029, 'SAWADOGO', 'Issa', 'MASCULIN', '1997-07-21 00:00:00', NULL, NULL, NULL, NULL, '71198645', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:18:15', '2018-09-26 10:18:15'),
(3030, 'SOME', 'Sanignan', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '76615689', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:20:22', '2018-09-26 10:20:22'),
(3031, 'SAMANDOULOUGOU', 'Abdoul Moumine', 'MASCULIN', '1998-09-06 00:00:00', NULL, NULL, NULL, NULL, '72845741', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:21:25', '2018-09-26 10:21:25'),
(3032, 'DIERRO', 'Siriki', 'MASCULIN', '1996-07-20 00:00:00', NULL, NULL, NULL, NULL, '67100169', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:21:57', '2018-09-26 10:21:57'),
(3033, 'YABRE', 'Barthélémy Hippolyte', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '70878647', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:22:32', '2018-09-26 10:22:32'),
(3034, 'KOALAGA', 'Abel', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:25:10', '2018-09-26 10:25:10'),
(3035, 'PARE', 'Audenelle Marina', 'FEMININ', '2000-07-20 00:00:00', NULL, NULL, NULL, NULL, '62212225', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:25:20', '2018-09-26 10:25:20'),
(3036, 'SEDOGO', 'Sylvain', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '75414313', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:26:41', '2018-09-26 10:26:41'),
(3037, 'SEBRE', 'Alassane 2ème Jumeau', 'MASCULIN', '2000-10-06 00:00:00', NULL, NULL, NULL, NULL, '72674996', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:27:11', '2018-09-26 10:27:11'),
(3038, 'OUEDRAOGO', 'Morou', 'MASCULIN', '1998-06-20 00:00:00', NULL, NULL, NULL, NULL, '75589737', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 10:27:29', '2018-09-26 10:27:29'),
(3039, 'OUEDRAOGO', 'Gnouga Aminata', 'FEMININ', '1996-05-05 00:00:00', NULL, NULL, NULL, NULL, '61169126', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:28:16', '2018-09-26 10:28:16'),
(3040, 'PALENFO', 'Inès', 'MASCULIN', '1997-09-10 00:00:00', NULL, NULL, NULL, NULL, '72014977', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:29:53', '2018-09-26 10:29:53'),
(3041, 'DOUMBERE', 'Amadou', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '74476016', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:31:20', '2018-09-26 10:31:20'),
(3042, 'KABORE', 'Dina Nadiatou', 'FEMININ', '2000-04-28 00:00:00', NULL, NULL, NULL, NULL, '79703560', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:32:45', '2018-09-26 10:32:45'),
(3043, 'COMBARI', 'Lamoudi', 'MASCULIN', '1997-07-02 00:00:00', NULL, NULL, NULL, NULL, '63753309', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:33:56', '2018-09-26 10:33:56'),
(3044, 'KISSU', 'Wendyam Christian Yasser', 'MASCULIN', '2000-12-18 00:00:00', NULL, NULL, NULL, NULL, '62826200', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:34:29', '2018-09-26 10:34:29'),
(3045, 'OUEDRAOGO', 'Sadia', 'FEMININ', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '77204081', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:36:31', '2018-09-26 10:36:31'),
(3046, 'SANANE', 'Mahamoudou', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '70498233', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:38:01', '2018-09-26 10:38:01'),
(3047, 'DABIRE', 'Dommènayonè', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '62111986', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:38:12', '2018-09-26 10:38:12'),
(3048, 'SEREME', 'Finé', 'FEMININ', '1997-09-24 00:00:00', NULL, NULL, NULL, NULL, '65215336', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:40:11', '2018-09-26 10:40:11'),
(3049, 'OUATTARA', 'Ouo Raïssa', 'FEMININ', '1999-10-25 00:00:00', NULL, NULL, NULL, NULL, '70465087', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:42:06', '2018-09-26 10:42:06'),
(3050, 'SANANE', 'Abass', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '71489775', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:42:19', '2018-09-26 10:42:19'),
(3051, 'DORI', 'Bibata', 'FEMININ', '1996-03-17 00:00:00', NULL, NULL, NULL, NULL, '66941246', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:43:30', '2018-09-26 10:43:30'),
(3052, 'POUBERE', 'Massahoudou', 'MASCULIN', '1997-03-10 00:00:00', NULL, NULL, NULL, NULL, '71790497', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:45:42', '2018-09-26 10:45:42'),
(3053, 'KOUMARE', 'Fanta RAïCELLE', 'FEMININ', '1998-06-19 00:00:00', NULL, NULL, NULL, NULL, '75790770', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:45:44', '2018-09-26 10:45:44'),
(3054, 'OUEDRAOGO', 'Zakaria', 'MASCULIN', '1996-08-26 00:00:00', NULL, NULL, NULL, NULL, '76608138', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:47:13', '2018-09-26 10:47:13'),
(3055, 'GNISSIEN', 'Korotimi', 'FEMININ', '1997-02-08 00:00:00', NULL, NULL, NULL, NULL, '67445786', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:48:36', '2018-09-26 10:48:36'),
(3056, 'ZALE', 'Oumou Koulsoum', 'FEMININ', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '70125062', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:51:57', '2018-09-26 10:51:57'),
(3057, 'DIPAMA', 'Jacob Wilfried Wend-Yam', 'MASCULIN', '1998-10-23 00:00:00', NULL, NULL, NULL, NULL, '70390741', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:52:20', '2018-09-26 10:52:20'),
(3058, 'KONDOMBO', 'Loubnaa Hanifat', 'FEMININ', '1997-08-10 00:00:00', NULL, NULL, NULL, NULL, '75109933', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:53:42', '2018-09-26 10:53:42'),
(3059, 'BARRY', 'Fadimata', 'FEMININ', '1997-10-07 00:00:00', NULL, NULL, NULL, NULL, '62508700', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 10:54:57', '2018-09-26 10:54:57'),
(3060, 'SAWADOGO', 'Issoufou', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '60 38 79 93', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 10:55:07', '2018-09-26 10:55:07'),
(3061, 'ZAMANI', 'Madou', 'MASCULIN', '1997-02-03 00:00:00', NULL, NULL, NULL, NULL, '67235242', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:55:52', '2018-09-26 10:55:52'),
(3062, 'ZABRE', 'Habibatou', 'FEMININ', '2000-03-19 02:00:00', NULL, NULL, NULL, NULL, '70 28 15 24', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 10:57:31', '2018-09-26 10:57:31'),
(3063, 'ROUAMBA', 'Wilfried', 'MASCULIN', '1998-10-09 00:00:00', NULL, NULL, NULL, NULL, '67 43 53 016', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 10:58:33', '2018-09-26 10:58:33'),
(3064, 'ILBOUDO', 'Abdoul Kader', 'MASCULIN', '1997-02-17 00:00:00', NULL, NULL, NULL, NULL, '71359950', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 10:59:41', '2018-09-26 10:59:41'),
(3065, 'OUEDRAOGO', 'Abdramane', 'MASCULIN', '1996-09-10 00:00:00', NULL, NULL, NULL, NULL, '74 51 34 45', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:01:05', '2018-09-26 11:01:05'),
(3066, 'KAM', 'Bê', 'MASCULIN', '1996-12-18 00:00:00', NULL, NULL, NULL, NULL, '71615996', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:02:40', '2018-09-26 11:02:40'),
(3067, 'KABORE', 'Wendsongda Flora Clément', 'MASCULIN', '1995-11-24 00:00:00', NULL, NULL, NULL, NULL, '76 64 88 39', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:03:29', '2018-09-26 11:03:29'),
(3068, 'DIALLO', 'Amadoum', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '71/42/68/45', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 11:04:01', '2018-09-26 11:04:01'),
(3069, 'ZONGO', 'Ragnaguenewendé Basile', 'MASCULIN', '1998-01-01 02:00:00', NULL, NULL, NULL, NULL, '66 57 11 61', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:04:51', '2018-09-26 11:04:51'),
(3070, 'KIRAKOYA', 'Mohamed', 'MASCULIN', '1998-08-01 00:00:00', NULL, NULL, NULL, NULL, '63585285', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:05:25', '2018-09-26 11:05:25'),
(3071, 'DIARRA', 'Wilfried', 'MASCULIN', '1996-11-05 00:00:00', NULL, NULL, NULL, NULL, '63 43 83 29', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:05:27', '2018-09-26 11:05:27'),
(3072, 'BANISSI', 'Wendpapouignimba Hubert', 'MASCULIN', '1996-11-10 00:00:00', NULL, NULL, NULL, NULL, '65362966', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:07:40', '2018-09-26 11:07:40'),
(3073, 'SARE', 'Ousmane', 'MASCULIN', '1996-12-02 00:00:00', NULL, NULL, NULL, NULL, '73 03 51 72', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:08:15', '2018-09-26 11:08:15'),
(3074, 'BAGAYA', 'Boubacar', 'MASCULIN', '1996-11-15 00:00:00', NULL, NULL, NULL, NULL, '66451854', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:09:18', '2018-09-26 11:09:18'),
(3075, 'ZONGO', 'Edgard', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:10:25', '2018-09-26 11:10:25'),
(3076, 'ZEMBA', 'Delwendé Salomé', 'FEMININ', '1998-10-11 02:00:00', NULL, NULL, NULL, NULL, '71 64 30 50', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:11:16', '2018-09-26 11:11:16'),
(3077, 'ZIDA', 'Ayman', 'MASCULIN', '1999-08-31 00:00:00', NULL, NULL, NULL, NULL, '60 01 36 09', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:11:29', '2018-09-26 11:11:29'),
(3078, 'CONGO', 'Elisabeth', 'FEMININ', '1998-10-10 02:00:00', NULL, NULL, NULL, NULL, '64 44 60 49', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:13:27', '2018-09-26 11:13:27'),
(3079, 'NEYA', 'Bademin Moïse', 'MASCULIN', '1997-04-22 00:00:00', NULL, NULL, NULL, NULL, '60 81 89 48', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:14:23', '2018-09-26 11:14:23'),
(3080, 'YAMEOGO', 'Sébastien', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '72 73 98 36', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:16:59', '2018-09-26 11:16:59'),
(3081, 'OUEDRAOGO', 'Pengdwendé Josué', 'MASCULIN', '1997-11-27 00:00:00', NULL, NULL, NULL, NULL, '62 00 18 75', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:18:10', '2018-09-26 11:18:10'),
(3082, 'KOROGO', 'Justin', 'MASCULIN', '1996-04-20 00:00:00', NULL, NULL, NULL, NULL, '58190683', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:19:21', '2018-09-26 11:19:21'),
(3083, 'SANKARA', 'Riaïtou', 'FEMININ', '1997-08-19 00:00:00', NULL, NULL, NULL, NULL, '60 08 12 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:20:56', '2018-09-26 11:20:56'),
(3084, 'LOMPO', 'Yentema', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:22:13', '2018-09-26 11:22:13'),
(3085, 'TAPSOBA', 'Ibrahim', 'MASCULIN', '1998-03-28 00:00:00', NULL, NULL, NULL, NULL, '63400976', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:23:44', '2018-09-26 11:23:44'),
(3086, 'KOANDA', 'Wendlasida Joséphine Marie Flora', 'FEMININ', '1997-09-10 00:00:00', NULL, NULL, NULL, NULL, '61 12 65 50', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:24:13', '2018-09-26 11:24:13'),
(3087, 'NANEMA', 'Wendlamita Sylvestre', 'MASCULIN', '1996-01-01 00:00:00', NULL, NULL, NULL, NULL, '60600162', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:25:36', '2018-09-26 11:25:36'),
(3088, 'YOUMA', 'Wend-Kouni Abdoul Rachid Kévin', 'MASCULIN', '1999-09-19 02:00:00', NULL, NULL, NULL, NULL, '70 44 04 02', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:26:49', '2018-09-26 11:26:49'),
(3089, 'SORE', 'Mohamed Assami', 'MASCULIN', '1998-04-14 00:00:00', NULL, NULL, NULL, NULL, '73 33 51 02', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:26:57', '2018-09-26 11:26:57'),
(3090, 'SAWADOGO', 'Mouhammadou', 'MASCULIN', '1997-08-04 00:00:00', NULL, NULL, NULL, NULL, '70074031', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:29:46', '2018-09-26 11:29:46'),
(3091, 'GANABA', 'Abdoul Rashid', 'MASCULIN', '1997-03-19 00:00:00', NULL, NULL, NULL, NULL, '63 55 60 89', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:30:54', '2018-09-26 11:30:54'),
(3092, 'ZOUMA', 'Idrissa', 'MASCULIN', '1998-12-31 02:00:00', NULL, NULL, NULL, NULL, '75 51 04 96', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:31:17', '2018-09-26 11:31:17'),
(3093, 'OUEDRAOGO', 'Kouka', 'MASCULIN', '1999-12-31 00:00:00', NULL, NULL, NULL, NULL, '60904300', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:31:38', '2018-09-26 11:31:38'),
(3094, 'ZONGO', 'Marcel', 'MASCULIN', '1997-01-16 00:00:00', NULL, NULL, NULL, NULL, '74214711', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:32:56', '2018-09-26 11:32:56'),
(3095, 'WAONGO', 'Issiaka', 'MASCULIN', '2000-09-30 02:00:00', NULL, NULL, NULL, NULL, '60 26 88 01', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:34:11', '2018-09-26 11:34:11'),
(3096, 'SAWADOGO', 'Sedoine Poko', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '74174209', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:34:53', '2018-09-26 11:34:53'),
(3097, 'DENE', 'Moussa', 'MASCULIN', '1996-01-06 00:00:00', NULL, NULL, NULL, NULL, '12.81', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 11:35:01', '2018-09-26 11:35:01'),
(3098, 'YODA', 'Mohamed Saïd', 'MASCULIN', '2001-03-31 02:00:00', NULL, NULL, NULL, NULL, '61 45 62 89', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:36:36', '2018-09-26 11:36:36'),
(3099, 'BAGUE', 'Alassane 1er Jumeau', 'MASCULIN', '1997-06-26 00:00:00', NULL, NULL, NULL, NULL, '76660691', NULL, 'Inconnu', 'sacrum', 'sacrum', '2018-09-26 11:37:42', '2018-09-26 11:37:42'),
(3100, 'DAYAMBA', 'Mohemina', 'MASCULIN', '1996-03-15 00:00:00', NULL, NULL, NULL, NULL, '63418650', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 11:40:42', '2018-09-26 11:40:42'),
(3101, 'CISSE', 'Sidi Lamine', 'MASCULIN', '1999-11-01 00:00:00', NULL, NULL, NULL, NULL, '76412905', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 11:40:59', '2018-09-26 11:40:59'),
(3102, 'DIESSONGO', 'Nassirou', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '62520727', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 11:43:57', '2018-09-26 11:43:57'),
(3103, 'BOUGMA', 'AIimé', 'MASCULIN', '1995-08-05 00:00:00', NULL, NULL, NULL, NULL, '71 32 28 02', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:44:19', '2018-09-26 11:44:19');
INSERT INTO `candidat` (`id`, `nom_etudiant`, `prenom_etudiant`, `sexe`, `date_naiss_etudiant`, `nom_pere`, `nom_mere`, `profession_pere`, `profession_mere`, `telephone`, `devient_id`, `num_piece_identite`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(3104, 'DEMBELE', 'Nindamou Armand', 'MASCULIN', '1997-12-06 00:00:00', NULL, NULL, NULL, NULL, '61499571', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 11:44:24', '2018-09-26 11:44:24'),
(3105, 'SANDWIDI', 'Maxime', 'MASCULIN', '1997-05-15 00:00:00', NULL, NULL, NULL, NULL, '70890641', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 11:46:46', '2018-09-26 11:46:46'),
(3106, 'DIALLO', 'aLPHA mOCTAR', 'MASCULIN', '1998-10-05 00:00:00', NULL, NULL, NULL, NULL, '73 46 22 09', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:46:56', '2018-09-26 11:46:56'),
(3107, 'OUALI', 'Diaboado Prosper', 'MASCULIN', '1997-07-02 00:00:00', NULL, NULL, NULL, NULL, '62632018', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 11:48:06', '2018-09-26 11:48:06'),
(3108, 'DABIRE', 'Mouhazé', 'MASCULIN', '1999-09-18 00:00:00', NULL, NULL, NULL, NULL, '55 15 43 09', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:49:23', '2018-09-26 11:49:23'),
(3109, 'DIPAMA', 'Omer', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '63894189', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 11:49:51', '2018-09-26 11:49:51'),
(3110, 'ZOUNGRANA', 'Pouswendé Fabrice', 'MASCULIN', '1999-03-13 02:00:00', NULL, NULL, NULL, NULL, '70 29 95 80', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:51:38', '2018-09-26 11:51:38'),
(3111, 'KABORE', 'Fidèl', 'MASCULIN', '1998-04-25 00:00:00', NULL, NULL, NULL, NULL, '64 27 72 10', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:52:13', '2018-09-26 11:52:13'),
(3112, 'OUEDRAOGO', 'Enerst', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '360000', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 11:52:40', '2018-09-26 11:52:40'),
(3113, 'KIEKIETA', 'Daouda', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '78427151', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 11:53:25', '2018-09-26 11:53:25'),
(3114, 'DRABO', 'Bia Seyd\'Naa Ali', 'MASCULIN', '1996-10-15 00:00:00', NULL, NULL, NULL, NULL, '72 49 32 03', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:54:23', '2018-09-26 11:54:23'),
(3115, 'NOMBRE', 'Hadam', 'MASCULIN', '1997-05-14 00:00:00', NULL, NULL, NULL, NULL, '55 71 80 91', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:56:08', '2018-09-26 11:56:08'),
(3116, 'ZONGO', 'Fadilatou', 'FEMININ', '1999-05-22 02:00:00', NULL, NULL, NULL, NULL, '55 11 03 27', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:56:47', '2018-09-26 11:56:47'),
(3117, 'KEMTORE', 'Norègma Charles', 'MASCULIN', '1997-11-04 00:00:00', NULL, NULL, NULL, NULL, '67933078', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 11:57:29', '2018-09-26 11:57:29'),
(3118, 'SAWADOGO', 'Zeïnabou', 'FEMININ', '1997-03-15 00:00:00', NULL, NULL, NULL, NULL, '66 27 94 67', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 11:59:24', '2018-09-26 11:59:24'),
(3119, 'BAMBA', 'Mariame Amal Fawzia', 'FEMININ', '2000-12-06 00:00:00', NULL, NULL, NULL, NULL, '76776559', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 11:59:30', '2018-09-26 11:59:30'),
(3120, 'KABORE', 'Tongonmenga Johann Dimitri', 'MASCULIN', '1999-10-12 02:00:00', NULL, NULL, NULL, NULL, '66 88 88 78', NULL, 'Inconnu', 'urielle', 'urielle', '2018-09-26 11:59:58', '2018-09-26 11:59:58'),
(3121, 'KAFANDO', 'Weindgoudi Léon', 'MASCULIN', '1997-03-22 00:00:00', NULL, NULL, NULL, NULL, '65 33 32 93', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 12:01:18', '2018-09-26 12:01:18'),
(3122, 'KABORE', 'Wendbénédo Urbain', 'MASCULIN', '1998-03-06 00:00:00', NULL, NULL, NULL, NULL, '62 88 07 70', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 12:03:24', '2018-09-26 12:03:24'),
(3123, 'COULIBALY', 'Stephanie Françoise Junior', 'FEMININ', '1999-08-30 00:00:00', NULL, NULL, NULL, NULL, '60403619', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 12:04:40', '2018-09-26 12:04:40'),
(3124, 'BAMBA', 'Nabéré', 'MASCULIN', '1998-07-10 00:00:00', NULL, NULL, NULL, NULL, '77517643', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:05:50', '2018-09-26 12:05:50'),
(3125, 'COULIBALY', 'Karo Arsène Thierry Junior', 'MASCULIN', '1998-10-13 00:00:00', NULL, NULL, NULL, NULL, '73 50 57 65', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 12:06:25', '2018-09-26 12:06:25'),
(3126, 'PARE', 'Nado Ariane Marie Pierre', 'FEMININ', '2000-09-09 00:00:00', NULL, NULL, NULL, NULL, '66154564', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 12:07:44', '2018-09-26 12:07:44'),
(3127, 'TARNAGDA', 'Bintou Chérifatou Ben Yahiya', 'FEMININ', '1999-05-17 00:00:00', NULL, NULL, NULL, NULL, '78 87 00 30', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 12:09:29', '2018-09-26 12:09:29'),
(3128, 'BOMBIRE', 'Denise', 'FEMININ', '1998-05-15 00:00:00', NULL, NULL, NULL, NULL, '72996659', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 12:10:17', '2018-09-26 12:10:17'),
(3129, 'YAMEOGO', 'Wendtoin', 'MASCULIN', '1997-12-14 00:00:00', NULL, NULL, NULL, NULL, '76468599', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:11:14', '2018-09-26 12:11:14'),
(3130, 'ZAMPALIGRE', 'Mohamed Cheik Faïçal', 'MASCULIN', '1997-06-28 00:00:00', NULL, NULL, NULL, NULL, '73 85 65 78', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 12:11:55', '2018-09-26 12:11:55'),
(3131, 'PEZONGO', 'Kouryamba', 'MASCULIN', '2000-12-31 00:00:00', NULL, NULL, NULL, NULL, '56522340', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 12:12:23', '2018-09-26 12:12:23'),
(3132, 'TIOYE', 'Sié Alain', 'MASCULIN', '1996-02-24 00:00:00', NULL, NULL, NULL, NULL, '76 74 46 86', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 12:14:44', '2018-09-26 12:14:44'),
(3133, 'KAMBOU', 'Thô François', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '70732652', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 12:15:08', '2018-09-26 12:15:08'),
(3134, 'ZONGO', 'Lucien', 'MASCULIN', '2000-01-04 00:00:00', NULL, NULL, NULL, NULL, '72565460', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:16:49', '2018-09-26 12:16:49'),
(3135, 'BELEM', 'Halilou', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '73 26 24 01', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 12:20:05', '2018-09-26 12:20:05'),
(3136, 'BAZIE', 'Kévin', 'MASCULIN', '1996-05-21 00:00:00', NULL, NULL, NULL, NULL, '72544223', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:20:32', '2018-09-26 12:20:32'),
(3137, 'PACODI', 'Soumaya Wendyiida (2e jumeau)', 'FEMININ', '1999-10-23 00:00:00', NULL, NULL, NULL, NULL, '52665962', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 12:22:51', '2018-09-26 12:22:51'),
(3138, 'ZOMA', 'Wendyam Rodrigue', 'MASCULIN', '1996-02-24 00:00:00', NULL, NULL, NULL, NULL, '62465919', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:23:23', '2018-09-26 12:23:23'),
(3139, 'ZONGO', 'Wendinkonté Elisée', 'MASCULIN', '1997-07-14 00:00:00', NULL, NULL, NULL, NULL, '71 10 51 48', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 12:27:33', '2018-09-26 12:27:33'),
(3140, 'BERE', 'Valérie Kiss-Wend-sida', 'FEMININ', '1998-04-14 00:00:00', NULL, NULL, NULL, NULL, '72901130', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:27:37', '2018-09-26 12:27:37'),
(3141, 'BAGAGNAN', 'Ramatou', 'MASCULIN', '1996-07-18 00:00:00', NULL, NULL, NULL, NULL, '60257049', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:30:27', '2018-09-26 12:30:27'),
(3142, 'RAMDE', 'Wendsompassaté Béatrice', 'FEMININ', '1997-01-02 00:00:00', NULL, NULL, NULL, NULL, '61 62 27 07', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 12:30:45', '2018-09-26 12:30:45'),
(3143, 'BOUDA', 'Kiswendsida Alice Marie Gatien', 'FEMININ', '1997-12-18 00:00:00', NULL, NULL, NULL, NULL, '77498987', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:34:15', '2018-09-26 12:34:15'),
(3144, 'OUEDRAOGO', 'Allassane', 'MASCULIN', '1998-02-27 00:00:00', NULL, NULL, NULL, NULL, '71959058', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 12:36:58', '2018-09-26 12:36:58'),
(3145, 'YAMEOGO', 'Wendwaoga Michaël', 'MASCULIN', '1996-10-31 00:00:00', NULL, NULL, NULL, NULL, '64173738', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:39:47', '2018-09-26 12:39:47'),
(3146, 'KONKOBO', 'Moussa', 'MASCULIN', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '75703374', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:43:16', '2018-09-26 12:43:16'),
(3147, 'SAVADOGO', 'Palingwendé Marie Nestor', 'MASCULIN', '1999-02-26 00:00:00', NULL, NULL, NULL, NULL, '67564651', NULL, 'Néant', 'okpascaline', 'okpascaline', '2018-09-26 12:43:38', '2018-09-26 12:43:38'),
(3148, 'BELEM', 'Boureima', 'MASCULIN', '1998-10-28 00:00:00', NULL, NULL, NULL, NULL, '66083028', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:46:04', '2018-09-26 12:46:04'),
(3149, 'KIEMTORE', 'Soutognoma Donald', 'MASCULIN', '1997-07-15 00:00:00', NULL, NULL, NULL, NULL, '63104515', NULL, 'Inconnu', 'damansalia', 'damansalia', '2018-09-26 12:49:52', '2018-09-26 12:49:52'),
(3150, 'KONATE', 'Orokia', 'FEMININ', '1996-12-31 00:00:00', NULL, NULL, NULL, NULL, '64 38 21 56', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:24:07', '2018-09-26 13:24:07'),
(3151, 'TRAORE', 'Cheick Abdoul Mohamed', 'MASCULIN', '1997-01-12 00:00:00', NULL, NULL, NULL, NULL, '71 75 55 90', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:26:36', '2018-09-26 13:26:36'),
(3152, 'YAMEOGO', 'Tiga Rahime Issouf', 'MASCULIN', '1997-06-23 00:00:00', NULL, NULL, NULL, NULL, '71 49 25 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:29:37', '2018-09-26 13:29:37'),
(3153, 'TRAORE', 'Aly', 'MASCULIN', '1995-12-31 00:00:00', NULL, NULL, NULL, NULL, '55 79 07 77', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:32:47', '2018-09-26 13:32:47'),
(3154, 'NOUGTARA', 'Madeleine', 'FEMININ', '1996-01-22 00:00:00', NULL, NULL, NULL, NULL, '66 57 68 00', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:34:36', '2018-09-26 13:34:36'),
(3155, 'TAPSOBA', 'Souleymane', 'MASCULIN', '1997-12-31 00:00:00', NULL, NULL, NULL, NULL, '61 50 04 96', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:38:37', '2018-09-26 13:38:37'),
(3156, 'MANE', 'Marcelline', 'FEMININ', '1996-05-05 00:00:00', NULL, NULL, NULL, NULL, '65 74 72 69', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:41:46', '2018-09-26 13:41:46'),
(3157, 'OUEDRAOGO', 'Abdoul Rahim', 'MASCULIN', '1998-12-31 00:00:00', NULL, NULL, NULL, NULL, '63 30 23 16', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:45:02', '2018-09-26 13:45:02'),
(3158, 'DIALLO', 'Abdoulaye Rachid', 'MASCULIN', '1996-05-31 00:00:00', NULL, NULL, NULL, NULL, '75 47 67 96', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:47:27', '2018-09-26 13:47:27'),
(3159, 'SIRITIE', 'Mariam', 'FEMININ', '1995-12-31 00:00:00', NULL, NULL, NULL, NULL, '66 38 20 66', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:49:59', '2018-09-26 13:49:59'),
(3160, 'SAWADOGO', 'Balkissa', 'FEMININ', '1998-12-03 00:00:00', NULL, NULL, NULL, NULL, '65 63 58 20', NULL, 'Inconnu', 'aouangraoua', 'aouangraoua', '2018-09-26 13:51:49', '2018-09-26 13:51:49'),
(3161, 'KPG', 'KPG', 'FEMININ', '1997-01-10 00:00:00', 'Brice Ouedraogo', 'Bernadette Ouedraogo', 'Fonctionnaire', 'Ménagère', '78203000', NULL, 'B7865565', NULL, NULL, NULL, NULL),
(3162, 'KPG', 'KPG', 'FEMININ', '1997-01-10 00:00:00', 'Brice Ouedraogo', 'Bernadette Ouedraogo', 'Fonctionnaire', 'Ménagère', '78203000', NULL, 'B7865565', NULL, NULL, NULL, NULL),
(3163, 'KPG', 'KPG', 'FEMININ', '1997-01-10 00:00:00', 'Brice Ouedraogo', 'Bernadette Ouedraogo', 'Fonctionnaire', 'Ménagère', '78203000', NULL, 'B7865565', NULL, NULL, NULL, NULL),
(3174, 'Yam', 'Yam', 'FEMININ', '2021-02-04 00:00:00', 'Bassirou', 'Assita', 'mecano', 'menaère', '7888888', NULL, 'Btyv', NULL, NULL, NULL, NULL),
(3175, 'Zeba', 'Aminata', 'FEMININ', '2000-01-06 00:00:00', 'zeba', 'ouedraogo', 'yacou', 'sita', '7888888', NULL, 'B78555', NULL, NULL, NULL, NULL),
(3176, 'Zo', 'mamadou', 'MASCULIN', '2021-02-05 00:00:00', 'zo', 'zo', 'abass', 'ami', '78000', NULL, 'bbaa', NULL, NULL, NULL, NULL),
(3177, 'Hien', 'Rachelle', 'FEMININ', '1997-10-10 00:00:00', 'hien', 'hien', 'jules', 'charlotte', '76203000', NULL, 'B7888', NULL, NULL, NULL, NULL),
(3178, 'Ziga', 'abdoulaye', 'MASCULIN', '2000-12-09 00:00:00', NULL, NULL, NULL, NULL, '78000000', NULL, 'B78555200', NULL, NULL, NULL, NULL),
(3179, 'Legrene', 'Inoussa', 'MASCULIN', '1997-06-13 00:00:00', NULL, NULL, NULL, NULL, '78777252', 16, 'B758366', NULL, NULL, NULL, NULL),
(3180, 'Sanou', 'Oumar', 'MASCULIN', '1999-04-10 00:00:00', NULL, NULL, NULL, NULL, '123456789', 20, '0002', NULL, NULL, NULL, NULL),
(3182, 'Zampaligri', 'Harouna', 'MASCULIN', '2002-04-03 00:00:00', 'Zampaligri Serge', 'Zampaligri Sita', 'fonctionnaire', 'fonctionnaire', '72222230', 24, '0B6666', NULL, NULL, NULL, NULL),
(3183, 'Palenfo', 'Zakaria', 'MASCULIN', '1999-03-30 00:00:00', 'palenfo Aziz', 'palenfo Amina', 'fonctionnaire', 'fonctionnaire', '123456789', 25, '0025000', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` bigint(20) NOT NULL,
  `num_compte` varchar(255) DEFAULT NULL,
  `libelle_compte` varchar(255) DEFAULT NULL,
  `rib` varchar(255) DEFAULT NULL,
  `boursier_id` bigint(20) DEFAULT NULL,
  `mode_paiement_id` bigint(20) DEFAULT NULL,
  `banque_id` bigint(20) DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `num_compte`, `libelle_compte`, `rib`, `boursier_id`, `mode_paiement_id`, `banque_id`, `last_modified_by`, `created_by`, `last_modified_date`, `created_date`) VALUES
(2, '000222', 'compteLegrenea', 'rib', 16, 1, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cycle`
--

CREATE TABLE `cycle` (
  `id` bigint(20) NOT NULL,
  `libelle_cycle` varchar(255) NOT NULL,
  `duree` int(11) NOT NULL,
  `ordre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cycle`
--

INSERT INTO `cycle` (`id`, `libelle_cycle`, `duree`, `ordre`) VALUES
(1, 'LICENCE', 4, 1),
(2, 'MASTER', 3, 2),
(3, 'DOCTORAT', 4, 3),
(4, 'Secondaire', 1, 1),
(5, 'Ingéniorat de Travaux', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `databasechangelog`
--

CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `databasechangelog`
--

INSERT INTO `databasechangelog` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`) VALUES
('00000000000001', 'jhipster', 'classpath:config/liquibase/changelog/00000000000000_initial_schema.xml', '2016-11-21 12:34:00', 1, 'EXECUTED', '7:895c7c6f7325324e195777b175cab8ae', 'createTable, createIndex (x2), createTable (x2), addPrimaryKey, createTable, addForeignKeyConstraint (x3), loadData, dropDefaultValue, loadData (x2), createTable (x2), addPrimaryKey, createIndex (x2), addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('20160920002419-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002419_added_entity_Candidat.xml', '2016-11-21 12:34:00', 2, 'EXECUTED', '7:36727a3206d42319c62d6c6ec289da72', 'createTable, dropDefaultValue', '', NULL, '3.4.2', NULL, NULL),
('20160920002420-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002420_added_entity_NiveauEtude.xml', '2016-11-21 12:34:00', 3, 'EXECUTED', '7:cb447dc100e7345e7602947561e09c15', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002421-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002421_added_entity_Boursier.xml', '2016-11-21 12:34:00', 4, 'EXECUTED', '7:c559d22b325930aa3c15fbee7551f30e', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002422-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002422_added_entity_Paiement.xml', '2016-11-21 12:34:00', 5, 'EXECUTED', '7:863a7c60e014f92fa1e6a9b18722f253', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002423-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002423_added_entity_Universite.xml', '2016-11-21 12:34:00', 6, 'EXECUTED', '7:f51e200b62dfbdd14fab9d7765830a2c', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002424-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002424_added_entity_TypeBourse.xml', '2016-11-21 12:34:00', 7, 'EXECUTED', '7:0f16a61bf04dad5e6d4d0b87c4489354', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002425-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002425_added_entity_Bourse.xml', '2016-11-21 12:34:00', 8, 'EXECUTED', '7:f9321efea71405b288a32fb26ce2412a', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002426-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002426_added_entity_Dossier.xml', '2016-11-21 12:34:00', 9, 'EXECUTED', '7:8a575b736d5ef803731be81cce7834d2', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002427-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002427_added_entity_AnneeAcademique.xml', '2016-11-21 12:34:01', 10, 'EXECUTED', '7:67c70fdd132dbbf92cee387c7cd0b98c', 'createTable, dropDefaultValue (x2)', '', NULL, '3.4.2', NULL, NULL),
('20160920002428-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002428_added_entity_Compte.xml', '2016-11-21 12:34:01', 11, 'EXECUTED', '7:c142fc925fddb60be0b1727ceffdae0a', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002429-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002429_added_entity_ModePaiement.xml', '2016-11-21 12:34:01', 12, 'EXECUTED', '7:c52db58318d73fdff4488b2e81008038', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002430-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002430_added_entity_PieceDossier.xml', '2016-11-21 12:34:01', 13, 'EXECUTED', '7:7bb0d658c563927cdab5c858c3a961d2', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002431-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002431_added_entity_PieceAttribution.xml', '2016-11-21 12:34:01', 14, 'EXECUTED', '7:bf7734c0d06e3013d2a3f9c001f8850c', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002432-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002432_added_entity_TypePiece.xml', '2016-11-21 12:34:01', 15, 'EXECUTED', '7:1ab56a1a0b7c936be7ba055b119c5ecf', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002433-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002433_added_entity_ElementPaiement.xml', '2016-11-21 12:34:01', 16, 'EXECUTED', '7:58af4a2afea2ccbf0375655093664059', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002434-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002434_added_entity_Inscription.xml', '2016-11-21 12:34:01', 17, 'EXECUTED', '7:91950fe7309f33ed1266d3d8d9e59594', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002435-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002435_added_entity_Ville.xml', '2016-11-21 12:34:01', 18, 'EXECUTED', '7:6bb9938587b13b4d55fa71e35dd9bb52', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002436-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002436_added_entity_Pays.xml', '2016-11-21 12:34:01', 19, 'EXECUTED', '7:3e92baa27c9e726d1a3b9c71e01d68bc', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002437-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002437_added_entity_Cycle.xml', '2016-11-21 12:34:01', 20, 'EXECUTED', '7:0c1bfca487a1ca28d4b2830ad5105f9c', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002438-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002438_added_entity_StructureUniversite.xml', '2016-11-21 12:34:01', 21, 'EXECUTED', '7:1861cb3983ba08f8c8a14a5aceb7dee8', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002439-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002439_added_entity_Zone.xml', '2016-11-21 12:34:01', 22, 'EXECUTED', '7:8747d18030a2e756b83e7075c930d3a4', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002440-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002440_added_entity_Traitement.xml', '2016-11-21 12:34:01', 23, 'EXECUTED', '7:3a680a3c3cc7a31be8bcfb003cf32054', 'createTable, dropDefaultValue', '', NULL, '3.4.2', NULL, NULL),
('20160920002441-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002441_added_entity_Attribution.xml', '2016-11-21 12:34:01', 24, 'EXECUTED', '7:706db57a4f5f24c82a9f80fc5e086ca8', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002442-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002442_added_entity_Attestation.xml', '2016-11-21 12:34:01', 25, 'EXECUTED', '7:3077ed9f8e7655c9abd0df7c650fe2f7', 'createTable, dropDefaultValue (x2)', '', NULL, '3.4.2', NULL, NULL),
('20160920002443-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002443_added_entity_NatureBourse.xml', '2016-11-21 12:34:01', 26, 'EXECUTED', '7:e0c94667efec5764fb021461140aac25', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002444-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002444_added_entity_ElementBourse.xml', '2016-11-21 12:34:01', 27, 'EXECUTED', '7:766ba19ed23905158355a4cc645f8fee', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002445-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002445_added_entity_TypeElementBourse.xml', '2016-11-21 12:34:01', 28, 'EXECUTED', '7:520e419f8ad4cd69d1fcc1b8fc6dde4b', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002446-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002446_added_entity_Banque.xml', '2016-11-21 12:34:01', 29, 'EXECUTED', '7:2bda768309413988998e8a0379b0e46a', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920073300-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920073300_added_entity_Essai.xml', '2016-11-21 12:34:01', 30, 'EXECUTED', '7:c0ab70282aad5070b51a9a7a7202931f', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160930121107-1', 'jhipster', 'classpath:config/liquibase/changelog/20160930121107_added_entity_TypeDossier.xml', '2016-11-21 12:34:02', 31, 'EXECUTED', '7:f2bd6ab8ab9a91141ae0a14868368c78', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20161005204846-1', 'jhipster', 'classpath:config/liquibase/changelog/20161005204846_added_entity_Filiere.xml', '2016-11-21 12:34:02', 32, 'EXECUTED', '7:d1780374c434b53e37d882734bbc9e2f', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20161013162150-1', 'jhipster', 'classpath:config/liquibase/changelog/20161013162150_added_entity_TypeAttribution.xml', '2016-11-21 12:34:02', 33, 'EXECUTED', '7:f95c84d8ccfcf738e1cba4d83e47358a', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20161015235536-1', 'jhipster', 'classpath:config/liquibase/changelog/20161015235536_added_entity_Ajustement.xml', '2016-11-21 12:34:02', 34, 'EXECUTED', '7:07871e351781820d2ed175cb615e6de1', 'createTable, dropDefaultValue', '', NULL, '3.4.2', NULL, NULL),
('20161015235948-1', 'jhipster', 'classpath:config/liquibase/changelog/20161015235948_added_entity_TypeAjustement.xml', '2016-11-21 12:34:02', 35, 'EXECUTED', '7:f5cf2d32d57cdfcb58dc51b53cff7a8a', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20161103095519-1', 'jhipster', 'classpath:config/liquibase/changelog/20161103095519_added_entity_Bordereau.xml', '2016-11-21 12:34:02', 36, 'EXECUTED', '7:9f20ef14db3fd6eeb8dcadd828b77e11', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20161105112929-1', 'jhipster', 'classpath:config/liquibase/changelog/20161105112929_added_entity_Alerte.xml', '2016-11-21 12:34:02', 37, 'EXECUTED', '7:108d9ea697d777c722aba3e285791b30', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20161108140141-1', 'jhipster', 'classpath:config/liquibase/changelog/20161108140141_added_entity_Fonction.xml', '2016-11-21 12:34:02', 38, 'EXECUTED', '7:e11904bec72dff6b15bf7032cdb941a8', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20161108161210-1', 'jhipster', 'classpath:config/liquibase/changelog/20161108161210_added_entity_Document_signataire.xml', '2016-11-21 12:34:02', 39, 'EXECUTED', '7:94d54629054a6d448bcb1a489398bf97', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20161108195228-1', 'jhipster', 'classpath:config/liquibase/changelog/20161108195228_added_entity_Signataire.xml', '2016-11-21 12:34:02', 40, 'EXECUTED', '7:c3990de1a04303af61726f6c289ad7a0', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20161108205154-1', 'jhipster', 'classpath:config/liquibase/changelog/20161108205154_added_entity_ParametreSys.xml', '2016-11-21 12:34:02', 41, 'EXECUTED', '7:3a6d9c758521e65893b78ab613f11ff2', 'createTable', '', NULL, '3.4.2', NULL, NULL),
('20160920002419-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002419_added_entity_constraints_Candidat.xml', '2016-11-21 12:34:02', 42, 'EXECUTED', '7:aaf96402093de2996cc6fe8f2d0325e7', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('20160920002421-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002421_added_entity_constraints_Boursier.xml', '2016-11-21 12:34:02', 43, 'EXECUTED', '7:6eea3a571261be56d1055591e3b14aac', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('20160920002422-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002422_added_entity_constraints_Paiement.xml', '2016-11-21 12:34:03', 44, 'EXECUTED', '7:c8f7dcaae37ede304660a5a72329f2bb', 'addForeignKeyConstraint (x2)', '', NULL, '3.4.2', NULL, NULL),
('20160920002423-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002423_added_entity_constraints_Universite.xml', '2016-11-21 12:34:03', 45, 'EXECUTED', '7:12477d8167b3d697d557c4bf7c232429', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('20160920002425-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002425_added_entity_constraints_Bourse.xml', '2016-11-21 12:34:03', 46, 'EXECUTED', '7:4af4138def7fd38571381811651688a8', 'addForeignKeyConstraint (x5)', '', NULL, '3.4.2', NULL, NULL),
('20160920002426-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002426_added_entity_constraints_Dossier.xml', '2016-11-21 12:34:07', 47, 'EXECUTED', '7:e532c6005610800fced0e0d34559e7e3', 'addForeignKeyConstraint (x12)', '', NULL, '3.4.2', NULL, NULL),
('20160920002428-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002428_added_entity_constraints_Compte.xml', '2016-11-21 12:34:07', 48, 'EXECUTED', '7:e1144b517d6d7d42042fe4e8cb57d297', 'addForeignKeyConstraint (x3)', '', NULL, '3.4.2', NULL, NULL),
('20160920002430-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002430_added_entity_constraints_PieceDossier.xml', '2016-11-21 12:34:07', 49, 'EXECUTED', '7:7a384ba36df772e1e58192a9e3ca7c63', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('20160920002431-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002431_added_entity_constraints_PieceAttribution.xml', '2016-11-21 12:34:08', 50, 'EXECUTED', '7:4d5c4162954ffdebd84bcac2256c9cc8', 'addForeignKeyConstraint (x2)', '', NULL, '3.4.2', NULL, NULL),
('20160920002433-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002433_added_entity_constraints_ElementPaiement.xml', '2016-11-21 12:34:08', 51, 'EXECUTED', '7:7528dae00bc4b95f5de79d0ef7302302', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('20160920002435-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002435_added_entity_constraints_Ville.xml', '2016-11-21 12:34:08', 52, 'EXECUTED', '7:80dbefcdc7c2ed109012351af33919fb', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('20160920002436-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002436_added_entity_constraints_Pays.xml', '2016-11-21 12:34:08', 53, 'EXECUTED', '7:c2c0eb0bd8818a3957bb2678d5ecb3b2', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('20160920002438-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002438_added_entity_constraints_StructureUniversite.xml', '2016-11-21 12:34:08', 54, 'EXECUTED', '7:31809f908c728d90c5f039be11940e84', 'addForeignKeyConstraint', '', NULL, '3.4.2', NULL, NULL),
('20160920002444-2', 'jhipster', 'classpath:config/liquibase/changelog/20160920002444_added_entity_constraints_ElementBourse.xml', '2016-11-21 12:34:09', 55, 'EXECUTED', '7:ab281eca9252f7e577cd7163bd000a54', 'addForeignKeyConstraint (x3)', '', NULL, '3.4.2', NULL, NULL),
('20160920002437-1', 'jhipster', 'classpath:config/liquibase/changelog/20160920002437_added_entity_view_paiement.xml', '2016-11-21 12:34:09', 56, 'EXECUTED', '7:b1b02384936020c3352c4eac43e2c631', 'createView', '', NULL, '3.4.2', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `databasechangeloglock`
--

CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `databasechangeloglock`
--

INSERT INTO `databasechangeloglock` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'1', '2016-12-18 20:46:20', 'DSI-EDGP-EDGP1 (127.0.0.1)');

-- --------------------------------------------------------

--
-- Structure de la table `document_signataire`
--

CREATE TABLE `document_signataire` (
  `id` bigint(20) NOT NULL,
  `code_document` varchar(255) NOT NULL,
  `libelle_document` varchar(255) DEFAULT NULL,
  `fonction_id` bigint(20) NOT NULL,
  `signataire_id` bigint(20) NOT NULL,
  `civilite` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `document_signataire`
--

INSERT INTO `document_signataire` (`id`, `code_document`, `libelle_document`, `fonction_id`, `signataire_id`, `civilite`) VALUES
(1, 'ATTESTATIONBOURSE', 'Attestation', 4, 3, NULL),
(2, 'CARTONBOURSE', NULL, 4, 3, NULL),
(3, 'ETATMANDATEMENT', 'Etat Mandatement', 4, 3, 'Mme'),
(4, 'ATTRIBUTAIREBOURSE', NULL, 5, 6, 'MR'),
(5, 'ETATMANDATEMENT', NULL, 2, 5, 'MR');

-- --------------------------------------------------------

--
-- Structure de la table `dossier`
--

CREATE TABLE `dossier` (
  `id` bigint(20) NOT NULL,
  `id_dossier` varchar(255) DEFAULT NULL,
  `revenu_parent` bigint(20) DEFAULT NULL,
  `nbre_charges` int(11) DEFAULT NULL,
  `candidat_id` bigint(20) NOT NULL,
  `bourse_id` bigint(20) NOT NULL,
  `annee_academique_id` bigint(20) NOT NULL,
  `type_dossier_id` bigint(20) NOT NULL,
  `structure_universite_id` bigint(20) DEFAULT NULL,
  `universite_id` bigint(20) DEFAULT NULL,
  `universiteorigine_id` bigint(20) DEFAULT NULL,
  `structureorigine_id` bigint(20) DEFAULT NULL,
  `filiere_id` bigint(20) DEFAULT NULL,
  `filiereacc_id` bigint(20) DEFAULT NULL,
  `niveau_etudeacc_id` bigint(20) DEFAULT NULL,
  `moyenne` double NOT NULL,
  `annee` bigint(20) DEFAULT NULL,
  `niveau_etude_id` bigint(20) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dossier`
--

INSERT INTO `dossier` (`id`, `id_dossier`, `revenu_parent`, `nbre_charges`, `candidat_id`, `bourse_id`, `annee_academique_id`, `type_dossier_id`, `structure_universite_id`, `universite_id`, `universiteorigine_id`, `structureorigine_id`, `filiere_id`, `filiereacc_id`, `niveau_etudeacc_id`, `moyenne`, `annee`, `niveau_etude_id`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(3147, '5555', 300000, 5, 3160, 1, 5, 1, NULL, NULL, 6, 8, 9, NULL, NULL, 12.22, 2018, 4, 'aouangraoua', 'aouangraoua', '2018-09-26 13:51:49', '2018-09-26 13:51:49'),
(3159, NULL, NULL, NULL, 3179, 1, 5, 1, NULL, NULL, 1, 5, 17, NULL, NULL, 15.44, NULL, 1, NULL, NULL, NULL, NULL),
(3161, NULL, NULL, NULL, 3179, 1, 6, 2, NULL, NULL, 1, 5, 17, NULL, NULL, 18, NULL, 2, NULL, NULL, NULL, NULL),
(3162, NULL, NULL, NULL, 3179, 1, 7, 2, NULL, NULL, 1, 5, 17, NULL, NULL, 14.66, NULL, 1, NULL, NULL, NULL, NULL),
(3163, NULL, NULL, NULL, 3180, 1, 6, 1, NULL, NULL, 1, 5, 98, NULL, NULL, 15.2, NULL, 1, NULL, NULL, NULL, NULL),
(3165, NULL, 300000, 2, 3182, 1, 4, 1, NULL, NULL, 1, 16, 3, NULL, NULL, 15.55, NULL, 1, NULL, NULL, NULL, NULL),
(3166, NULL, 300000, 2, 3182, 1, 7, 2, NULL, NULL, 1, 16, 3, NULL, NULL, 15.77, NULL, 2, NULL, NULL, NULL, NULL),
(3167, NULL, 1500000, 3, 3183, 1, 4, 1, NULL, NULL, 1, 5, 82, NULL, NULL, 15.88, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `element_bourse`
--

CREATE TABLE `element_bourse` (
  `id` bigint(20) NOT NULL,
  `montant` double DEFAULT NULL,
  `niveau_etude_id` bigint(20) DEFAULT NULL,
  `bourse_id` bigint(20) DEFAULT NULL,
  `type_element_bourse_id` bigint(20) DEFAULT NULL,
  `nombre` int(11) DEFAULT NULL,
  `date_debut_validite` timestamp NULL DEFAULT NULL,
  `date_fin_validite` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `element_bourse`
--

INSERT INTO `element_bourse` (`id`, `montant`, `niveau_etude_id`, `bourse_id`, `type_element_bourse_id`, `nombre`, `date_debut_validite`, `date_fin_validite`) VALUES
(1, 36780, 1, 1, 1, 11, NULL, NULL),
(2, 160800, 1, 2, 1, 9, NULL, NULL),
(3, 100000, 1, 2, 4, 1, NULL, NULL),
(4, 40000, 1, 2, 5, 1, NULL, NULL),
(5, 44100, 2, 1, 1, 11, NULL, NULL),
(6, 20000, 2, 1, 5, 1, NULL, NULL),
(7, 50000, 2, 1, 4, 1, NULL, NULL),
(8, 55110, 1, 3, 1, 10, '2016-11-03 00:00:00', NULL),
(9, 20000, 1, 3, 5, 1, NULL, NULL),
(10, 50000, 1, 3, 4, 1, NULL, NULL),
(11, 55110, 2, 3, 1, 9, NULL, NULL),
(12, 50000, 1, 1, 4, 1, NULL, NULL),
(13, 20000, 1, 1, 5, 1, NULL, NULL),
(14, 250000, 1, 1, 2, 1, NULL, NULL),
(15, 51440, 3, 1, 1, 11, NULL, NULL),
(16, 20000, 3, 1, 5, 1, NULL, NULL),
(17, 50000, 3, 1, 4, 1, NULL, NULL),
(18, 500000, 3, 1, 6, 1, NULL, NULL),
(19, 300000, 3, 1, 7, 1, NULL, NULL),
(20, 25000, 3, 1, 9, 1, NULL, NULL),
(21, 25000, 2, 1, 9, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `element_paiement`
--

CREATE TABLE `element_paiement` (
  `id` bigint(20) NOT NULL,
  `periode` int(11) NOT NULL,
  `montant` double NOT NULL,
  `paiement_id` bigint(20) DEFAULT NULL,
  `boursier_id` bigint(20) DEFAULT NULL,
  `element_bourse_id` bigint(20) DEFAULT NULL,
  `ajustement_id` bigint(20) DEFAULT NULL,
  `permanent` bit(1) DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `essai`
--

CREATE TABLE `essai` (
  `id` bigint(20) NOT NULL,
  `ess` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `id` bigint(20) NOT NULL,
  `libelle_filiere` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`id`, `libelle_filiere`) VALUES
(1, 'Analyse et Programmation'),
(2, 'Finance comptabilité'),
(3, 'Economie'),
(4, 'Génie Civil'),
(5, 'Série D'),
(6, 'Série C'),
(7, 'Série E'),
(8, 'Série A4'),
(9, 'Série AA'),
(10, 'Série H'),
(11, 'Mathématique'),
(12, 'Série TVC'),
(13, 'Informatique'),
(14, 'Physque'),
(15, 'Chimie'),
(16, 'Audit'),
(17, 'Banque assurance'),
(18, 'Sécurité Informatique'),
(19, 'Génie logiciel'),
(20, 'Maintenance Informatique'),
(21, 'Reseau & Tél&com'),
(22, 'Médecine'),
(23, 'Droit'),
(24, 'Pharmacie'),
(25, 'MQIA'),
(26, 'Medecine/Chirurgie dentaire'),
(27, 'Technicien supérieur de la Santé TSS'),
(28, 'Medecine Vétérinaire'),
(29, 'ISE option Economie'),
(30, 'ISE option Mathématiques'),
(31, 'ITS option Economie'),
(32, 'Ingénieur Statistique Economiste (ISE)'),
(33, 'Ingénieur des Travaux Statistiques (ITS)'),
(34, 'Lettres Modernes'),
(35, 'Histoire et Archéologie'),
(36, 'Management des Entreprises Touristiques/Gestion des Entreprises Hôtelières (MET/GEH)'),
(37, 'Techniques Administratives Options : Assistant de Direction'),
(38, 'Techniques Administratives Options : Assistant de Direction Bilingue'),
(39, 'Marketing'),
(40, 'Sciences économiques'),
(41, 'Géographie'),
(42, 'Science de l’Information Documentaire'),
(43, 'MPCI'),
(44, 'Génie Electrique'),
(45, 'Génie Civil'),
(46, 'Médecine Vétérinaire'),
(47, 'Architecture'),
(48, 'Licence Fondamentale en Design'),
(49, 'Cycle Préparatoire Technique'),
(50, 'Cycle Préparatoire Scientifique'),
(51, 'Génie Mécanique'),
(52, 'Génie Electrique'),
(53, 'Sciences de l\'Ingénieur'),
(54, 'Mathématiques Physique et Sciences de I\'Ingénieur'),
(55, 'Biologie Chimie Géologie'),
(56, 'Mathématiques Informatique'),
(57, 'Génie Informatique'),
(58, 'Génie Electrique-Génie Mécanique'),
(59, 'Sciences Agronomiques et Vétérinaires'),
(60, 'Commerce et Gestion'),
(61, 'Technologie et Sciences Industrielles'),
(62, 'Mathématiques Informatique Physique'),
(63, 'Sciences de la Vie et de la Terre'),
(64, 'Audit et Contrôle de Gestion'),
(65, 'Administration des Affaires'),
(66, 'Relations Internationales'),
(67, 'Mondialisation et Développement'),
(68, 'Série F1'),
(69, 'Série F2'),
(70, 'Série F3'),
(71, 'Série F4'),
(72, 'Bac Pro GCC'),
(73, 'Série G1'),
(74, 'Série G2'),
(75, 'Électrotechnique et génie électronique (EE)'),
(76, 'Génie électronique et  communication (GEC)'),
(77, 'Ingénierie des sciences informatiques (ISI)'),
(78, 'Ingénierie des Sciences de l’Informatique (ISI) et la Technologie de Virtualisation'),
(79, 'Ingénierie des Sciences de l’Informatique, Technologie et sécurité de l\'information'),
(80, 'Électronique avec spécialisation en robotique et applications'),
(81, 'Licence  en Applications Informatiques (AI)'),
(82, 'Licence en applications informatiques (génie logiciel)'),
(83, 'Électrotechnique et génie électronique (EE)'),
(84, 'Génie électronique et  communication (GEC)'),
(85, 'Génie électrique (EE)'),
(86, 'Génie mécanique (GM)'),
(87, 'Génie Mécanique, Spécialisation en automobile'),
(88, '(Génie Mécanique) Spécialisation en mécatronique'),
(89, 'Génie civil (GC)'),
(90, 'Ingénierie des Sciences de l’Informatique, Technologie  et sécurité de l\'information'),
(91, 'Électronique avec spécialisation en robotique et applications'),
(92, 'Licence  en Applications Informatiques (AI)'),
(93, 'Licence en applications informatiques (génie logiciel)'),
(94, 'Économie appliquée'),
(95, 'Entrepreneuriat'),
(96, 'Affaires internationales'),
(97, 'Comptabilité et Finances Internationales'),
(98, 'Finances et Comptabilité'),
(99, 'Banque et Finance'),
(100, 'Affaires internationales'),
(101, 'Marketing'),
(102, 'Journalisme et communication de masse'),
(103, 'Design d\'intérieur'),
(104, 'Design industriel et de produit'),
(105, 'Design de mode'),
(106, 'Conception numérique et communication'),
(107, 'Animation et VFX'),
(108, 'Conception de jeux'),
(109, 'Arts visuels'),
(110, 'Série MI (Maintenance Industrielle)'),
(111, 'Série BS (Bureautique Secrétariat)'),
(112, 'Série Etech'),
(113, 'Série GT (Géomètre Topographe)'),
(114, 'Série MVA (Maintenance de Véhicules Automobiles)'),
(115, 'Série MAVELEC (Maintenance en Audiovisuel Electronique)'),
(116, 'Bac Agriculture');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `id` bigint(20) NOT NULL,
  `libelle_fonction` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `libelle_fonction`) VALUES
(1, 'Directeur Général'),
(2, 'Régisseur'),
(3, 'Président de la commision d\'attribution des bourses'),
(4, 'Directrice Générale'),
(5, 'Ministre'),
(6, 'Directrice des bourses et des aides financières'),
(7, 'Directeur de l\'Information et de l\'Orientation Scolaire et Professionnelle');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id` bigint(20) NOT NULL,
  `niveau_etude_id` bigint(20) DEFAULT NULL,
  `boursier_id` bigint(20) DEFAULT NULL,
  `universite_id` bigint(20) DEFAULT NULL,
  `annee_academique_id` bigint(20) DEFAULT NULL,
  `structure_universite_id` bigint(20) NOT NULL,
  `cycle_id` bigint(20) DEFAULT NULL,
  `statut` bit(1) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `filiere_id` bigint(20) NOT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `resultat` varchar(20) DEFAULT NULL,
  `premiere_session` double DEFAULT NULL,
  `deuxieme_session` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jhi_authority`
--

CREATE TABLE `jhi_authority` (
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jhi_authority`
--

INSERT INTO `jhi_authority` (`name`) VALUES
('ROLE_ADBAF'),
('ROLE_ADMIN'),
('ROLE_ARAB'),
('ROLE_RDBAF'),
('ROLE_RRAB'),
('ROLE_SECR'),
('ROLE_USER');

-- --------------------------------------------------------

--
-- Structure de la table `jhi_persistent_audit_event`
--

CREATE TABLE `jhi_persistent_audit_event` (
  `event_id` bigint(20) NOT NULL,
  `principal` varchar(50) NOT NULL,
  `event_date` timestamp NULL DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jhi_persistent_audit_event`
--

INSERT INTO `jhi_persistent_audit_event` (`event_id`, `principal`, `event_date`, `event_type`) VALUES
(77, 'user', '2018-08-18 16:55:22', 'AUTHENTICATION_SUCCESS'),
(78, 'user', '2018-08-18 16:55:22', 'AUTHENTICATION_SUCCESS'),
(79, 'urielle', '2018-08-20 10:33:49', 'AUTHENTICATION_SUCCESS'),
(80, 'sylvie', '2018-08-20 12:56:29', 'AUTHENTICATION_SUCCESS'),
(81, 'urielle', '2018-08-20 15:35:06', 'AUTHENTICATION_SUCCESS'),
(82, 'admin', '2018-08-22 13:49:00', 'AUTHENTICATION_SUCCESS'),
(83, 'zoewindbem', '2018-08-22 15:50:47', 'AUTHENTICATION_SUCCESS'),
(84, 'salap', '2018-08-22 15:52:12', 'AUTHENTICATION_SUCCESS'),
(85, 'filbert', '2018-08-24 08:52:41', 'AUTHENTICATION_SUCCESS'),
(86, 'urielle', '2018-08-24 14:04:40', 'AUTHENTICATION_SUCCESS'),
(87, 'urielle', '2018-08-24 16:39:58', 'AUTHENTICATION_SUCCESS'),
(88, 'urielle', '2018-08-27 12:53:44', 'AUTHENTICATION_SUCCESS'),
(89, 'urielle', '2018-08-29 12:23:19', 'AUTHENTICATION_SUCCESS'),
(90, 'patoguirma1979', '2018-08-31 08:19:41', 'AUTHENTICATION_SUCCESS'),
(91, 'patoguirma1979', '2018-09-03 12:06:14', 'AUTHENTICATION_SUCCESS'),
(92, 'urielle', '2018-09-03 12:45:44', 'AUTHENTICATION_SUCCESS'),
(93, 'urielle', '2018-09-03 16:31:38', 'AUTHENTICATION_SUCCESS'),
(94, 'Souleymaneguiro1@yahoo.com', '2018-09-04 11:37:51', 'AUTHENTICATION_FAILURE'),
(95, 'Souleymaneguiro1@yahoo.com', '2018-09-04 11:38:01', 'AUTHENTICATION_FAILURE'),
(96, 'Souleymaneguiro1@yahoo.com', '2018-09-04 11:38:15', 'AUTHENTICATION_FAILURE'),
(97, 'Souleymaneguiro1@yahoo.com', '2018-09-04 11:38:21', 'AUTHENTICATION_FAILURE'),
(98, 'Souleymaneguiro1@yahoo.com', '2018-09-04 11:38:47', 'AUTHENTICATION_FAILURE'),
(99, 'Souleymaneguiro1@yahoo.com', '2018-09-04 11:40:41', 'AUTHENTICATION_FAILURE'),
(100, 'Souleymaneguiro1@yahoo.com', '2018-09-04 11:44:36', 'AUTHENTICATION_FAILURE'),
(101, 'urielle', '2018-09-04 13:12:14', 'AUTHENTICATION_SUCCESS'),
(102, 'urielle', '2018-09-04 13:12:17', 'AUTHENTICATION_SUCCESS'),
(103, 'urielle', '2018-09-04 13:12:18', 'AUTHENTICATION_SUCCESS'),
(104, 'urielle', '2018-09-04 13:12:18', 'AUTHENTICATION_SUCCESS'),
(105, 'Souleymaneguiro1@yahoo.com', '2018-09-04 13:16:24', 'AUTHENTICATION_FAILURE'),
(106, 'Souleymaneguiro1@yahoo.com', '2018-09-04 13:17:10', 'AUTHENTICATION_FAILURE'),
(107, 'Souleymaneguiro1@yahoo.com', '2018-09-04 13:17:15', 'AUTHENTICATION_FAILURE'),
(108, 'urielle', '2018-09-06 13:31:37', 'AUTHENTICATION_FAILURE'),
(109, 'urielle', '2018-09-06 13:31:37', 'AUTHENTICATION_FAILURE'),
(110, 'urielle', '2018-09-06 13:31:34', 'AUTHENTICATION_FAILURE'),
(111, 'urielle', '2018-09-06 13:49:21', 'AUTHENTICATION_SUCCESS'),
(112, 'patoguirma1979', '2018-09-06 14:06:08', 'AUTHENTICATION_SUCCESS'),
(113, 'issakakouraogo', '2018-09-06 14:10:58', 'AUTHENTICATION_FAILURE'),
(114, 'issaka.kouraogo2017@yahoo.com', '2018-09-06 14:15:34', 'AUTHENTICATION_FAILURE'),
(115, 'issakakouraogo', '2018-09-06 14:18:56', 'AUTHENTICATION_FAILURE'),
(116, 'issaka kouraogo', '2018-09-06 14:19:05', 'AUTHENTICATION_FAILURE'),
(117, 'issaka kouraogo', '2018-09-06 14:19:14', 'AUTHENTICATION_FAILURE'),
(118, 'kouraogo issaka', '2018-09-06 14:19:48', 'AUTHENTICATION_FAILURE'),
(119, 'patoguirma1979', '2018-09-06 14:20:10', 'AUTHENTICATION_SUCCESS'),
(120, 'issakakouraogo', '2018-09-06 14:22:00', 'AUTHENTICATION_FAILURE'),
(121, 'issakakouraogo', '2018-09-06 14:22:55', 'AUTHENTICATION_FAILURE'),
(122, 'issakakouraogo', '2018-09-06 14:22:55', 'AUTHENTICATION_FAILURE'),
(123, 'issakakouraogo', '2018-09-06 14:22:57', 'AUTHENTICATION_FAILURE'),
(124, 'issakakouraogo', '2018-09-06 14:23:52', 'AUTHENTICATION_FAILURE'),
(125, 'issakakouraogo', '2018-09-06 14:23:58', 'AUTHENTICATION_FAILURE'),
(126, 'issakakouraogo', '2018-09-06 14:24:00', 'AUTHENTICATION_FAILURE'),
(127, 'issakakouraogo', '2018-09-06 14:24:00', 'AUTHENTICATION_FAILURE'),
(128, 'issakakouraogo', '2018-09-06 14:24:01', 'AUTHENTICATION_FAILURE'),
(129, 'issakakouraogo', '2018-09-06 14:24:35', 'AUTHENTICATION_FAILURE'),
(130, 'patoguirma1979', '2018-09-06 14:24:59', 'AUTHENTICATION_SUCCESS'),
(131, 'issakakouaogo', '2018-09-06 14:28:12', 'AUTHENTICATION_FAILURE'),
(132, 'issakakouaogo', '2018-09-06 14:29:15', 'AUTHENTICATION_FAILURE'),
(133, 'issakakouaogo', '2018-09-06 14:29:17', 'AUTHENTICATION_FAILURE'),
(134, 'issaka kouaogo', '2018-09-06 14:29:28', 'AUTHENTICATION_FAILURE'),
(135, 'patoguirma1979', '2018-09-06 14:40:54', 'AUTHENTICATION_SUCCESS'),
(136, 'flora', '2018-09-06 14:49:41', 'AUTHENTICATION_SUCCESS'),
(137, 'urielle', '2018-09-06 16:33:02', 'AUTHENTICATION_SUCCESS'),
(138, 'aouangraoua', '2018-09-10 09:38:38', 'AUTHENTICATION_SUCCESS'),
(139, 'patoguirma1979', '2018-09-10 09:57:33', 'AUTHENTICATION_SUCCESS'),
(140, 'urielle', '2018-09-11 12:08:28', 'AUTHENTICATION_SUCCESS'),
(141, 'aouangraoua', '2018-09-12 12:02:30', 'AUTHENTICATION_SUCCESS'),
(142, 'aouangraoua', '2018-09-12 12:09:31', 'AUTHENTICATION_SUCCESS'),
(143, 'aouangraoua', '2018-09-12 12:14:03', 'AUTHENTICATION_FAILURE'),
(144, 'aouangraoua', '2018-09-12 12:14:50', 'AUTHENTICATION_SUCCESS'),
(145, 'aouangraoua', '2018-09-12 13:31:48', 'AUTHENTICATION_SUCCESS'),
(146, 'Souleymaneguiro1@yahoo.com', '2018-09-12 13:49:07', 'AUTHENTICATION_FAILURE'),
(147, 'Souleymaneguiro1@yahoo.com', '2018-09-12 13:49:13', 'AUTHENTICATION_FAILURE'),
(148, 'Souleymaneguiro1@yahoo.com', '2018-09-12 13:49:20', 'AUTHENTICATION_FAILURE'),
(149, 'Souleymaneguiro1@yahoo.com', '2018-09-12 13:51:19', 'AUTHENTICATION_FAILURE'),
(150, 'Souleymaneguiro1@yahoo.com', '2018-09-12 13:51:20', 'AUTHENTICATION_FAILURE'),
(151, 'Souleymaneguiro1@yahoo.com', '2018-09-12 13:54:07', 'AUTHENTICATION_FAILURE'),
(152, 'Souleymaneguiro1@yahoo.com', '2018-09-12 13:59:19', 'AUTHENTICATION_FAILURE'),
(153, 'okpascaline', '2018-09-13 09:22:58', 'AUTHENTICATION_SUCCESS'),
(154, 'Souleymaneguiro1@yahoo.com', '2018-09-13 09:32:32', 'AUTHENTICATION_FAILURE'),
(155, 'aouangraoua', '2018-09-13 09:34:35', 'AUTHENTICATION_SUCCESS'),
(156, 'Souleymaneguiro1@yahoo.com', '2018-09-13 09:41:40', 'AUTHENTICATION_FAILURE'),
(157, 'Souleymaneguiro1@yahoo.com', '2018-09-13 09:42:06', 'AUTHENTICATION_FAILURE'),
(158, 'Souleymaneguiro1@yahoo.com', '2018-09-13 09:42:15', 'AUTHENTICATION_FAILURE'),
(159, 'aouangraoua', '2018-09-13 11:02:10', 'AUTHENTICATION_SUCCESS'),
(160, 'Souleymaneguiro1@yahoo.COM', '2018-09-13 12:08:15', 'AUTHENTICATION_FAILURE'),
(161, 'souleymaneguiro1@yahoo.com', '2018-09-13 12:09:02', 'AUTHENTICATION_FAILURE'),
(162, 'guiro souleymane', '2018-09-13 12:09:49', 'AUTHENTICATION_FAILURE'),
(163, 'guirosouleymane', '2018-09-13 12:11:58', 'AUTHENTICATION_SUCCESS'),
(164, 'okpascaline', '2018-09-13 12:31:56', 'AUTHENTICATION_SUCCESS'),
(165, 'flora', '2018-09-13 12:34:41', 'AUTHENTICATION_SUCCESS'),
(166, 'flora', '2018-09-13 12:38:45', 'AUTHENTICATION_SUCCESS'),
(167, 'flora', '2018-09-13 14:47:57', 'AUTHENTICATION_SUCCESS'),
(168, 'urielle', '2018-09-13 15:32:08', 'AUTHENTICATION_SUCCESS'),
(169, 'patoguirma1979', '2018-09-13 15:53:46', 'AUTHENTICATION_SUCCESS'),
(170, 'aouangraoua', '2018-09-14 08:14:05', 'AUTHENTICATION_SUCCESS'),
(171, 'urielle', '2018-09-14 09:27:47', 'AUTHENTICATION_SUCCESS'),
(172, 'urielle', '2018-09-14 09:28:13', 'AUTHENTICATION_SUCCESS'),
(173, 'aouangraoua', '2018-09-14 15:41:29', 'AUTHENTICATION_SUCCESS'),
(174, 'aouangraoua', '2018-09-14 15:42:38', 'AUTHENTICATION_SUCCESS'),
(175, 'aouangraoua', '2018-09-17 09:50:37', 'AUTHENTICATION_SUCCESS'),
(176, 'bonkoungou', '2018-09-17 11:15:53', 'AUTHENTICATION_FAILURE'),
(177, 'bonkoungou', '2018-09-17 11:16:53', 'AUTHENTICATION_FAILURE'),
(178, 'bonkoungou sacré', '2018-09-17 11:25:04', 'AUTHENTICATION_FAILURE'),
(179, 'sacros', '2018-09-17 11:26:01', 'AUTHENTICATION_FAILURE'),
(180, 'sacros', '2018-09-17 11:26:05', 'AUTHENTICATION_FAILURE'),
(181, 'sacros', '2018-09-17 11:26:27', 'AUTHENTICATION_FAILURE'),
(182, 'sacros', '2018-09-17 11:26:28', 'AUTHENTICATION_FAILURE'),
(183, 'sacrosbonk@gmail.com', '2018-09-17 11:28:18', 'AUTHENTICATION_FAILURE'),
(184, 'sacrosbonk@gmail.com', '2018-09-17 11:28:30', 'AUTHENTICATION_FAILURE'),
(185, 'sacrosbonk@gmail.com', '2018-09-17 11:28:31', 'AUTHENTICATION_FAILURE'),
(186, 'sacrosbonk@gmail.com', '2018-09-17 11:28:31', 'AUTHENTICATION_FAILURE'),
(187, 'sacrosbonk@gmail.com', '2018-09-17 11:28:37', 'AUTHENTICATION_FAILURE'),
(188, 'sacrosbonk@gmail.com', '2018-09-17 11:28:37', 'AUTHENTICATION_FAILURE'),
(189, 'sacrosbonk@gmail.com', '2018-09-17 11:28:38', 'AUTHENTICATION_FAILURE'),
(190, 'sacrosbonk@gmail.com', '2018-09-17 11:28:39', 'AUTHENTICATION_FAILURE'),
(191, 'sacrosbonk@gmail.com', '2018-09-17 11:28:39', 'AUTHENTICATION_FAILURE'),
(192, 'sacrosbonk', '2018-09-17 11:30:08', 'AUTHENTICATION_FAILURE'),
(193, 'sacrosbonk', '2018-09-17 11:30:33', 'AUTHENTICATION_FAILURE'),
(194, 'sacrosbonk', '2018-09-17 11:30:34', 'AUTHENTICATION_FAILURE'),
(195, 'bonkoungou sacré', '2018-09-17 11:32:43', 'AUTHENTICATION_FAILURE'),
(196, 'bonkoungou sacré', '2018-09-17 11:32:50', 'AUTHENTICATION_FAILURE'),
(197, 'bonkoungou sacré', '2018-09-17 11:32:51', 'AUTHENTICATION_FAILURE'),
(198, 'sacros', '2018-09-17 11:34:23', 'AUTHENTICATION_FAILURE'),
(199, 'sacros', '2018-09-17 11:34:46', 'AUTHENTICATION_FAILURE'),
(200, 'sacros', '2018-09-17 11:34:52', 'AUTHENTICATION_FAILURE'),
(201, 'sacros', '2018-09-17 11:34:52', 'AUTHENTICATION_FAILURE'),
(202, 'sacros', '2018-09-17 11:34:53', 'AUTHENTICATION_FAILURE'),
(203, 'sacros', '2018-09-17 11:34:54', 'AUTHENTICATION_FAILURE'),
(204, 'sacros', '2018-09-17 11:34:55', 'AUTHENTICATION_FAILURE'),
(205, 'ciospb', '2018-09-17 11:35:32', 'AUTHENTICATION_FAILURE'),
(206, 'bourse', '2018-09-17 12:10:05', 'AUTHENTICATION_FAILURE'),
(207, 'sacross', '2018-09-17 12:11:23', 'AUTHENTICATION_FAILURE'),
(208, 'sacross', '2018-09-17 12:11:27', 'AUTHENTICATION_FAILURE'),
(209, 'sacro', '2018-09-17 12:11:37', 'AUTHENTICATION_FAILURE'),
(210, 'sacrosbonk', '2018-09-17 12:11:55', 'AUTHENTICATION_FAILURE'),
(211, 'sacrosbonk', '2018-09-17 12:12:05', 'AUTHENTICATION_FAILURE'),
(212, 'sacrosbonk', '2018-09-17 12:12:10', 'AUTHENTICATION_FAILURE'),
(213, 'sacrosbonk', '2018-09-17 12:12:13', 'AUTHENTICATION_FAILURE'),
(214, 'sacrosbonk', '2018-09-17 12:12:16', 'AUTHENTICATION_FAILURE'),
(215, 'sacrosbonk', '2018-09-17 12:12:20', 'AUTHENTICATION_FAILURE'),
(216, 'gestion', '2018-09-17 12:14:00', 'AUTHENTICATION_FAILURE'),
(217, 'gestion', '2018-09-17 12:16:09', 'AUTHENTICATION_FAILURE'),
(218, 'gestion', '2018-09-17 12:16:12', 'AUTHENTICATION_FAILURE'),
(219, 'gestion', '2018-09-17 12:17:20', 'AUTHENTICATION_FAILURE'),
(220, 'GESTION', '2018-09-17 12:19:11', 'AUTHENTICATION_FAILURE'),
(221, 'GESTION', '2018-09-17 12:19:14', 'AUTHENTICATION_FAILURE'),
(222, 'GESTION', '2018-09-17 12:19:14', 'AUTHENTICATION_FAILURE'),
(223, 'BONKOUNGOU', '2018-09-17 12:19:36', 'AUTHENTICATION_FAILURE'),
(224, 'BONKOUNGOU', '2018-09-17 12:19:39', 'AUTHENTICATION_FAILURE'),
(225, 'BONKOUNGOU', '2018-09-17 12:19:40', 'AUTHENTICATION_FAILURE'),
(226, 'BONKOUNGOU', '2018-09-17 12:19:40', 'AUTHENTICATION_FAILURE'),
(227, 'BONKOUNGOU', '2018-09-17 12:19:40', 'AUTHENTICATION_FAILURE'),
(228, 'BONKOUNGOU', '2018-09-17 12:19:47', 'AUTHENTICATION_FAILURE'),
(229, 'sacrum', '2018-09-17 12:25:18', 'AUTHENTICATION_SUCCESS'),
(230, 'okpascaline', '2018-09-17 13:27:05', 'AUTHENTICATION_SUCCESS'),
(231, 'urielle', '2018-09-17 14:40:04', 'AUTHENTICATION_SUCCESS'),
(232, 'urielle', '2018-09-17 15:59:37', 'AUTHENTICATION_FAILURE'),
(233, 'urielle', '2018-09-17 15:59:48', 'AUTHENTICATION_SUCCESS'),
(234, 'aouangraoua', '2018-09-17 16:10:25', 'AUTHENTICATION_SUCCESS'),
(235, 'KOURAOGOISSAKA', '2018-09-18 09:00:57', 'AUTHENTICATION_FAILURE'),
(236, 'ISSAKAKOURAOGO', '2018-09-18 09:02:08', 'AUTHENTICATION_FAILURE'),
(237, 'kouraogoissaka', '2018-09-18 09:11:33', 'AUTHENTICATION_FAILURE'),
(238, 'patoguirma1979', '2018-09-18 09:53:45', 'AUTHENTICATION_SUCCESS'),
(239, 'issakakouraogo', '2018-09-18 10:29:13', 'AUTHENTICATION_FAILURE'),
(240, 'aouangraoua', '2018-09-18 10:30:18', 'AUTHENTICATION_SUCCESS'),
(241, 'patoguirma1979', '2018-09-18 11:00:14', 'AUTHENTICATION_SUCCESS'),
(242, 'wamregmaki', '2018-09-18 11:02:11', 'AUTHENTICATION_SUCCESS'),
(243, 'issakakouraogo', '2018-09-18 11:18:11', 'AUTHENTICATION_FAILURE'),
(244, 'aouangraoua', '2018-09-18 11:47:49', 'AUTHENTICATION_SUCCESS'),
(245, 'wamregmaki', '2018-09-18 13:53:49', 'AUTHENTICATION_FAILURE'),
(246, 'wamregmaki', '2018-09-18 13:54:12', 'AUTHENTICATION_SUCCESS'),
(247, 'aouangraoua', '2018-09-18 15:10:39', 'AUTHENTICATION_SUCCESS'),
(248, 'BAKYONO', '2018-09-18 18:36:24', 'AUTHENTICATION_FAILURE'),
(249, 'bakyono', '2018-09-18 18:36:57', 'AUTHENTICATION_FAILURE'),
(250, 'BAKYONO', '2018-09-18 18:41:13', 'AUTHENTICATION_FAILURE'),
(251, 'BAKYONO', '2018-09-18 18:41:38', 'AUTHENTICATION_FAILURE'),
(252, 'bakyono', '2018-09-18 18:43:13', 'AUTHENTICATION_SUCCESS'),
(253, 'aouangraoua', '2018-09-19 08:13:02', 'AUTHENTICATION_FAILURE'),
(254, 'aouangraoua', '2018-09-19 08:14:00', 'AUTHENTICATION_SUCCESS'),
(255, 'aouangraoua', '2018-09-19 08:31:28', 'AUTHENTICATION_SUCCESS'),
(256, 'aouangraoua', '2018-09-19 11:06:34', 'AUTHENTICATION_SUCCESS'),
(257, 'null', '2018-09-19 13:21:50', 'AUTHENTICATION_FAILURE'),
(258, 'patoguirma1979', '2018-09-19 13:22:13', 'AUTHENTICATION_SUCCESS'),
(259, 'aouangraoua', '2018-09-19 13:49:03', 'AUTHENTICATION_SUCCESS'),
(260, 'urielle', '2018-09-19 14:43:58', 'AUTHENTICATION_SUCCESS'),
(261, 'aouangraoua', '2018-09-19 15:45:06', 'AUTHENTICATION_SUCCESS'),
(262, 'aouangraoua', '2018-09-20 07:58:09', 'AUTHENTICATION_SUCCESS'),
(263, 'bakyono', '2018-09-20 13:26:18', 'AUTHENTICATION_SUCCESS'),
(264, 'patoguirma1979', '2018-09-20 13:30:10', 'AUTHENTICATION_SUCCESS'),
(265, 'urielle', '2018-09-20 14:04:33', 'AUTHENTICATION_SUCCESS'),
(266, 'urielle', '2018-09-20 14:24:54', 'AUTHENTICATION_SUCCESS'),
(267, 'aouangraoua', '2018-09-21 08:58:47', 'AUTHENTICATION_SUCCESS'),
(268, 'aouangraoua', '2018-09-21 09:52:05', 'AUTHENTICATION_SUCCESS'),
(269, 'MAHAMOUDOU@YAHOO.COM', '2018-09-21 10:33:05', 'AUTHENTICATION_FAILURE'),
(270, 'aouangraoua', '2018-09-21 11:44:32', 'AUTHENTICATION_SUCCESS'),
(271, 'urielle', '2018-09-21 11:47:49', 'AUTHENTICATION_SUCCESS'),
(272, 'okpascaline', '2018-09-21 12:24:07', 'AUTHENTICATION_SUCCESS'),
(273, 'okpascaline', '2018-09-21 13:25:21', 'AUTHENTICATION_SUCCESS'),
(274, 'sacrum', '2018-09-21 13:41:48', 'AUTHENTICATION_SUCCESS'),
(275, 'aouangraoua', '2018-09-21 14:48:51', 'AUTHENTICATION_SUCCESS'),
(276, 'aouangraoua', '2018-09-21 15:16:47', 'AUTHENTICATION_SUCCESS'),
(277, 'aouangraoua', '2018-09-24 08:27:49', 'AUTHENTICATION_SUCCESS'),
(278, 'aouangraoua', '2018-09-24 11:01:28', 'AUTHENTICATION_SUCCESS'),
(279, 'okpascaline', '2018-09-24 12:32:00', 'AUTHENTICATION_SUCCESS'),
(280, 'damsaliasalik@yahoo.fr', '2018-09-24 14:19:45', 'AUTHENTICATION_FAILURE'),
(281, 'damansalia', '2018-09-24 14:21:40', 'AUTHENTICATION_SUCCESS'),
(282, 'urielle', '2018-09-24 14:47:26', 'AUTHENTICATION_SUCCESS'),
(283, 'damansalia', '2018-09-24 17:20:56', 'AUTHENTICATION_SUCCESS'),
(284, 'damansalia', '2018-09-25 08:37:30', 'AUTHENTICATION_SUCCESS'),
(285, 'aouangraoua', '2018-09-25 09:16:37', 'AUTHENTICATION_SUCCESS'),
(286, 'aouangraoua', '2018-09-25 11:19:20', 'AUTHENTICATION_SUCCESS'),
(287, 'patoguirma1979', '2018-09-25 11:37:09', 'AUTHENTICATION_SUCCESS'),
(288, 'damansalia', '2018-09-25 14:20:34', 'AUTHENTICATION_SUCCESS'),
(289, 'damansalia', '2018-09-25 16:15:52', 'AUTHENTICATION_FAILURE'),
(290, 'damansalia', '2018-09-25 16:16:14', 'AUTHENTICATION_FAILURE'),
(291, 'damansalia', '2018-09-25 16:16:20', 'AUTHENTICATION_FAILURE'),
(292, 'damansalia', '2018-09-25 16:16:21', 'AUTHENTICATION_FAILURE'),
(293, 'damansalia', '2018-09-25 16:16:22', 'AUTHENTICATION_FAILURE'),
(294, 'damansalia', '2018-09-25 16:16:24', 'AUTHENTICATION_FAILURE'),
(295, 'damansalia', '2018-09-25 16:16:26', 'AUTHENTICATION_FAILURE'),
(296, 'damansalia', '2018-09-25 16:16:27', 'AUTHENTICATION_FAILURE'),
(297, 'damansalia', '2018-09-25 16:16:28', 'AUTHENTICATION_FAILURE'),
(298, 'damansalia', '2018-09-25 16:16:31', 'AUTHENTICATION_FAILURE'),
(299, 'damansalia', '2018-09-25 16:16:32', 'AUTHENTICATION_FAILURE'),
(300, 'damansalia', '2018-09-25 16:18:21', 'AUTHENTICATION_FAILURE'),
(301, 'damansalia', '2018-09-25 16:18:51', 'AUTHENTICATION_SUCCESS'),
(302, 'damansalia', '2018-09-26 09:18:02', 'AUTHENTICATION_SUCCESS'),
(303, 'aouangraoua', '2018-09-26 13:21:45', 'AUTHENTICATION_SUCCESS');

-- --------------------------------------------------------

--
-- Structure de la table `jhi_persistent_audit_evt_data`
--

CREATE TABLE `jhi_persistent_audit_evt_data` (
  `event_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jhi_persistent_audit_evt_data`
--

INSERT INTO `jhi_persistent_audit_evt_data` (`event_id`, `name`, `value`) VALUES
(77, 'remoteAddress', '127.0.0.1'),
(77, 'sessionId', '719E78BA24CD43AEB90010FD4FCF871E'),
(78, 'remoteAddress', '127.0.0.1'),
(78, 'sessionId', '719E78BA24CD43AEB90010FD4FCF871E'),
(79, 'remoteAddress', '192.168.1.20'),
(79, 'sessionId', '33399A801B41C5DC9D22B50EC36C0425'),
(80, 'remoteAddress', '192.168.1.24'),
(80, 'sessionId', '343E6D0E7BB3014A6F250C7CD273524B'),
(81, 'remoteAddress', '192.168.1.20'),
(81, 'sessionId', '2E93A763B95A7B33B5A7B5D24EE1E499'),
(82, 'remoteAddress', '0:0:0:0:0:0:0:1'),
(82, 'sessionId', 'D48B75111C3384D6DD4091DBEB2C684B'),
(83, 'remoteAddress', '192.168.1.23'),
(83, 'sessionId', 'F2060196736C2C0C4A4D9721D6023153'),
(84, 'remoteAddress', '192.168.1.28'),
(84, 'sessionId', '5DFC91C3D38DBB5B45D09B1ECE0BD0F6'),
(85, 'remoteAddress', '192.168.1.9'),
(85, 'sessionId', '502C262F457E0C3217849022EDFFF279'),
(86, 'remoteAddress', '192.168.1.20'),
(86, 'sessionId', '731343636C501A040849D1D99C37094D'),
(87, 'remoteAddress', '192.168.1.20'),
(87, 'sessionId', '1B6B02A381F957D4BB1FF0D59CD04001'),
(88, 'remoteAddress', '192.168.1.20'),
(88, 'sessionId', '5D13729C85A251091F4965EC59679E88'),
(89, 'remoteAddress', '192.168.1.20'),
(89, 'sessionId', 'D525888A17A17099116EA44999F514F0'),
(90, 'remoteAddress', '192.168.1.29'),
(90, 'sessionId', '424DF0FEE8C356B860B3832BB32DDE4E'),
(91, 'remoteAddress', '192.168.1.29'),
(91, 'sessionId', '2E6D1BBD34618C1C59B39E458A3C5DE7'),
(92, 'remoteAddress', '192.168.1.20'),
(92, 'sessionId', 'E2E2C3847B26C56B5A4ECC295A89CC76'),
(93, 'remoteAddress', '192.168.1.20'),
(93, 'sessionId', 'AC25BDF7D042206BF73B586FE3042822'),
(94, 'message', 'Bad credentials'),
(94, 'remoteAddress', '192.168.1.22'),
(94, 'sessionId', '028293AC3F1C0DA912D818E1C865D321'),
(94, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(95, 'message', 'Bad credentials'),
(95, 'remoteAddress', '192.168.1.22'),
(95, 'sessionId', 'FC8E5024840CE5D396FE6BB957FC2595'),
(95, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(96, 'message', 'Bad credentials'),
(96, 'remoteAddress', '192.168.1.22'),
(96, 'sessionId', '4EAF8C0D3345C730E6FA3F0FE962F48D'),
(96, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(97, 'message', 'Bad credentials'),
(97, 'remoteAddress', '192.168.1.22'),
(97, 'sessionId', 'F8347F050D09F39C90DA1F99D1C988D1'),
(97, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(98, 'message', 'Bad credentials'),
(98, 'remoteAddress', '192.168.1.22'),
(98, 'sessionId', 'FC8AC3DA9FCDBCFCFB1FF44DE8D42F5A'),
(98, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(99, 'message', 'Bad credentials'),
(99, 'remoteAddress', '192.168.1.22'),
(99, 'sessionId', '98BB37DC2A69F256C5E5065126DB535D'),
(99, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(100, 'message', 'Bad credentials'),
(100, 'remoteAddress', '192.168.1.22'),
(100, 'sessionId', '3105D14762E3ED4FAEAC7DF6E6B6559A'),
(100, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(101, 'remoteAddress', '192.168.1.20'),
(101, 'sessionId', 'D6355606E4A250651CB4B1F7E86FB143'),
(102, 'remoteAddress', '192.168.1.20'),
(102, 'sessionId', '38CB77F089E3BE3CFD86C2F4F9CBD41B'),
(103, 'remoteAddress', '192.168.1.20'),
(103, 'sessionId', '9B2C66FA8727F6B5AFF84AA1F02C0CB5'),
(104, 'remoteAddress', '192.168.1.20'),
(104, 'sessionId', '9B2C66FA8727F6B5AFF84AA1F02C0CB5'),
(105, 'message', 'Bad credentials'),
(105, 'remoteAddress', '192.168.1.22'),
(105, 'sessionId', '35219F80131D0D081647559B00A1ED9D'),
(105, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(106, 'message', 'Bad credentials'),
(106, 'remoteAddress', '192.168.1.22'),
(106, 'sessionId', 'AD71829703B05AEFF3B5FA1060EF4D8C'),
(106, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(107, 'message', 'Bad credentials'),
(107, 'remoteAddress', '192.168.1.22'),
(107, 'sessionId', '02F83BF0D0A4CB12DA5C1941E8BF339F'),
(107, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(108, 'message', 'Bad credentials'),
(108, 'remoteAddress', '192.168.1.20'),
(108, 'sessionId', '8F963194BB78E1C9C09D6A390C67B22D'),
(108, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(109, 'message', 'Bad credentials'),
(109, 'remoteAddress', '192.168.1.20'),
(109, 'sessionId', '8F963194BB78E1C9C09D6A390C67B22D'),
(109, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(110, 'message', 'Bad credentials'),
(110, 'remoteAddress', '192.168.1.20'),
(110, 'sessionId', '8F963194BB78E1C9C09D6A390C67B22D'),
(110, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(111, 'remoteAddress', '192.168.1.20'),
(111, 'sessionId', '567350BEF2A580F302B74BB9EA70B30D'),
(112, 'remoteAddress', '192.168.1.29'),
(112, 'sessionId', '3FD652FD61F5DD1E7898C56F83788D93'),
(113, 'message', 'Bad credentials'),
(113, 'remoteAddress', '192.168.1.21'),
(113, 'sessionId', 'DEBF53FBEF73A4EC7A941868B99E880E'),
(113, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(114, 'message', 'Bad credentials'),
(114, 'remoteAddress', '192.168.1.21'),
(114, 'sessionId', '08B16FB85D7003F1818FF3720A010675'),
(114, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(115, 'message', 'Bad credentials'),
(115, 'remoteAddress', '192.168.1.29'),
(115, 'sessionId', '5A5B9E7814BA2FB54D62E6AE41FE2C73'),
(115, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(116, 'message', 'Bad credentials'),
(116, 'remoteAddress', '192.168.1.29'),
(116, 'sessionId', '4912039A49A66CAD76B1CE848FF95E65'),
(116, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(117, 'message', 'Bad credentials'),
(117, 'remoteAddress', '192.168.1.29'),
(117, 'sessionId', 'D614BB7B9DAD7BA15BDAE83601168829'),
(117, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(118, 'message', 'Bad credentials'),
(118, 'remoteAddress', '192.168.1.29'),
(118, 'sessionId', '4E512A4F0D58B6BC7B37ABD1FE3D28A2'),
(118, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(119, 'remoteAddress', '192.168.1.29'),
(119, 'sessionId', '22F80D9942214F83DDDCF528CE9C086C'),
(120, 'message', 'Bad credentials'),
(120, 'remoteAddress', '192.168.1.29'),
(120, 'sessionId', 'B4F110FDDA29300978CE4D0FB9CCCE6A'),
(120, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(121, 'message', 'Bad credentials'),
(121, 'remoteAddress', '192.168.1.29'),
(121, 'sessionId', 'DECAB765E4A916B08BA1FBDCB0443917'),
(121, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(122, 'message', 'Bad credentials'),
(122, 'remoteAddress', '192.168.1.29'),
(122, 'sessionId', '8F6F64BC72119C32671357710B89695C'),
(122, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(123, 'message', 'Bad credentials'),
(123, 'remoteAddress', '192.168.1.29'),
(123, 'sessionId', '8F6F64BC72119C32671357710B89695C'),
(123, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(124, 'message', 'Bad credentials'),
(124, 'remoteAddress', '192.168.1.29'),
(124, 'sessionId', '886A5DFF61A9A30B644BE69577231C5D'),
(124, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(125, 'message', 'Bad credentials'),
(125, 'remoteAddress', '192.168.1.29'),
(125, 'sessionId', '5E8EA2C4F8EB590EF8A52C12240415AE'),
(125, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(126, 'message', 'Bad credentials'),
(126, 'remoteAddress', '192.168.1.29'),
(126, 'sessionId', 'BACB6B7E56F9C1E4348DCEAC0A4C0212'),
(126, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(127, 'message', 'Bad credentials'),
(127, 'remoteAddress', '192.168.1.29'),
(127, 'sessionId', 'BACB6B7E56F9C1E4348DCEAC0A4C0212'),
(127, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(128, 'message', 'Bad credentials'),
(128, 'remoteAddress', '192.168.1.29'),
(128, 'sessionId', 'BACB6B7E56F9C1E4348DCEAC0A4C0212'),
(128, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(129, 'message', 'Bad credentials'),
(129, 'remoteAddress', '192.168.1.29'),
(129, 'sessionId', 'A731D72311776FA27E23000B92A2F676'),
(129, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(130, 'remoteAddress', '192.168.1.29'),
(130, 'sessionId', '1EEF25B8E6F8A46236948B89589280BE'),
(131, 'message', 'Bad credentials'),
(131, 'remoteAddress', '192.168.1.29'),
(131, 'sessionId', '5C75EB418110FF19690124D721F86350'),
(131, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(132, 'message', 'Bad credentials'),
(132, 'remoteAddress', '192.168.1.29'),
(132, 'sessionId', 'A744563AC1E21E1E233C20832C8FA28E'),
(132, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(133, 'message', 'Bad credentials'),
(133, 'remoteAddress', '192.168.1.29'),
(133, 'sessionId', '4384E94C743860FF204A9D79E6D520AE'),
(133, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(134, 'message', 'Bad credentials'),
(134, 'remoteAddress', '192.168.1.29'),
(134, 'sessionId', '03931B106344BAE70455ED09C328A628'),
(134, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(135, 'remoteAddress', '192.168.1.29'),
(135, 'sessionId', '7BA1E4C6EC670ECF8CE05340D039ADF2'),
(136, 'remoteAddress', '192.168.1.21'),
(136, 'sessionId', 'A0906BB7C1ED24C32F45BC3B7448FF02'),
(137, 'remoteAddress', '192.168.1.20'),
(137, 'sessionId', '5FFD9102153CD8A25FAC82FB8FC69523'),
(138, 'remoteAddress', '192.168.1.104'),
(138, 'sessionId', '1C477D2760D788E8E521420F13BCB04E'),
(139, 'remoteAddress', '192.168.1.29'),
(139, 'sessionId', 'D4A09FF9CF5CF63E8F7992CDFCA3B156'),
(140, 'remoteAddress', '192.168.1.20'),
(140, 'sessionId', 'ACE874145BF190C31F56E277113F72ED'),
(141, 'remoteAddress', '192.168.1.104'),
(141, 'sessionId', '840433AC4A44020FC9D7D3D00AA661B2'),
(142, 'remoteAddress', '192.168.1.104'),
(142, 'sessionId', '0D22FC80DBEABBD7799E592ED4126D05'),
(143, 'message', 'Bad credentials'),
(143, 'remoteAddress', '192.168.1.104'),
(143, 'sessionId', 'FC6824274998B28E48237DF8EB2BA0AE'),
(143, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(144, 'remoteAddress', '192.168.1.104'),
(144, 'sessionId', '9F7C4D61D4139832DA4324EC8FD5728E'),
(145, 'remoteAddress', '192.168.1.104'),
(145, 'sessionId', 'B1B558B58D9A8303C968AE900C3BD450'),
(146, 'message', 'Bad credentials'),
(146, 'remoteAddress', '192.168.1.22'),
(146, 'sessionId', '0713B50EE641D83ED865C457CF0C47E4'),
(146, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(147, 'message', 'Bad credentials'),
(147, 'remoteAddress', '192.168.1.22'),
(147, 'sessionId', '3CCDD128E9FCA53EA319C51F02D7BD13'),
(147, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(148, 'message', 'Bad credentials'),
(148, 'remoteAddress', '192.168.1.22'),
(148, 'sessionId', 'BB8F87992F3DE841C74C0BE709B38F74'),
(148, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(149, 'message', 'Bad credentials'),
(149, 'remoteAddress', '192.168.1.22'),
(149, 'sessionId', 'F92A6D2F350F070E588B10AA186231BF'),
(149, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(150, 'message', 'Bad credentials'),
(150, 'remoteAddress', '192.168.1.22'),
(150, 'sessionId', 'C59639EEAE4629CC138835842E946809'),
(150, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(151, 'message', 'Bad credentials'),
(151, 'remoteAddress', '192.168.1.22'),
(151, 'sessionId', '074F96B69B78A4210F3B0CB0FD59D483'),
(151, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(152, 'message', 'Bad credentials'),
(152, 'remoteAddress', '192.168.1.22'),
(152, 'sessionId', '406E591E6B55B9189C8ED8ECC2770070'),
(152, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(153, 'remoteAddress', '192.168.1.30'),
(153, 'sessionId', 'D7E75C496DACD29C3421C2C6FF08A06F'),
(154, 'message', 'Bad credentials'),
(154, 'remoteAddress', '192.168.1.22'),
(154, 'sessionId', 'D9C852ACF5D593E3F8E49FB6D65E56D5'),
(154, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(155, 'remoteAddress', '192.168.1.104'),
(155, 'sessionId', '35504AEC215471EFB14BAE60C2156B13'),
(156, 'message', 'Bad credentials'),
(156, 'remoteAddress', '192.168.1.22'),
(156, 'sessionId', '2CD755D6219401AA601D2074988E249B'),
(156, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(157, 'message', 'Bad credentials'),
(157, 'remoteAddress', '192.168.1.22'),
(157, 'sessionId', 'CAE4C932E7F86C74762C50B05C484E4E'),
(157, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(158, 'message', 'Bad credentials'),
(158, 'remoteAddress', '192.168.1.22'),
(158, 'sessionId', '128B98DC0D8FC083C47BF9182306D5A2'),
(158, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(159, 'remoteAddress', '192.168.1.104'),
(159, 'sessionId', 'A5860B44794674A3D1432343FD9F208D'),
(160, 'message', 'Bad credentials'),
(160, 'remoteAddress', '192.168.1.22'),
(160, 'sessionId', 'C0688C97DE4605C66B51966D60E1221F'),
(160, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(161, 'message', 'Bad credentials'),
(161, 'remoteAddress', '192.168.1.22'),
(161, 'sessionId', '2532242A405E477B8A5D8270B4136934'),
(161, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(162, 'message', 'Bad credentials'),
(162, 'remoteAddress', '192.168.1.22'),
(162, 'sessionId', 'FAC7FDEC03564F24B00CC4124A5DB49F'),
(162, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(163, 'remoteAddress', '192.168.1.22'),
(163, 'sessionId', 'C1DFCADBDEF5E0E2556B82EC2AE0AC79'),
(164, 'remoteAddress', '192.168.1.30'),
(164, 'sessionId', 'BFA1AD017039F43CC78C10D04BCCB553'),
(165, 'remoteAddress', '192.168.1.22'),
(165, 'sessionId', '1DBBE4C899D8EAB2929B1316424F6B06'),
(166, 'remoteAddress', '192.168.1.22'),
(166, 'sessionId', '41C2B113D66AD3D881AE2B26295B126D'),
(167, 'remoteAddress', '192.168.1.22'),
(167, 'sessionId', '42107AE7C838EB0E487DDB3CB8DCF299'),
(168, 'remoteAddress', '192.168.1.20'),
(168, 'sessionId', '19488F98935771A7CD37B85237360A68'),
(169, 'remoteAddress', '192.168.1.29'),
(169, 'sessionId', 'C50BE738A9DDFAF1A9C9858AC8AA5570'),
(170, 'remoteAddress', '192.168.1.104'),
(170, 'sessionId', '35A15EDA1D97E0A427C4609740B02AD0'),
(171, 'remoteAddress', '192.168.1.20'),
(171, 'sessionId', '48AAB2309F29757C6F8979E78B16673E'),
(172, 'remoteAddress', '192.168.1.20'),
(172, 'sessionId', '599C5D924FD94DF00B78DEDCDACD6F11'),
(173, 'remoteAddress', '192.168.1.104'),
(173, 'sessionId', 'F7A721C1B915325DD66E678161461EA5'),
(174, 'remoteAddress', '192.168.1.104'),
(174, 'sessionId', 'A81EAF3665220F780B06B7E3B01CA9AA'),
(175, 'remoteAddress', '192.168.1.104'),
(175, 'sessionId', '473AEEF6AA43B3B2D827E986B2B8F659'),
(176, 'message', 'Bad credentials'),
(176, 'remoteAddress', '192.168.1.18'),
(176, 'sessionId', '3A416AF92A87173C3ECB866553EAE58F'),
(176, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(177, 'message', 'Bad credentials'),
(177, 'remoteAddress', '192.168.1.18'),
(177, 'sessionId', '8E5ED05154550F160AB1E64A6A6B6FCB'),
(177, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(178, 'message', 'Bad credentials'),
(178, 'remoteAddress', '192.168.1.18'),
(178, 'sessionId', '5C38A1FEB9726D993B4E81FD70A18B65'),
(178, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(179, 'message', 'Bad credentials'),
(179, 'remoteAddress', '192.168.1.18'),
(179, 'sessionId', 'D107F01202EB603CBA8486B01C7D8984'),
(179, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(180, 'message', 'Bad credentials'),
(180, 'remoteAddress', '192.168.1.18'),
(180, 'sessionId', 'CAC435869CE25DA5C03807C18A9B8388'),
(180, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(181, 'message', 'Bad credentials'),
(181, 'remoteAddress', '192.168.1.18'),
(181, 'sessionId', '70D53D5838E17A77A554442F9E98D17A'),
(181, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(182, 'message', 'Bad credentials'),
(182, 'remoteAddress', '192.168.1.18'),
(182, 'sessionId', '905D617CEB8BE8ED2E1CD1F121474F5D'),
(182, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(183, 'message', 'Bad credentials'),
(183, 'remoteAddress', '192.168.1.18'),
(183, 'sessionId', '942E9B8E35EADFD21530D115E9BFF1A2'),
(183, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(184, 'message', 'Bad credentials'),
(184, 'remoteAddress', '192.168.1.18'),
(184, 'sessionId', '181D94A491852825B2EB4F8F011F46EC'),
(184, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(185, 'message', 'Bad credentials'),
(185, 'remoteAddress', '192.168.1.18'),
(185, 'sessionId', '6E4DDE4E2EC5678D6C94C46FDAAFA791'),
(185, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(186, 'message', 'Bad credentials'),
(186, 'remoteAddress', '192.168.1.18'),
(186, 'sessionId', '6E4DDE4E2EC5678D6C94C46FDAAFA791'),
(186, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(187, 'message', 'Bad credentials'),
(187, 'remoteAddress', '192.168.1.18'),
(187, 'sessionId', '6F99778DDEE0CE0ED55BF744EAB5282C'),
(187, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(188, 'message', 'Bad credentials'),
(188, 'remoteAddress', '192.168.1.18'),
(188, 'sessionId', '5CE336E2D1ECA238F14E4047B8E6A143'),
(188, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(189, 'message', 'Bad credentials'),
(189, 'remoteAddress', '192.168.1.18'),
(189, 'sessionId', 'D3386376799CADECBD61C086F8529B88'),
(189, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(190, 'message', 'Bad credentials'),
(190, 'remoteAddress', '192.168.1.18'),
(190, 'sessionId', '7F59B73D7EC0C25CDB227640E2C5C335'),
(190, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(191, 'message', 'Bad credentials'),
(191, 'remoteAddress', '192.168.1.18'),
(191, 'sessionId', 'F1F5C7A460D2F541674B15E254D01551'),
(191, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(192, 'message', 'Bad credentials'),
(192, 'remoteAddress', '192.168.1.18'),
(192, 'sessionId', '09CC02EB9AD55A247D76405E8827F0D5'),
(192, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(193, 'message', 'Bad credentials'),
(193, 'remoteAddress', '192.168.1.18'),
(193, 'sessionId', 'C5EEF1B2D752BD6D0F70A5EA714BF5B4'),
(193, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(194, 'message', 'Bad credentials'),
(194, 'remoteAddress', '192.168.1.18'),
(194, 'sessionId', '17A68B59C77B57879DDE2B859595F302'),
(194, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(195, 'message', 'Bad credentials'),
(195, 'remoteAddress', '192.168.1.18'),
(195, 'sessionId', 'D83539786BBEB6B5B5BBCFBC385B834E'),
(195, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(196, 'message', 'Bad credentials'),
(196, 'remoteAddress', '192.168.1.18'),
(196, 'sessionId', 'BC3E77BE1504BC3385AADC30920ED3E9'),
(196, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(197, 'message', 'Bad credentials'),
(197, 'remoteAddress', '192.168.1.18'),
(197, 'sessionId', '98A404D2EA67DE991CED3E4DD3F43D83'),
(197, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(198, 'message', 'Bad credentials'),
(198, 'remoteAddress', '192.168.1.18'),
(198, 'sessionId', 'B22A922B603669E1BE850C1D75FA62B1'),
(198, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(199, 'message', 'Bad credentials'),
(199, 'remoteAddress', '192.168.1.18'),
(199, 'sessionId', 'F9FA3470E046F6644BA193050C82F210'),
(199, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(200, 'message', 'Bad credentials'),
(200, 'remoteAddress', '192.168.1.18'),
(200, 'sessionId', '55404A354DA4D32450B1F5B269DFC4BF'),
(200, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(201, 'message', 'Bad credentials'),
(201, 'remoteAddress', '192.168.1.18'),
(201, 'sessionId', 'F4EB43201B91BA0418AE787F0DB3AC99'),
(201, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(202, 'message', 'Bad credentials'),
(202, 'remoteAddress', '192.168.1.18'),
(202, 'sessionId', '064A81861BB0AC6AEF676454CDAB8F55'),
(202, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(203, 'message', 'Bad credentials'),
(203, 'remoteAddress', '192.168.1.18'),
(203, 'sessionId', '7458B3CD8192D14AD33A8C2410CB044B'),
(203, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(204, 'message', 'Bad credentials'),
(204, 'remoteAddress', '192.168.1.18'),
(204, 'sessionId', '9D8CB7B6DDFA71B175F1090C30962C69'),
(204, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(205, 'message', 'Bad credentials'),
(205, 'remoteAddress', '192.168.1.18'),
(205, 'sessionId', '77E0A3AE35CACF489681B517358E878B'),
(205, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(206, 'message', 'Bad credentials'),
(206, 'remoteAddress', '192.168.1.18'),
(206, 'sessionId', '326542395EE818D45F59AA61CDA96F0D'),
(206, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(207, 'message', 'Bad credentials'),
(207, 'remoteAddress', '192.168.1.18'),
(207, 'sessionId', 'D33FDBA1F3DA3900D5C09F866CE7CEFC'),
(207, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(208, 'message', 'Bad credentials'),
(208, 'remoteAddress', '192.168.1.18'),
(208, 'sessionId', 'E9FA589BC8C9C047FDED0EE2D0615093'),
(208, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(209, 'message', 'Bad credentials'),
(209, 'remoteAddress', '192.168.1.18'),
(209, 'sessionId', 'C8BC0ED3A823841BD3F83EEB88B1D270'),
(209, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(210, 'message', 'Bad credentials'),
(210, 'remoteAddress', '192.168.1.18'),
(210, 'sessionId', '73A15EE21AEB8A0CF0AD329F04B25755'),
(210, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(211, 'message', 'Bad credentials'),
(211, 'remoteAddress', '192.168.1.18'),
(211, 'sessionId', '823EF0EDE5D87742EDDDC36E5150B629'),
(211, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(212, 'message', 'Bad credentials'),
(212, 'remoteAddress', '192.168.1.18'),
(212, 'sessionId', '3C59A50538D8BCEEC507DCD94BB12FDF'),
(212, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(213, 'message', 'Bad credentials'),
(213, 'remoteAddress', '192.168.1.18'),
(213, 'sessionId', 'E45A724C4803B5947F66835497BAAE17'),
(213, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(214, 'message', 'Bad credentials'),
(214, 'remoteAddress', '192.168.1.18'),
(214, 'sessionId', 'BB36EB9A24BD75193C148697E47F69EE'),
(214, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(215, 'message', 'Bad credentials'),
(215, 'remoteAddress', '192.168.1.18'),
(215, 'sessionId', 'EC8AF068B2B696FFAAA1A8B75036F0E5'),
(215, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(216, 'message', 'Bad credentials'),
(216, 'remoteAddress', '192.168.1.18'),
(216, 'sessionId', '97BB2668A1E1055E179E4776DA735B58'),
(216, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(217, 'message', 'Bad credentials'),
(217, 'remoteAddress', '192.168.1.18'),
(217, 'sessionId', 'D5B78FBCB9A3C50FCF95913564EC9E75'),
(217, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(218, 'message', 'Bad credentials'),
(218, 'remoteAddress', '192.168.1.18'),
(218, 'sessionId', '4056DE99A5044B14A20F2CE08C91060C'),
(218, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(219, 'message', 'Bad credentials'),
(219, 'remoteAddress', '192.168.1.18'),
(219, 'sessionId', 'C4F7949F941C4F5DE42F7A8AEDE8FE1C'),
(219, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(220, 'message', 'Bad credentials'),
(220, 'remoteAddress', '192.168.1.18'),
(220, 'sessionId', 'D8968C2D7F2DD5F11443D8D216332480'),
(220, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(221, 'message', 'Bad credentials'),
(221, 'remoteAddress', '192.168.1.18'),
(221, 'sessionId', 'F244F056733C8D7A5B3E89D1632A29D8'),
(221, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(222, 'message', 'Bad credentials'),
(222, 'remoteAddress', '192.168.1.18'),
(222, 'sessionId', 'D2124BBBD07057023716790A464D9BDD'),
(222, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(223, 'message', 'Bad credentials'),
(223, 'remoteAddress', '192.168.1.18'),
(223, 'sessionId', '2368C753AC82C3E0C64CC3FE2AA850F4'),
(223, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(224, 'message', 'Bad credentials'),
(224, 'remoteAddress', '192.168.1.18'),
(224, 'sessionId', 'ABA9E7D8E8587B42F7B10904C9195B78'),
(224, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(225, 'message', 'Bad credentials'),
(225, 'remoteAddress', '192.168.1.18'),
(225, 'sessionId', '6B49441248D441FBD597865E3881649D'),
(225, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(226, 'message', 'Bad credentials'),
(226, 'remoteAddress', '192.168.1.18'),
(226, 'sessionId', '38329DD3C3A57AD38F8FDBF1AC1A6B3C'),
(226, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(227, 'message', 'Bad credentials'),
(227, 'remoteAddress', '192.168.1.18'),
(227, 'sessionId', '731C78CF73C338CD0873921649A3DAB6'),
(227, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(228, 'message', 'Bad credentials'),
(228, 'remoteAddress', '192.168.1.18'),
(228, 'sessionId', 'A2FD3DCB2DE4300971B8EF879B59AE7F'),
(228, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(229, 'remoteAddress', '192.168.1.18'),
(229, 'sessionId', '5FA7E031E59100C9557FB0AC335A6A57'),
(230, 'remoteAddress', '192.168.1.30'),
(230, 'sessionId', '49B0DD78402252824AB2E947CF18D249'),
(231, 'remoteAddress', '192.168.1.20'),
(231, 'sessionId', 'BE42EEC221A0C4BB5A797AB0FD4B4B26'),
(232, 'message', 'Bad credentials'),
(232, 'remoteAddress', '192.168.1.20'),
(232, 'sessionId', '10C6F380E6500766C83A1F311666BB90'),
(232, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(233, 'remoteAddress', '192.168.1.20'),
(233, 'sessionId', 'D507275B8BBBD2EF49AD36D9D7173EEF'),
(234, 'remoteAddress', '192.168.1.104'),
(234, 'sessionId', '8373284EE157473C66C05FB3D17836BA'),
(235, 'message', 'Bad credentials'),
(235, 'remoteAddress', '192.168.1.29'),
(235, 'sessionId', '307301F8A1EC64E48DCB3836CA73C111'),
(235, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(236, 'message', 'Bad credentials'),
(236, 'remoteAddress', '192.168.1.29'),
(236, 'sessionId', '22FF352CBAEF3B9B0C79B19EA442D445'),
(236, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(237, 'message', 'Bad credentials'),
(237, 'remoteAddress', '192.168.1.22'),
(237, 'sessionId', 'E8C5A386EB6E3630713A9F31FC2A135A'),
(237, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(238, 'remoteAddress', '192.168.1.29'),
(238, 'sessionId', 'D78772537D9DDE2AB0FF3C7ED86BA9B3'),
(239, 'message', 'Bad credentials'),
(239, 'remoteAddress', '192.168.1.22'),
(239, 'sessionId', '76BE4816AAECC8122EB1EB4EA7F9463B'),
(239, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(240, 'remoteAddress', '192.168.1.104'),
(240, 'sessionId', '2F3024FD5EF3B30DBF14E14F998B3601'),
(241, 'remoteAddress', '192.168.1.29'),
(241, 'sessionId', 'FFAE6F08482E69E4A20A7855A898594E'),
(242, 'remoteAddress', '192.168.1.22'),
(242, 'sessionId', '106E267A253323CE95012E34002AE17F'),
(243, 'message', 'Bad credentials'),
(243, 'remoteAddress', '192.168.1.22'),
(243, 'sessionId', '9908968F6BA8CBD95F0BF951A9812B18'),
(243, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(244, 'remoteAddress', '192.168.1.104'),
(244, 'sessionId', 'AFE193596A933BC0889E3138BC0F3141'),
(245, 'message', 'Bad credentials'),
(245, 'remoteAddress', '192.168.1.22'),
(245, 'sessionId', 'A48A97C94E1A4039B48BCC079BB99342'),
(245, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(246, 'remoteAddress', '192.168.1.22'),
(246, 'sessionId', 'D0006FF7E8161958A1A64B0AE7182F80'),
(247, 'remoteAddress', '192.168.1.104'),
(247, 'sessionId', '020B4AD592E84FBAD823DF2F41FE2B1B'),
(248, 'message', 'Bad credentials'),
(248, 'remoteAddress', '192.168.1.21'),
(248, 'sessionId', '81574674589AFC7DFE16BBB23D40FE29'),
(248, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(249, 'message', 'Bad credentials'),
(249, 'remoteAddress', '192.168.1.21'),
(249, 'sessionId', '036230E644FBDC0F18E53018340F2C13'),
(249, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(250, 'message', 'Bad credentials'),
(250, 'remoteAddress', '192.168.1.21'),
(250, 'sessionId', 'DB13892945041EB82BC428A2A1705BC2'),
(250, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(251, 'message', 'Bad credentials'),
(251, 'remoteAddress', '192.168.1.21'),
(251, 'sessionId', '42762CC32093FCF590D6AA7042182636'),
(251, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(252, 'remoteAddress', '192.168.1.21'),
(252, 'sessionId', '3BF26E6E317E7FA69EC0E49EAB3CFA0A'),
(253, 'message', 'Bad credentials'),
(253, 'remoteAddress', '192.168.1.104'),
(253, 'sessionId', 'CEE7A9D664E174933963B9BE3E7BD79A'),
(253, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(254, 'remoteAddress', '192.168.1.104'),
(254, 'sessionId', '708E09C003331430443D44B3782FFBC0'),
(255, 'remoteAddress', '192.168.1.104'),
(255, 'sessionId', 'B3D76D64C733698B159093AE1966D70D'),
(256, 'remoteAddress', '192.168.1.104'),
(256, 'sessionId', 'A799CD897E5CE65FF346723F6C76EF6F'),
(257, 'message', 'Bad credentials'),
(257, 'remoteAddress', '192.168.1.29'),
(257, 'sessionId', 'D9118C8AC401AC74BD6E2883D00570C0'),
(257, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(258, 'remoteAddress', '192.168.1.29'),
(258, 'sessionId', '22A10467879893E31F3E0F16429B6283'),
(259, 'remoteAddress', '192.168.1.104'),
(259, 'sessionId', '19C469D89454F36E39973958A9E54A1B'),
(260, 'remoteAddress', '192.168.1.20'),
(260, 'sessionId', 'E0C978D171754C928C09804B3C68B186'),
(261, 'remoteAddress', '192.168.1.104'),
(261, 'sessionId', 'EFAD3AFE6C95E927352ECE3463ED03D0'),
(262, 'remoteAddress', '192.168.1.104'),
(262, 'sessionId', 'C6A8E1BD23CBD197556D0A7A5670C21B'),
(263, 'remoteAddress', '192.168.1.6'),
(263, 'sessionId', 'C4768C34E15158F775D57170058DD34F'),
(264, 'remoteAddress', '192.168.1.29'),
(264, 'sessionId', '2BDD0C2F395ABCC5363D26BB495671FA'),
(265, 'remoteAddress', '192.168.1.19'),
(265, 'sessionId', 'F62A15393BE6327F526B8CA87936F4B3'),
(266, 'remoteAddress', '192.168.1.20'),
(266, 'sessionId', 'E7CC3C4ED1D21815A65C7217C5D1003A'),
(267, 'remoteAddress', '192.168.1.104'),
(267, 'sessionId', '58FC78EEF26E254236A324732D835628'),
(268, 'remoteAddress', '192.168.1.104'),
(268, 'sessionId', 'D747974EC35FF279BC5161F9F09C4292'),
(269, 'message', 'Bad credentials'),
(269, 'remoteAddress', '192.168.1.36'),
(269, 'sessionId', '2ABFF9255E30ACF5D9FB3574F7608347'),
(269, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(270, 'remoteAddress', '192.168.1.104'),
(270, 'sessionId', 'B08D79AED78CD6123DC68B912527E2B2'),
(271, 'remoteAddress', '192.168.1.20'),
(271, 'sessionId', '9DE9FBC9444F6920AE31E1501AFE43DB'),
(272, 'remoteAddress', '192.168.1.30'),
(272, 'sessionId', '1353EF5C9B4ABF91D9137E8DB7BFA0E1'),
(273, 'remoteAddress', '192.168.1.30'),
(273, 'sessionId', '5AB4406C41DAAA276FF6F582F514DD76'),
(274, 'remoteAddress', '192.168.1.18'),
(274, 'sessionId', '8B447381DA03BC70CF9D93A493222F92'),
(275, 'remoteAddress', '192.168.1.104'),
(275, 'sessionId', '61F070C0CE1A05CD5F8DA16E2B7FE979'),
(276, 'remoteAddress', '192.168.1.104'),
(276, 'sessionId', '14DCCF7E41014A0EB55BCF806DC8B560'),
(277, 'remoteAddress', '192.168.1.104'),
(277, 'sessionId', 'CCE0DE91792599A242E2521B2A61A020'),
(278, 'remoteAddress', '192.168.1.104'),
(278, 'sessionId', 'D45E1725FEB50B27E0B582034E5D2183'),
(279, 'remoteAddress', '192.168.1.30'),
(279, 'sessionId', '30F9D530B0F79CB224BADCF6EF83698C'),
(280, 'message', 'Bad credentials'),
(280, 'remoteAddress', '192.168.1.36'),
(280, 'sessionId', '9ADE6EBD54541ABE25A2BAFA715F7589'),
(280, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(281, 'remoteAddress', '192.168.1.36'),
(281, 'sessionId', '91BEE5D76FCDF76084DD7C554669AAF6'),
(282, 'remoteAddress', '192.168.1.20'),
(282, 'sessionId', '144E6403B7C8E9E9083DE580DC95BA0B'),
(283, 'remoteAddress', '192.168.1.36'),
(283, 'sessionId', '68ED002B572D11BC3103A542FCE3B92D'),
(284, 'remoteAddress', '192.168.1.36'),
(284, 'sessionId', 'B08E81B26426D99253BDF1C240C7A36C'),
(285, 'remoteAddress', '192.168.1.104'),
(285, 'sessionId', '625C2778AFB3CE31C0B7C81ACDD60BEA'),
(286, 'remoteAddress', '192.168.1.104'),
(286, 'sessionId', 'C84258EF30FD7E03D38EB876FD5C7BA6'),
(287, 'remoteAddress', '192.168.1.29'),
(287, 'sessionId', '60CF09D10E2CA216297A2189EF0C7E1B'),
(288, 'remoteAddress', '192.168.1.36'),
(288, 'sessionId', 'B30E2754405BC5960ED80D4CEEEAECB4'),
(289, 'message', 'Bad credentials'),
(289, 'remoteAddress', '192.168.1.36'),
(289, 'sessionId', '2B8C61FE9FC10FC6EFB6FECD71130425'),
(289, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(290, 'message', 'Bad credentials'),
(290, 'remoteAddress', '192.168.1.36'),
(290, 'sessionId', '21E7ACD009DFCEE9C52D845189C3BFBC'),
(290, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(291, 'message', 'Bad credentials'),
(291, 'remoteAddress', '192.168.1.36'),
(291, 'sessionId', 'BA61E66E8F3A0C8FCE4CDCD390F9036C'),
(291, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(292, 'message', 'Bad credentials'),
(292, 'remoteAddress', '192.168.1.36'),
(292, 'sessionId', '4ADF29F24A4FDB7D4D017B31F03B5DC6'),
(292, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(293, 'message', 'Bad credentials'),
(293, 'remoteAddress', '192.168.1.36'),
(293, 'sessionId', '40D7C7FC19F5D9EADF5A8C2C6FC68182'),
(293, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(294, 'message', 'Bad credentials'),
(294, 'remoteAddress', '192.168.1.36'),
(294, 'sessionId', '39B8EF7FE668DAB19182CEFCC061AFA9'),
(294, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(295, 'message', 'Bad credentials'),
(295, 'remoteAddress', '192.168.1.36'),
(295, 'sessionId', '80102EDBEE9808A6BB55DA28F2F80076'),
(295, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(296, 'message', 'Bad credentials'),
(296, 'remoteAddress', '192.168.1.36'),
(296, 'sessionId', 'AA5D44FC027585624E69ADE054879480'),
(296, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(297, 'message', 'Bad credentials'),
(297, 'remoteAddress', '192.168.1.36'),
(297, 'sessionId', 'C605C6EE4D17C01751F9B07DC86083FF'),
(297, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(298, 'message', 'Bad credentials'),
(298, 'remoteAddress', '192.168.1.36'),
(298, 'sessionId', '3E47476A82A1B8E109EF963522991931'),
(298, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(299, 'message', 'Bad credentials'),
(299, 'remoteAddress', '192.168.1.36'),
(299, 'sessionId', 'F276DCCB42FFDAD43FB61BCC596A0B29'),
(299, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(300, 'message', 'Bad credentials'),
(300, 'remoteAddress', '192.168.1.36'),
(300, 'sessionId', '5F2F408C4B0211955FDF3E11C4676130'),
(300, 'type', 'org.springframework.security.authentication.BadCredentialsException'),
(301, 'remoteAddress', '192.168.1.36'),
(301, 'sessionId', '38E9B4EEC802EF87DE29D68F0DA9E62C'),
(302, 'remoteAddress', '192.168.1.36'),
(302, 'sessionId', '565B7E74E7D1C2AA306F3E6E76A9ED01'),
(303, 'remoteAddress', '192.168.1.104'),
(303, 'sessionId', '7BFC842E15F679B53F894D03AA3A3031');

-- --------------------------------------------------------

--
-- Structure de la table `jhi_persistent_token`
--

CREATE TABLE `jhi_persistent_token` (
  `series` varchar(76) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `token_value` varchar(76) NOT NULL,
  `token_date` date DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jhi_persistent_token`
--

INSERT INTO `jhi_persistent_token` (`series`, `user_id`, `token_value`, `token_date`, `ip_address`, `user_agent`) VALUES
('+91LvW5bLkmrCMVWT53syw==', 20, 'Pu8VR6ySoFM3uP3o1oikNA==', '2018-09-26', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('+Ag7idwIKUlvATDugZ0DAA==', 20, 'd4eyFDHNDQQ/xpwTZyFcXQ==', '2018-09-03', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('+d6JCpJ+00kHeldQUBx9wg==', 20, 'l5Ev9iFoIgbNweqKU1sCng==', '2018-09-04', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('/K/BAZje27JeKPHbQrOcwg==', 17, 'yfSqx1mxhp7YrCMgDAirWA==', '2018-09-25', '192.168.1.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240'),
('06Z7VOPKAxaauWyMRUfekA==', 18, 'C2APy7q91WHI2Nw8sX0s6w==', '2018-09-24', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('2jsZEb+JINFuDurVRpIXYg==', 19, 'vFpPoH7w3tTW3Q+k8vpE9A==', '2018-09-26', '192.168.1.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('4qfuVLVvjtynMqsQzSEIAg==', 3, 'pQc5bzZ2uHwP7sBevo+39w==', '2018-08-27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko'),
('4xV47W8xhBXQgGV3na2JYQ==', 18, '56508xuenFPi6x0UMAO32Q==', '2018-09-18', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('56eqFbYdDmwcd/6HPr6QkA==', 20, 'lcf2YHLfrn6TZ0ET1fZC7A==', '2018-09-04', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('5TeBQBJ4DEgYqrKRQsHxhw==', 18, 'YEffhiGBHcNHS5uKwrKU3Q==', '2018-09-21', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('69YRl6XKvoblYJ2/HrINjA==', 30, 'Pgj4XVLilydKKKc7ALIYAQ==', '2018-09-21', '192.168.1.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'),
('6EG6YLwtDopjLi+GwbThBQ==', 20, 'EZc235fDEYggyc6myGUVvw==', '2018-09-06', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('6Iw9X/u2FiltO53MKbcFyw==', 20, 'AphqDWtkyllmTQUZ8vWaOA==', '2018-09-19', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('a0wXQLvHy6NPuHoZ4xO2dw==', 30, 'F7RDF/uFah9kQeZwSDM4+g==', '2018-09-26', '192.168.1.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36 Edge/16.16299'),
('ApkIjRlTalXh4OUrZRURdA==', 19, 'IF4DPrVmH3yOixhZ8cGxWw==', '2018-09-17', '192.168.1.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('aueURVXpGSeyE0VEDxp53Q==', 20, 'ZAbA5cNtwn3uibSGqMfnuA==', '2018-09-26', '192.168.1.19', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko'),
('bCaUE7Fh9zcZpf8HevdUvA==', 20, 'sS0ifoF6UHuQivNuur604A==', '2018-09-11', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('BuDhQUh5wDZDFQDVP2HB9Q==', 20, 'Olh8Gg4IVhN+PWD/SdJeNw==', '2018-09-20', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('cFCR7PVL6TPqh1yoOvTGCw==', 20, '41DEA0HbqFWItPTsbY1kkA==', '2018-09-03', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('D4ciEPfD8S/1NMK6bMr8MA==', 22, 'ACzWyqo95iAv9dWPRVNKJw==', '2018-09-25', '192.168.1.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134'),
('Dd5FC1BVuUvrkmDSqwFj+g==', 22, 'ou9mjS3FDfVOe8N4CR5B7Q==', '2018-09-18', '192.168.1.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36'),
('DIl4O8ApWZNwA3SbAGDw2Q==', 20, 'ticpZ1oGCajDbHXzzSkURA==', '2018-09-17', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('DmyzBPT82c45nTOnt0zWKA==', 13, 'vnlN1N9HLJ9ucKDEssaeKA==', '2018-09-14', '192.168.1.31', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('DPCFOMd99kj6z5Q0jpI2Ag==', 18, 'goD36FFm+y0btEBEcolJPw==', '2018-09-21', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('dt0hndZn7T6Cl8u2nAW9zw==', 18, 'B7MPWBkox9BeQN595xpVAQ==', '2018-09-25', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('DWV9ysoFec/GbYkZ42IC0g==', 20, 'OfjaAoswwosIoL0JxRb07Q==', '2018-09-24', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('E9iFFTPgqNvou0U4MH5EQg==', 20, 'x8GCSLanekq8jpAkBIjUtg==', '2018-09-13', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('HlsyBJoD+S/1xF2ElDCjVw==', 19, '6Gl+a5NBzXcIoj9NPnKdhw==', '2018-09-21', '192.168.1.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('hyw+ZOLE3eKJqExMiNU8DQ==', 18, 'x8Xo0s0oMwNQ/w6m/ayYNw==', '2018-09-26', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('ikT2zQ79vZuS67zc2qXAlA==', 17, 'OLNlxJo4FR2rVXZo5AS3Xw==', '2018-09-24', '192.168.1.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240'),
('IZbQAVda6JBEE/jgMd/Fxw==', 20, '9K59EzolwsebLaUPwsRtjA==', '2018-09-14', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('j7xyzu2IuKDOTkdiM0IIPA==', 19, 'BoHfDhHSnH86tgV+bgwuWw==', '2018-09-21', '192.168.1.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('KOAny7LVAommrh+P0cGX+Q==', 19, 'HLejyA3V4W0qKPB52HiofA==', '2018-09-13', '192.168.1.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('lBNjklL5YSDmjsqumlJJvw==', 17, 'RIq28Y1TRgLW/UokY3uHug==', '2018-09-25', '192.168.1.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240'),
('MT4N0t7/G9DTZNVSSzhFVg==', 17, '7Kiae21lw8Rsmy0vIUv2Gg==', '2018-09-26', '192.168.1.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240'),
('MUi9tj8nufiE7dFOE2euZw==', 18, '6u7DFl9g7ctr7hZdSfYDhw==', '2018-09-26', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('nEgiHJG+B0I3C1G63dTOjA==', 19, 'TjBGfky0m8XeHCIx0dvH4Q==', '2018-09-24', '192.168.1.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('nnApI6iPobYsq9qCbIxN9w==', 20, 'Mf+/Da75s4EqMxjI1CMoUg==', '2018-09-21', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('ozQCuHEdp89+c+I9iZ9XaQ==', 20, 'OF2kDtBIy6nRce9tgrWMxw==', '2018-09-04', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('P9U6pw1XYrLeDxHp1J29SA==', 18, 'HJPznkj4yH/6Ap3LO2G1tQ==', '2018-09-18', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('RVrIh6t2qa6z2ZpAHZqx5Q==', 18, 'xkY+DwQUIOHdi6hrPHfnoA==', '2018-09-14', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0'),
('RXInUkmbTdq1B7/wW6DpmA==', 20, 'fKwLsSdhLnOTzsNqzNR3qg==', '2018-09-17', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('slwLk9bP2sw+6sLQTs8Ong==', 20, 'tabkpv54+pBfP/R5eJXN/g==', '2018-08-29', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('Sml96G0QTsBg6Dq5SVOPgg==', 18, 'G6DMZx3zTm/ybzXSJdkt1w==', '2018-09-19', '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0'),
('sObM+NQ5vYWt8qPCrhYjUg==', 20, 'LgmZwQfjHGLgWYYfNQ71kw==', '2018-09-06', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('Uio23kO4NhVI4MEA2dxzBA==', 20, 'bHv/HRBtpKtkEf+AD19AdA==', '2018-09-04', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('UvSrZFUmST2K1Nh6UF39ag==', 17, '/zFZ1xOX5GrMrSv2WDTytQ==', '2018-09-25', '192.168.1.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240'),
('w5mUyPIOTEJ7xxrTC5UhRg==', 20, 'Iqa1KAt5BSa9p9X9zGDWVQ==', '2018-08-27', '192.168.1.20', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0'),
('we7OYebVNOgOflcXbOKNmw==', 23, 'LAZ3qJfSbqvK0MSw/0lEkQ==', '2018-09-13', '192.168.1.22', 'Mozilla/5.0 (Windows NT 5.1; rv:52.0) Gecko/20100101 Firefox/52.0'),
('XRrQMvOJ3/K4C3doED1o/g==', 17, 'jxtpOvwrpOEauJBckrMA9Q==', '2018-09-24', '192.168.1.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36 Edge/12.10240');

-- --------------------------------------------------------

--
-- Structure de la table `jhi_user`
--

CREATE TABLE `jhi_user` (
  `id` bigint(20) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(60) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(5) DEFAULT NULL,
  `activation_key` varchar(20) DEFAULT NULL,
  `reset_key` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jhi_user`
--

INSERT INTO `jhi_user` (`id`, `login`, `password_hash`, `first_name`, `last_name`, `email`, `activated`, `lang_key`, `activation_key`, `reset_key`, `created_by`, `created_date`, `reset_date`, `last_modified_by`, `last_modified_date`) VALUES
(1, 'system', '$2a$10$mE.qmcV0mFU5NcKh73TZx.z4ueI/.bDWbj0T1BYyqP481kGGarKLG', 'System', 'System', 'system@localhost', b'1', 'en', NULL, NULL, 'system', '2016-11-21 12:33:59', NULL, 'system', '2016-11-21 12:33:59'),
(2, 'anonymoususer', '$2a$10$j8S5d7Sr7.8VTOYNviDPOeWX8KcYILUVJBsYV83Y5NtECayypx9lO', 'Anonymous', 'User', 'anonymous@localhost', b'1', 'en', NULL, NULL, 'system', '2016-11-21 12:33:59', NULL, 'system', '2016-11-21 12:33:59'),
(3, 'admin', '$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC', 'Administrator', 'Administrator', 'admin@localhost', b'1', 'en', NULL, NULL, 'system', '2016-11-21 12:33:59', NULL, 'system', '2016-11-21 12:33:59'),
(4, 'user', '$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K', 'User', 'User', 'user@localhost', b'1', 'en', NULL, NULL, 'system', '2016-11-21 12:33:59', NULL, 'system', '2016-11-21 12:33:59'),
(5, 'adbaf', '$2a$10$GosjxtiFau4chgdn3ceNaegomaEMu9vPM53/Ww9FhKySiheGH/RcO', NULL, NULL, 'adbaf@gmail.com', b'1', 'en', '57931045959561795172', NULL, 'anonymousUser', '2016-12-12 10:09:27', NULL, 'admin', '2016-12-12 10:12:22'),
(6, 'rdbaf', '$2a$10$K/V/C64xZtfWtaNzZdDqH.E9a/wYkuaqjgxHMw9.iglgndUopb/bS', NULL, NULL, 'rdbaf@gmail.com', b'1', 'en', '56479251532924427779', NULL, 'anonymousUser', '2016-12-12 10:10:11', NULL, 'admin', '2016-12-12 10:12:26'),
(7, 'arab', '$2a$10$d66dnZ6FSZSd5ISB9tKk2uneDYz5lawlxdVMGOQkXJsZe4Om4NbA6', NULL, NULL, 'arab@g.fr', b'1', 'en', '39554579894547437173', NULL, 'anonymousUser', '2016-12-12 10:33:38', NULL, 'admin', '2016-12-12 10:34:59'),
(8, 'rrab', '$2a$10$QHJt/4LzqRD31v3fFj0SH.kzwXAICYCtXUAeWla3BN5o0eCpLMnai', NULL, NULL, 'rrab@y.fr', b'1', 'en', '19971435926735203462', NULL, 'anonymousUser', '2016-12-12 10:34:11', NULL, 'admin', '2016-12-12 10:35:11'),
(10, 'eyo', '$2a$10$qh00b2UL.8uRpUB/arX7reSEByIMdFKqJ0U1CROJlThUUfmpyW7wW', NULL, NULL, 'maria@gmail.com', b'1', 'en', '95637548313501476385', NULL, 'anonymousUser', '2016-12-17 22:16:39', NULL, 'admin', '2016-12-17 22:17:28'),
(13, 'sylvie', '$2a$10$YHsUa/sBY4dTh9gVgX36seGe7YPqQ1M.MpfcJy.5LZ03CGg0.Zbum', NULL, NULL, 'sylviedipama17@gmail.com', b'1', 'en', '84744956212832176088', NULL, 'anonymousUser', '2018-08-04 10:25:09', NULL, 'admin', '2018-08-04 10:30:14'),
(14, 'issakakouraogo', '$2a$10$vdUcBmjc9.vRmCBGArfsS.bZK.3Wlxzk8gxOAlmby8FmSLHJJpjWS', NULL, NULL, 'issaka.kouraogo2017@yahoo.com', b'1', 'en', '25273706697583691631', '20200530591671479924', 'anonymousUser', '2018-08-04 10:28:05', '2018-09-06 14:30:14', 'anonymousUser', '2018-09-06 14:30:14'),
(15, 'guirosouleymane', '$2a$10$HcwxSk3410jy/nqIgm0sBOdGNPPv7f0gdI6MlDXMChwOXxl.9UzCC', 'GUIRO', 'Souleymane', 'souleymaneguiro1@yahoo.com', b'1', 'en', '36168373462501662789', NULL, 'anonymousUser', '2018-08-04 10:31:41', NULL, 'guirosouleymane', '2018-08-04 11:36:23'),
(16, 'daoudouedraogo', '$2a$10$oGVxrAkTaDuY/It7AK.HyucSOMzEqOMcPZDBjqxw1AfFNu2COOsfi', NULL, NULL, 'daoudaouedraogo@gmail.com', b'1', 'en', '31389031786169830059', NULL, 'anonymousUser', '2018-08-04 10:37:42', NULL, 'admin', '2018-08-04 10:38:23'),
(17, 'damansalia', '$2a$10$D.syCTwiM0RSpnzK8YgOv.tP/IGvWZ6sk.3CA5m2btqn3fMLkCmu.', 'Daman', 'Salia', 'damsaliasalek@yahoo.fr', b'1', 'en', '37878689865023315830', NULL, 'anonymousUser', '2018-08-04 10:41:27', NULL, 'damansalia', '2018-08-04 11:35:45'),
(18, 'aouangraoua', '$2a$10$pTv3i1jHeAl0RwSHIFfo6eO86XjIl6oAdIAoZ8cZA2DObKE/VboGi', NULL, NULL, 'augustineouedraogo13@yahoo.fr', b'1', 'en', '76781399253754235699', NULL, 'anonymousUser', '2018-08-04 10:46:18', NULL, 'admin', '2018-08-04 10:49:38'),
(19, 'okpascaline', '$2a$10$uOrZgeFhJKrWGqKTfEVlruwyKaGepV0hv5B66ZlR3TqLgyHOM.vvi', NULL, NULL, 'lisekisse@yahoo.fr', b'1', 'en', '22609319146535076270', NULL, 'anonymousUser', '2018-08-04 10:48:25', NULL, 'admin', '2018-08-04 10:49:46'),
(20, 'urielle', '$2a$10$JsbQwx9eL2mWKQMz4YDkW.kwRfqn.RKB./GDrvzMoTDYE93n6iNBm', NULL, NULL, 'xxxxx@yyy.fr', b'1', 'en', '56474277407492085299', NULL, 'anonymousUser', '2018-08-04 10:59:52', NULL, 'patoguirma1979', '2018-09-20 16:02:16'),
(21, 'bakyono', '$2a$10$51885iWKj44rZM6/7qPsBOSn8nh.4Bp1Yh4dw.NWtCsIYZ3MbUhDu', NULL, NULL, 'rasbakyono@yahoo.fr', b'1', 'en', '21871139291942269743', NULL, 'anonymousUser', '2018-08-18 10:43:21', NULL, 'admin', '2018-08-18 10:51:12'),
(22, 'patoguirma1979', '$2a$10$ORvP9tIhCkm4ixCCJmn62ef9dLupDcZeqdpuws5aII2yhRNqyvCrq', NULL, NULL, 'patoguirma1979@gmail.com', b'1', 'en', '19869009278139013046', NULL, 'anonymousUser', '2018-08-18 10:45:05', NULL, 'admin', '2018-08-18 10:51:16'),
(23, 'flora', '$2a$10$rz7xW6yjA.z53c.qe1t5p.mau.0wCva08fhkw1OS5pngzTSmP/wqS', NULL, NULL, 'floredade77@gmail.com', b'1', 'en', '27129410335156951895', NULL, 'anonymousUser', '2018-08-18 10:47:04', NULL, 'admin', '2018-08-18 10:51:19'),
(24, 'palingwinde', '$2a$10$gG8NioARIK6g1pURM8BmXevuXKwCop.Ht0Rz3tNcK.apTzh.outTK', NULL, NULL, 'palingwinde@hotmail.com', b'1', 'en', '10937718468711987772', NULL, 'anonymousUser', '2018-08-18 10:48:34', NULL, 'admin', '2018-08-18 10:51:28'),
(25, 'salap', '$2a$10$rIT4r5rpPSTNTIbV8Y32FOTJcFtSGbCkph.IQs6wHUL6JGzgSkA9G', NULL, NULL, 'sala_pgo@yahoo.fr', b'1', 'en', '33010365563126880904', NULL, 'anonymousUser', '2018-08-18 10:50:23', NULL, 'admin', '2018-08-18 10:52:42'),
(26, 'zoewindbem', '$2a$10$QvZ.hUsdZVOiBuIBVzjQ8ukiS9ayuWDNor78sE/RxpM2U5hHXVxOe', NULL, NULL, 'zoewind73@yahoo.fr', b'1', 'en', '24232963241556391418', NULL, 'anonymousUser', '2018-08-18 10:51:32', NULL, 'admin', '2018-08-18 10:52:40'),
(27, 'filbert', '$2a$10$XutJ0hzlYOTPoQS.UdlNk.1iKWLXcXJezseXuZIFhHEdAjRoIEHia', NULL, NULL, 'ofsaa95@yahoo.fr', b'1', 'en', '95992917522884310351', NULL, 'anonymousUser', '2018-08-18 10:54:54', NULL, 'admin', '2018-08-18 10:59:08'),
(28, 'mahamoudou64', '$2a$10$Y6GjZpusFPsKvzSHHqvaMeGEZYVOHxtBeDQWPD1XyBoO.NRkz/v5m', NULL, NULL, 'mahsaw2002@yahoo.com', b'1', 'en', '99031712811011600281', NULL, 'anonymousUser', '2018-08-18 11:02:21', NULL, 'admin', '2018-08-18 11:53:32'),
(30, 'sacrum', '$2a$10$ilTn.mCr.b1oz7eZOjynqOc5g.NYsWNKC1JTCLRK6B0AgLYclJZ2y', NULL, NULL, 'sacrosbonk@gmail.com', b'1', 'en', '26913160772629009411', '36988533403867421631', 'anonymousUser', '2018-08-18 11:03:05', '2018-09-17 11:37:32', 'anonymousUser', '2018-09-17 11:37:32'),
(33, 'wamregmaki', '$2a$10$BmU/8x451JoTFvYLJh0pWuOjqWPzfJfJgw8tFSNPmeOXMfR6cSUy.', NULL, NULL, 'nabyourehipo@yahoo.fr', b'1', 'en', '98903415216057974712', NULL, 'anonymousUser', '2018-09-18 10:56:23', NULL, 'patoguirma1979', '2018-09-18 10:57:44');

-- --------------------------------------------------------

--
-- Structure de la table `jhi_user_authority`
--

CREATE TABLE `jhi_user_authority` (
  `user_id` bigint(20) NOT NULL,
  `authority_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jhi_user_authority`
--

INSERT INTO `jhi_user_authority` (`user_id`, `authority_name`) VALUES
(1, 'ROLE_ADMIN'),
(1, 'ROLE_USER'),
(3, 'ROLE_ADMIN'),
(3, 'ROLE_USER'),
(4, 'ROLE_USER'),
(5, 'ROLE_ADBAF'),
(5, 'ROLE_USER'),
(6, 'ROLE_RDBAF'),
(6, 'ROLE_USER'),
(7, 'ROLE_ARAB'),
(7, 'ROLE_USER'),
(8, 'ROLE_RRAB'),
(8, 'ROLE_USER'),
(10, 'ROLE_SECR'),
(10, 'ROLE_USER'),
(13, 'ROLE_SECR'),
(13, 'ROLE_USER'),
(14, 'ROLE_ADBAF'),
(14, 'ROLE_USER'),
(15, 'ROLE_ADBAF'),
(15, 'ROLE_USER'),
(16, 'ROLE_ADBAF'),
(16, 'ROLE_USER'),
(17, 'ROLE_ADBAF'),
(17, 'ROLE_USER'),
(18, 'ROLE_SECR'),
(18, 'ROLE_USER'),
(19, 'ROLE_SECR'),
(19, 'ROLE_USER'),
(20, 'ROLE_SECR'),
(20, 'ROLE_USER'),
(21, 'ROLE_RDBAF'),
(21, 'ROLE_USER'),
(22, 'ROLE_ADMIN'),
(22, 'ROLE_USER'),
(23, 'ROLE_SECR'),
(23, 'ROLE_USER'),
(24, 'ROLE_ADMIN'),
(24, 'ROLE_USER'),
(25, 'ROLE_ARAB'),
(25, 'ROLE_USER'),
(26, 'ROLE_ARAB'),
(26, 'ROLE_USER'),
(27, 'ROLE_ARAB'),
(27, 'ROLE_USER'),
(28, 'ROLE_ADBAF'),
(28, 'ROLE_USER'),
(30, 'ROLE_ADBAF'),
(30, 'ROLE_USER'),
(33, 'ROLE_ADBAF');

-- --------------------------------------------------------

--
-- Structure de la table `mode_paiement`
--

CREATE TABLE `mode_paiement` (
  `id` bigint(20) NOT NULL,
  `libelle_mode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mode_paiement`
--

INSERT INTO `mode_paiement` (`id`, `libelle_mode`) VALUES
(1, 'Virement'),
(2, 'Espèce'),
(3, 'Chèque');

-- --------------------------------------------------------

--
-- Structure de la table `mois`
--

CREATE TABLE `mois` (
  `id` int(11) NOT NULL,
  `libelle_mois` varchar(10) NOT NULL,
  `ordre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mois`
--

INSERT INTO `mois` (`id`, `libelle_mois`, `ordre`) VALUES
(1, 'Octobre', 1),
(2, 'Novembre', 2),
(6, 'Decembre', 3),
(9, 'Janvier', 4),
(10, 'Fevrier', 5),
(11, 'Mars', 6),
(12, 'Avril', 7),
(13, 'Mai', 8),
(14, 'Juin', 9);

-- --------------------------------------------------------

--
-- Structure de la table `mouvement`
--

CREATE TABLE `mouvement` (
  `id` int(11) NOT NULL,
  `date_mouvement` date NOT NULL,
  `type_mouvement` varchar(20) NOT NULL,
  `universite_id` bigint(20) DEFAULT NULL,
  `structure_universite_id` int(11) DEFAULT NULL,
  `motif` varchar(255) NOT NULL,
  `boursier_id` int(11) NOT NULL,
  `last_modified_by` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `last_modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `statut` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `nature_bourse`
--

CREATE TABLE `nature_bourse` (
  `id` bigint(20) NOT NULL,
  `libelle_nature` varchar(255) NOT NULL,
  `duree` int(11) NOT NULL,
  `coefficient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `nature_bourse`
--

INSERT INTO `nature_bourse` (`id`, `libelle_nature`, `duree`, `coefficient`) VALUES
(1, 'Entière', 0, 1),
(2, 'Demie', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `niveau_etude`
--

CREATE TABLE `niveau_etude` (
  `id` bigint(20) NOT NULL,
  `libelle_niveau` varchar(255) DEFAULT NULL,
  `cycle_id` bigint(20) NOT NULL,
  `ordre` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau_etude`
--

INSERT INTO `niveau_etude` (`id`, `libelle_niveau`, `cycle_id`, `ordre`) VALUES
(1, 'Licence 1', 1, 1),
(2, 'Licence 2', 1, 2),
(3, 'Licence 3', 1, 3),
(4, 'BAC', 4, 1),
(5, 'Type A', 1, 1),
(6, 'Type B', 1, 2),
(7, 'Master 1', 2, 4),
(8, 'Master 2', 2, 5),
(9, 'Doctorat 1', 3, 6),
(10, 'Doctorat 2', 3, 7),
(11, 'Doctorat 3', 3, 8);

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id` bigint(20) NOT NULL,
  `etat` int(11) DEFAULT NULL,
  `boursier_id` bigint(20) DEFAULT NULL,
  `bordereau_id` bigint(20) DEFAULT NULL,
  `traitement_id` bigint(20) DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `annee_academique_id` bigint(20) DEFAULT NULL,
  `net_a_payer` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `parametre_sys`
--

CREATE TABLE `parametre_sys` (
  `id` bigint(20) NOT NULL,
  `entete` varchar(255) DEFAULT NULL,
  `bas` varchar(255) DEFAULT NULL,
  `numerocourrier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parametre_sys`
--

INSERT INTO `parametre_sys` (`id`, `entete`, `bas`, `numerocourrier`) VALUES
(5, 'MINISTERE DE L\'ENSEIGNEMENT SUPERIEUR,\n DE LA RECHERCHE SCIENTIFIQUE ET DE L\'INNOVATION\n------------------------\nSECRETARIAT GENERAL\n------------------------\nCENTRE NATIONAL DE L\'INFORMATION, DE L\'ORIENTATION SCOLAIRE\n ET PROFESSIONNELLE, ET DES BOURSES', '', 'MESRI/SG/CIOSPB/DBAF');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` bigint(20) NOT NULL,
  `nom_pays` varchar(255) NOT NULL,
  `zone_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `nom_pays`, `zone_id`) VALUES
(1, 'BURKINA FASO', 1),
(2, 'CUBA', 3),
(3, 'MALI', 1),
(4, 'NIGERIA', 1),
(5, 'TUNISIE', 1),
(6, 'MAROC', 1),
(7, 'ALGERIE', 1),
(8, 'CANADA', 3),
(9, 'COTE D\'IVOIRE', 1),
(10, 'TOGO', 1),
(11, 'SENEGAL', 1),
(12, 'CAMEROUN', 1),
(13, 'FRANCE', 2),
(14, 'BENIN', 1),
(15, 'NIGER', 1),
(16, 'TURQUIE', 2),
(17, 'BELGIQUE', 2),
(18, 'GABON', 1),
(19, 'ETATS UNIS D\'AMERIQUE (USA)', 3),
(20, 'INDE', 5);

-- --------------------------------------------------------

--
-- Structure de la table `piece_attribution`
--

CREATE TABLE `piece_attribution` (
  `id` bigint(20) NOT NULL,
  `libelle_piece` varchar(255) NOT NULL,
  `nombre` int(11) DEFAULT NULL,
  `type_piece_id` bigint(20) DEFAULT NULL,
  `attribution_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `piece_dossier`
--

CREATE TABLE `piece_dossier` (
  `id` bigint(20) NOT NULL,
  `nombre` int(11) DEFAULT NULL,
  `dossier_id` bigint(20) NOT NULL,
  `type_piece_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `signataire`
--

CREATE TABLE `signataire` (
  `id` bigint(20) NOT NULL,
  `nomsignataire` varchar(255) NOT NULL,
  `civilite` varchar(255) NOT NULL,
  `distinction` varchar(255) DEFAULT NULL,
  `fonction_id` bigint(20) DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `signataire`
--

INSERT INTO `signataire` (`id`, `nomsignataire`, `civilite`, `distinction`, `fonction_id`, `actif`) VALUES
(3, 'Dre Lydia ROUAMBA', 'Mme', 'Chevalier de l\'ordre de l\'EtalonChevalier de l\'ordre de l\'Etalon', 4, b'1'),
(5, 'Félix KABRE', 'MR', NULL, 2, b'1'),
(6, 'Pr Tindaogo Valléan', 'MR', 'Chevalier des Palmes académiques', 3, b'1');

-- --------------------------------------------------------

--
-- Structure de la table `structure_universite`
--

CREATE TABLE `structure_universite` (
  `id` bigint(20) NOT NULL,
  `nom_structure` varchar(255) NOT NULL,
  `universite_id` bigint(20) DEFAULT NULL,
  `lettre` varchar(10) DEFAULT NULL,
  `derniernumero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `structure_universite`
--

INSERT INTO `structure_universite` (`id`, `nom_structure`, `universite_id`, `lettre`, `derniernumero`) VALUES
(1, 'UFR /Science de la Santé (UFR/SDS)', 1, '00D', NULL),
(2, 'CUBA', 3, '02U', NULL),
(3, 'Université de carthage', 4, '01U', NULL),
(4, 'Université d\'Abidjan', 5, '01I', NULL),
(5, 'Institut Burkinabé des Arts et Métiers (IBAM)', 1, '00B', NULL),
(6, 'UFR SEG', 2, '00D', NULL),
(7, 'Unité de Formation et de Recherche/Lettres, Arts et Communication (UFR/LAC)', 1, '00A', 100),
(8, 'Lycées et collèges', 6, '0', NULL),
(9, 'Unité de Formation et de Recherche/Science de la Vie et de la Terre (UFR/SVT)', 1, '00V', NULL),
(10, 'Unité de Formation et de Recherche/Sciences Exactes et Appliquées (UFR/SEA)', 1, '00E', NULL),
(11, 'Unité de Formation et de Recherche en Siences Humaines (UFR/SH)', 1, '00H', NULL),
(13, 'IUT', 18, '00T', NULL),
(14, 'Sciences Juridiques et Politiques', 18, '00Q', NULL),
(15, 'Sciences Juridique et Politique', 2, '00J', NULL),
(16, 'Sciences Economique et  Gestion', 18, '00Q', NULL),
(17, 'Aube Nouvelle', 17, '00P', NULL),
(18, 'IPERMIC', 1, '00P', NULL),
(19, 'Ecole Supérieure d\'Informatique ESI', 18, '00I', NULL),
(20, 'Sciences Biologiques', 18, '00F', NULL),
(21, 'Sciences  et techniques', 18, '00C', NULL),
(22, 'Institut National des Sciences de la Santé', 18, '00K', NULL),
(23, 'Institut Africain de Management', 31, '00P', NULL),
(24, 'Institut du Dévéloppement Rural IDR', 18, '00R', NULL),
(25, 'Université Privé de Ouagadougou', 32, '00P', NULL),
(26, 'Lettre et Sciences Humaines', 18, '00X', NULL),
(27, 'EISMV', 9, '01S', NULL),
(28, 'Unité de Formation et de Recherche en Lettres et Sciences Humaines UFR/LSH', 13, '00L', NULL),
(29, 'Institut Universitaire de Technologie (IUT)', 13, '00N', NULL),
(30, 'Unité de Formation et de Recherche en Sciences Economiques et de Gestion (UFR/SEG)', 13, '00M', NULL),
(31, 'Unité de Formation et de Recherche en Sciences et Techniques (UFR/ST)', 13, '00S', NULL),
(32, 'Ingénierie des sciences informatiques (ISI)', 49, 'Iconnue', NULL),
(33, 'Ingénierie des Sciences de l’Informatique (ISI) et la Technologie de Virtualisation', 49, 'Iconnue', NULL),
(34, 'Ingénierie des Sciences de l’Informatique, Technologie  et sécurité de l\'information', 49, 'Iconnue', NULL),
(35, 'Électronique avec spécialisation en robotique et applications', 49, 'Inconnue', NULL),
(36, 'Licence  en Applications Informatiques (AI)', 49, 'Iconnue', NULL),
(37, 'Licence en applications informatiques (génie logiciel)', 49, 'Iconnue', NULL),
(38, 'Électrotechnique et génie électronique (EE)', 49, 'Inconnue', NULL),
(39, 'Génie électronique et  communication (GEC)', 49, 'Inconnue', NULL),
(40, 'Génie électrique (EE)', 49, 'Inconnue', NULL),
(41, 'Génie mécanique (GM)', 49, 'Inconnue', NULL),
(42, 'Génie Mécanique, Spécialisation en automobile', 49, 'Inconnue', NULL),
(43, 'Génie Mécanique Spécialisation en mécatronique', 49, 'Iconnue', NULL),
(44, 'Génie civil (GC)', 49, 'Iconnue', NULL),
(45, 'Économie appliquée', 49, 'Iconnue', NULL),
(46, 'Entrepreneuriat', 49, 'Inconnue', NULL),
(47, 'Affaires internationales', 49, 'Inconnue', NULL),
(48, 'Architecture', 49, 'Iconnue', NULL),
(49, 'Comptabilité et Finances Internationales', 49, 'Inconnue', NULL),
(50, 'Finances et Comptabilité', 49, 'Inconnue', NULL),
(51, 'Banque et Finance', 49, 'Inconnue', NULL),
(52, 'Marketing', 49, 'Inconnue', NULL),
(53, 'Journalisme et communication de masse', 49, 'Inconnue', NULL),
(54, 'Design d\'intérieur', 49, 'Inconnue', NULL),
(55, 'Design industriel et de produit', 49, 'Inconnue', NULL),
(56, 'Design de mode', 49, 'Inconnue', NULL),
(57, 'Conception numérique et communication', 49, 'Inconnue', NULL),
(58, 'Conception de jeux', 49, 'Inconnue', NULL),
(59, 'Arts visuels', 49, 'Inconnue', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

CREATE TABLE `traitement` (
  `id` bigint(20) NOT NULL,
  `statut` bit(1) DEFAULT NULL,
  `document` text DEFAULT NULL,
  `annee_academique_id` bigint(20) DEFAULT NULL,
  `date_traitement` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `boursier_id` bigint(20) DEFAULT NULL,
  `universite_id` bigint(20) DEFAULT NULL,
  `debut_periode` int(11) DEFAULT NULL,
  `fin_periode` int(11) DEFAULT NULL,
  `nombre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `type_ajustement`
--

CREATE TABLE `type_ajustement` (
  `id` bigint(20) NOT NULL,
  `libelle_ajustement` varchar(255) NOT NULL,
  `sens` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_ajustement`
--

INSERT INTO `type_ajustement` (`id`, `libelle_ajustement`, `sens`) VALUES
(1, 'Moins perçu', 'GAIN'),
(2, 'Trop perçu', 'RETENUE');

-- --------------------------------------------------------

--
-- Structure de la table `type_attribution`
--

CREATE TABLE `type_attribution` (
  `id` bigint(20) NOT NULL,
  `libelle_attribution` varchar(255) NOT NULL,
  `code_attribution` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_attribution`
--

INSERT INTO `type_attribution` (`id`, `libelle_attribution`, `code_attribution`) VALUES
(1, 'Nouvelle attribution', 'NAT'),
(2, 'Renouvellement', 'REN'),
(3, 'Transfert de bourse', 'TRB'),
(4, 'Réorientation', 'ROR');

-- --------------------------------------------------------

--
-- Structure de la table `type_bourse`
--

CREATE TABLE `type_bourse` (
  `id` bigint(20) NOT NULL,
  `libelle_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_bourse`
--

INSERT INTO `type_bourse` (`id`, `libelle_type`) VALUES
(1, 'Bourse Indienne'),
(5, 'Tunisienne'),
(7, 'Cubaine'),
(8, 'Marocaine'),
(9, 'Turque'),
(10, 'Nationnale');

-- --------------------------------------------------------

--
-- Structure de la table `type_dossier`
--

CREATE TABLE `type_dossier` (
  `id` bigint(20) NOT NULL,
  `libelle_type_dossier` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_date` timestamp NULL DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_dossier`
--

INSERT INTO `type_dossier` (`id`, `libelle_type_dossier`, `modified_by`, `created_by`, `modified_date`, `created_date`) VALUES
(1, 'Nouvelle Attribution', 'admin', 'admin', '2016-10-26 08:40:35', '2016-10-26 08:40:35'),
(2, 'Renouvellement', 'admin', 'admin', '2016-10-26 21:21:22', '2016-10-26 21:21:22');

-- --------------------------------------------------------

--
-- Structure de la table `type_element_bourse`
--

CREATE TABLE `type_element_bourse` (
  `id` bigint(20) NOT NULL,
  `code_element` varchar(255) NOT NULL,
  `libelle_element` varchar(255) NOT NULL,
  `periodicite` varchar(255) DEFAULT NULL,
  `etat_element` bit(1) DEFAULT NULL,
  `coef_applicable` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_element_bourse`
--

INSERT INTO `type_element_bourse` (`id`, `code_element`, `libelle_element`, `periodicite`, `etat_element`, `coef_applicable`) VALUES
(1, 'PEC', 'PECULE', 'MENSUEL', b'1', b'1'),
(2, 'FT', 'Frais de matériel pédagogique', 'PONCTUEL', b'1', b'0'),
(3, 'FM', 'frais médicaux', 'PONCTUEL', b'1', b'0'),
(4, 'IPE', 'Indemnité de premier Equipement', 'DUREEBOURSE', b'1', b'0'),
(5, 'IAT', 'Indemnité annuelle de Trousseau', 'ANNUEL', b'1', b'0'),
(6, 'FF', 'Frais de formation', 'PONCTUEL', b'1', b'0'),
(7, 'FTD', 'Frais de trousse dentaire', 'PONCTUEL', b'1', b'0'),
(8, 'IS', 'Indemnités de stage obligatoire', 'PONCTUEL', b'1', b'0'),
(9, 'FI', 'Frais d\'impression', 'PONCTUEL', b'1', b'0');

-- --------------------------------------------------------

--
-- Structure de la table `type_piece`
--

CREATE TABLE `type_piece` (
  `id` bigint(20) NOT NULL,
  `libelle_type_piece` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `universite`
--

CREATE TABLE `universite` (
  `id` bigint(20) NOT NULL,
  `nom_universite` varchar(255) DEFAULT NULL,
  `ville_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `universite`
--

INSERT INTO `universite` (`id`, `nom_universite`, `ville_id`) VALUES
(1, 'Université de Ouagadougou I Pr Joseph Ki ZERBO', 1),
(2, 'Université de Ouaga 2', 1),
(3, 'Université CUBA', 2),
(4, 'Université de CARTHAGE', 3),
(5, 'Université Felix Houphouet Boigny', 5),
(6, 'Lycées et collèges', 1),
(7, 'Université Ben Hamouda', 6),
(8, 'Campus de Rabat', 4),
(9, 'EISMV', 7),
(10, 'Université de Dédougou', 8),
(12, 'Université de Ouahigouya', 9),
(13, 'Université Norbert ZONGO', 12),
(14, 'Université de Fada N\'gourma', 11),
(15, 'Centre Universitaire de Gaoua', 14),
(16, 'Centre Universitaire Polytechnique de Kaya', 13),
(17, 'Aube Nouvelle', 1),
(18, 'Université Nazi BONI', 15),
(19, 'Centre Universitaire Polytechnique de Tenkodogo', 20),
(20, 'USTA', 1),
(21, 'Centre Universitaire Polytechnique de Manga', 18),
(22, 'Centre Universitaire Polytecthnique de Banfora', 19),
(23, 'Centre Universitaire Polytechnique de Ziniaré', 17),
(24, 'Centre Universitaire Polytecthnique de Gaoua', 14),
(25, 'Aube Nouvelle', 1),
(26, 'UCAO', 15),
(27, 'Ecole Supérieure Polytechnique de Kaya (ESPK)', 13),
(28, 'ISPP', 1),
(29, 'Institut des Arts et des Métiers (IAM)', 1),
(30, 'IST', 1),
(31, 'Institut Africaine de Management', 1),
(32, 'Université Privé de Ouagadougou', 1),
(33, 'Ecole Nationale des Statistiques et de l\'Analyse Economique (ENSAE)', 7),
(34, 'Institut Sous-régional de Statistiques et d\'Economie (ISSEA)', 23),
(35, 'Ecole Nationale Nationale Supérieur de l\'Economie Appliquée (ENSEA)', 22),
(36, 'Institut de Formation et de Recherche Démographiques (IFORD)', 23),
(37, 'Ecole Supérieure de Génie Civil VERECHAGUINE A. K. (ESGC-VAK)', 24),
(38, 'Ecole Africaine des Métiers de l\'Architecture et de l\'Uurbanisme (EAMAU)', 25),
(39, 'Ecole Supérieure des Techniques Avancées (ESTA)', 1),
(40, 'Université de Thiès', 7),
(41, 'Ecole Polytechnique de Thiès', 7),
(42, 'Université Internationale de Tunis (UIT)', 3),
(43, 'Ecole Marocaine d\'Ingénierie EMG', 4),
(44, 'Université Monplaisir de Tunis', 3),
(45, 'Centre Africain d’Etudes supérieures en Gestion (CESAG)', 7),
(46, 'Université Cheick Anta Diop de Dakar (UCAD)', 7),
(47, 'Université de Yaoudé 1', 23),
(48, 'ELPIS Group International Foundation', NULL),
(49, 'Godavari Institute of Engineering and Technology', 26);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `view_boursier`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `view_boursier` (
`bours_id` bigint(20)
,`bourse_id` bigint(20)
,`cand_id` bigint(20)
,`nom_etudiant` varchar(255)
,`prenom_etudiant` varchar(255)
,`sexe` varchar(255)
,`date_naiss_etudiant` timestamp
,`etat` varchar(250)
,`annee_academique_id` bigint(20)
,`type_attribution_id` bigint(20)
,`nature_bourse_id` bigint(20)
);

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id` bigint(20) NOT NULL,
  `nom_ville` varchar(255) NOT NULL,
  `pays_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `nom_ville`, `pays_id`) VALUES
(1, 'Ouagadougou', 1),
(2, 'Havane', 2),
(3, 'Tunis', 5),
(4, 'Casablanca', 6),
(5, 'Abidjan', 9),
(6, 'Alger', 7),
(7, 'Dakar', 11),
(8, 'dédougou', 1),
(9, 'Ouahigouya', 1),
(11, 'Fada', 1),
(12, 'Koudougou', 1),
(13, 'Kaya', 1),
(14, 'Gaoua', 1),
(15, 'Bobo -Dioulasso', 1),
(16, 'Dori', 1),
(17, 'ziniaré', 1),
(18, 'Manga', 1),
(19, 'Banfora', 1),
(20, 'Tenkodogo', 1),
(21, 'Dori', 1),
(22, 'Abidjan', 9),
(23, 'Yaoundé', 12),
(24, 'Cotonou', 14),
(25, 'Lomé', 10),
(26, 'Rajahmundry, Andhra Pradesh', 20);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_paiement`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_paiement` (
`paiement_id` bigint(20)
,`CODE` varchar(255)
,`MONTANT` double
,`NOMBRE` bigint(21)
,`LIBELLE` varchar(255)
,`annee_academique_id` bigint(20)
,`boursier_id` bigint(20)
,`sens` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure de la table `zone`
--

CREATE TABLE `zone` (
  `id` bigint(20) NOT NULL,
  `nom_zone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `zone`
--

INSERT INTO `zone` (`id`, `nom_zone`) VALUES
(1, 'AFRIQUE'),
(2, 'EUROPE'),
(3, 'AMERIQUE'),
(4, 'BURKINA FASO'),
(5, 'ASIE');

-- --------------------------------------------------------

--
-- Structure de la vue `view_boursier`
--
DROP TABLE IF EXISTS `view_boursier`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_boursier`  AS  select `bours`.`id` AS `bours_id`,`bours`.`bourse_id` AS `bourse_id`,`cand`.`id` AS `cand_id`,`cand`.`nom_etudiant` AS `nom_etudiant`,`cand`.`prenom_etudiant` AS `prenom_etudiant`,`cand`.`sexe` AS `sexe`,`cand`.`date_naiss_etudiant` AS `date_naiss_etudiant`,`bours`.`etat` AS `etat`,`atr`.`annee_academique_id` AS `annee_academique_id`,`atr`.`type_attribution_id` AS `type_attribution_id`,`atr`.`nature_bourse_id` AS `nature_bourse_id` from ((`candidat` `cand` join `boursier` `bours`) join `attribution` `atr`) where `bours`.`id` = `cand`.`devient_id` and `atr`.`boursier_id` = `bours`.`id` and `cand`.`id` = `atr`.`candidat_id` ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_paiement`
--
DROP TABLE IF EXISTS `v_paiement`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_paiement`  AS  select `ep`.`paiement_id` AS `paiement_id`,`tb`.`code_element` AS `CODE`,sum(`ep`.`montant`) AS `MONTANT`,count(`ep`.`paiement_id`) AS `NOMBRE`,`tb`.`libelle_element` AS `LIBELLE`,`paie`.`annee_academique_id` AS `annee_academique_id`,`ep`.`boursier_id` AS `boursier_id`,'GAIN' AS `sens` from (((`element_paiement` `ep` join `element_bourse` `eb`) join `type_element_bourse` `tb`) join `paiement` `paie`) where `eb`.`id` = `ep`.`element_bourse_id` and `eb`.`type_element_bourse_id` = `tb`.`id` and `paie`.`id` = `ep`.`paiement_id` group by `ep`.`paiement_id`,`ep`.`element_bourse_id`,`tb`.`code_element`,`tb`.`libelle_element`,`paie`.`annee_academique_id`,`ep`.`boursier_id`,'GAIN' union select `ep`.`paiement_id` AS `paiement_id`,'AJ' AS `CODE`,sum(`ep`.`montant`) AS `MONTANT`,count(`ep`.`paiement_id`) AS `NOMBRE`,`tpa`.`libelle_ajustement` AS `LIBELLE`,`paie`.`annee_academique_id` AS `annee_academique_id`,`paie`.`boursier_id` AS `boursier_id`,`tpa`.`sens` AS `sens` from (((`element_paiement` `ep` join `ajustement` `aj`) join `type_ajustement` `tpa`) join `paiement` `paie`) where `ep`.`ajustement_id` = `aj`.`id` and `aj`.`type_ajustement_id` = `tpa`.`id` and `ep`.`paiement_id` = `paie`.`id` group by `ep`.`paiement_id`,`tpa`.`libelle_ajustement`,`paie`.`annee_academique_id`,`paie`.`boursier_id`,'AJ',`tpa`.`sens` ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ajustement`
--
ALTER TABLE `ajustement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `alerte`
--
ALTER TABLE `alerte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `annee_academique`
--
ALTER TABLE `annee_academique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `attestation`
--
ALTER TABLE `attestation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `attribution`
--
ALTER TABLE `attribution`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `banque`
--
ALTER TABLE `banque`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bordereau`
--
ALTER TABLE `bordereau`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bourse`
--
ALTER TABLE `bourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bourse_type_bourse_id` (`type_bourse_id`),
  ADD KEY `fk_bourse_cycle_id` (`cycle_id`),
  ADD KEY `fk_bourse_zone_id` (`zone_id`),
  ADD KEY `fk_bourse_pays_id` (`pays_id`),
  ADD KEY `fk_bourse_nature_bourse_id` (`nature_bourse_id`);

--
-- Index pour la table `boursier`
--
ALTER TABLE `boursier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_boursier_bourse_id` (`bourse_id`);

--
-- Index pour la table `candidat`
--
ALTER TABLE `candidat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `devient_id` (`devient_id`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_compte_boursier_id` (`boursier_id`),
  ADD KEY `fk_compte_mode_paiement_id` (`mode_paiement_id`),
  ADD KEY `fk_compte_banque_id` (`banque_id`);

--
-- Index pour la table `cycle`
--
ALTER TABLE `cycle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `databasechangeloglock`
--
ALTER TABLE `databasechangeloglock`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `document_signataire`
--
ALTER TABLE `document_signataire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossier`
--
ALTER TABLE `dossier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dossier_candidat_id` (`candidat_id`),
  ADD KEY `fk_dossier_bourse_id` (`bourse_id`),
  ADD KEY `fk_dossier_annee_academique_id` (`annee_academique_id`),
  ADD KEY `fk_dossier_type_dossier_id` (`type_dossier_id`),
  ADD KEY `fk_niveau_etude_dossier_id` (`niveau_etude_id`),
  ADD KEY `fk_structure_universite_dossier_id` (`structure_universite_id`),
  ADD KEY `fk_universite_dossier_id` (`universite_id`),
  ADD KEY `fk_structure_universiteorigine_dossier_id` (`universiteorigine_id`),
  ADD KEY `fk_structureorigine_dossier_id` (`structureorigine_id`),
  ADD KEY `fk_filiere_dossier_id` (`filiere_id`),
  ADD KEY `fk_niveau_etudeacc_dossier_id` (`niveau_etudeacc_id`),
  ADD KEY `fk_filiereacc_dossier_id` (`filiereacc_id`);

--
-- Index pour la table `element_bourse`
--
ALTER TABLE `element_bourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_element_bourse_niveau_etude_id` (`niveau_etude_id`),
  ADD KEY `fk_element_bourse_bourse_id` (`bourse_id`),
  ADD KEY `fk_element_bourse_type_element_bourse_id` (`type_element_bourse_id`);

--
-- Index pour la table `element_paiement`
--
ALTER TABLE `element_paiement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_element_paiement_paiement_id` (`paiement_id`);

--
-- Index pour la table `essai`
--
ALTER TABLE `essai`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jhi_authority`
--
ALTER TABLE `jhi_authority`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jhi_persistent_audit_event`
--
ALTER TABLE `jhi_persistent_audit_event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `idx_persistent_audit_event` (`principal`,`event_date`);

--
-- Index pour la table `jhi_persistent_audit_evt_data`
--
ALTER TABLE `jhi_persistent_audit_evt_data`
  ADD PRIMARY KEY (`event_id`,`name`),
  ADD KEY `idx_persistent_audit_evt_data` (`event_id`);

--
-- Index pour la table `jhi_persistent_token`
--
ALTER TABLE `jhi_persistent_token`
  ADD PRIMARY KEY (`series`),
  ADD KEY `fk_user_persistent_token` (`user_id`);

--
-- Index pour la table `jhi_user`
--
ALTER TABLE `jhi_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `idx_user_login` (`login`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `idx_user_email` (`email`);

--
-- Index pour la table `jhi_user_authority`
--
ALTER TABLE `jhi_user_authority`
  ADD PRIMARY KEY (`user_id`,`authority_name`),
  ADD KEY `fk_authority_name` (`authority_name`);

--
-- Index pour la table `mode_paiement`
--
ALTER TABLE `mode_paiement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mois`
--
ALTER TABLE `mois`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mouvement`
--
ALTER TABLE `mouvement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nature_bourse`
--
ALTER TABLE `nature_bourse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `niveau_etude`
--
ALTER TABLE `niveau_etude`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_paiement_boursier_id` (`boursier_id`),
  ADD KEY `fk_paiement_traitement_id` (`traitement_id`);

--
-- Index pour la table `parametre_sys`
--
ALTER TABLE `parametre_sys`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pays_zone_id` (`zone_id`);

--
-- Index pour la table `piece_attribution`
--
ALTER TABLE `piece_attribution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_piece_attribution_type_piece_id` (`type_piece_id`),
  ADD KEY `fk_piece_attribution_attribution_id` (`attribution_id`);

--
-- Index pour la table `piece_dossier`
--
ALTER TABLE `piece_dossier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_piece_dossier_dossier_id` (`dossier_id`);

--
-- Index pour la table `signataire`
--
ALTER TABLE `signataire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `structure_universite`
--
ALTER TABLE `structure_universite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_structure_universite_universite_id` (`universite_id`);

--
-- Index pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_ajustement`
--
ALTER TABLE `type_ajustement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_attribution`
--
ALTER TABLE `type_attribution`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_bourse`
--
ALTER TABLE `type_bourse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_dossier`
--
ALTER TABLE `type_dossier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_element_bourse`
--
ALTER TABLE `type_element_bourse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_piece`
--
ALTER TABLE `type_piece`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `universite`
--
ALTER TABLE `universite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_universite_ville_id` (`ville_id`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ville_pays_id` (`pays_id`);

--
-- Index pour la table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ajustement`
--
ALTER TABLE `ajustement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `alerte`
--
ALTER TABLE `alerte`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4359;

--
-- AUTO_INCREMENT pour la table `annee_academique`
--
ALTER TABLE `annee_academique`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `attestation`
--
ALTER TABLE `attestation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `attribution`
--
ALTER TABLE `attribution`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `banque`
--
ALTER TABLE `banque`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `bordereau`
--
ALTER TABLE `bordereau`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bourse`
--
ALTER TABLE `bourse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `boursier`
--
ALTER TABLE `boursier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `candidat`
--
ALTER TABLE `candidat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3184;

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `cycle`
--
ALTER TABLE `cycle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `document_signataire`
--
ALTER TABLE `document_signataire`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `dossier`
--
ALTER TABLE `dossier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3168;

--
-- AUTO_INCREMENT pour la table `element_bourse`
--
ALTER TABLE `element_bourse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `element_paiement`
--
ALTER TABLE `element_paiement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `essai`
--
ALTER TABLE `essai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT pour la table `fonction`
--
ALTER TABLE `fonction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jhi_persistent_audit_event`
--
ALTER TABLE `jhi_persistent_audit_event`
  MODIFY `event_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT pour la table `jhi_user`
--
ALTER TABLE `jhi_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `mode_paiement`
--
ALTER TABLE `mode_paiement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `mois`
--
ALTER TABLE `mois`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `mouvement`
--
ALTER TABLE `mouvement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `nature_bourse`
--
ALTER TABLE `nature_bourse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `niveau_etude`
--
ALTER TABLE `niveau_etude`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parametre_sys`
--
ALTER TABLE `parametre_sys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `piece_attribution`
--
ALTER TABLE `piece_attribution`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `piece_dossier`
--
ALTER TABLE `piece_dossier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `signataire`
--
ALTER TABLE `signataire`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `structure_universite`
--
ALTER TABLE `structure_universite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `traitement`
--
ALTER TABLE `traitement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `type_ajustement`
--
ALTER TABLE `type_ajustement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `type_attribution`
--
ALTER TABLE `type_attribution`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `type_bourse`
--
ALTER TABLE `type_bourse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `type_dossier`
--
ALTER TABLE `type_dossier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `type_element_bourse`
--
ALTER TABLE `type_element_bourse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `type_piece`
--
ALTER TABLE `type_piece`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `universite`
--
ALTER TABLE `universite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `zone`
--
ALTER TABLE `zone`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bourse`
--
ALTER TABLE `bourse`
  ADD CONSTRAINT `fk_bourse_cycle_id` FOREIGN KEY (`cycle_id`) REFERENCES `cycle` (`id`),
  ADD CONSTRAINT `fk_bourse_nature_bourse_id` FOREIGN KEY (`nature_bourse_id`) REFERENCES `nature_bourse` (`id`),
  ADD CONSTRAINT `fk_bourse_pays_id` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`),
  ADD CONSTRAINT `fk_bourse_type_bourse_id` FOREIGN KEY (`type_bourse_id`) REFERENCES `type_bourse` (`id`),
  ADD CONSTRAINT `fk_bourse_zone_id` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`);

--
-- Contraintes pour la table `boursier`
--
ALTER TABLE `boursier`
  ADD CONSTRAINT `fk_boursier_bourse_id` FOREIGN KEY (`bourse_id`) REFERENCES `bourse` (`id`);

--
-- Contraintes pour la table `candidat`
--
ALTER TABLE `candidat`
  ADD CONSTRAINT `fk_candidat_devient_id` FOREIGN KEY (`devient_id`) REFERENCES `boursier` (`id`);

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_compte_banque_id` FOREIGN KEY (`banque_id`) REFERENCES `banque` (`id`),
  ADD CONSTRAINT `fk_compte_boursier_id` FOREIGN KEY (`boursier_id`) REFERENCES `boursier` (`id`),
  ADD CONSTRAINT `fk_compte_mode_paiement_id` FOREIGN KEY (`mode_paiement_id`) REFERENCES `mode_paiement` (`id`);

--
-- Contraintes pour la table `dossier`
--
ALTER TABLE `dossier`
  ADD CONSTRAINT `fk_dossier_annee_academique_id` FOREIGN KEY (`annee_academique_id`) REFERENCES `annee_academique` (`id`),
  ADD CONSTRAINT `fk_dossier_bourse_id` FOREIGN KEY (`bourse_id`) REFERENCES `bourse` (`id`),
  ADD CONSTRAINT `fk_dossier_candidat_id` FOREIGN KEY (`candidat_id`) REFERENCES `candidat` (`id`),
  ADD CONSTRAINT `fk_dossier_type_dossier_id` FOREIGN KEY (`type_dossier_id`) REFERENCES `type_dossier` (`id`),
  ADD CONSTRAINT `fk_filiere_dossier_id` FOREIGN KEY (`filiere_id`) REFERENCES `filiere` (`id`),
  ADD CONSTRAINT `fk_filiereacc_dossier_id` FOREIGN KEY (`filiereacc_id`) REFERENCES `filiere` (`id`),
  ADD CONSTRAINT `fk_niveau_etude_dossier_id` FOREIGN KEY (`niveau_etude_id`) REFERENCES `niveau_etude` (`id`),
  ADD CONSTRAINT `fk_niveau_etudeacc_dossier_id` FOREIGN KEY (`niveau_etudeacc_id`) REFERENCES `niveau_etude` (`id`),
  ADD CONSTRAINT `fk_structure_universite_dossier_id` FOREIGN KEY (`structure_universite_id`) REFERENCES `structure_universite` (`id`),
  ADD CONSTRAINT `fk_structure_universiteorigine_dossier_id` FOREIGN KEY (`universiteorigine_id`) REFERENCES `universite` (`id`),
  ADD CONSTRAINT `fk_structureorigine_dossier_id` FOREIGN KEY (`structureorigine_id`) REFERENCES `structure_universite` (`id`),
  ADD CONSTRAINT `fk_universite_dossier_id` FOREIGN KEY (`universite_id`) REFERENCES `universite` (`id`);

--
-- Contraintes pour la table `element_bourse`
--
ALTER TABLE `element_bourse`
  ADD CONSTRAINT `fk_element_bourse_bourse_id` FOREIGN KEY (`bourse_id`) REFERENCES `bourse` (`id`),
  ADD CONSTRAINT `fk_element_bourse_niveau_etude_id` FOREIGN KEY (`niveau_etude_id`) REFERENCES `niveau_etude` (`id`),
  ADD CONSTRAINT `fk_element_bourse_type_element_bourse_id` FOREIGN KEY (`type_element_bourse_id`) REFERENCES `type_element_bourse` (`id`);

--
-- Contraintes pour la table `element_paiement`
--
ALTER TABLE `element_paiement`
  ADD CONSTRAINT `fk_element_paiement_paiement_id` FOREIGN KEY (`paiement_id`) REFERENCES `paiement` (`id`);

--
-- Contraintes pour la table `jhi_persistent_audit_evt_data`
--
ALTER TABLE `jhi_persistent_audit_evt_data`
  ADD CONSTRAINT `fk_evt_pers_audit_evt_data` FOREIGN KEY (`event_id`) REFERENCES `jhi_persistent_audit_event` (`event_id`);

--
-- Contraintes pour la table `jhi_persistent_token`
--
ALTER TABLE `jhi_persistent_token`
  ADD CONSTRAINT `fk_user_persistent_token` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`);

--
-- Contraintes pour la table `jhi_user_authority`
--
ALTER TABLE `jhi_user_authority`
  ADD CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`),
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `fk_paiement_boursier_id` FOREIGN KEY (`boursier_id`) REFERENCES `boursier` (`id`),
  ADD CONSTRAINT `fk_paiement_traitement_id` FOREIGN KEY (`traitement_id`) REFERENCES `traitement` (`id`);

--
-- Contraintes pour la table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `fk_pays_zone_id` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`id`);

--
-- Contraintes pour la table `piece_attribution`
--
ALTER TABLE `piece_attribution`
  ADD CONSTRAINT `fk_piece_attribution_attribution_id` FOREIGN KEY (`attribution_id`) REFERENCES `attribution` (`id`),
  ADD CONSTRAINT `fk_piece_attribution_type_piece_id` FOREIGN KEY (`type_piece_id`) REFERENCES `type_piece` (`id`);

--
-- Contraintes pour la table `piece_dossier`
--
ALTER TABLE `piece_dossier`
  ADD CONSTRAINT `fk_piece_dossier_dossier_id` FOREIGN KEY (`dossier_id`) REFERENCES `dossier` (`id`);

--
-- Contraintes pour la table `structure_universite`
--
ALTER TABLE `structure_universite`
  ADD CONSTRAINT `fk_structure_universite_universite_id` FOREIGN KEY (`universite_id`) REFERENCES `universite` (`id`);

--
-- Contraintes pour la table `universite`
--
ALTER TABLE `universite`
  ADD CONSTRAINT `fk_universite_ville_id` FOREIGN KEY (`ville_id`) REFERENCES `ville` (`id`);

--
-- Contraintes pour la table `ville`
--
ALTER TABLE `ville`
  ADD CONSTRAINT `fk_ville_pays_id` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
