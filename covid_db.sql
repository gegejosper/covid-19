-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 21, 2020 at 03:39 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brgyusers`
--

CREATE TABLE `brgyusers` (
  `id` int(11) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `brgy` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_18_005717_create_patients_table', 1),
(4, '2020_03_21_061946_create_munipality_users_table', 2),
(5, '2020_03_21_070805_create_municipality_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `municipality_users`
--

CREATE TABLE `municipality_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `municipality_users`
--

INSERT INTO `municipality_users` (`id`, `user_id`, `municipality`, `created_at`, `updated_at`) VALUES
(4, '7', 'BAYOG', '2020-03-20 23:22:27', '2020-03-20 23:22:27'),
(5, '8', 'AURORA', '2020-03-21 00:50:49', '2020-03-21 00:50:49'),
(6, '9', 'RAMONMAGSAYSAY', '2020-03-21 05:44:23', '2020-03-21 05:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brgy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_exposure` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `travel_history` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symptoms` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patient_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `fname`, `lname`, `mname`, `age`, `gender`, `contact_num`, `nationality`, `address`, `brgy`, `date_exposure`, `travel_history`, `symptoms`, `patient_type`, `municipality`, `created_at`, `updated_at`) VALUES
(1, 'EMELY', 'LANGERAS', 'N/A', '26', 'F', '0909-000-0000', 'FILIPINO', 'SAPA LUBOC, AZDS', 'SAPA LUBOC', '09/03/2020', ' KUWAIT', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(2, 'RAUL', 'ESTENZO', 'R', '49', 'M', '0909-000-0001', 'FILIPINO', 'SAPA LUBOC, AZDS', 'SAPA LUBOC', '12/03/2020', ' BATANGAS', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(3, 'IRISH', 'BONTUYAN', 'N/A', '22', 'F', '0909-000-0002', 'FILIPINO', 'SAPA LUBOC, AZDS', 'SAPA LUBOC', '13/03/2020', ' PARA?AQUE', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(4, 'AIMEE', 'ARCILLA', 'N/A', '25', 'F', '0909-000-0003', 'FILIPINO', 'SAPA LUBOC, AZDS', 'SAPA LUBOC', '13/03/2020', ' PARA?AQUE', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(5, 'NIXON', 'ARIAS', 'B', '48', 'M', '0909-000-0004', 'FILIPINO', 'BALINTAWAK, AZDS', 'BALINTAWAK', '13/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(6, 'ROSITA', 'REPULLE', 'N/A', '59', 'F', '0909-000-0005', 'FILIPINO', 'BALINTAWAK, AZDS', 'BALINTAWAK', '13/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(7, 'IKE KENN', 'BAJAO', 'N/A', '26', 'M', '0909-000-0006', 'FILIPINO', 'BALINTAWAK, AZDS', 'BALINTAWAK', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(8, 'VERGIE', 'CANTILA', 'N/A', '50', 'F', '0909-000-0007', 'FILIPINO', 'BAKI, AZDS', 'BAKI', '14/03/2020', 'ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(9, 'JENNY', 'VILLARIZA', 'N/A', '42', 'F', '0909-000-0008', 'FILIPINO', 'BAKI, AZDS', 'BAKI', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(10, 'JADE', 'VALLEJO', 'F', '37', 'M', '0909-000-0009', 'FILIPINO', 'SAN JUAN, AZDS', 'SAN JUAN', '16/03/2020', 'MANILA-BOHOL-CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(11, 'JOSHIEN AIFE', 'DURENS', 'N/A', '21', 'F', '0909-000-0010', 'FILIPINO', 'LANTUNGAN, AZDS', 'LANTUNGAN', '11/03/2020', 'MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(12, 'AR-KACHRINE', 'GERUNDIO', 'N/A', '21', 'F', '0909-000-0011', 'FILIPINO', 'LANTUNGAN, AZDS', 'LANTUNGAN', '16/03/2020', 'CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(13, 'BABY JEAN', 'ORO', 'M', '18', 'F', '0909-000-0012', 'FILIPINO', 'COMMONWEALTH, AZDS', 'COMMONWEALTH', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(14, 'MYZEL', 'LUNA', 'N/A', '40', 'F', '0909-000-0013', 'FILIPINO', 'COMMONWEALTH, AZDS', 'COMMONWEALTH', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(15, 'CHRISTOPHER', 'ORILLE', 'N/A', '52', 'M', '0909-000-0014', 'FILIPINO', 'COMMONWEALTH, AZDS', 'COMMONWEALTH', '14/03/2020', 'DAVAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(16, 'GHEVE', 'ARCONADO', 'N/A', '32', 'F', '0909-000-0015', 'FILIPINO', 'COMMONWEALTH, AZDS', 'COMMONWEALTH', '14/03/2020', ' QUEZON CITY', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(17, 'OLIVER', 'VELASCO', 'N/A', '37', 'M', '0909-000-0016', 'FILIPINO', 'PANAGHIUSA, AZDS', 'PANAGHIUSA', '14/03/2020', 'ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(18, ' AGNES', 'RUILES', 'N/A', '35', 'F', '0909-000-0017', 'FILIPINO', 'PANAGHIUSA, AZDS', 'PANAGHIUSA', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(19, 'VICTORIA', 'LABANGON', 'N/A', '68', 'F', '0909-000-0018', 'FILIPINO', 'K. WEST, AZDS', 'KAHAYAGAN WEST', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(20, 'LENIE', 'BORRES', 'N/A', '32', 'F', '0909-000-0019', 'FILIPINO', 'K. WEST, AZDS', 'KAHAYAGAN WEST', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(21, 'RHEA', 'ARVELO', 'N/A', '28', 'F', '0909-000-0020', 'FILIPINO', 'K. WEST, AZDS', 'KAHAYAGAN WEST', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(22, 'CAMELO', 'TABURADA', 'N/A', '45', 'M', '0909-000-0021', 'FILIPINO', 'K. WEST, AZDS', 'KAHAYAGAN WEST', '14/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(24, 'JEAN', 'CENIZA', 'N/A', '18', 'F', '0909-000-0023', 'FILIPINO', 'K. EAST, AZDS', 'KAHAYAGAN WEST', '15/03/2020', ' ILIGAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(25, 'MA. MILAGROS', 'TIGUE', 'N/A', '52', 'F', '0909-000-0024', 'FILIPINO', 'K. EAST, AZDS', 'KAHAYAGAN WEST', '16/03/2020', 'CEBU CITY', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(26, 'JOHN DAREN', 'TIGUE', 'N/A', '25', 'M', '0909-000-0025', 'FILIPINO', 'K. EAST, AZDS', 'KAHAYAGAN WEST', '16/03/2020', ' CEBU CITY', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(27, 'CHYRIN', 'TIGUE', 'N/A', '22', 'F', '0909-000-0026', 'FILIPINO', 'K. EAST, AZDS', 'KAHAYAGAN WEST', '16/03/2020', ' CEBU CITY', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(28, 'KRISTIAN', 'TIGUE', 'N/A', '19', 'M', '0909-000-0027', 'FILIPINO', 'K. EAST, AZDS', 'KAHAYAGAN WEST', '16/03/2020', ' CEBU CITY', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(29, 'RYLE JUHENCE', 'TIGUE', 'N/A', '2', 'M', '0909-000-0028', 'FILIPINO', 'K. EAST, AZDS', 'KAHAYAGAN WEST', '16/03/2020', ' CEBU CITY', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(30, ' NENITA', 'ALIVIO', 'N/A', '53', 'F', '0909-000-0029', 'FILIPINO', 'CEBUNEG, AZDS', 'CEBUNEG', '11/03/2020', ' PASIG CITY (MANILA)', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(31, 'NARCISA', 'TALISIC', 'N/A', '57', 'F', '0909-000-0030', 'FILIPINO', 'CAMPO UNO, ZDS', 'CAMPO UNO', '13/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(32, 'REZALINE', 'BACUS', 'N/A', '43', 'F', '0909-000-0031', 'FILIPINO', 'CAMPO UNO, ZDS', 'CAMPO UNO', '13/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(33, 'RICKY', 'ALIA', 'N/A', '36', 'M', '0909-000-0032', 'FILIPINO', 'CAMPO UNO, ZDS', 'CAMPO UNO', '15/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(34, 'MARKEL', 'REFORMADO', 'N/A', '35', 'M', '0909-000-0033', 'FILIPINO', 'BEMPOSA, AZDS', 'BEMPOSA', '15/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(35, 'JOMEL IWAY', 'ARMODIA', 'N/A', '22', 'M', '0909-000-0034', 'FILIPINO', 'BEMPOSA, AZDS', 'BEMPOSA', '15/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(36, 'JOSE', 'CASAS', 'N/A', '58', 'M', '0909-000-0035', 'FILIPINO', 'B. PITOGO, AZDS', 'B. PITOGO', '13/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(38, 'JEANNE', 'SARIP', 'N/A', 'N/A', 'F', '0909-000-0037', 'FILIPINO', 'BALAS, AZDS', 'BALAS', '12/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(39, 'DAVID', 'BATERSAL', 'N/A', '21', 'M', '0909-000-0038', 'FILIPINO', 'BALAS, AZDS', 'BALAS', '16/03/2020', 'CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(40, 'ARVIN', 'ESTRERA', 'N/A', '41', 'M', '0909-000-0039', 'FILIPINO', 'ALEGRIA, AZDS', 'ALEGRIA', '15/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(41, 'WENDELYN', 'ROMANILLOS', 'N/A', '36', 'F', '0909-000-0040', 'FILIPINO', 'LA PAZ, AZDS', 'LA PAZ', '15/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(42, 'JEAN', 'MARTINEZ', 'N/A', 'N/A', 'N/A', '0909-000-0041', 'FILIPINO', 'LA PAZ, AZDS', 'LA PAZ', '11/03/2020', ' KUWAIT', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(43, 'AILYN', 'MANCO', 'N/A', '28', 'F', '0909-000-0042', 'FILIPINO', 'LA PAZ, AZDS', 'LA PAZ', '15/03/2020', ' DAVAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(44, 'EMMA BELEN', 'MAKIG-ANGAY', 'N/A', '52', 'F', '0909-000-0043', 'FILIPINO', 'LINTUGOP, AZDS', 'LINTUGOP', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(45, 'GUILLENA', 'TUDTUD', 'N/A', '53', 'F', '0909-000-0044', 'FILIPINO', 'LINTUGOP, AZDS', 'LINTUGOP', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(46, 'HELEN', 'STAMINA', 'N/A', '42', 'F', '0909-000-0045', 'FILIPINO', 'LINTUGOP, AZDS', 'LINTUGOP', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(47, 'KENTH JOY', 'CONEJOS', 'N/A', '20', 'F', '0909-000-0046', 'FILIPINO', ' LINTUGOP, AZDS', 'LINTUGOP', '16/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(48, 'CLIFFORD', 'CUENCO', 'N/A', '22', 'M', '0909-000-0047', 'FILIPINO', 'LINTUGOP, AZDS', 'LINTUGOP', '16/03/2020', ' CAVITE', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(49, 'FELY', 'TUBIANO', 'N/A', '34', 'F', '0909-000-0048', 'FILIPINO', 'LA VICTORIA, AZDS', 'LA VICTORIA', '08/03/2020', ' ', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(50, 'JENNIFER', 'JAVIER', 'N/A', '24', 'F', '0909-000-0049', 'FILIPINO', 'P. 2, ANONANG, AZDS', 'ANONANG', '13/03/2020', ' MANILA-AURORA', 'NONE', 'PUM', 'AURORA', NULL, NULL),
(51, 'ELMAR', 'CANDIA', 'N/A', '24', 'M', '0909-000-0050', 'FILIPINO', 'P. 2, ANONANG, AZDS', 'ANONANG', ' 3/2/2020', ' BATANGAS-DUMAGUETE-AURORA', 'NONE', 'PUM', 'AURORA', NULL, NULL),
(52, 'JONNIE', 'AMACA', 'N/A', '35', 'M', '0909-000-0051', 'FILIPINO', 'ANONANG, AZDS', 'ANONANG', '04/03/2020', ' BATANGAS-DUMAGUETE-AURORA ', 'NONE', 'PUM', 'AURORA', NULL, NULL),
(53, 'ROSALIE MUNOZ', 'GENOBISA', 'N/A', 'N/A', 'F', '0909-000-0052', 'FILIPINO', 'ANONANG, AZDS', 'ANONANG', '12/03/2020', ' ILO-ILO', 'NONE', 'PUM', 'AURORA', NULL, NULL),
(54, 'BEN JAMES', 'RUIZ', 'N/A', 'N/A', 'M', '0909-000-0053', 'FILIPINO', 'ANONANG, AZDS', 'ANONANG', '13/03/2020', ' ILO-ILO', 'NONE', 'PUM', 'AURORA', NULL, NULL),
(55, 'EDGAR', 'PILAPIL', 'N/A', 'N/A', 'M', '0909-000-0054', 'FILIPINO', 'GUBAAN', 'GUBAAN', '12/03/2020', ' ILO ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(56, 'AYING', 'PILAPIL', 'N/A', 'N/A', 'F', '0909-000-0055', 'FILIPINO', 'GUBAAN', 'GUBAAN', '12/03/2020', ' ILO ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(57, 'ARCHIVAL', 'SHERBY', 'N/A', '27', 'F', '0909-000-0056', 'FILIPINO', 'GUBAAN', 'GUBAAN', '15/03/2020', ' COTABATO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(58, 'PEPITO', 'JANIVIE', 'N/A', '28', 'F', '0909-000-0057', 'FILIPINO', 'GUBAAN', 'GUBAAN', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(59, 'PRINCESS HONNY', 'MAMAWE', 'N/A', '10', 'F', '0909-000-0058', 'FILIPINO', 'GUBAAN', 'GUBAAN', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(60, 'QUINO', 'MARISSA', 'N/A', '44', 'F', '0909-000-0059', 'FILIPINO', 'B. MANDAUE, AZDS', 'BAGONG MANDAUE', '13/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(61, 'MANGUYANON', 'NAOMI', 'N/A', '47', 'F', '0909-000-0060', 'FILIPINO', 'B. MANDAUE, AZDS', 'BAGONG MANDAUE', '13/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(62, 'JUBAN', 'LLOYD', 'N/A', '20', 'M', '0909-000-0061', 'FILIPINO', 'B. MANDAUE, AZDS', 'BAGONG MANDAUE', '13/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(63, 'PINO', 'RODRIGO', 'N/A', '55', 'M', '0909-000-0062', 'FILIPINO', 'B. MANDAUE, AZDS', 'BAGONG MANDAUE', '13/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(66, 'JOSIAH', 'VIVERO', 'N/A', '20', 'F', '0909-000-0065', 'FILIPINO', 'BALIDE, AZDS', 'BALIDE', '16/03/2020', 'CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(67, 'VINCE ACCEL', 'MONTALBAN', 'N/A', '11', 'M', '0909-000-0066', 'FILIPINO', 'BALIDE, AZDS', 'BALIDE', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(68, 'LILY MAE', 'MONTALBAN', 'N/A', '38', 'F', '0909-000-0067', 'FILIPINO', 'BALIDE, AZDS', 'BALIDE', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(69, 'MA. VITA', 'BASIGA', 'N/A', '55', 'F', '0909-000-0068', 'FILIPINO', 'ALAY KAPWA, BALIDE, AZDS', 'BALIDE', '15/03/2020', ' ANTIPOLO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(70, 'AMADO', 'BASIGA', 'N/A', '58', 'M', '0909-000-0069', 'FILIPINO', 'ALAY KAPWA, BALIDE, AZDS', 'BALIDE', '15/03/2020', ' ANTIPOLO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(72, 'GINA', 'PANILAGAN', 'N/A', 'N/A', 'F', '0909-000-0071', 'Filipino', 'Monte Alegre, Aurroa,ZDS', 'Monte Alegre', '12/03/2020', ' BAGUIO CITY', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(73, 'ANABELLE', 'DAGANAN', 'N/A', '28', 'F', '0909-000-0072', 'Filipino', 'Monte Alegre, Aurroa,ZDS', 'Monte Alegre', '13/03/2020', ' DUMAGUETE', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(74, 'CLARINA', 'ELMEDULAN', 'N/A', '38', 'F', '0909-000-0073', 'Filipino', 'Monte Alegre, Aurroa,ZDS', 'Monte Alegre', '14/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(75, 'FRANCIS JOHN', 'GAMBITAN', 'N/A', '19', 'M', '0909-000-0074', 'Filipino', 'Monte Alegre, Aurroa,ZDS', 'Monte Alegre', '14/03/2020', ' PALAWAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(76, 'JOCELYN', 'MANALIM', 'N/A', '50', 'F', '0909-000-0075', 'Filipino', 'Monte Alegre, Aurroa,ZDS', 'Monte Alegre', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(77, 'JOCELYN', 'MAGDADARO', 'N/A', '43', 'F', '0909-000-0076', 'Filipino', 'Monte Alegre, Aurroa,ZDS', 'Monte Alegre', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(78, 'SOFRONIA', 'BONTILAO', 'N/A', '68', 'F', '0909-000-0077', 'Filipino', 'Monte Alegre, Aurroa,ZDS', 'Monte Alegre', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(79, 'MERLYN', 'BUGTAY', 'N/A', '45', 'F', '0909-000-0078', 'Filipino', 'Monte Alegre, Aurroa,ZDS', 'Monte Alegre', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(80, 'Ditas', 'Pareja', 'N/A', '45', 'F', '0909-000-0079', 'Filipino', 'Romarate, Aurora, ZDS', 'Romarate', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(81, ' Princess Noelle', ' Pareja', 'N/A', '6', 'F', '0909-000-0080', 'Filipino', 'Romarate, Aurora, ZDS', 'Romarate', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(82, 'ERNAN BOY', 'TORRES', 'N/A', '23', 'M', '0909-000-0081', 'Filipino', 'Romarate, Aurora, ZDS', 'Romarate', '12/03/2020', ' THAILAND', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(83, 'DIANNE ROSE', 'FERNANDEZ', 'N/A', '23', 'F', '0909-000-0082', 'Filipino', 'Romarate, Aurora, ZDS', 'Romarate', '12/03/2020', ' ILIGAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(84, ' BUSH RANA', 'YUSOP', 'N/A', '19', 'F', '0909-000-0083', 'Filipino', 'Romarate, Aurora, ZDS', 'Romarate', '11/03/2020', ' MARAWI', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(85, 'ARNEL', 'MACABABAYAO', 'N/A', 'N/A', 'N/A', '0909-000-0084', 'Filipino', 'Romarate, Aurora, ZDS', 'Romarate', '14/03/2020', 'BATAAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(86, 'MSGT FEBRICO', 'NERI', 'N/A', '47', 'M', '0909-000-0085', 'Filipino', 'Romarate, Aurora, ZDS', 'Romarate', '08/03/2020', ' PALAWAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(87, 'JUNNYLE PRAISE', 'SORONIO,', 'N/A', '22', 'F', '0909-000-0086', 'Filipino', 'Romarate, Aurora, ZDS', 'Romarate', '13/03/2020', 'MAKATI', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(88, 'DIONESIO', 'SORONIO', 'N/A', '46', 'M', '0909-000-0087', 'Filipino', 'Romarate, Aurora, ZDS', 'Romarate', '13/03/2020', 'MAKATI', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(89, 'ZALDY', 'BAYNOSA', 'N/A', '23', 'M', '0909-000-0088', 'Filipino', 'Romarate, Aurora, ZDS', 'Romarate', '13/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(90, 'Rosemarie ', 'Indoc', 'N/A', '39', 'F', '0909-000-0089', 'Filipino', 'Libertad, Aurora, ZDS', 'Libertad', '11/03/2020', ' NKTI-Quezon', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(91, ' Marian Faith', 'Indoc', 'N/A', '1', 'F', '0909-000-0090', 'Filipino', 'Libertad, Aurora, ZDS', 'Libertad', '11/03/2020', ' NKTI-Quezon', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(92, ' SAUL ANDREW', 'TARANZA', 'N/A', '30', 'M', '0909-000-0091', 'Filipino', 'Libertad, Aurora, ZDS', 'Libertad', '15/03/2020', ' AUSTRALIA-MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(93, 'JOHN PAUL', 'AMPARADO', 'N/A', '21', 'M', '0909-000-0092', 'Filipino', 'Libertad, Aurora, ZDS', 'Libertad', '15/03/2020', ' ISABELA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(94, 'GADWIN', 'RUSTATA', 'N/A', '20', 'M', '0909-000-0093', 'Filipino', 'Libertad, Aurora, ZDS', 'Libertad', '16/03/2020', 'CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(95, 'GODFFREY', 'RUSTATA', 'N/A', '20', 'M', '0909-000-0094', 'Filipino', 'Libertad, Aurora, ZDS', 'Libertad', '16/03/2020', 'CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(96, 'ELMER', 'MERIN', 'N/A', '32', 'M', '0909-000-0095', 'Filipino', 'Libertad, Aurora, ZDS', 'Libertad', '14/03/2020', ' LEYTE-SURIGAO-CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(97, 'ROMIE', 'OPORTO', 'N/A', '47', 'M', '0909-000-0096', 'Filipino', 'Libertad, Aurora, ZDS', 'Libertad', '14/03/2020', ' LEYTE-SURIGAO-CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(98, ' Elsie', 'Angeles', 'N/A', '42', 'F', '0909-000-0097', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(99, 'Princess Elise', ' Angeles', 'N/A', '6', 'F', '0909-000-0098', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(100, 'Dorcas', ' Dacanay', 'N/A', '50', 'F', '0909-000-0099', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(101, 'Hallie Rhianna', 'Judilla', 'N/A', '9', 'F', '0909-000-0100', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(102, 'Hannah', 'Judilla', 'N/A', '33', 'F', '0909-000-0101', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(103, 'Nicelle May', 'Perales', 'N/A', '44', 'F', '0909-000-0102', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(104, 'SARAH JANE', 'SOLON', 'N/A', '39', 'F', '0909-000-0103', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '14/03/2020', ' ILIGAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(105, 'JOREY', 'SOLON', 'N/A', '40', 'M', '0909-000-0104', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '14/03/2020', ' ILIGAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(106, 'SANDARA CHEYENE', 'SOLON,', 'N/A', '15', 'F', '0909-000-0105', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '14/03/2020', ' ILIGAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(107, 'AARON', 'TRANCO', 'N/A', '57', 'M', '0909-000-0106', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '13/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(108, 'JAN RAINER', 'UBAS', 'N/A', '20', 'M', '0909-000-0107', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '15/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(109, 'CARL JOSHUA', 'JUBAN', 'N/A', '20', 'M', '0909-000-0108', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '16/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(110, 'NESTORA', 'ARSUA', 'N/A', '74', 'F', '0909-000-0109', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '15/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(111, 'ELVIE', 'CABILAN', 'N/A', '21', 'F', '0909-000-0110', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '15/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(112, 'HEAVEN EJAY', 'MADRANGCA', 'N/A', '20', 'F', '0909-000-0111', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '15/03/2020', 'CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(113, 'REZEL MAE', 'VELASQUEZ', 'N/A', '19', 'F', '0909-000-0112', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '14/03/2020', 'ILIGAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(114, 'IVORY CARNEL', 'JAYME', 'N/A', '24', 'F', '0909-000-0113', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(115, 'NANETTE', 'BUSTILLO', 'N/A', '41', 'F', '0909-000-0114', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(116, 'KATZ KARYLL', 'VENTURES', 'N/A', '19', 'F', '0909-000-0115', 'Filipino', 'San Jose, Aurora, ZDS', 'San Jose', '16/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(117, 'ARIEL', 'ANO-OS, ', 'N/A', '33', 'M', '0909-000-0116', 'Filipino', 'P. ROSAS A, SAN JOSE, AZDS', 'San Jose', '16/03/2020', ' MAN-PAMPANGA,CEBU-AURORA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(118, 'CESARIO', 'JUDILLA', 'N/A', '73', 'M', '0909-000-0117', 'Filipino', 'P. ROSAS A, SAN JOSE, AZDS', 'San Jose', '16/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(119, 'CORAZON', 'JUDILLA', 'N/A', '69', 'F', '0909-000-0118', 'Filipino', 'P. ROSAS A, SAN JOSE, AZDS', 'San Jose', '16/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(120, 'DEXTER JOSEPH', 'JUDILLA', 'N/A', '44', 'M', '0909-000-0119', 'Filipino', 'P. ROSAS A, SAN JOSE, AZDS', 'San Jose', '16/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(121, 'CESARIO', 'JUDILLA', 'N/A', '39', 'M', '0909-000-0120', 'Filipino', 'P. ROSAS A, SAN JOSE, AZDS', 'San Jose', '16/03/2020', 'CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(122, 'JHONA MAY', 'FLORES', 'N/A', '19', 'F', '0909-000-0121', 'FILIPINO', 'SAN JOSE, AZDS', 'San Jose', '16/03/2020', 'CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(123, 'JOHANNA ROSE', 'MATUTES', 'N/A', '20', 'F', '0909-000-0122', 'FILIPINO', 'SAN JOSE, AZDS', 'San Jose', '16/03/2020', 'CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(124, 'Ma. Flordeliza', ' Ardiente', 'N/A', '53', 'F', '0909-000-0123', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(125, ' Lavyrly', ' Lucero', 'N/A', '7', 'F', '0909-000-0124', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(126, 'Yvonne Crystal', 'Lucero', 'N/A', '23', 'F', '0909-000-0125', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(127, 'Carmelline Maize', 'Mosqueda', 'N/A', '7', 'F', '0909-000-0126', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(128, 'Marites', 'Mosqueda', 'N/A', '43', 'F', '0909-000-0127', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '11/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(129, 'JUNYL', 'BRAGA', 'N/A', '20', 'M', '0909-000-0128', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '15/03/2020', 'CEBU CITY', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(130, 'DAME ALTHEA', 'ENRIQUEZ,', 'N/A', '19', 'F', '0909-000-0129', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '15/03/2020', 'CEBU CITY', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(131, 'DONNA AMHAREL', 'ENRIQUEZ', 'N/A', '21', 'F', '0909-000-0130', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '15/03/2020', 'CEBU CITY', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(132, 'JOELLYN MAE', 'SISON', 'N/A', '29', 'F', '0909-000-0131', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '15/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(133, 'ALONA', 'SIAO', 'N/A', '29', 'F', '0909-000-0132', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '15/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(134, 'GLYZA MAE', 'VILLORIA', 'N/A', '20', 'F', '0909-000-0133', 'Filipino', 'P. DONA AURORA, POB.', 'Poblacion', '14/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(135, 'GLENNA WAYNE', 'VILLORIA', 'N/A', '19', 'F', '0909-000-0134', 'Filipino', 'P. DONA AURORA, POB.', 'Poblacion', '14/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(136, 'JUDEA WENCY', 'GOMONIT', 'N/A', '19', 'F', '0909-000-0135', 'Filipino', 'P. MAUSWAGON, POB.', 'Poblacion', '15/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(137, 'RHUENINO CELESTINE', 'DICON', 'N/A', '30', 'M', '0909-000-0136', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '14/03/2020', 'MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(138, 'CHRISTIAN FRANCIS', 'BATOCTOY', 'N/A', '21', 'M', '0909-000-0137', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '15/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(139, 'SHIPREAD', 'PEREZ', 'N/A', '20', 'M', '0909-000-0138', 'Filipino', 'P. CALUBIU, POB.', 'Poblacion', '15/03/2020', 'CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(140, 'MARIE FRANCIS', 'TAN-ABRIA', 'N/A', 'N/A', 'F', '0909-000-0139', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '13/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(141, 'ATILANO', 'CORTES', 'N/A', '31', 'M', '0909-000-0140', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '13/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(142, 'BERNYREL PE?A', 'NUEVA', 'N/A', '31', 'F', '0909-000-0141', 'Filipino', 'P. MAUSWAGON, POB.', 'Poblacion', '13/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(143, 'HERBIE ROSE', 'CORTES', 'N/A', '24', 'F', '0909-000-0142', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '10/03/2020', ' PALAWAN', 'WITH COUGH BEFORE TRAVEL', 'PUM', 'AURORA', NULL, NULL),
(147, 'GALILEO', 'TIGTIG', 'N/A', '34', 'M', '0909-000-0146', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '12/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(148, 'FILMA', 'QUI?O', 'N/A', '20', 'F', '0909-000-0147', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '15/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(149, 'Elsie', 'Angeles', 'N/A', '42', 'F', '0909-000-0148', 'Filipino', 'San Jose, Aurora, ZDS', 'Poblacion', '05/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(150, 'Princess Elise', 'Angeles', 'N/A', '6', 'F', '0909-000-0149', 'Filipino', 'San Jose, Aurora, ZDS', 'Poblacion', '05/03/2020', ' Baguio City', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(151, 'REY', 'VELASQUEZ', 'N/A', '53', 'M', '0909-000-0150', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '15/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(152, 'KERLVINN PAUL', 'VELASQUEZ', 'N/A', '30', 'M', '0909-000-0151', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '15/03/2020', 'CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(153, 'VERNBODETH', ' CODENIERA', 'N/A', '24', 'F', '0909-000-0152', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '15/03/2020', 'CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(154, 'MICHELLE', 'MALINGI', ' B.', '32', 'F', '0909-000-0153', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '02/03/2020', ' THAILAND', 'COMPLETED', 'COMPLETED', 'AURORA', NULL, '2020-03-19 03:33:14'),
(155, 'KYLE IAH', 'MALINGI', 'N/A', 'N/A', 'N/A', '0909-000-0154', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '02/03/2020', ' THAILAND', 'COMPLETED', 'COMPLETED', 'AURORA', NULL, '2020-03-19 03:33:08'),
(156, 'KAREN ROSE', 'IWAY', 'N/A', '19', 'F', '0909-000-0155', 'FILIPINO', 'P. IMELDA, POB.', 'Poblacion', '15/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(157, 'NICOLE ANNE', 'OLEDAN', 'N/A', '19', 'F', '0909-000-0156', 'FILIPINO', 'P. STA. TERESITA, POB.', 'Poblacion', '15/03/2020', 'CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(158, 'CLINT BRYNER', 'ZANORIA', 'N/A', '27', 'M', '0909-000-0157', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '14/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(159, 'MARIELLE AIRA', 'SABADO', 'N/A', '23', 'F', '0909-000-0158', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '15/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(160, 'FARREN AICEL', 'ABIL', 'N/A', '18', 'F', '0909-000-0159', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '15/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(161, 'VIRGINIA', 'BANAAG', 'N/A', '58', 'F', '0909-000-0160', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '14/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(162, 'NANETTE', 'REDELOSA', 'N/A', '59', 'F', '0909-000-0161', 'FILIPINO', 'P. DAHLIA, POB, AZDS', 'Poblacion', '14/03/2020', 'ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(163, ' JUSTINE MAE', 'LAGUE', 'N/A', '22', 'F', '0909-000-0162', 'FILIPINO', 'P. DAHLIA, POB, AZDS', 'Poblacion', '14/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(164, 'ELAINE JOICE', 'DIGAL', 'N/A', '22', 'F', '0909-000-0163', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '16/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(165, 'EUNICE PEARL', 'DIGAL', 'N/A', '20', 'F', '0909-000-0164', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '16/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(166, ' NATHANIEL MARK CELESTINE', 'DICON', 'N/A', '20', 'M', '0909-000-0165', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '16/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(167, ' ELLA KRISTIN', 'CENIZA', 'N/A', '20', 'F', '0909-000-0166', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '14/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(168, 'STEPHEN JOHN', 'SONGALIA', 'N/A', '19', 'M', '0909-000-0167', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '16/03/2020', 'CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(169, 'JOHN CARVY', 'JAVIER', 'N/A', '20', 'M', '0909-000-0168', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '15/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(170, 'ROSE IRA', 'JAVIER', 'N/A', '23', 'F', '0909-000-0169', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '14/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(171, 'DEOSDIDIT', 'MABAYO', 'N/A', '50', 'M', '0909-000-0170', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '16/03/2020', ' USA, CEBU, DAPITAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(172, 'ANTONIO', 'BRIDES', 'N/A', '58', 'M', '0909-000-0171', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '15/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(173, 'LUZ', 'BRIDES', 'N/A', '', '', '0909-000-0172', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '15/03/2020', 'CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(174, 'VERONICA', 'BRIDES', 'N/A', '28', 'F', '0909-000-0173', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '15/03/2020', 'CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(175, 'VICTORIA', 'MAGO', 'N/A', '74', 'F', '0909-000-0174', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(177, 'HESAH MAE', 'TAN', 'N/A', '18', 'F', '0909-000-0176', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '14/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(178, 'LALAINE BEL', 'TAN', 'N/A', '37', 'F', '0909-000-0177', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(179, 'RAYA MARIE', 'CENIZA', ' F. ', '11', 'F', '0909-000-0178', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(180, 'MA. REGINA', 'FILIPINO', ' O. ', '48', 'F', '0909-000-0179', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(181, 'QUIMBERLY', 'LUMOSAD', 'N/A', '12', 'F', '0909-000-0180', 'FILIPINO', 'P. CALUBE, POB. AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(182, 'MARC TRISTAN', 'LLACER', 'N/A', '10', 'M', '0909-000-0181', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(183, 'GLAD MARCEL', 'CABAHUG', 'N/A', '10', 'F', '0909-000-0182', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(184, 'JAKE', 'SABELLANO', ' M. ', '43', 'M', '0909-000-0183', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(185, 'CECILE', 'SABELLANO', 'N/A', '42', 'F', '0909-000-0184', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(186, 'JACIL', 'SABELLANO', 'N/A', '12', 'F', '0909-000-0185', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(187, 'JOBIE', 'TALATAYOD', 'N/A', '38', 'F', '0909-000-0186', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '12/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(188, 'KARLL ZEDHRICK', 'PENSERGA', 'N/A', '11', 'M', '0909-000-0187', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(189, 'FLORDELIZA', 'DENSING', 'N/A', 'N/A', 'N/A', '0909-000-0188', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '13/03/2020', ' TUGUEGARAO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(190, 'JAMES ROLAND', 'MAGLANGIT', 'N/A', '19', 'M', '0909-000-0189', 'FILIPINO', 'P. CALUBE, POB. AZDS', 'Poblacion', '16/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(191, 'FRANCIS', 'IROG-IROG', 'N/A', '20', 'M', '0909-000-0190', 'FILIPINO', 'P. MASAGANA, POB. AZDS', 'Poblacion', '16/03/2020', 'CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(192, 'MARY CLAIR', 'MI?OZA', 'N/A', '17', 'F', '0909-000-0191', 'FILIPINO', 'P. TUBURAN, POB. AZDS', 'Poblacion', '14/03/2020', ' DUMAGUETE', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(193, 'PEACHIE', 'UNDAG', 'N/A', '37', 'F', '0909-000-0192', 'FILIPINO', 'P. MADASIGON, POB. AZDS', 'Poblacion', '16/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(194, 'CATHERINE', 'ORLANES', 'N/A', '23', 'F', '0909-000-0193', 'FILIPINO', 'P. IMELDA, POB. AZDS', 'Poblacion', '12/03/2020', ' ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(195, 'ANA MAE', 'RAMOS', 'N/A', '25', 'F', '0909-000-0194', 'FILIPINO', 'P. STA. TERESITA, POB. AZDS', 'Poblacion', '13/03/2020', ' CAVITE', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(196, 'NINIA DIEN', 'RAMOS', 'N/A', '2', 'F', '0909-000-0195', 'FILIPINO', 'P. STA. TERESITA, POB. AZDS', 'Poblacion', '13/03/2020', ' CAVITE', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(197, 'LANCE', 'CENIZA', 'N/A', '20', 'M', '0909-000-0196', 'FILIPINO', 'P. STA. TERESITA, POB. AZDS', 'Poblacion', '16/03/2020', 'CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(198, 'CESAR IAN', 'ALASTRA', 'N/A', '26', 'M', '0909-000-0197', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '14/03/2020', 'ILO-ILO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(199, 'JEREMIE', 'PANGANDIAN', 'N/A', '20', 'M', '0909-000-0198', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '16/03/2020', 'CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(200, 'DARELL', 'DENOSTA', 'N/A', '31', 'M', '0909-000-0199', 'FILIPINO', 'P. STA. TERESITA, POB. AZDS', 'Poblacion', '15/03/2020', 'NCR', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(201, 'RHONNA CHESSA', 'DENOSTA', 'N/A', '30', 'F', '0909-000-0200', 'FILIPINO', 'P. STA. TERESITA, POB. AZDS', 'Poblacion', '15/03/2020', 'NCR', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(202, 'BRENT DUSTINE', 'DENOSTA', 'N/A', '9', 'M', '0909-000-0201', 'FILIPINO', 'P. STA. TERESITA, POB. AZDS', 'Poblacion', '15/03/2020', ' NCR', 'COUGH', 'PUI', 'AURORA', NULL, '2020-03-18 13:45:15'),
(203, 'HARO DABREN', 'DENOSTA', 'N/A', '3', 'M', '0909-000-0202', 'FILIPINO', 'P. STA. TERESITA, POB. AZDS', 'Poblacion', '15/03/2020', 'NCR', 'COUGH', 'PUI', 'AURORA', NULL, '2020-03-18 13:45:49'),
(204, 'RHOANN DENISE', 'DENOSTA', 'N/A', '1', 'F', '0909-000-0203', 'FILIPINO', 'P. STA. TERESITA, POB. AZDS', 'Poblacion', '15/03/2020', 'NCR', 'COUGH AND FEVER', 'PUI', 'AURORA', NULL, '2020-03-18 13:46:21'),
(205, 'JIMMY', 'BONTIA', 'N/A', '38', 'F', '0909-000-0204', 'FILIPINO', 'P. CALUBE, POB. AZDS', 'Poblacion', '15/03/2020', 'CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(206, 'SALOME', 'BONTIA', 'N/A', '38', 'F', '0909-000-0205', 'FILIPINO', 'P. CALUBE, POB. AZDS', 'Poblacion', '15/03/2020', ' CDO', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(207, 'IRENE', 'LIMBAGA', 'N/A', '35', 'F', '0909-000-0206', 'FILIPINO', 'P. BAGONG LIPUNAN, POB.', 'Poblacion', '15/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(208, ' STEPHANY', 'GUTTIEREZ', 'N/A', '27', 'F', '0909-000-0207', 'FILIPINO', 'P. IMELDA, POB. AZDS', 'Poblacion', '14/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(209, 'FRANK ANTHONY', 'ABUNDIENTE', 'N/A', '26', 'M', '0909-000-0208', 'FILIPINO', 'P. IMELDA, POB. AZDS', 'Poblacion', '14/03/2020', ' MANILA', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(210, 'LUCHIN', 'PUEBLOS', 'N/A', 'N/A', 'N/A', '0909-000-0209', 'FILIPINO', 'P. WALING, POB. AZDS', 'Poblacion', '15/03/2020', ' ILIGAN', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(211, 'SHAINE NICOLE', 'FLORES', 'N/A', '20', 'F', '0909-000-0210', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '16/03/2020', ' CEBU', 'N/A', 'PUM', 'AURORA', NULL, NULL),
(213, 'SHANNEN DHANA', 'BULACLAC', 'N/A', '20', 'F', '0909-000-0212', 'Filipino', 'Poblacion, Aurora, ZDS', 'Poblacion', '14/03/2020', 'CEBU CITY', '4 days cough, sore throat, colds (3/10/2020)', 'PUI', 'AURORA', NULL, NULL),
(214, 'LOUIS ANTON', 'BRIDES', 'N/A', '17', 'M', '0909-000-0213', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '15/03/2020', 'CDO', 'COUGH', 'PUI', 'AURORA', NULL, NULL),
(215, 'AURLAN', 'OSTREA', 'N/A', '31', 'M', '0909-000-0214', 'FILIPINO', 'P. MAUSWAGON, POB. AZDS', 'Poblacion', '12/03/2020', 'CDO', 'BODY MALAISE, HEADACHE, ITCHY THROAT', 'PUI', 'AURORA', NULL, NULL),
(220, 'MARK GREGORY', 'ALBANO', 'N/A', '17', 'Male', 'n/a', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 01:58:44', '2020-03-18 01:58:44'),
(221, 'SHENETTE JOY', 'BUTAYA', 'N/A', '21', 'Female', 'n/a', 'FILIPINO', 'AZDS', 'Poblacion', '16/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:47:15', '2020-03-18 04:47:15'),
(222, 'JHONA MAE', 'FLORES', 'N/A', '19', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '16/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:48:44', '2020-03-18 04:48:44'),
(223, 'GODFFREY', 'ROSTATA', 'N/A', '20', 'Male', 'n/a', 'FILIPINO', 'AZDS', 'Libertad', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:50:50', '2020-03-18 04:50:50'),
(224, 'FAITH', 'MASANEGRA', 'N/A', '28', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:51:45', '2020-03-18 04:51:45'),
(225, 'CECILE JOY', 'MASANEGRA', 'N/A', '29', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:52:22', '2020-03-18 04:52:22'),
(226, 'NATHALIA', 'MASANEGRA', 'N/A', '3', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:53:13', '2020-03-18 04:53:13'),
(227, 'CECILIO', 'MASANEGRA', 'N/A', '55', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '15/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:54:05', '2020-03-18 04:54:05'),
(228, 'EMELINDA', 'MASANEGRA', 'N/A', '56', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '15/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:54:40', '2020-03-18 04:54:40'),
(229, 'LOWELL GEE', 'DECOSTO', 'N/A', '26', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '13/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:55:24', '2020-03-18 04:55:24'),
(230, 'SHECAINA', 'CATIPAN', 'N/A', '19', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '16/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:56:10', '2020-03-18 04:56:10'),
(231, 'EARLA RICA', 'CABAHUG', 'N/A', '17', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'CDO', 'SORE THROAT, COUGH', 'PUI', 'AURORA', '2020-03-18 04:57:00', '2020-03-18 04:57:00'),
(232, 'APRIL ROSE', 'TURNO', 'N/A', '19', 'Female', 'N/A', 'FILIPINO', 'POBLACION, AZDS', 'Poblacion', '16/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:58:13', '2020-03-18 04:58:13'),
(233, 'CATHERINE MARIE', 'ZANORIA', 'N/A', '20', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '16/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 04:59:12', '2020-03-18 04:59:12'),
(234, 'FRANCIS', 'SILVA', 'N/A', '54', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '15/03/2020', 'MANILA', 'COUGH', 'PUI', 'AURORA', '2020-03-18 05:00:10', '2020-03-18 05:00:10'),
(235, 'NATALIA', 'PAGATPAT', 'N/A', '3', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Gubaan', '16/03/2020', 'ILIGAN', 'COUGH AND COLDS, FEVER', 'PUI', 'AURORA', '2020-03-18 05:04:20', '2020-03-18 05:04:20'),
(236, 'MARK AEHRON', 'PAGATPAT', 'N/A', '5', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Gubaan', '16/03/2020', 'ILIGAN', 'OCCASSIONAL COUGH AND COLDS', 'PUI', 'AURORA', '2020-03-18 05:09:57', '2020-03-18 05:09:57'),
(237, 'AILEEN', 'PAGATPAT', 'N/A', '26', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Gubaan', '16/03/2020', 'ILIGAN', 'COUGH AND COLDS 3 WEEKS AGO', 'PUI', 'AURORA', '2020-03-18 05:11:00', '2020-03-18 05:11:00'),
(238, 'CLYDE OLIVER', 'BONGA', 'N/A', '18', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '16/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:12:01', '2020-03-18 05:12:01'),
(239, 'DARRAH VENISE', 'MAGO', 'N/A', '20', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:12:44', '2020-03-18 05:12:44'),
(240, 'JONEL', 'HUELAR', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Bayabas', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:13:40', '2020-03-18 05:13:40'),
(241, 'DAVE CYRIL', 'DABON', 'N/A', '21', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '14/03/2020', 'ILIGAN', 'OCCASIONAL COUGH AND COLDS', 'PUI', 'AURORA', '2020-03-18 05:14:39', '2020-03-18 05:14:39'),
(242, 'SHELLEY', 'DABON', 'N/A', '19', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '14/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:15:46', '2020-03-18 05:15:46'),
(243, 'DAVE CYRUS', 'DABON', 'N/A', '21', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '14/03/2020', 'CDO', 'COLDS', 'PUI', 'AURORA', '2020-03-18 05:16:46', '2020-03-18 05:16:46'),
(244, 'LYNDLEY', 'GO', 'N/A', '43', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '11/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:17:39', '2020-03-18 05:17:39'),
(245, 'ROSPER', 'BASE', 'N/A', '28', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lintugop', '17/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:18:42', '2020-03-18 05:18:42'),
(246, 'RUBY MAE', 'ALMENTEROS', 'N/A', '22', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lintugop', '16/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:19:31', '2020-03-18 05:19:31'),
(247, 'MANUEL', 'ESTUDILLO', 'N/A', '81', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Lintugop', '17/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:20:26', '2020-03-18 05:20:26'),
(248, 'VINCE NATHANIEL', 'LUMANTAS', 'N/A', '24', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Romarate', '16/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:21:29', '2020-03-18 05:21:29'),
(249, 'VANCE LEONEL', 'LUMANTAS', 'N/A', '20', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Romarate', '16/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:22:10', '2020-03-18 05:22:10'),
(250, 'APOLONIA', 'BAGOL', 'N/A', '38', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Romarate', '16/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:22:56', '2020-03-18 05:22:56'),
(251, 'VIVIAN', 'BONTUYAN', 'N/A', '52', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Mandaue', '11/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:23:51', '2020-03-18 05:23:51'),
(252, 'OLIVIA', 'CORONEL', 'N/A', '37', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Bayabas', '12/03/2020', 'TARLAC', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:24:50', '2020-03-18 05:24:50'),
(253, 'ROMIE', 'CORONEL', 'N/A', '39', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Bayabas', '12/03/2020', 'TARLAC', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:26:08', '2020-03-18 05:26:08'),
(254, 'LEANA BLAIR', 'CORONEL', 'N/A', '7', 'Female', 'n/a', 'FILIPINO', 'AZDS', 'Bayabas', '12/03/2020', 'TARLAC', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:26:50', '2020-03-18 05:26:50'),
(255, 'JOJEMAR', 'ALCUIZAR', 'N/A', '29', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '13/03/2020', 'BINONDO, MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:27:34', '2020-03-18 05:27:34'),
(256, 'ANGELIE', 'TUDTUD', 'N/A', '13', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'La Paz', '17/03/2020', 'PASAY CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:28:27', '2020-03-18 05:28:27'),
(257, 'CHARLEMER', 'AMARO', 'N/A', '35', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '14/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:31:03', '2020-03-18 05:31:03'),
(258, 'GADDIEL IGNATIUS', 'AMARO', 'N/A', '0', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Balide', '14/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:34:10', '2020-03-18 05:34:10'),
(259, 'FRITZ GERALD', 'BUGAYONG', 'N/A', '14', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Balide', '08/03/2020', 'TARLAC', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:35:22', '2020-03-18 05:35:22'),
(260, 'OLIVER', 'BUGAYONG', 'N/A', '38', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Romarate', '08/03/2020', 'TARLAC', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:36:10', '2020-03-18 05:36:10'),
(261, 'LESLIE JANE', 'GERRA', 'N/A', '26', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Tagulalo', '16/03/2020', 'BUKIDNON', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:37:10', '2020-03-18 05:37:10'),
(262, 'LIZZA MAE', 'CASTILLO', 'N/A', '23', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Alang-alang', '10/03/2020', 'LAGUNA', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:37:59', '2020-03-18 05:37:59'),
(263, 'CHRISTIAN', 'CASTILLO', 'N/A', '27', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Alang-alang', '10/03/2020', 'LAGUNA', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:38:57', '2020-03-18 05:38:57'),
(264, 'JOSEFINA', 'PARLIANGAN', 'N/A', '27', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Pitogo', '17/03/2020', 'MARIKINA', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:39:59', '2020-03-18 05:39:59'),
(265, 'JOHN LORENZE', 'DEBALUCOS', 'N/A', '15', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'La Paz', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:40:56', '2020-03-18 05:40:56'),
(266, 'ROBERTO', 'SEBUSANA', 'N/A', '54', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Romarate', '17/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:41:56', '2020-03-18 05:41:56'),
(267, 'MARY ZHYNETTE', 'OPADA', 'N/A', '2', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'La Paz', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:43:33', '2020-03-18 05:43:33'),
(268, 'AYEZZA', 'DEBALUCOS', 'N/A', '0', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'La Paz', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:44:20', '2020-03-18 05:44:20'),
(269, 'RHIA MAE', 'OPADA', 'N/A', '20', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'La Paz', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:45:22', '2020-03-18 05:45:22'),
(270, 'FRANCISCO', 'DEBALUCOS', 'N/A', '49', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'La Paz', '17/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:46:47', '2020-03-18 05:46:47'),
(271, 'JOHN PAUL', 'DEBALUCOS', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'La Paz', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:47:26', '2020-03-18 05:47:26'),
(272, 'MARIA JOHANNAH', 'RAMISCAL', 'N/A', '19', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Balide', '17/03/2020', 'CEBU CITY', 'COUGH', 'PUI', 'AURORA', '2020-03-18 05:48:27', '2020-03-18 05:48:27'),
(273, 'ELDA', 'BARTE', 'N/A', '53', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Tagulalo', '12/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:49:19', '2020-03-18 05:49:19'),
(274, 'RODNEY', 'RIZADA', 'N/A', '22', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Mahayahay', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:50:09', '2020-03-18 05:50:09'),
(275, 'APRILYN', 'PERIHAN', 'N/A', '24', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Cabilinan', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:50:53', '2020-03-18 05:50:53'),
(277, 'ADIMAR', 'QUIRIM', 'N/A', '49', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Sapa Loboc', '13/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:52:34', '2020-03-18 05:52:34'),
(278, 'EDILBERTO', 'ALINSUG', 'N/A', '56', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Sapa Loboc', '13/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:53:19', '2020-03-18 05:53:19'),
(279, 'ROWEN', 'GIDA', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Libertad', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:54:20', '2020-03-18 05:54:20'),
(280, 'IRKIETH', 'OMLERO', 'N/A', '21', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Romarate', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:55:10', '2020-03-18 05:55:10'),
(281, 'SARAH MAE', 'JUMAWAN', 'N/A', '22', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:56:03', '2020-03-18 05:56:03'),
(282, 'REALYN', 'CENIZA', 'N/A', '22', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:56:44', '2020-03-18 05:56:44'),
(283, 'MAMFY', 'DELOS SANTOS', 'N/A', '25', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Gubaan', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:58:05', '2020-03-18 05:58:05'),
(284, 'MALOU', 'TENEBROSO', 'N/A', '25', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lintugop', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:59:13', '2020-03-18 05:59:13'),
(285, 'JESSA', 'PADIGOS', 'N/A', '22', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 05:59:54', '2020-03-18 05:59:54'),
(286, 'JOLINA', 'PANES', 'N/A', '21', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:00:33', '2020-03-18 06:00:33'),
(287, 'SHIELA JAY', 'PAJENTE', 'N/A', '23', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Panaghiusav', '10/03/2020', 'CDO-DAHILAYAN-ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:01:16', '2020-03-18 06:01:16'),
(288, 'HANILIE', 'ENGCOY', 'N/A', '26', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '04/03/2020', 'KUWAIT', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:02:29', '2020-03-18 06:02:29'),
(289, 'EVER GRACE', 'OPLE', 'N/A', '26', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '15/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:03:24', '2020-03-18 06:03:24'),
(290, 'DAHLIA', 'ZAMORA', 'N/A', '44', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '08/03/2020', 'BATANGAS', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:04:03', '2020-03-18 06:04:03'),
(291, 'ROVELYN', 'CENIZA', 'N/A', '28', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Waterfall', '10/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:05:31', '2020-03-18 06:05:31'),
(292, 'MARICRIS', 'ANTIGA', 'N/A', '24', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '10/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:06:40', '2020-03-18 06:06:40'),
(293, 'JESSIL', 'JAYME', 'N/A', '22', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Anonang', '10/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:07:31', '2020-03-18 06:07:31'),
(294, 'RICEL', 'MEDINA', 'N/A', '37', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '10/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:08:17', '2020-03-18 06:08:17'),
(295, 'JEFFREY', 'SOY-OPEN', 'N/A', '32', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:09:05', '2020-03-18 06:09:05'),
(296, 'JESILLA', 'SOY-OPEN', 'N/A', '21', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:09:44', '2020-03-18 06:09:44');
INSERT INTO `patients` (`id`, `fname`, `lname`, `mname`, `age`, `gender`, `contact_num`, `nationality`, `address`, `brgy`, `date_exposure`, `travel_history`, `symptoms`, `patient_type`, `municipality`, `created_at`, `updated_at`) VALUES
(297, 'EDGARDO', 'SOY-OPEN', 'N/A', '63', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:10:51', '2020-03-18 06:10:51'),
(298, 'MARIA LOURDES', 'SOY-OPEN', 'N/A', '57', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:11:37', '2020-03-18 06:11:37'),
(299, 'GILDA', 'VILLAVERDE', 'N/A', '32', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'San Juan', '16/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:12:15', '2020-03-18 06:12:15'),
(300, 'FELMIE', 'VERANO', 'N/A', '27', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Sapa Loboc', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:13:02', '2020-03-18 06:13:02'),
(301, 'ACE', 'VEQUISO', 'N/A', '2', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Sapa Loboc', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:14:05', '2020-03-18 06:14:05'),
(302, 'ARVIN', 'BATO', 'N/A', '25', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Sapa Loboc', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:15:07', '2020-03-18 06:15:07'),
(303, 'NERFE', 'ALEGADO', 'N/A', '31', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Sapa Loboc', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:16:02', '2020-03-18 06:16:02'),
(304, 'KLIFER', 'BANCAIREN', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Sapa Loboc', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:17:09', '2020-03-18 06:17:09'),
(305, 'OLGA', 'CENIZA', 'N/A', '45', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '12/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:17:43', '2020-03-18 06:17:43'),
(306, 'SOPHIE', 'CENIZA', 'N/A', '5', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '12/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:18:25', '2020-03-18 06:18:25'),
(307, 'KEVIN', 'BATERSAL', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Balas', '16/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:19:15', '2020-03-18 06:19:15'),
(308, 'JUNREY', 'REGIS', 'N/A', '26', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:19:53', '2020-03-18 06:19:53'),
(309, 'CHARMIE GLENN', 'DE AQUINO', 'N/A', '26', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Libertad', '17/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:20:34', '2020-03-18 06:20:34'),
(310, 'RANDELL', 'NERIS', 'N/A', '31', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Libertad', '17/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:21:06', '2020-03-18 06:21:06'),
(311, 'BANDA', 'ANALYN', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Lintugop', '16/03/2020', 'ILIGAN', 'COLDS 2 WEEKS AGO', 'PUI', 'AURORA', '2020-03-18 06:21:56', '2020-03-18 06:21:56'),
(312, 'MERCY', 'PARAMI', 'N/A', '36', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lintugop', '16/03/2020', 'ZAMBOANGA CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:22:39', '2020-03-18 06:22:39'),
(313, 'ROBITA', 'MAKIG-ANGAY', 'N/A', '70', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lintugop', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:23:25', '2020-03-18 06:23:25'),
(314, 'CARHL JADE', 'BAUTISTA', 'N/A', '21', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '14/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:24:24', '2020-03-18 06:24:24'),
(315, 'CHRISTOPHER', 'SUMALPONG', 'N/A', '21', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Gubaan', '12/03/2020', 'LUZON', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:25:33', '2020-03-18 06:25:33'),
(316, 'BONIFACIO', 'SEMBLANTE', 'N/A', '32', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:26:23', '2020-03-18 06:26:23'),
(317, 'RIZA', 'AMANCIO', 'N/A', '22', 'Female', 'N/A', 'FILIPINO', 'AZDS/ BASILAN', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:27:39', '2020-03-18 06:27:39'),
(319, 'CHRISTINE', 'BALINGIT', 'N/A', '21', 'Female', 'N/A', 'FILIPINO', 'AZDS/ ZAMBOANGA CITY', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:29:30', '2020-03-18 06:29:30'),
(320, 'JAZER', 'VILLANUEVA', 'N/A', '22', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '13/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:31:40', '2020-03-18 06:31:40'),
(321, 'ELMAR', 'ROBLES', 'N/A', '21', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:33:36', '2020-03-18 06:33:36'),
(322, 'ELLA MAE', 'RAMIREZ', 'N/A', '21', 'Female', 'N/A', 'FILIPINO', 'AZDS/ ZAMBOANGA CITY', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:34:23', '2020-03-18 06:34:23'),
(323, 'CHERRY MAE', 'CABANSAY', 'N/A', '23', 'Female', 'N/A', 'FILIPINO', 'AZDS/ ZAMBOANGA CITY', 'Poblacion', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:35:23', '2020-03-18 06:35:23'),
(324, 'JOY', 'SULLEGUE', 'N/A', '29', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '17/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:36:14', '2020-03-18 06:36:14'),
(325, 'KENNETH', 'SALAZAR', 'N/A', '49', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:37:02', '2020-03-18 06:37:02'),
(326, 'AYA LYN', 'CABATINGAN', 'N/A', '20', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'OZAMIZ CITY', 'COLDS FOR 1 MONTH', 'PUI', 'AURORA', '2020-03-18 06:37:52', '2020-03-18 06:37:52'),
(327, 'LAVINA', 'BANGCARA', 'N/A', '32', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Romarate', '10/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:38:29', '2020-03-18 06:38:29'),
(328, 'CHRISTIAN JOHN', 'ALCALDE', 'N/A', '18', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Romarate', '14/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:39:19', '2020-03-18 06:39:19'),
(329, 'MA. CHRISTINE JOY', 'ALCALDE', 'N/A', '23', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '17/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:40:27', '2020-03-18 06:40:27'),
(330, 'DONNALEN', 'VICERA', 'N/A', '18', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '18/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:41:15', '2020-03-18 06:41:15'),
(332, 'KENNA AMOR', 'DAAROL', 'N/A', '22', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Balide', '13/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:42:37', '2020-03-18 06:42:37'),
(333, 'KIRCHER AMOR', 'DAAROL', 'N/A', '20', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Balide', '13/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:43:16', '2020-03-18 06:43:16'),
(334, 'GENEVIVE', 'ADOLFO', 'N/A', '41', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Campo Uno', '17/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:43:52', '2020-03-18 06:43:52'),
(335, 'DANILO', 'ADOLFO', 'N/A', '45', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Campo Uno', '17/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:44:27', '2020-03-18 06:44:27'),
(337, 'JOHN REY', 'VILLASORDA', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '15/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:46:33', '2020-03-18 06:46:33'),
(338, 'ELLEN JOY', 'COLONGAN', 'N/A', '23', 'Female', 'N/A', 'FILIPINO', 'N/A', 'Acad', '15/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:47:22', '2020-03-18 06:47:22'),
(339, 'ADELA', 'BAOY', 'N/A', '23', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:48:06', '2020-03-18 06:48:06'),
(340, 'RAMON REY', 'MAASIN', 'N/A', '34', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:48:41', '2020-03-18 06:48:41'),
(341, 'ANNALEAH', 'MONGGANOS', 'N/A', '18', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '16/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:49:22', '2020-03-18 06:49:22'),
(342, 'CLARIZZA', 'CASTILLO', 'N/A', '2', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Alang-alang', '10/03/2020', 'LAGUNA', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:50:14', '2020-03-18 06:50:14'),
(343, 'RALPH OSCAR', 'BAGABOYBOY', 'N/A', '40', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '14/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:51:03', '2020-03-18 06:51:03'),
(344, 'LUZMINDA', 'PROSIA', 'N/A', '40', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '14/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:51:50', '2020-03-18 06:51:50'),
(345, 'MARJOHN', 'CABRIANA', 'N/A', '21', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '11/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:52:48', '2020-03-18 06:52:48'),
(346, 'MARIMEL', 'ESTALLO', 'N/A', '45', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '14/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:53:35', '2020-03-18 06:53:35'),
(347, 'JOHN REY', 'ALIVIO', 'N/A', '27', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '18/03/2020', 'KORONADAL, COTABATO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:54:30', '2020-03-18 06:54:30'),
(348, 'JOSEPH RYAN', 'VENTIC', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '18/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:55:21', '2020-03-18 06:55:21'),
(349, 'VICENTE', 'LUMACANG', 'N/A', '20', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Kauswagan', '16/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:56:18', '2020-03-18 06:56:18'),
(350, 'DORIME', 'MARISCAL', 'N/A', '52', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '15/03/2020', 'NEGROS OCCIDENTAL', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:57:21', '2020-03-18 06:57:21'),
(351, 'DIOSDADA', 'PROCRATO', 'N/A', '63', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '14/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-18 06:58:39', '2020-03-18 06:58:39'),
(352, 'SHERRY MAE', 'TACMOY', 'N/A', '24', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '14/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-18 07:00:11', '2020-03-18 07:00:11'),
(353, 'LADY MAE', 'WAGAS', 'N/A', '24', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '14/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 07:00:46', '2020-03-18 07:00:46'),
(354, 'JOY', 'PROCRATO', 'N/A', '24', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Acad', '14/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 07:01:20', '2020-03-18 07:01:20'),
(355, 'ABEL', 'AMAMONPON', 'N/A', '30', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Libertad', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 07:02:10', '2020-03-18 07:02:10'),
(356, 'MEDELYN', 'BONTILAO', 'N/A', '65', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Libertad', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 07:03:20', '2020-03-18 07:03:20'),
(357, 'BONIFACIO', 'PATALINGHUG', 'N/A', '26', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Maslog', '16/03/2020', 'COTABATO', 'NONE', 'PUM', 'AURORA', '2020-03-18 07:04:18', '2020-03-18 07:04:18'),
(358, 'CRISTY', 'CUIZON', 'N/A', '39', 'Female', 'NA', 'FILIPINO', 'AZDS', 'Lantungan', '18/03/2020', 'RIZAL', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:47:00', '2020-03-18 12:47:00'),
(359, 'ALBERT', 'COSEP', 'N/A', '36', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '18/03/2020', 'CAINTA, RIZAL', 'NONE.', 'PUM', 'AURORA', '2020-03-18 12:47:54', '2020-03-18 12:47:54'),
(360, 'TOMMY SHINN', 'COSEP', 'N/A', '10', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '18/03/2020', 'CAINTA, RIZAL', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:48:31', '2020-03-18 12:48:31'),
(361, 'TANNA SHERMY', 'COSEP', 'N/A', '2', 'Female', '09971731969', 'FILIPINO', 'AZDS', 'Lantungan', '18/03/2020', 'CAINTA, RIZAL', 'COUGH', 'PUI', 'AURORA', '2020-03-18 12:50:50', '2020-03-18 12:50:50'),
(362, 'WELMAR', 'ACAS', 'N/A', '37', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '11/03/2020', 'QUEZON', 'NONE.', 'PUM', 'AURORA', '2020-03-18 12:51:43', '2020-03-18 12:51:43'),
(363, 'JINGKIE', 'ACAS', 'N/A', '41', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '11/03/2020', 'QUEZON', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:52:39', '2020-03-18 12:52:39'),
(364, 'KEZZA JANE', 'ACAS', 'N/A', '12', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '11/03/2020', 'QUEZON', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:53:28', '2020-03-18 12:53:28'),
(365, 'JEAN ETHEL', 'GABUTERO', 'N/A', '22', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '17/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:54:11', '2020-03-18 12:54:11'),
(366, 'CHARISH JAY', 'CLAMONTE', 'N/A', '19', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '13/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:54:52', '2020-03-18 12:54:52'),
(367, 'GRACELY', 'MAGHINAY', 'N/A', '36', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '17/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:55:37', '2020-03-18 12:55:37'),
(368, 'MA. ANGELA', 'YAMUT', 'N/A', '2', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '17/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:56:17', '2020-03-18 12:56:17'),
(369, 'FERIAN', 'REBOSTO', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '17/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:57:22', '2020-03-18 12:57:22'),
(370, 'SHARAMIE', 'BIONSON', 'N/A', '32', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '08/03/2020', 'CAVITE', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:57:56', '2020-03-18 12:57:56'),
(371, 'SHARLEE MARY', 'VALENCIA', 'N/A', '3', 'Female', 'NA', 'FILIPINO', 'AZDS', 'Lantungan', '08/03/2020', 'CAVITE', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:58:42', '2020-03-18 12:58:42'),
(372, 'LEONARD', 'VALENCIA', 'N/A', '35', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Lantungan', '08/03/2020', 'CAVITE', 'NONE', 'PUM', 'AURORA', '2020-03-18 12:59:25', '2020-03-18 12:59:25'),
(373, 'MARK LAWRENCE', 'TAGIWALO', 'N/A', '16', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'San Jose', '13/03/2020', 'DUMAGUETE', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:00:14', '2020-03-18 13:00:14'),
(374, 'LEAH', 'SAMBILAD', 'N/A', '21', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Tagulalo', '18/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:00:51', '2020-03-18 13:00:51'),
(375, 'MARY ANN', 'LONGAKIT', 'N/A', '47', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '10/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:04:22', '2020-03-18 13:04:22'),
(376, 'JONDIL', 'PAMAYBAY', 'N/A', '32', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Maslog', '16/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:05:00', '2020-03-18 13:05:00'),
(377, 'NELLMER', 'LAHOYLAHOY', 'N/A', '22', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Maslog', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:05:40', '2020-03-18 13:05:40'),
(378, 'AMOR', 'CABARDE', 'N/A', '29', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Maslog', '13/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:06:10', '2020-03-18 13:06:10'),
(379, 'RUBINA', 'DELOS SANTOS', 'N/A', '34', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Maslog', '13/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:06:40', '2020-03-18 13:06:40'),
(380, 'PRINCES MAY', 'AYONTO', 'N/A', '21', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:07:18', '2020-03-18 13:07:18'),
(381, 'JULITO', 'NOVAL', 'N/A', '45', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Bayabas', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:09:14', '2020-03-18 13:09:14'),
(382, 'CATHERINE', 'SOCO', 'N/A', '34', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Bayabas', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:10:01', '2020-03-18 13:10:01'),
(383, 'JELHAD', 'LOVENARIO', 'N/A', '23', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Maslog', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:10:45', '2020-03-18 13:10:45'),
(384, 'JAPHET', 'LOVENARIO', 'N/A', '17', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Maslog', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:11:32', '2020-03-18 13:11:32'),
(385, 'RENALDO', 'ENGLISA', 'N/A', '62', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Maslog', '16/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:12:12', '2020-03-18 13:12:12'),
(386, 'REYSA MAE', 'GUDILOS', 'N/A', '19', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Poblacion', '12/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:12:52', '2020-03-18 13:12:52'),
(387, 'CRISTITA', 'BONTUYAN', 'N/A', '58', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Inroad', '14/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:13:53', '2020-03-18 13:13:53'),
(388, 'ROMULO', 'DE RODA', 'N/A', '55', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Inroad', '14/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:14:33', '2020-03-18 13:14:33'),
(389, 'FLORENCIO', 'ALCALDE', 'N/A', '35', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Inroad', '14/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:15:33', '2020-03-18 13:15:33'),
(390, 'EVELYN', 'ENGLISA', 'N/A', '40', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Maslog', '09/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:23:56', '2020-03-18 13:23:56'),
(391, 'GIN', 'YANGAN', 'N/A', '25', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Bagong Pitogo', '14/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:28:02', '2020-03-18 13:28:02'),
(392, 'NIKKI VALERI', 'COBARRUBIAS', 'N/A', '11', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Monte Alegre', '11/03/2020', 'BAGUIO CITY', 'BODY MALAISE, HEADACHE, FEVER', 'PUI', 'AURORA', '2020-03-18 13:31:53', '2020-03-18 13:31:53'),
(393, 'WALTER', 'BONJOC', 'N/A', '30', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'Balide', '11/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:35:32', '2020-03-18 13:35:32'),
(394, 'ANN-ANN', 'BONJOC', 'N/A', '30', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Balide', '11/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:36:11', '2020-03-18 13:36:11'),
(395, 'VLINDA', 'SANFORD', 'N/A', '40', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'Kahayagan East', '13/03/2020', 'NEW ZEALAND', 'NONE', 'PUM', 'AURORA', '2020-03-18 13:48:49', '2020-03-18 13:48:49'),
(396, 'RYAN MARK', 'MAGHINAY', 'N/A', '20', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'LIBERTAD', '18/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 23:45:43', '2020-03-18 23:45:43'),
(397, 'JOFEL', 'MACION', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '07/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 23:48:43', '2020-03-18 23:48:43'),
(398, 'ROMEL', 'PACQUIAO', 'N/A', '28', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'CAMPO UNO', '17/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 23:51:40', '2020-03-18 23:51:40'),
(399, 'CARLO', 'BUGTAY', 'N/A', '20', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BALINTAWAK', '18/03-2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-18 23:53:31', '2020-03-18 23:53:31'),
(400, 'ARCHIE', 'CORTES', 'N/A', '22', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 23:56:03', '2020-03-18 23:56:03'),
(401, 'JENEVIEVE', 'TORRES', 'N/A', '28', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-18 23:58:02', '2020-03-18 23:58:02'),
(402, 'BOBBY', 'AUGUSTO', 'N/A', '39', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:00:03', '2020-03-19 00:00:03'),
(403, 'JERALDEN', 'DALUMPINES', 'N/A', '35', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:01:38', '2020-03-19 00:01:38'),
(404, 'HONEYJAN', 'DALUMPINES', 'N/A', '10', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:05:36', '2020-03-19 00:05:36'),
(405, 'ZYRA', 'DALUMPINES', 'N/A', '8', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:07:19', '2020-03-19 00:07:19'),
(406, 'MICUE LOUIE', 'SANTO CILDES', 'N/A', '30', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '11/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:11:05', '2020-03-19 00:11:05'),
(407, 'GREG ADRIAN', 'PEPITO', 'N/A', '23', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '17/03/2020', 'MANILA-CEBU', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:13:46', '2020-03-19 00:13:46'),
(408, 'MERCEDITA', 'DELOS SANTOS', 'N/A', '47', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '14/03/2020', 'COTABATO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:17:12', '2020-03-19 00:17:12'),
(409, 'ERNESTO', 'DELOS SANTOS', 'N/A', '58', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '14/03/2020', 'COTABATO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:19:36', '2020-03-19 00:19:36'),
(410, 'NARCISO', 'PIÑAS', 'N/A', '70', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '14/03/2020', 'COTABATO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:21:54', '2020-03-19 00:21:54'),
(411, 'PINKY', 'PIÑAS', 'N/A', '1', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '14/03/2020', 'COTABATO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:23:03', '2020-03-19 00:23:03'),
(412, 'IRISH', 'PIÑAS', 'N/A', '15', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'GUBAAN', '14/03/2020', 'COTABATO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:23:53', '2020-03-19 00:23:53'),
(413, 'CHRISTINE', 'ETCAY', 'N/A', '20', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BAYABAS', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:25:58', '2020-03-19 00:25:58'),
(414, 'SHAINA', 'AMARO', 'N/A', '20', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BAYABAS', '13/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:27:24', '2020-03-19 00:27:24'),
(415, 'AIZA', 'AMARO', 'N/A', '31', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BAYABAS', '14/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:28:47', '2020-03-19 00:28:47'),
(416, 'MCKINLEY', 'AMARO', 'N/A', '9', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BAYABAS', '14/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:30:09', '2020-03-19 00:30:09'),
(417, 'AIFE JUNE', 'AMARO', 'N/A', '7', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BAYABAS', '14/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:31:17', '2020-03-19 00:31:17'),
(418, 'JAMES HAROLD', 'AMARO', 'N/A', '7', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BAYABAS', '14/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:32:28', '2020-03-19 00:32:28'),
(419, 'DAVE', 'AMARO', 'N/A', '1', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BAYABAS', '14/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:33:22', '2020-03-19 00:33:22'),
(420, 'FERINA', 'POHANES', 'N/A', '25', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BALINTAWAK', '10/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 00:34:52', '2020-03-19 00:34:52'),
(421, 'JUSTIN MAR', 'TAGALO', 'N/A', '25', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '15/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 01:03:09', '2020-03-19 01:03:09'),
(422, 'JEWELLANE', 'REPULLE', 'N/A', '18', 'Female', '09382072792', 'FILIPINO', 'AZDS', 'BALINTAWAK', '14/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 01:05:53', '2020-03-19 01:05:53'),
(423, 'JADEVINE', 'ZAMORA', 'N/A', '19', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BALINTAWAK', '11/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 01:07:57', '2020-03-19 01:07:57'),
(424, 'ARTHURO', 'MARIQUITA', 'N/A', '50', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'ANONANG', '17/03/2020', 'RIZAL, MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 01:57:24', '2020-03-19 01:57:24'),
(425, 'ELVIRA', 'SARONA', 'N/A', '62', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'ANONANG', '17/03/2020', 'RIZAL, MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 01:58:25', '2020-03-19 01:58:25'),
(426, 'RUBEN', 'SARONA', 'N/A', '64', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'ANONANG', '17/03/2020', 'RIZAL, MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 01:59:03', '2020-03-19 01:59:03'),
(427, 'MAGDALENA', 'SAYSIP', 'N/A', '59', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'ANONANG', '17/03/2020', 'RIZAL, MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:00:19', '2020-03-19 02:00:19'),
(429, 'SHIELA MAE', 'SAYSIP', 'N/A', '22', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'ANONANG', '17/03/2020', 'RIZAL, MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:01:10', '2020-03-19 02:01:10'),
(430, 'FELIX', 'BANAAG', 'N/A', '50', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:02:01', '2020-03-19 02:02:01'),
(432, 'NERISSA', 'ALBONIAN', 'N/A', '41', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'RESTHOUSE', '13/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:03:59', '2020-03-19 02:03:59'),
(435, 'JESSEL MARY', 'PANGANDIAN', 'N/A', '24', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '16/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:06:15', '2020-03-19 02:06:15'),
(436, 'SANIE', 'ABAYON', 'N/A', '40', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '18/03/2020', 'OZAMIZ CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:10:52', '2020-03-19 02:10:52'),
(438, 'JOHN PHILIPP', 'MAGLANGIT', 'N/A', '16', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'INASAGAN', '10/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:12:49', '2020-03-19 02:12:49'),
(440, 'JIMMY', 'ABAYON JR.', 'N/A', '21', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '18/03/2020', 'OZAMIZ CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:15:36', '2020-03-19 02:15:36'),
(442, 'MARIA', 'BONGGO', 'N/A', '68', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'RESTHOUSE', '17/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:16:14', '2020-03-19 02:16:14'),
(443, 'JOCELYN', 'JUEZAN', 'N/A', '46', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'RESTHOUSE', '13/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:17:48', '2020-03-19 02:17:48'),
(444, 'ALFREDO', 'JOCSON', 'N/A', '69', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'LINTUGOP', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:21:23', '2020-03-19 02:21:23'),
(445, 'TETCHEMIE', 'CANILLO', 'N/A', '22', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'LINTUGOP', '18/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:22:57', '2020-03-19 02:22:57'),
(446, 'DANIE FE', 'TILLO', 'N/A', '34', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'SAPA LOBOC', '18/03/2020', 'NO TRAVEL HISTORY', 'WITH CLOSE CONTACT TO HONEY VELASQUEZ', 'PUM', 'AURORA', '2020-03-19 02:24:07', '2020-03-19 02:24:07'),
(447, 'LEONARDO', 'UMPOY', 'N/A', '39', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'LINTUGOP', '17/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:25:23', '2020-03-19 02:25:23'),
(448, 'GLARISH', 'CANILLO', 'N/A', '21', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'LINTUGOP', '18/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:26:28', '2020-03-19 02:26:28'),
(449, 'CHARISSENIN', 'TUDTUD', 'N/A', '21', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'LINTUGOP', '17/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:27:13', '2020-03-19 02:27:13'),
(452, 'LEA', 'SALONGA', 'N/A', '25', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'ANONANG', '17/03/2020', 'RIZAL, MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:52:08', '2020-03-19 02:52:08'),
(453, 'JONATHAN', 'SUSUSCO', 'N/A', '20', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '18/03-2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:52:52', '2020-03-19 02:52:52'),
(455, 'ORCELL', 'BANGUIS', 'N/A', '32', 'Male', 'N/A', 'FILIPINO', 'P. DAHLIA, AZDS', 'POBLACION', '19/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:54:15', '2020-03-19 02:54:15'),
(456, 'AGNES', 'TAPORCO', 'N/A', '66', 'Female', 'N/A', 'FILIPINO', 'P. CALUBI, AZDS', 'POBLACION', '14/03/2020', 'DUBAI-SINGAPORE-MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:55:25', '2020-03-19 02:55:25'),
(458, 'FELICITO', 'TAPORCO', 'N/A', '72', 'Male', 'N/A', 'FILIPINO', 'P. CALUBI, AZDS', 'POBLACION', '14/03/2020', 'DUBAI-SINGAPORE-MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:56:12', '2020-03-19 02:56:12'),
(459, 'NORMA', 'TABURDA', 'N', '69', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'KAHAYAGAN WEST', '18/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:56:50', '2020-03-19 02:56:50'),
(460, 'IKE', 'ARCHUA', 'N/A', '20', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'MONTE ALEGRE', '17/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:57:21', '2020-03-19 02:57:21'),
(461, 'LAIKA', 'TAN', 'N/A', '11', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'MONTE ALEGRE', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:58:05', '2020-03-19 02:58:05'),
(462, 'CRISTINA', 'SOQUE', 'N/A', '58', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'MONTE ALEGRE', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:58:51', '2020-03-19 02:58:51'),
(463, 'SAMUEL', 'SOQUE', 'N/A', '60', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'MONTE ALEGRE', '15/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 02:59:47', '2020-03-19 02:59:47'),
(464, 'SANDY', 'TUMARONG', 'N/A', '39', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'MONTE ALEGRE', '18/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 03:00:14', '2020-03-19 03:00:14'),
(465, 'JACQUELINE', 'RIVERA', 'N/A', '21', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'CAMPO UNO', '19/03/2020', 'TUBOD (LDN)', 'NONE', 'PUM', 'AURORA', '2020-03-19 03:01:03', '2020-03-19 03:01:03'),
(466, 'ANGEL ANN', 'ARGAWANON', 'N/A', '26', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BALIDE', '19/03/2020', 'CEBU-TUBOD (LDN)', 'NONE', 'PUM', 'AURORA', '2020-03-19 03:01:53', '2020-03-19 03:01:53'),
(467, 'GJEELARD', 'DACANAY', 'N/A', '7', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'SAN JOSE', '11/03/2020', 'BAGUIO CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 03:02:49', '2020-03-19 03:02:49'),
(468, 'RHEYZ', 'ADOLFO', 'PAMAN', '22', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '13/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 03:03:26', '2020-03-19 03:03:26'),
(469, 'FRANCO', 'OCTAVIO', 'N/A', '34', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '08/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 03:04:09', '2020-03-19 03:04:09'),
(470, 'LEONOSA', 'ORLANES', 'N/A', '58', 'Female', 'N/A', 'FILIPINO', 'P. SAGRADA,AZDS', 'POBLACION', '16/03/2020', 'ILIGAN', 'FEVER ON MARCH 16-17, 2020/ DRY COUGH, COLDS, DIFFICULTY OF BREATHING, COUGH WITH PHLEGM, BODY MALAISE', 'PUI', 'AURORA', '2020-03-19 03:23:30', '2020-03-19 03:23:30'),
(471, 'MARIA ROWENA', 'TIGTIG', 'N/A', '44', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '19/03/2020', 'NO TRAVEL HISTORY BUT WITH CLOSE CONTACT TO PUM', 'SORE THROAT, DRY COUGH, COLDS, BODY MALAISE, HEADACHE, DIFFICULTY OF BREATHING, TEMP: 36.3', 'PUI', 'AURORA', '2020-03-19 03:26:49', '2020-03-19 03:26:49'),
(472, 'DONA', 'CONEJOS', 'N/A', '28', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '10/03/2020', 'USA-MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 04:10:40', '2020-03-19 04:10:40'),
(475, 'THELMA', 'CONEJOS', 'N/A', '62', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '10/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 04:11:45', '2020-03-19 04:11:45'),
(476, 'NATHANIEL', 'CONEJOS', 'N/A', '8', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '10/03/2020', 'MANILA', 'NONE', 'PUM', 'AURORA', '2020-03-19 04:13:13', '2020-03-19 04:13:13'),
(477, 'RUBY ROSE', 'ARTES', 'N/A', '18', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '16/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 04:42:13', '2020-03-19 04:42:13'),
(478, 'RICHARD', 'BRAVO SR.', 'N/A', '53', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BALAS', '14/03/2020', 'ILO-ILO', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:25:59', '2020-03-19 21:25:59'),
(479, 'EXEQUELA', 'FERRAREN', 'N/A', '56', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BAGONG OSLOB', '16/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:28:48', '2020-03-19 21:28:48'),
(480, 'CLAUDIO', 'FERRAREN', 'N/A', '56', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'ACAD', '16/03/2020', 'CEBU CITY', 'NONE', 'PUI', 'AURORA', '2020-03-19 21:30:11', '2020-03-19 21:34:55'),
(481, 'TEODORO', 'MOSQUEDA', 'N/A', '69', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BAGONG OSLOB', '16/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:42:56', '2020-03-19 21:42:56'),
(482, 'OSCAR', 'LOPEZ JR.', 'N/A', '27', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BAGONG OSLOB', '16/03/2020', 'CEBU CITY', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:44:04', '2020-03-19 21:44:04'),
(483, 'EMILIO', 'MOSQUEDA', 'N/A', '63', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BAGONG OSLOB', '16/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:45:22', '2020-03-19 21:45:22'),
(484, 'MERLINA', 'VENA', 'N/A', '31', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BAGONG OSLOB', '16/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:46:45', '2020-03-19 21:46:45'),
(485, 'ERIC', 'DAGAYLOAN', 'N/A', '41', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BAGONG OSLOB', '16/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:47:45', '2020-03-19 21:47:45'),
(486, 'ALJON', 'HAMOL-AWON', 'N/A', '28', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BAGONG OSLOB', '16/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:48:50', '2020-03-19 21:48:50'),
(487, 'ETHAN', 'HAMOL-AWON', 'N/A', '5', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BAGONG OSLOB', '16/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:49:49', '2020-03-19 21:49:49'),
(488, 'MAILYN', 'HAMOL-AWON', 'N/A', '24', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BAGONG OSLOB', '16/03/2020', 'DIPOLOG', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:50:52', '2020-03-19 21:50:52'),
(489, 'MARY JOY', 'SABILLANA', 'N/A', '27', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BEMPOSA', '13/03/2020', 'DUMAGUETE', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:51:58', '2020-03-19 21:51:58'),
(490, 'BRYMEL JOHN', 'MONOVA', 'N/A', '20', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BEMPOSA', '18/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:53:20', '2020-03-19 21:53:20'),
(491, 'ALJOHN', 'TANEO', 'N/A', '26', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'BEMPOSA', '18/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:54:21', '2020-03-19 21:54:21'),
(492, 'ANTONIO', 'ARMERO', 'N/A', '58', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BEMPOSA', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:55:24', '2020-03-19 21:55:24'),
(493, 'ANTONIO', 'ARMERO', 'N/A', '58', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'BEMPOSA', '15/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 21:59:35', '2020-03-19 21:59:35'),
(494, 'ELJADE', 'MACASAOL', 'N/A', '28', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'CAMPO UNO', '19/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 22:00:48', '2020-03-19 22:00:48'),
(495, 'CRESILDA', 'CUARES', 'N/A', '19', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'CAMPO UNO', '19/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 22:02:03', '2020-03-19 22:02:03'),
(496, 'CRISELLE', 'MACASAOL', 'N/A', '0', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'CAMPO UNO', '19/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 22:04:20', '2020-03-19 22:04:20'),
(497, 'JENETTE', 'MENDAROS', 'N/A', '26', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'POBLACION', '18/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 22:05:53', '2020-03-19 22:05:53'),
(498, 'ROLLY JANE', 'GABONADA', 'N/A', '27', 'Female', 'N/A', 'FILIPINO', 'AZDS', 'SAPA LOBOC', '17/03/2020', 'CDO', 'NONE', 'PUM', 'AURORA', '2020-03-19 22:10:45', '2020-03-19 22:10:45'),
(499, 'JAY-AR', 'TINGCANG', 'N/A', '28', 'Male', 'N/A', 'FILIPINO', 'AZDS', 'SAPA LOBOC', '18/03/2020', 'ILIGAN', 'NONE', 'PUM', 'AURORA', '2020-03-19 22:11:55', '2020-03-19 22:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `usertype`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'CENIZA GEGEJOSPER B', 'super', 'gegejosper@gmail.com', NULL, '$2y$10$tcxVkbSphiaRwTvmTxZp9eKLYFfQawxgszyHGVtg1HnQokdyVDdtG', 'superadmin', 'active', NULL, '2020-03-17 17:14:09', '2020-03-17 17:14:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brgyusers`
--
ALTER TABLE `brgyusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `municipality_users`
--
ALTER TABLE `municipality_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brgyusers`
--
ALTER TABLE `brgyusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `municipality_users`
--
ALTER TABLE `municipality_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
