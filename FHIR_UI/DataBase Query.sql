-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 16, 2017 at 08:44 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb1`
--
CREATE DATABASE IF NOT EXISTS `mydb1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb1`;

-- --------------------------------------------------------

--
-- Table structure for table `fhir_fields`
--

DROP TABLE IF EXISTS `fhir_fields`;
CREATE TABLE IF NOT EXISTS `fhir_fields` (
  `field_id` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `field_path` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fhir_fields`
--

INSERT INTO `fhir_fields` (`field_id`, `profile_name`, `field_path`) VALUES
(1, 'Patient', 'Patient.text'),
(2, 'Patient', 'Patient.telecom'),
(3, 'Patient', 'Patient.photo'),
(4, 'Patient', 'Patient.name.use'),
(5, 'Patient', 'Patient.name.text'),
(6, 'Patient', 'Patient.name.suffix'),
(7, 'Patient', 'Patient.name.prefix'),
(8, 'Patient', 'Patient.name.period'),
(9, 'Patient', 'Patient.name.id'),
(10, 'Patient', 'Patient.name.given'),
(11, 'Patient', 'Patient.name.family'),
(12, 'Patient', 'Patient.name.extension'),
(13, 'Patient', 'Patient.name'),
(14, 'Patient', 'Patient.multipleBirth[x]'),
(15, 'Patient', 'Patient.modifierExtension'),
(16, 'Patient', 'Patient.meta'),
(17, 'Patient', 'Patient.maritalStatus'),
(18, 'Patient', 'Patient.managingOrganization'),
(19, 'Patient', 'Patient.link.type'),
(20, 'Patient', 'Patient.link.other'),
(21, 'Patient', 'Patient.link.modifierExtension'),
(22, 'Patient', 'Patient.link.id'),
(23, 'Patient', 'Patient.link.extension'),
(24, 'Patient', 'Patient.link'),
(25, 'Patient', 'Patient.language'),
(26, 'Patient', 'Patient.implicitRules'),
(27, 'Patient', 'Patient.identifier.value'),
(28, 'Patient', 'Patient.identifier.use'),
(29, 'Patient', 'Patient.identifier.type'),
(30, 'Patient', 'Patient.identifier.system'),
(31, 'Patient', 'Patient.identifier.period'),
(32, 'Patient', 'Patient.identifier.id'),
(33, 'Patient', 'Patient.identifier.extension'),
(34, 'Patient', 'Patient.identifier.assigner'),
(35, 'Patient', 'Patient.identifier'),
(36, 'Patient', 'Patient.id'),
(37, 'Patient', 'Patient.gender'),
(38, 'Patient', 'Patient.extension'),
(39, 'Patient', 'Patient.deceased[x]'),
(40, 'Patient', 'Patient.contained'),
(41, 'Patient', 'Patient.contact.telecom'),
(42, 'Patient', 'Patient.contact.relationship'),
(43, 'Patient', 'Patient.contact.period'),
(44, 'Patient', 'Patient.contact.organization'),
(45, 'Patient', 'Patient.contact.name'),
(46, 'Patient', 'Patient.contact.modifierExtension'),
(47, 'Patient', 'Patient.contact.id'),
(48, 'Patient', 'Patient.contact.gender'),
(49, 'Patient', 'Patient.contact.extension'),
(50, 'Patient', 'Patient.contact.address'),
(51, 'Patient', 'Patient.contact'),
(52, 'Patient', 'Patient.communication.preferred'),
(53, 'Patient', 'Patient.communication.modifierExtension'),
(54, 'Patient', 'Patient.communication.language'),
(55, 'Patient', 'Patient.communication.id'),
(56, 'Patient', 'Patient.communication.extension'),
(57, 'Patient', 'Patient.communication'),
(58, 'Patient', 'Patient.careProvider'),
(59, 'Patient', 'Patient.birthDate'),
(60, 'Patient', 'Patient.animal.species'),
(61, 'Patient', 'Patient.animal.modifierExtension'),
(62, 'Patient', 'Patient.animal.id'),
(63, 'Patient', 'Patient.animal.genderStatus'),
(64, 'Patient', 'Patient.animal.extension'),
(65, 'Patient', 'Patient.animal.breed'),
(66, 'Patient', 'Patient.animal'),
(67, 'Patient', 'Patient.address'),
(68, 'Patient', 'Patient.active'),
(69, 'Patient', 'Patient'),
(70, 'Encounter', 'Encounter.type'),
(71, 'Encounter', 'Encounter.subject'),
(72, 'Encounter', 'Encounter.statusHistory.status'),
(73, 'Encounter', 'Encounter.statusHistory.period'),
(74, 'Encounter', 'Encounter.statusHistory'),
(75, 'Encounter', 'Encounter.status'),
(76, 'Encounter', 'Encounter.serviceProvider'),
(77, 'Encounter', 'Encounter.reason'),
(78, 'Encounter', 'Encounter.priority'),
(79, 'Encounter', 'Encounter.period'),
(80, 'Encounter', 'Encounter.partOf'),
(81, 'Encounter', 'Encounter.participant.type'),
(82, 'Encounter', 'Encounter.participant.period'),
(83, 'Encounter', 'Encounter.participant.individual'),
(84, 'Encounter', 'Encounter.participant'),
(85, 'Encounter', 'Encounter.location.status'),
(86, 'Encounter', 'Encounter.location.period'),
(87, 'Encounter', 'Encounter.location.location'),
(88, 'Encounter', 'Encounter.location'),
(89, 'Encounter', 'Encounter.length'),
(90, 'Encounter', 'Encounter.incomingReferral'),
(91, 'Encounter', 'Encounter.identifier'),
(92, 'Encounter', 'Encounter.hospitalization.specialCourtesy'),
(93, 'Encounter', 'Encounter.hospitalization.specialArrangement'),
(94, 'Encounter', 'Encounter.hospitalization.reAdmission'),
(95, 'Encounter', 'Encounter.hospitalization.preAdmissionIdentifier'),
(96, 'Encounter', 'Encounter.hospitalization.origin'),
(97, 'Encounter', 'Encounter.hospitalization.dischargeDisposition'),
(98, 'Encounter', 'Encounter.hospitalization.dietPreference'),
(99, 'Encounter', 'Encounter.hospitalization.destination'),
(100, 'Encounter', 'Encounter.hospitalization.admitSource'),
(101, 'Encounter', 'Encounter.hospitalization'),
(102, 'Encounter', 'Encounter.episodeOfCare'),
(103, 'Encounter', 'Encounter.diagnosis.role'),
(104, 'Encounter', 'Encounter.diagnosis.rank'),
(105, 'Encounter', 'Encounter.diagnosis.condition'),
(106, 'Encounter', 'Encounter.diagnosis'),
(107, 'Encounter', 'Encounter.classHistory.period'),
(108, 'Encounter', 'Encounter.classHistory.class'),
(109, 'Encounter', 'Encounter.classHistory'),
(110, 'Encounter', 'Encounter.class'),
(111, 'Encounter', 'Encounter.appointment'),
(112, 'Encounter', 'Encounter.account');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
CREATE TABLE IF NOT EXISTS `field` (
  `field_id` int(11) NOT NULL,
  `segment_id` int(11) NOT NULL,
  `segment_name` varchar(255) NOT NULL,
  `field_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`field_id`, `segment_id`, `segment_name`, `field_name`) VALUES
(1, 1, 'DG1', 'DG1.1'),
(2, 1, 'DG1', 'DG1.2'),
(3, 1, 'DG1', 'DG1.3'),
(4, 1, 'DG1', 'DG1.4'),
(5, 1, 'DG1', 'DG1.5'),
(6, 2, 'EVN', 'EVN.1'),
(7, 2, 'EVN', 'EVN.2'),
(8, 2, 'EVN', 'EVN.3'),
(9, 2, 'EVN', 'EVN.4'),
(10, 2, 'EVN', 'EVN.5'),
(11, 3, 'GT1', 'GT1.1'),
(12, 3, 'GT1', 'GT1.2'),
(13, 3, 'GT1', 'GT1.3'),
(14, 3, 'GT1', 'GT1.4'),
(15, 3, 'GT1', 'GT1.5'),
(16, 4, 'IN1', 'IN1.1'),
(17, 4, 'IN1', 'IN1.2'),
(18, 4, 'IN1', 'IN1.3'),
(19, 4, 'IN1', 'IN1.4'),
(20, 4, 'IN1', 'IN1.5'),
(21, 5, 'MSH', 'MSH.1'),
(22, 5, 'MSH', 'MSH.2'),
(23, 5, 'MSH', 'MSH.3'),
(24, 5, 'MSH', 'MSH.4'),
(25, 5, 'MSH', 'MSH.5'),
(26, 6, 'NK1', 'NK1.1'),
(27, 6, 'NK1', 'NK1.2'),
(28, 6, 'NK1', 'NK1.3'),
(29, 6, 'NK1', 'NK1.4'),
(30, 6, 'NK1', 'NK1.5'),
(31, 7, 'NTE', 'NTE.1'),
(32, 7, 'NTE', 'NTE.2'),
(33, 7, 'NTE', 'NTE.3'),
(34, 7, 'NTE', 'NTE.4'),
(35, 7, 'NTE', 'NTE.5'),
(36, 8, 'OBR', 'OBR.1'),
(37, 8, 'OBR', 'OBR.2'),
(38, 8, 'OBR', 'OBR.3'),
(39, 8, 'OBR', 'OBR.4'),
(40, 8, 'OBR', 'OBR.5'),
(41, 9, 'OBX', 'OBX.1'),
(42, 9, 'OBX', 'OBX.2'),
(43, 9, 'OBX', 'OBX.3'),
(44, 9, 'OBX', 'OBX.4'),
(45, 9, 'OBX', 'OBX.5'),
(46, 10, 'ORC', 'ORC.1'),
(47, 10, 'ORC', 'ORC.2'),
(48, 10, 'ORC', 'ORC.3'),
(49, 10, 'ORC', 'ORC.4'),
(50, 10, 'ORC', 'ORC.5'),
(51, 11, 'PID', 'PID.1'),
(52, 11, 'PID', 'PID.2'),
(53, 11, 'PID', 'PID.3'),
(54, 11, 'PID', 'PID.4'),
(55, 11, 'PID', 'PID.5'),
(56, 12, 'FT1', 'FT1.1'),
(57, 12, 'FT1', 'FT1.2'),
(58, 12, 'FT1', 'FT1.3'),
(59, 12, 'FT1', 'FT1.4'),
(60, 12, 'FT1', 'FT1.5');

-- --------------------------------------------------------

--
-- Table structure for table `mappings`
--

DROP TABLE IF EXISTS `mappings`;
CREATE TABLE IF NOT EXISTS `mappings` (
  `mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) NOT NULL,
  `field_path` varchar(255) NOT NULL,
  `segment_name` varchar(255) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `mapping_name` varchar(255) NOT NULL,
  PRIMARY KEY (`mapping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mappings`
--

INSERT INTO `mappings` (`mapping_id`, `profile_name`, `field_path`, `segment_name`, `field_name`, `mapping_name`) VALUES
(1, 'Patient', 'Patient.id', 'MSH', 'MSH.5', 'CIS_MSF_ADT'),
(2, 'Patient', 'Patient.identifier.value', 'PID', 'PID.3', 'CIS_MSF_ADT'),
(3, 'Encounter', 'Encounter.hospitalization.admitSource', 'MSH', 'MSH.2', 'CIS_MSF_ADT'),
(4, 'Encounter', 'Encounter.location.status', 'OBR', 'OBR.3', 'CIS_MSF_ADT'),
(5, 'Patient', 'Patient.id', 'MSH', 'MSH.3', 'MSF_INI_ADT2'),
(6, 'Patient', 'Patient.identifier.value', 'PID', 'PID.3', 'MSF_INI_ADT2'),
(7, 'Patient', 'Patient.address', 'MSH', 'MSH.2', 'MSF_INI_ADT2'),
(8, 'Encounter', 'Encounter.location.status', 'OBR', 'OBR.3', 'MSF_INI_ADT2'),
(125, 'Encounter', 'Encounter.account', 'DG1', 'DG1.1', 'CIS_MSF_ADT'),
(126, 'Patient', 'Patient.animal.modifierExtension', 'MSH', 'MSH.5', 'CIS_MSF_ADT'),
(127, 'Patient', 'Patient.animal.extension', 'IN1', 'IN1.4', 'MSF_INI_ADT2'),
(138, 'Encounter', 'Encounter.class', 'OBX', 'OBX.5', 'MSF_INI_ADT2'),
(135, 'Patient', 'Patient.animal.extension', 'GT1', 'GT1.3', 'CIS_MSF_ADT'),
(131, 'Encounter', 'Encounter.appointment', 'GT1', 'GT1.3', 'CIS_MSF_ADT'),
(133, 'Encounter', 'Encounter.appointment', 'PID', 'PID.3', 'MSF_INI_ADT2');

-- --------------------------------------------------------

--
-- Table structure for table `segment`
--

DROP TABLE IF EXISTS `segment`;
CREATE TABLE IF NOT EXISTS `segment` (
  `segment_id` int(11) NOT NULL AUTO_INCREMENT,
  `segment_name` varchar(255) NOT NULL,
  PRIMARY KEY (`segment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `segment`
--

INSERT INTO `segment` (`segment_id`, `segment_name`) VALUES
(1, 'DG1'),
(2, 'EVN'),
(3, 'GT1'),
(4, 'IN1'),
(5, 'MSH'),
(6, 'NK1'),
(7, 'NTE'),
(8, 'OBR'),
(9, 'OBX'),
(10, 'ORC'),
(11, 'PID'),
(12, 'FT1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
