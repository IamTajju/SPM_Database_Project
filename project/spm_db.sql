-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2021 at 12:17 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessmentmarksheet_t`
--

CREATE TABLE `assessmentmarksheet_t` (
  `assessment_id` char(38) DEFAULT NULL,
  `question_id` char(38) DEFAULT NULL,
  `courseEnrollment_id` char(38) DEFAULT NULL,
  `marksObtained` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assessmentmarksheet_t`
--

INSERT INTO `assessmentmarksheet_t` (`assessment_id`, `question_id`, `courseEnrollment_id`, `marksObtained`) VALUES
('268b026f-b376-11eb-91e6-708bcd015b3f', '4bbdec04-b376-11eb-91e6-708bcd015b3f', '635ce90b-b25e-11eb-8773-708bcd015b3f', 22),
('268b026f-b376-11eb-91e6-708bcd015b3f', '4bbdec04-b376-11eb-91e6-708bcd015b3f', '6360964d-b25e-11eb-8773-708bcd015b3f', 15),
('268b026f-b376-11eb-91e6-708bcd015b3f', '4bbdec04-b376-11eb-91e6-708bcd015b3f', '63639ccc-b25e-11eb-8773-708bcd015b3f', 0),
('268b026f-b376-11eb-91e6-708bcd015b3f', '510698a5-b376-11eb-91e6-708bcd015b3f', '635ce90b-b25e-11eb-8773-708bcd015b3f', 20),
('268b026f-b376-11eb-91e6-708bcd015b3f', '510698a5-b376-11eb-91e6-708bcd015b3f', '6360964d-b25e-11eb-8773-708bcd015b3f', 15),
('268b026f-b376-11eb-91e6-708bcd015b3f', '510698a5-b376-11eb-91e6-708bcd015b3f', '63639ccc-b25e-11eb-8773-708bcd015b3f', 0),
('268b026f-b376-11eb-91e6-708bcd015b3f', '7046b8cd-b376-11eb-91e6-708bcd015b3f', '635ce90b-b25e-11eb-8773-708bcd015b3f', 27),
('268b026f-b376-11eb-91e6-708bcd015b3f', '7046b8cd-b376-11eb-91e6-708bcd015b3f', '6360964d-b25e-11eb-8773-708bcd015b3f', 24),
('268b026f-b376-11eb-91e6-708bcd015b3f', '7046b8cd-b376-11eb-91e6-708bcd015b3f', '63639ccc-b25e-11eb-8773-708bcd015b3f', 20),
('268b026f-b376-11eb-91e6-708bcd015b3f', '78c62226-b376-11eb-91e6-708bcd015b3f', '635ce90b-b25e-11eb-8773-708bcd015b3f', 18),
('268b026f-b376-11eb-91e6-708bcd015b3f', '78c62226-b376-11eb-91e6-708bcd015b3f', '6360964d-b25e-11eb-8773-708bcd015b3f', 15),
('268b026f-b376-11eb-91e6-708bcd015b3f', '78c62226-b376-11eb-91e6-708bcd015b3f', '63639ccc-b25e-11eb-8773-708bcd015b3f', 0),
('268b026f-b376-11eb-91e6-708bcd015b3f', '9a2c6329-b378-11eb-91e6-708bcd015b3f', '635ce90b-b25e-11eb-8773-708bcd015b3f', 22),
('268b026f-b376-11eb-91e6-708bcd015b3f', '9a2c6329-b378-11eb-91e6-708bcd015b3f', '6360964d-b25e-11eb-8773-708bcd015b3f', 4),
('268b026f-b376-11eb-91e6-708bcd015b3f', '9a2c6329-b378-11eb-91e6-708bcd015b3f', '63639ccc-b25e-11eb-8773-708bcd015b3f', 0),
('268b026f-b376-11eb-91e6-708bcd015b3f', 'a314155e-b378-11eb-91e6-708bcd015b3f', '635ce90b-b25e-11eb-8773-708bcd015b3f', 19),
('268b026f-b376-11eb-91e6-708bcd015b3f', 'a314155e-b378-11eb-91e6-708bcd015b3f', '6360964d-b25e-11eb-8773-708bcd015b3f', 15),
('268b026f-b376-11eb-91e6-708bcd015b3f', 'a314155e-b378-11eb-91e6-708bcd015b3f', '63639ccc-b25e-11eb-8773-708bcd015b3f', 0),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'a5668488-b37a-11eb-91e6-708bcd015b3f', '635ce90b-b25e-11eb-8773-708bcd015b3f', 25),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'a5668488-b37a-11eb-91e6-708bcd015b3f', '6360964d-b25e-11eb-8773-708bcd015b3f', 27),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'a5668488-b37a-11eb-91e6-708bcd015b3f', '63639ccc-b25e-11eb-8773-708bcd015b3f', 0),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'cdf3efd4-b379-11eb-91e6-708bcd015b3f', '635ce90b-b25e-11eb-8773-708bcd015b3f', 18),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'cdf3efd4-b379-11eb-91e6-708bcd015b3f', '6360964d-b25e-11eb-8773-708bcd015b3f', 18),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'cdf3efd4-b379-11eb-91e6-708bcd015b3f', '63639ccc-b25e-11eb-8773-708bcd015b3f', 0),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'daf5c914-b379-11eb-91e6-708bcd015b3f', '635ce90b-b25e-11eb-8773-708bcd015b3f', 12),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'daf5c914-b379-11eb-91e6-708bcd015b3f', '6360964d-b25e-11eb-8773-708bcd015b3f', 13),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'daf5c914-b379-11eb-91e6-708bcd015b3f', '63639ccc-b25e-11eb-8773-708bcd015b3f', 0),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'eb2c8564-b379-11eb-91e6-708bcd015b3f', '635ce90b-b25e-11eb-8773-708bcd015b3f', 8),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'eb2c8564-b379-11eb-91e6-708bcd015b3f', '6360964d-b25e-11eb-8773-708bcd015b3f', 11),
('c143b864-b379-11eb-91e6-708bcd015b3f', 'eb2c8564-b379-11eb-91e6-708bcd015b3f', '63639ccc-b25e-11eb-8773-708bcd015b3f', 0),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '7ea82ac6-b37b-11eb-91e6-708bcd015b3f', '60d3dc8e-b25f-11eb-8773-708bcd015b3f', 20),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '7ea82ac6-b37b-11eb-91e6-708bcd015b3f', '60d7a4e0-b25f-11eb-8773-708bcd015b3f', 0),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '7ea82ac6-b37b-11eb-91e6-708bcd015b3f', '60db1504-b25f-11eb-8773-708bcd015b3f', 20),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '85aac1be-b37b-11eb-91e6-708bcd015b3f', '60d3dc8e-b25f-11eb-8773-708bcd015b3f', 15),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '85aac1be-b37b-11eb-91e6-708bcd015b3f', '60d7a4e0-b25f-11eb-8773-708bcd015b3f', 0),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '85aac1be-b37b-11eb-91e6-708bcd015b3f', '60db1504-b25f-11eb-8773-708bcd015b3f', 0),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '8b14f30e-b37b-11eb-91e6-708bcd015b3f', '60d3dc8e-b25f-11eb-8773-708bcd015b3f', 26),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '8b14f30e-b37b-11eb-91e6-708bcd015b3f', '60d7a4e0-b25f-11eb-8773-708bcd015b3f', 20),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '8b14f30e-b37b-11eb-91e6-708bcd015b3f', '60db1504-b25f-11eb-8773-708bcd015b3f', 15),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '945be5dc-b37b-11eb-91e6-708bcd015b3f', '60d3dc8e-b25f-11eb-8773-708bcd015b3f', 10),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '945be5dc-b37b-11eb-91e6-708bcd015b3f', '60d7a4e0-b25f-11eb-8773-708bcd015b3f', 6),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '945be5dc-b37b-11eb-91e6-708bcd015b3f', '60db1504-b25f-11eb-8773-708bcd015b3f', 14),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '9b68e027-b37b-11eb-91e6-708bcd015b3f', '60d3dc8e-b25f-11eb-8773-708bcd015b3f', 0),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '9b68e027-b37b-11eb-91e6-708bcd015b3f', '60d7a4e0-b25f-11eb-8773-708bcd015b3f', 0),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '9b68e027-b37b-11eb-91e6-708bcd015b3f', '60db1504-b25f-11eb-8773-708bcd015b3f', 6),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '9f5a5c2e-b37b-11eb-91e6-708bcd015b3f', '60d3dc8e-b25f-11eb-8773-708bcd015b3f', 0),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '9f5a5c2e-b37b-11eb-91e6-708bcd015b3f', '60d7a4e0-b25f-11eb-8773-708bcd015b3f', 0),
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '9f5a5c2e-b37b-11eb-91e6-708bcd015b3f', '60db1504-b25f-11eb-8773-708bcd015b3f', 0),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', '6e644d74-b37d-11eb-91e6-708bcd015b3f', '60d3dc8e-b25f-11eb-8773-708bcd015b3f', 14),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', '6e644d74-b37d-11eb-91e6-708bcd015b3f', '60d7a4e0-b25f-11eb-8773-708bcd015b3f', 0),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', '6e644d74-b37d-11eb-91e6-708bcd015b3f', '60db1504-b25f-11eb-8773-708bcd015b3f', 11),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'ccfd3489-b37c-11eb-91e6-708bcd015b3f', '60d3dc8e-b25f-11eb-8773-708bcd015b3f', 15),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'ccfd3489-b37c-11eb-91e6-708bcd015b3f', '60d7a4e0-b25f-11eb-8773-708bcd015b3f', 0),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'ccfd3489-b37c-11eb-91e6-708bcd015b3f', '60db1504-b25f-11eb-8773-708bcd015b3f', 15),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'dc85659f-b37b-11eb-91e6-708bcd015b3f', '60d3dc8e-b25f-11eb-8773-708bcd015b3f', 9),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'dc85659f-b37b-11eb-91e6-708bcd015b3f', '60d7a4e0-b25f-11eb-8773-708bcd015b3f', 0),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'dc85659f-b37b-11eb-91e6-708bcd015b3f', '60db1504-b25f-11eb-8773-708bcd015b3f', 14),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'e00484c2-b37b-11eb-91e6-708bcd015b3f', '60d3dc8e-b25f-11eb-8773-708bcd015b3f', 13),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'e00484c2-b37b-11eb-91e6-708bcd015b3f', '60d7a4e0-b25f-11eb-8773-708bcd015b3f', 0),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'e00484c2-b37b-11eb-91e6-708bcd015b3f', '60db1504-b25f-11eb-8773-708bcd015b3f', 12),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', '91ac88db-b5a7-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 0),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', '91ac88db-b5a7-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 0),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', '91ac88db-b5a7-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 12),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', '99073ac7-b5a7-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 20),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', '99073ac7-b5a7-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 0),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', '99073ac7-b5a7-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 7),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'a4c3cee6-b5a7-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 18),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'a4c3cee6-b5a7-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 27),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'a4c3cee6-b5a7-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 0),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'afbb2c15-b5a7-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 20),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'afbb2c15-b5a7-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 0),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'afbb2c15-b5a7-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 13),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'b6324815-b5a7-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 0),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'b6324815-b5a7-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 0),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'b6324815-b5a7-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 0),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'ba92066a-b5a7-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 13),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'ba92066a-b5a7-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 15),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'ba92066a-b5a7-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 7),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'adb59956-b5a9-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 14),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'adb59956-b5a9-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 0),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'adb59956-b5a9-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 9),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'b21955bc-b5a9-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 13),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'b21955bc-b5a9-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 0),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'b21955bc-b5a9-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 7),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'b817b4e7-b5a9-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 15),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'b817b4e7-b5a9-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 0),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'b817b4e7-b5a9-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 8),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'bee740b5-b5a9-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 5),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'bee740b5-b5a9-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 0),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'bee740b5-b5a9-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 18),
('994c89bc-b5ab-11eb-b01d-708bcd015b3f', 'a6c3cfb9-b5ab-11eb-b01d-708bcd015b3f', '6ab19b3c-b268-11eb-8773-708bcd015b3f', 19),
('994c89bc-b5ab-11eb-b01d-708bcd015b3f', 'a6c3cfb9-b5ab-11eb-b01d-708bcd015b3f', '6ab64411-b268-11eb-8773-708bcd015b3f', 0),
('994c89bc-b5ab-11eb-b01d-708bcd015b3f', 'a6c3cfb9-b5ab-11eb-b01d-708bcd015b3f', '6ab93076-b268-11eb-8773-708bcd015b3f', 11),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'cbf194ce-b5ab-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 0),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'cbf194ce-b5ab-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 10),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'cbf194ce-b5ab-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 17),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'd0f22278-b5ab-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 7),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'd0f22278-b5ab-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 3),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'd0f22278-b5ab-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 0),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'd69e5ca5-b5ab-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 15),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'd69e5ca5-b5ab-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 20),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'd69e5ca5-b5ab-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 22),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'dc19e4f1-b5ab-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 14),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'dc19e4f1-b5ab-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 19),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'dc19e4f1-b5ab-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 18),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'e1ab4c1e-b5ab-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 6),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'e1ab4c1e-b5ab-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 4),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'e1ab4c1e-b5ab-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 0),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'e54a75a5-b5ab-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 4),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'e54a75a5-b5ab-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 5),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', 'e54a75a5-b5ab-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 0),
('2146b782-b5ac-11eb-b01d-708bcd015b3f', '2dc825f3-b5ac-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 27),
('2146b782-b5ac-11eb-b01d-708bcd015b3f', '2dc825f3-b5ac-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 25),
('2146b782-b5ac-11eb-b01d-708bcd015b3f', '2dc825f3-b5ac-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 23),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'bee65790-b5ac-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 9),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'bee65790-b5ac-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 9),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'bee65790-b5ac-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 14),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'c36e4654-b5ac-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 5),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'c36e4654-b5ac-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 10),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'c36e4654-b5ac-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 13),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'c86f301e-b5ac-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 9),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'c86f301e-b5ac-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 10),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'c86f301e-b5ac-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 13),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'ceeadc9e-b5ac-11eb-b01d-708bcd015b3f', 'de7b34f1-b267-11eb-8773-708bcd015b3f', 22),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'ceeadc9e-b5ac-11eb-b01d-708bcd015b3f', 'de7f65bc-b267-11eb-8773-708bcd015b3f', 19),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'ceeadc9e-b5ac-11eb-b01d-708bcd015b3f', 'f58273c8-b267-11eb-8773-708bcd015b3f', 18),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '002e8bf4-b656-11eb-b7e0-708bcd015b3f', '6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 8),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '0033953c-b656-11eb-b7e0-708bcd015b3f', '6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 7),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '00370d8c-b656-11eb-b7e0-708bcd015b3f', '6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 9),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '003ab53b-b656-11eb-b7e0-708bcd015b3f', '6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 10),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '002e8bf4-b656-11eb-b7e0-708bcd015b3f', '6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 3),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '0033953c-b656-11eb-b7e0-708bcd015b3f', '6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 3),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '00370d8c-b656-11eb-b7e0-708bcd015b3f', '6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 9),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '003ab53b-b656-11eb-b7e0-708bcd015b3f', '6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 9),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '002e8bf4-b656-11eb-b7e0-708bcd015b3f', '6cd3d142-b655-11eb-b7e0-708bcd015b3f', 8),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '0033953c-b656-11eb-b7e0-708bcd015b3f', '6cd3d142-b655-11eb-b7e0-708bcd015b3f', 9),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '00370d8c-b656-11eb-b7e0-708bcd015b3f', '6cd3d142-b655-11eb-b7e0-708bcd015b3f', 10),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', '003ab53b-b656-11eb-b7e0-708bcd015b3f', '6cd3d142-b655-11eb-b7e0-708bcd015b3f', 10),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '003e83ba-b656-11eb-b7e0-708bcd015b3f', '6cd7090d-b655-11eb-b7e0-708bcd015b3f', 9),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '0042490a-b656-11eb-b7e0-708bcd015b3f', '6cd7090d-b655-11eb-b7e0-708bcd015b3f', 2),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '0045d7a7-b656-11eb-b7e0-708bcd015b3f', '6cd7090d-b655-11eb-b7e0-708bcd015b3f', 3),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '00493546-b656-11eb-b7e0-708bcd015b3f', '6cd7090d-b655-11eb-b7e0-708bcd015b3f', 10),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '003e83ba-b656-11eb-b7e0-708bcd015b3f', '6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 10),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '0042490a-b656-11eb-b7e0-708bcd015b3f', '6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 2),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '0045d7a7-b656-11eb-b7e0-708bcd015b3f', '6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 3),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '00493546-b656-11eb-b7e0-708bcd015b3f', '6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 1),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '003e83ba-b656-11eb-b7e0-708bcd015b3f', '6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 10),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '0042490a-b656-11eb-b7e0-708bcd015b3f', '6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 10),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '0045d7a7-b656-11eb-b7e0-708bcd015b3f', '6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 3),
('95aed856-b655-11eb-b7e0-708bcd015b3f', '00493546-b656-11eb-b7e0-708bcd015b3f', '6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 1);

-- --------------------------------------------------------

--
-- Table structure for table `assessment_t`
--

CREATE TABLE `assessment_t` (
  `assessment_id` char(38) NOT NULL,
  `section_id` char(38) DEFAULT NULL,
  `assessmentType` char(1) DEFAULT NULL,
  `assessmentWeightage` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assessment_t`
--

INSERT INTO `assessment_t` (`assessment_id`, `section_id`, `assessmentType`, `assessmentWeightage`) VALUES
('0da2509a-b37b-11eb-91e6-708bcd015b3f', '842fee18-b24c-11eb-8773-708bcd015b3f', 'M', '0.500'),
('2146b782-b5ac-11eb-b01d-708bcd015b3f', '6278d221-b249-11eb-8773-708bcd015b3f', 'P', '0.300'),
('268b026f-b376-11eb-91e6-708bcd015b3f', '842cc378-b24c-11eb-8773-708bcd015b3f', 'M', '0.500'),
('6a43ac88-b5c7-11eb-b01d-708bcd015b3f', 'ae3a97c6-b24b-11eb-8773-708bcd015b3f', 'M', '0.300'),
('8a7bd839-b5a7-11eb-b01d-708bcd015b3f', '62752d34-b249-11eb-8773-708bcd015b3f', 'M', '0.300'),
('95aa8bdd-b655-11eb-b7e0-708bcd015b3f', 'b3852a2c-b652-11eb-b7e0-708bcd015b3f', 'F', '1.000'),
('95aed856-b655-11eb-b7e0-708bcd015b3f', 'b380d786-b652-11eb-b7e0-708bcd015b3f', 'F', '1.000'),
('994c89bc-b5ab-11eb-b01d-708bcd015b3f', '62752d34-b249-11eb-8773-708bcd015b3f', 'P', '0.300'),
('a59c8371-b5a9-11eb-b01d-708bcd015b3f', '62752d34-b249-11eb-8773-708bcd015b3f', 'F', '0.400'),
('aefd787a-b5ac-11eb-b01d-708bcd015b3f', '6278d221-b249-11eb-8773-708bcd015b3f', 'F', '0.400'),
('c047f410-b5ab-11eb-b01d-708bcd015b3f', '6278d221-b249-11eb-8773-708bcd015b3f', 'M', '0.300'),
('c143b864-b379-11eb-91e6-708bcd015b3f', '842cc378-b24c-11eb-8773-708bcd015b3f', 'F', '0.500'),
('c7e91d9a-b37b-11eb-91e6-708bcd015b3f', '842fee18-b24c-11eb-8773-708bcd015b3f', 'F', '0.500');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Faculty'),
(2, 'Higher Management');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(6, 1, 20),
(7, 1, 25),
(8, 1, 26),
(9, 1, 27),
(10, 1, 28),
(1, 1, 32),
(2, 1, 33),
(3, 1, 34),
(4, 1, 35),
(5, 1, 36),
(11, 2, 1),
(12, 2, 2),
(13, 2, 3),
(14, 2, 4),
(15, 2, 5),
(16, 2, 6),
(17, 2, 7),
(18, 2, 8),
(19, 2, 9),
(20, 2, 10),
(21, 2, 11),
(22, 2, 12),
(23, 2, 13),
(24, 2, 14),
(25, 2, 15),
(26, 2, 16),
(27, 2, 17),
(28, 2, 18),
(29, 2, 19),
(30, 2, 20),
(31, 2, 21),
(32, 2, 22),
(33, 2, 23),
(34, 2, 24),
(35, 2, 25),
(36, 2, 26),
(37, 2, 27),
(38, 2, 28),
(39, 2, 29),
(40, 2, 30),
(41, 2, 31),
(42, 2, 32),
(43, 2, 33),
(44, 2, 34),
(45, 2, 35),
(46, 2, 36),
(47, 2, 37),
(48, 2, 38),
(49, 2, 39),
(50, 2, 40),
(51, 2, 41),
(52, 2, 42),
(53, 2, 43),
(54, 2, 44),
(55, 2, 45),
(56, 2, 46),
(57, 2, 47),
(58, 2, 48),
(59, 2, 49),
(60, 2, 50),
(61, 2, 51),
(62, 2, 52),
(63, 2, 53),
(64, 2, 54),
(65, 2, 55),
(66, 2, 56),
(67, 2, 57),
(68, 2, 58),
(69, 2, 59),
(70, 2, 60),
(71, 2, 61),
(72, 2, 62),
(73, 2, 63),
(74, 2, 64),
(75, 2, 65),
(76, 2, 66),
(77, 2, 67),
(78, 2, 68),
(79, 2, 69),
(80, 2, 70),
(81, 2, 71),
(82, 2, 72),
(83, 2, 73),
(84, 2, 74),
(85, 2, 75),
(86, 2, 76),
(87, 2, 77),
(88, 2, 78),
(89, 2, 79),
(90, 2, 80),
(91, 2, 81),
(92, 2, 82),
(93, 2, 83),
(94, 2, 84),
(95, 2, 85),
(96, 2, 86),
(97, 2, 87),
(98, 2, 88),
(99, 2, 89),
(100, 2, 90),
(101, 2, 91),
(102, 2, 92),
(103, 2, 93),
(104, 2, 94),
(105, 2, 95),
(106, 2, 96),
(107, 2, 97),
(108, 2, 98),
(109, 2, 99),
(110, 2, 100),
(111, 2, 101),
(112, 2, 102),
(113, 2, 103),
(114, 2, 104);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add assessment t', 7, 'add_assessmentt'),
(26, 'Can change assessment t', 7, 'change_assessmentt'),
(27, 'Can delete assessment t', 7, 'delete_assessmentt'),
(28, 'Can view assessment t', 7, 'view_assessmentt'),
(29, 'Can add coevaluation t', 8, 'add_coevaluationt'),
(30, 'Can change coevaluation t', 8, 'change_coevaluationt'),
(31, 'Can delete coevaluation t', 8, 'delete_coevaluationt'),
(32, 'Can view coevaluation t', 8, 'view_coevaluationt'),
(33, 'Can add co t', 9, 'add_cot'),
(34, 'Can change co t', 9, 'change_cot'),
(35, 'Can delete co t', 9, 'delete_cot'),
(36, 'Can view co t', 9, 'view_cot'),
(37, 'Can add coursehistory t', 10, 'add_coursehistoryt'),
(38, 'Can change coursehistory t', 10, 'change_coursehistoryt'),
(39, 'Can delete coursehistory t', 10, 'delete_coursehistoryt'),
(40, 'Can view coursehistory t', 10, 'view_coursehistoryt'),
(41, 'Can add course t', 11, 'add_courset'),
(42, 'Can change course t', 11, 'change_courset'),
(43, 'Can delete course t', 11, 'delete_courset'),
(44, 'Can view course t', 11, 'view_courset'),
(45, 'Can add curriculum t', 12, 'add_curriculumt'),
(46, 'Can change curriculum t', 12, 'change_curriculumt'),
(47, 'Can delete curriculum t', 12, 'delete_curriculumt'),
(48, 'Can view curriculum t', 12, 'view_curriculumt'),
(49, 'Can add department t', 13, 'add_departmentt'),
(50, 'Can change department t', 13, 'change_departmentt'),
(51, 'Can delete department t', 13, 'delete_departmentt'),
(52, 'Can view department t', 13, 'view_departmentt'),
(53, 'Can add faculty t', 14, 'add_facultyt'),
(54, 'Can change faculty t', 14, 'change_facultyt'),
(55, 'Can delete faculty t', 14, 'delete_facultyt'),
(56, 'Can view faculty t', 14, 'view_facultyt'),
(57, 'Can add ploevaluation t', 15, 'add_ploevaluationt'),
(58, 'Can change ploevaluation t', 15, 'change_ploevaluationt'),
(59, 'Can delete ploevaluation t', 15, 'delete_ploevaluationt'),
(60, 'Can view ploevaluation t', 15, 'view_ploevaluationt'),
(61, 'Can add plohistory t', 16, 'add_plohistoryt'),
(62, 'Can change plohistory t', 16, 'change_plohistoryt'),
(63, 'Can delete plohistory t', 16, 'delete_plohistoryt'),
(64, 'Can view plohistory t', 16, 'view_plohistoryt'),
(65, 'Can add plo t', 17, 'add_plot'),
(66, 'Can change plo t', 17, 'change_plot'),
(67, 'Can delete plo t', 17, 'delete_plot'),
(68, 'Can view plo t', 17, 'view_plot'),
(69, 'Can add program t', 18, 'add_programt'),
(70, 'Can change program t', 18, 'change_programt'),
(71, 'Can delete program t', 18, 'delete_programt'),
(72, 'Can view program t', 18, 'view_programt'),
(73, 'Can add question t', 19, 'add_questiont'),
(74, 'Can change question t', 19, 'change_questiont'),
(75, 'Can delete question t', 19, 'delete_questiont'),
(76, 'Can view question t', 19, 'view_questiont'),
(77, 'Can add school t', 20, 'add_schoolt'),
(78, 'Can change school t', 20, 'change_schoolt'),
(79, 'Can delete school t', 20, 'delete_schoolt'),
(80, 'Can view school t', 20, 'view_schoolt'),
(81, 'Can add section t', 21, 'add_sectiont'),
(82, 'Can change section t', 21, 'change_sectiont'),
(83, 'Can delete section t', 21, 'delete_sectiont'),
(84, 'Can view section t', 21, 'view_sectiont'),
(85, 'Can add studentcourseenrollment t', 22, 'add_studentcourseenrollmentt'),
(86, 'Can change studentcourseenrollment t', 22, 'change_studentcourseenrollmentt'),
(87, 'Can delete studentcourseenrollment t', 22, 'delete_studentcourseenrollmentt'),
(88, 'Can view studentcourseenrollment t', 22, 'view_studentcourseenrollmentt'),
(89, 'Can add student t', 23, 'add_studentt'),
(90, 'Can change student t', 23, 'change_studentt'),
(91, 'Can delete student t', 23, 'delete_studentt'),
(92, 'Can view student t', 23, 'view_studentt'),
(93, 'Can add vchistory t', 24, 'add_vchistoryt'),
(94, 'Can change vchistory t', 24, 'change_vchistoryt'),
(95, 'Can delete vchistory t', 24, 'delete_vchistoryt'),
(96, 'Can view vchistory t', 24, 'view_vchistoryt'),
(97, 'Can add university t', 25, 'add_universityt'),
(98, 'Can change university t', 25, 'change_universityt'),
(99, 'Can delete university t', 25, 'delete_universityt'),
(100, 'Can view university t', 25, 'view_universityt'),
(101, 'Can add semestermapping t', 26, 'add_semestermappingt'),
(102, 'Can change semestermapping t', 26, 'change_semestermappingt'),
(103, 'Can delete semestermapping t', 26, 'delete_semestermappingt'),
(104, 'Can view semestermapping t', 26, 'view_semestermappingt');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$MLf02wmaG0dLsLHMCzoFow$5krLjkItRCVkCvaA/d+jYo2KIU2by70Ibylm0kpzdP0=', '2021-05-16 10:29:25.075039', 1, 'tajju', '', '', 'tahzeeb2g@gmail.com', 1, 1, '2021-05-11 19:54:02.187136'),
(2, 'pbkdf2_sha256$260000$ibcDLdfIC9kLo1Y9Vzv3UB$YYY0FS5u5I9usEqykbRSeuP3PXhUDznrQBJf6hT19j0=', '2021-05-16 21:28:51.198646', 0, '0001', 'Motiur', 'Rahman', '', 0, 1, '2021-05-11 20:00:11.000000'),
(3, 'pbkdf2_sha256$260000$Li1DrywIQZLNLIBQTisOht$1cJA8JACesTcl48buXiQnIh934W2HjUq77qNQdFXx/g=', '2021-05-15 17:57:00.990947', 0, '0007', 'Abu', 'Sayed', '', 0, 1, '2021-05-11 20:01:49.000000'),
(4, 'pbkdf2_sha256$260000$2r8CXaq4hFFPlTGVb7CFtT$CH803FhaqT5kAQ17kT4em4CzECsw4ui0tvps2Fdv0dc=', '2021-05-15 10:55:21.268983', 0, '0008', 'Sadita', 'Ahmed', '', 0, 1, '2021-05-11 20:02:13.000000'),
(5, 'pbkdf2_sha256$260000$yMXekeyLqIxuHE3ymm4LAu$mNcwyAhoyH1Ue3HXpz/s7nlXhHQ/t+Vw+INMqyqEsuo=', '2021-05-16 21:36:14.832033', 0, 'Mahady_Hasan', 'Dr. Mahady', 'Hasan', '', 0, 1, '2021-05-15 21:32:23.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(3, 2, 1),
(1, 3, 1),
(2, 4, 1),
(4, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coevaluation_t`
--

CREATE TABLE `coevaluation_t` (
  `courseenrollment_id` char(38) DEFAULT NULL,
  `co_id` varchar(14) DEFAULT NULL,
  `coMarksAttainable` float DEFAULT NULL,
  `coMarksObtained` float(11,2) DEFAULT NULL,
  `coAchievementStatus` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coevaluation_t`
--

INSERT INTO `coevaluation_t` (`courseenrollment_id`, `co_id`, `coMarksAttainable`, `coMarksObtained`, `coAchievementStatus`) VALUES
('6ab19b3c-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO1', 53, 26.10, 'N'),
('6ab64411-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO1', 53, 12.60, 'N'),
('6ab93076-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO1', 53, 14.20, 'N'),
('6ab19b3c-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO2', 12, 12.00, 'Y'),
('6ab64411-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO2', 12, 0.00, 'N'),
('6ab93076-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO2', 12, 7.10, 'N'),
('6ab19b3c-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO3', 20, 2.00, 'N'),
('6ab64411-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO3', 20, 0.00, 'N'),
('6ab93076-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO3', 20, 7.20, 'N'),
('6ab19b3c-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO4', 9, 5.70, 'Y'),
('6ab64411-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO4', 9, 0.00, 'N'),
('6ab93076-b268-11eb-8773-708bcd015b3f', 'IUBUCSE101CO4', 9, 3.30, 'N'),
('de7b34f1-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO1', 53, 15.20, 'N'),
('de7f65bc-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO1', 53, 20.20, 'N'),
('f58273c8-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO1', 53, 22.50, 'N'),
('de7b34f1-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO2', 12, 7.80, 'Y'),
('de7f65bc-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO2', 12, 9.70, 'Y'),
('f58273c8-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO2', 12, 10.60, 'Y'),
('de7b34f1-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO3', 20, 8.80, 'N'),
('de7f65bc-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO3', 20, 7.60, 'N'),
('f58273c8-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO3', 20, 7.20, 'N'),
('de7b34f1-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO4', 9, 8.10, 'Y'),
('de7f65bc-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO4', 9, 7.50, 'Y'),
('f58273c8-b267-11eb-8773-708bcd015b3f', 'IUBUCSE101CO4', 9, 6.90, 'Y'),
('635ce90b-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE303CO1', 82.5, 70.00, 'Y'),
('6360964d-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE303CO1', 82.5, 52.00, 'Y'),
('63639ccc-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE303CO1', 82.5, 10.00, 'N'),
('635ce90b-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE303CO2', 17.5, 13.00, 'Y'),
('6360964d-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE303CO2', 17.5, 13.00, 'Y'),
('63639ccc-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE303CO2', 17.5, 0.00, 'N'),
('635ce90b-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE303CO3', 25, 12.50, 'N'),
('6360964d-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE303CO3', 25, 13.50, 'N'),
('63639ccc-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE303CO3', 25, 0.00, 'N'),
('60d3dc8e-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE303CO1', 82.5, 41.50, 'N'),
('60d7a4e0-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE303CO1', 82.5, 10.00, 'N'),
('60db1504-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE303CO1', 82.5, 33.50, 'N'),
('60d3dc8e-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE303CO2', 17.5, 12.00, 'Y'),
('60d7a4e0-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE303CO2', 17.5, 3.00, 'N'),
('60db1504-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE303CO2', 17.5, 12.50, 'Y'),
('60d3dc8e-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE303CO3', 25, 7.50, 'N'),
('60d7a4e0-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE303CO3', 25, 0.00, 'N'),
('60db1504-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE303CO3', 25, 7.50, 'N'),
('6cd7090d-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO1', 10, 9.00, 'Y'),
('6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO1', 10, 10.00, 'Y'),
('6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO1', 10, 10.00, 'Y'),
('6cd7090d-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO2', 10, 2.00, 'N'),
('6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO2', 10, 2.00, 'N'),
('6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO2', 10, 10.00, 'Y'),
('6cd7090d-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO3', 10, 3.00, 'N'),
('6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO3', 10, 3.00, 'N'),
('6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO3', 10, 3.00, 'N'),
('6cd7090d-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO4', 10, 10.00, 'Y'),
('6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO4', 10, 1.00, 'N'),
('6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO4', 10, 1.00, 'N'),
('6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO1', 10, 8.00, 'Y'),
('6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO1', 10, 3.00, 'N'),
('6cd3d142-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO1', 10, 8.00, 'Y'),
('6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO2', 10, 7.00, 'Y'),
('6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO2', 10, 3.00, 'N'),
('6cd3d142-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO2', 10, 9.00, 'Y'),
('6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO3', 10, 9.00, 'Y'),
('6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO3', 10, 9.00, 'Y'),
('6cd3d142-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO3', 10, 10.00, 'Y'),
('6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO4', 10, 10.00, 'Y'),
('6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO4', 10, 9.00, 'Y'),
('6cd3d142-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO4', 10, 10.00, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `coursehistory_t`
--

CREATE TABLE `coursehistory_t` (
  `course_id` varchar(10) NOT NULL,
  `curriculum_id` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coursehistory_t`
--

INSERT INTO `coursehistory_t` (`course_id`, `curriculum_id`) VALUES
('IUBCSE101', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBCSE104', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBCSE201', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBCSE203', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBCSE204', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBCSE211', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBCSE213', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBCSE303', '7d8d739f-b1d2-11eb-8773-708bcd015b3f');

-- --------------------------------------------------------

--
-- Table structure for table `course_t`
--

CREATE TABLE `course_t` (
  `course_id` varchar(10) NOT NULL,
  `department_id` char(38) DEFAULT NULL,
  `courseName` varchar(40) DEFAULT NULL,
  `totalCredits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_t`
--

INSERT INTO `course_t` (`course_id`, `department_id`, `courseName`, `totalCredits`) VALUES
('IUBCSE101', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Introduction to Computer Programming', 4),
('IUBCSE104', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Electrical Circuit Analysis', 4),
('IUBCSE201', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Discrete Mathematics', 3),
('IUBCSE203', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Data Structure', 4),
('IUBCSE204', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Digital Logic Design', 4),
('IUBCSE211', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Algorithms', 4),
('IUBCSE213', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Object-Oriented Programming', 4),
('IUBCSE303', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Database Management', 4),
('IUBEEE131', '6c1f5587-b1c9-11eb-8773-708bcd015b3f', 'Electrical Circuit - I', 4),
('IUBFIN201', '6c22c95c-b1c9-11eb-8773-708bcd015b3f', 'Introduction to Finance', 3);

-- --------------------------------------------------------

--
-- Table structure for table `co_t`
--

CREATE TABLE `co_t` (
  `co_id` char(14) NOT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `plo_id` varchar(13) DEFAULT NULL,
  `coDescription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `co_t`
--

INSERT INTO `co_t` (`co_id`, `course_id`, `plo_id`, `coDescription`) VALUES
('IUBUCSE101CO1', 'IUBCSE101', 'IUBUCSE01', 'Reason about interleaved statements operating on a shared data structure'),
('IUBUCSE101CO2', 'IUBCSE101', 'IUBUCSE02', 'Reason about compile errors, common runtime errors (e.g. NullPE) and logical errors in given short\r\ncode segments (1-10 lines)'),
('IUBUCSE101CO3', 'IUBCSE101', 'IUBUCSE03', 'Reason about short-circuiting & different code paths for different data'),
('IUBUCSE101CO4', 'IUBCSE101', 'IUBUCSE04', 'Reason about computational cost, and return values'),
('IUBUCSE104CO1', 'IUBCSE104', 'IUBUCSE05', 'Use Kirchhoff’s laws, circuit theorems and node voltage methodology to solve simple DC as well\r\nas AC circuits'),
('IUBUCSE104CO2', 'IUBCSE104', 'IUBUCSE06', 'Solve simple 1st order transient circuits'),
('IUBUCSE104CO3', 'IUBCSE104', 'IUBUCSE07', 'Apply simple steady state sinusoidal analysis to circuits'),
('IUBUCSE104CO4', 'IUBCSE104', 'IUBUCSE08', 'Demonstrate a basic understanding of phasors and phasor diagrams for AC circuit analysis'),
('IUBUCSE201CO1', 'IUBCSE201', 'IUBUCSE09', 'Derive big-O running time for simple pseudocode examples, especially recursive examples.'),
('IUBUCSE201CO2', 'IUBCSE201', 'IUBUCSE10', 'Write inductive proofs, including proofs on trees'),
('IUBUCSE201CO3', 'IUBCSE201', 'IUBUCSE11', 'Apply predicate logic: determine the truth of statements, perform simple transformations'),
('IUBUCSE201CO4', 'IUBCSE201', 'IUBUCSE12', 'Write literate proofs using straightforward application of standard outlines'),
('IUBUCSE203CO1', 'IUBCSE203', 'IUBUCSE01', 'ANavigate, organize, compile C++ projects of moderate complexity (many objects and dependencies)'),
('IUBUCSE203CO2', 'IUBCSE203', 'IUBUCSE02', 'Decompose a problem into its supporting data structures such as lists, stacks, queues, trees, etc.'),
('IUBUCSE203CO3', 'IUBCSE203', 'IUBUCSE03', 'Diagnose appropriate approaches or algorithms to solve problems involving graph search, tree\r\ntraversal, optimization, data organization, etc., together with appropriate data structures.'),
('IUBUCSE203CO4', 'IUBCSE203', 'IUBUCSE04', 'WImplement classic and adapted data structures and applications.'),
('IUBUCSE204CO1', 'IUBCSE204', 'IUBUCSE06', 'Understand and be able to demonstrate fundamental concepts and techniques used in digital\r\nelectronics.'),
('IUBUCSE204CO2', 'IUBCSE204', 'IUBUCSE07', 'Appreciate the structure of various number systems and its application in digital design.'),
('IUBUCSE204CO3', 'IUBCSE204', 'IUBUCSE08', 'Understand, analyze and design various combinational and sequential circuits.'),
('IUBUCSE204CO4', 'IUBCSE204', 'IUBUCSE09', 'Identify and analyze various hazards and timing problems in a digital design.'),
('IUBUCSE211CO1', 'IUBCSE211', 'IUBUCSE03', 'Students will learn methods for designing efficient algorithms, evaluating their performance, and\r\nways of establishing precise limits on the possible effectiveness of classes of algorithms'),
('IUBUCSE211CO2', 'IUBCSE211', 'IUBUCSE04', 'They will learn standard algorithms for fundamental problems.'),
('IUBUCSE211CO3', 'IUBCSE211', 'IUBUCSE05', 'TBA'),
('IUBUCSE211CO4', 'IUBCSE211', 'IUBUCSE06', 'TBA'),
('IUBUCSE213CO1', 'IUBCSE213', 'IUBUCSE07', 'Understand the benefits of object oriented design and when it is an appropriate methodology to use.'),
('IUBUCSE213CO2', 'IUBCSE213', 'IUBUCSE08', 'Design, write and test programs that make appropriate use of advanced object-oriented facilities\r\ncommon to object-oriented languages such as overloading and inheritance.'),
('IUBUCSE213CO3', 'IUBCSE213', 'IUBUCSE09', 'Manipulate classes provided in the programming API and incorporate them into solutions.'),
('IUBUCSE213CO4', 'IUBCSE213', 'IUBUCSE10', 'TBA'),
('IUBUCSE303CO1', 'IUBCSE303', 'IUBUCSE02', 'Proficiency in the design of database applications starting from the conceptual design to the\r\nimplementation of database schemas and user interfaces..'),
('IUBUCSE303CO2', 'IUBCSE303', 'IUBUCSE03', 'Solid foundation on database design concepts, data models (E/R model, relational model), the\r\ndatabase query language SQL, and components of a database management system.'),
('IUBUCSE303CO3', 'IUBCSE303', 'IUBUCSE04', 'Basic understanding of data access structures, query processing and optimization techniques, and\r\ntransaction management.'),
('IUBUCSE303CO4', 'IUBCSE303', 'IUBUCSE06', 'TBA'),
('IUBUEEE131CO1', 'IUBEEE131', 'IUBUEEE01', 'lorem ipsum electric'),
('IUBUEEE131CO2', 'IUBEEE131', 'IUBUEEE02', 'lorem ipsum electric'),
('IUBUEEE131CO3', 'IUBEEE131', 'IUBUEEE03', 'lorem ipsum electric'),
('IUBUEEE131CO4', 'IUBEEE131', 'IUBUEEE04', 'lorem ipsum electric'),
('IUBUFIN201CO1', 'IUBFIN201', 'IUBUFIN01', 'lorem-ipsum'),
('IUBUFIN201CO2', 'IUBFIN201', 'IUBUFIN02', 'lorem-ipsum'),
('IUBUFIN201CO3', 'IUBFIN201', 'IUBUFIN03', 'lorem-ipsum'),
('IUBUFIN201CO4', 'IUBFIN201', 'IUBUFIN04', 'lorem-ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_t`
--

CREATE TABLE `curriculum_t` (
  `curriculum_id` varchar(38) NOT NULL,
  `program_id` varchar(38) DEFAULT NULL,
  `version` char(2) DEFAULT NULL,
  `effectiveDate` date DEFAULT NULL,
  `expirationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `curriculum_t`
--

INSERT INTO `curriculum_t` (`curriculum_id`, `program_id`, `version`, `effectiveDate`, `expirationDate`) VALUES
('4ecd7724-b68c-11eb-8ec0-708bcd015b3f', '6b434b39-b1ca-11eb-8773-708bcd015b3f', 'V1', '0000-00-00', NULL),
('4ed22612-b68c-11eb-8ec0-708bcd015b3f', '6b506147-b1ca-11eb-8773-708bcd015b3f', 'V1', '0000-00-00', NULL),
('7d8d739f-b1d2-11eb-8773-708bcd015b3f', '6b46ac79-b1ca-11eb-8773-708bcd015b3f', 'V3', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_t`
--

CREATE TABLE `department_t` (
  `department_id` char(38) NOT NULL,
  `school_id` char(38) DEFAULT NULL,
  `deparmentName` varchar(50) DEFAULT NULL,
  `FName` varchar(15) DEFAULT NULL,
  `LName` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department_t`
--

INSERT INTO `department_t` (`department_id`, `school_id`, `deparmentName`, `FName`, `LName`) VALUES
('6c1af2bf-b1c9-11eb-8773-708bcd015b3f', '4c71b14c-b1c8-11eb-8773-708bcd015b3f', 'Computer Science and Engineering', 'Dr. Mahady', 'Hasan'),
('6c1f5587-b1c9-11eb-8773-708bcd015b3f', '4c71b14c-b1c8-11eb-8773-708bcd015b3f', 'Electrical & Electronic Engineering', 'Dr. Khosru', 'M. Salim'),
('6c22c95c-b1c9-11eb-8773-708bcd015b3f', '4c6d37c8-b1c8-11eb-8773-708bcd015b3f', 'Finance', 'Dr. Samiul', 'Ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-05-11 20:00:12.421666', '2', 'motiurRahman', 1, '[{\"added\": {}}]', 4, 1),
(2, '2021-05-11 20:01:49.997439', '3', 'abuSayed', 1, '[{\"added\": {}}]', 4, 1),
(3, '2021-05-11 20:02:13.682563', '4', 'saditaAhmed', 1, '[{\"added\": {}}]', 4, 1),
(4, '2021-05-11 20:41:41.003619', '1', 'Student', 1, '[{\"added\": {}}]', 3, 1),
(5, '2021-05-11 20:41:46.883848', '1', 'Faculty', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(6, '2021-05-11 20:42:54.525269', '3', 'abuSayed', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(7, '2021-05-11 20:43:05.579038', '4', 'saditaAhmed', 2, '[]', 4, 1),
(8, '2021-05-11 20:43:15.119833', '2', 'motiurRahman', 2, '[]', 4, 1),
(9, '2021-05-11 20:49:55.363629', '4', 'saditaAhmed', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(10, '2021-05-11 20:50:11.432252', '2', 'motiurRahman', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(11, '2021-05-11 21:20:56.142123', '3', '0007', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\"]}}]', 4, 1),
(12, '2021-05-11 21:21:11.213681', '4', '0008', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\"]}}]', 4, 1),
(13, '2021-05-11 21:21:28.359019', '2', '0001', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\"]}}]', 4, 1),
(14, '2021-05-15 21:31:28.826368', '2', 'higherManagement', 1, '[{\"added\": {}}]', 3, 1),
(15, '2021-05-15 21:32:24.454350', '5', 'Mahady_Hasan', 1, '[{\"added\": {}}]', 4, 1),
(16, '2021-05-15 21:32:59.386936', '5', 'higher_management', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\", \"Groups\"]}}]', 4, 1),
(17, '2021-05-16 10:30:52.768948', '2', 'Higher Management', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(18, '2021-05-16 10:31:43.578891', '5', 'Mahady_Hasan', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'SPM', 'assessmentt'),
(8, 'SPM', 'coevaluationt'),
(9, 'SPM', 'cot'),
(10, 'SPM', 'coursehistoryt'),
(11, 'SPM', 'courset'),
(12, 'SPM', 'curriculumt'),
(13, 'SPM', 'departmentt'),
(14, 'SPM', 'facultyt'),
(15, 'SPM', 'ploevaluationt'),
(16, 'SPM', 'plohistoryt'),
(17, 'SPM', 'plot'),
(18, 'SPM', 'programt'),
(19, 'SPM', 'questiont'),
(20, 'SPM', 'schoolt'),
(21, 'SPM', 'sectiont'),
(26, 'SPM', 'semestermappingt'),
(22, 'SPM', 'studentcourseenrollmentt'),
(23, 'SPM', 'studentt'),
(25, 'SPM', 'universityt'),
(24, 'SPM', 'vchistoryt');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-11 17:32:22.042535'),
(2, 'auth', '0001_initial', '2021-05-11 17:32:23.017975'),
(3, 'admin', '0001_initial', '2021-05-11 17:32:23.193877'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-11 17:32:23.212864'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-11 17:32:23.236854'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-11 17:32:23.355786'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-11 17:32:23.456723'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-11 17:32:23.494701'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-11 17:32:23.516689'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-11 17:32:23.619634'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-11 17:32:23.623633'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-11 17:32:23.647614'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-11 17:32:23.695586'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-11 17:32:23.734566'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-11 17:32:23.772544'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-11 17:32:23.793531'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-11 17:32:23.857493'),
(18, 'sessions', '0001_initial', '2021-05-11 17:32:23.929452'),
(19, 'SPM', '0001_initial', '2021-05-11 17:51:13.872313'),
(20, 'SPM', '0002_semestermappingt', '2021-05-11 23:53:34.460835');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('o1rjikc8glk9polxdqg52rv1t1xsnau8', '.eJxVjMEOwiAQBf-FsyFQYKEevfcbCCyLVA0kpT0Z_9026UGvM_Pem_mwrcVvnRY_J3Zlhl1-WQz4pHqI9Aj13ji2ui5z5EfCT9v51BK9bmf7d1BCL_uaMgmFEcEaY7McSUadQUhHWkUJbseDCDZrEhZTdgM4mbWzMIISiMQ-X-RSN4s:1liOQo:pGzC3WFf_gO6bmaGz2sTnKAqRJjwoOwJKj7OB7GUICo', '2021-05-30 21:36:14.837032');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_t`
--

CREATE TABLE `faculty_t` (
  `faculty_id` varchar(7) NOT NULL,
  `department_id` char(38) DEFAULT NULL,
  `FName` varchar(15) DEFAULT NULL,
  `LName` varchar(15) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Contact` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty_t`
--

INSERT INTO `faculty_t` (`faculty_id`, `department_id`, `FName`, `LName`, `Email`, `Contact`) VALUES
('0001', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Motiur', 'Rahman', 'motiur@iub.edu.bd', '01914602860'),
('0002', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Bijoy', 'Arif', 'bijoy@iub.edu.bd', '01914602861'),
('0003', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Raihan', 'Rafique', 'raihan@iub.edu.bd', '01914602862'),
('0004', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Ajmiri', 'Khan', 'ajmiri@iub.edu.bd', '01914602863'),
('0005', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Asif', 'Khaled', 'asif@iub.edu.bd', '01914602864'),
('0006', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Subrata', 'Dey', 'skd@iub.edu.bd', '01914602865'),
('0007', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Abu', 'Sayed', 'a.sayed@iub.edu.bd', '01914602866'),
('0008', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Sadita', 'Ahmed', 'a.sayed@iub.edu.bd', '01914602867'),
('0009', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'Dr.Mahady', 'Hasan', 'a.sayed@iub.edu.bd', '01914602868'),
('0011', '6c22c95c-b1c9-11eb-8773-708bcd015b3f', 'John', 'Doe', 'john@gmail.com', '1234'),
('0012', '6c1f5587-b1c9-11eb-8773-708bcd015b3f', 'Joe', 'Biden', 'joe@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `ploevaluation_t`
--

CREATE TABLE `ploevaluation_t` (
  `courseenrollment_id` char(38) DEFAULT NULL,
  `plo_id` varchar(14) DEFAULT NULL,
  `ploAchievementStatus` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ploevaluation_t`
--

INSERT INTO `ploevaluation_t` (`courseenrollment_id`, `plo_id`, `ploAchievementStatus`) VALUES
('60d3dc8e-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'N'),
('60d3dc8e-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'Y'),
('60d3dc8e-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'N'),
('60d7a4e0-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'N'),
('60d7a4e0-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'N'),
('60d7a4e0-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'N'),
('60db1504-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'N'),
('60db1504-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'Y'),
('60db1504-b25f-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'N'),
('635ce90b-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'Y'),
('635ce90b-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'Y'),
('635ce90b-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'N'),
('6360964d-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'Y'),
('6360964d-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'Y'),
('6360964d-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'N'),
('63639ccc-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'N'),
('63639ccc-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'N'),
('63639ccc-b25e-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'N'),
('6ab19b3c-b268-11eb-8773-708bcd015b3f', 'IUBUCSE01', 'N'),
('6ab19b3c-b268-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'Y'),
('6ab19b3c-b268-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'N'),
('6ab19b3c-b268-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'Y'),
('6ab64411-b268-11eb-8773-708bcd015b3f', 'IUBUCSE01', 'N'),
('6ab64411-b268-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'N'),
('6ab64411-b268-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'N'),
('6ab64411-b268-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'N'),
('6ab93076-b268-11eb-8773-708bcd015b3f', 'IUBUCSE01', 'N'),
('6ab93076-b268-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'N'),
('6ab93076-b268-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'N'),
('6ab93076-b268-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'N'),
('6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN01', 'Y'),
('6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN02', 'Y'),
('6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN03', 'Y'),
('6ccc3f78-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN04', 'Y'),
('6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN01', 'N'),
('6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN02', 'N'),
('6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN03', 'Y'),
('6cd0ea73-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN04', 'Y'),
('6cd3d142-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN01', 'Y'),
('6cd3d142-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN02', 'Y'),
('6cd3d142-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN03', 'Y'),
('6cd3d142-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN04', 'Y'),
('6cd7090d-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE01', 'Y'),
('6cd7090d-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE02', 'N'),
('6cd7090d-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE03', 'N'),
('6cd7090d-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE04', 'Y'),
('6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE01', 'Y'),
('6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE02', 'N'),
('6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE03', 'N'),
('6cda3dcc-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE04', 'N'),
('6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE01', 'Y'),
('6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE02', 'Y'),
('6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE03', 'N'),
('6cdcc04b-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE04', 'N'),
('de7b34f1-b267-11eb-8773-708bcd015b3f', 'IUBUCSE01', 'N'),
('de7b34f1-b267-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'Y'),
('de7b34f1-b267-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'N'),
('de7b34f1-b267-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'Y'),
('de7f65bc-b267-11eb-8773-708bcd015b3f', 'IUBUCSE01', 'N'),
('de7f65bc-b267-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'Y'),
('de7f65bc-b267-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'N'),
('de7f65bc-b267-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'Y'),
('f58273c8-b267-11eb-8773-708bcd015b3f', 'IUBUCSE01', 'N'),
('f58273c8-b267-11eb-8773-708bcd015b3f', 'IUBUCSE02', 'Y'),
('f58273c8-b267-11eb-8773-708bcd015b3f', 'IUBUCSE03', 'N'),
('f58273c8-b267-11eb-8773-708bcd015b3f', 'IUBUCSE04', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `plohistory_t`
--

CREATE TABLE `plohistory_t` (
  `plo_id` varchar(38) DEFAULT NULL,
  `curriculum_id` varchar(38) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plohistory_t`
--

INSERT INTO `plohistory_t` (`plo_id`, `curriculum_id`) VALUES
('IUBUCSE01', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE02', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE03', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE04', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE05', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE06', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE07', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE08', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE09', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE10', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE11', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE12', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUCSE13', '7d8d739f-b1d2-11eb-8773-708bcd015b3f'),
('IUBUFIN01', '4ecd7724-b68c-11eb-8ec0-708bcd015b3f'),
('IUBUFIN02', '4ecd7724-b68c-11eb-8ec0-708bcd015b3f'),
('IUBUFIN02', '4ecd7724-b68c-11eb-8ec0-708bcd015b3f'),
('IUBUFIN02', '4ecd7724-b68c-11eb-8ec0-708bcd015b3f'),
('IUBUEEE01', '4ed22612-b68c-11eb-8ec0-708bcd015b3f'),
('IUBUEEE02', '4ed22612-b68c-11eb-8ec0-708bcd015b3f'),
('IUBUEEE03', '4ed22612-b68c-11eb-8ec0-708bcd015b3f'),
('IUBUEEE04', '4ed22612-b68c-11eb-8ec0-708bcd015b3f');

-- --------------------------------------------------------

--
-- Table structure for table `plo_t`
--

CREATE TABLE `plo_t` (
  `plo_id` varchar(13) NOT NULL,
  `ploName` varchar(50) NOT NULL,
  `ploDescription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plo_t`
--

INSERT INTO `plo_t` (`plo_id`, `ploName`, `ploDescription`) VALUES
('IUBUCSE01', 'Knowledge', 'An ability to select and apply the knowledge, techniques, skills, and modern tools of the\r\ncomputer science and engineering discipline'),
('IUBUCSE02', 'Requirement Analysis', 'An ability to identify, analyze, and solve a problem by defining the computing\r\nrequirements of the problem through effectively gathering of the actual requirements;'),
('IUBUCSE03', 'Problem Analysis', 'An ability to select and apply the knowledge of mathematics, science, engineering,\r\nand technology to computing problems that require the application of principles and applied procedures\r\nor methodologies'),
('IUBUCSE04', 'Design', 'An ability to design computer based systems, components, or processes to meet the desire\r\nrequirement'),
('IUBUCSE05', 'Problem Solving', 'An ability to apply mathematical foundations, simulation, algorithmic principles, and\r\ncomputer science theory in the modeling and design of computer-based systems in a way that\r\ndemonstrates comprehension of the tradeoffs involved in design choices.'),
('IUBUCSE06', 'Implementation', 'An ability to apply design and development principles in the construction of software\r\nsystems of varying complexity'),
('IUBUCSE07', 'Experiment and Analysis', 'An ability to conduct standard tests and measurements; to conduct,\r\nanalyze, and interpret experiments; and to apply experimental results to improve solutions (products or\r\nprocesses)'),
('IUBUCSE08', 'Community engagement and Engineering', 'An ability to appreciate human behavior, culture,\r\ninteraction and organization through studies in the humanities'),
('IUBUCSE09', 'Teamwork', 'An ability to function effectively as a member or leader of a technical team to accomplish\r\ncommon goals'),
('IUBUCSE10', 'Communication', 'An ability to apply written and oral communication in both technical and non-technical environments; an ability to communicate with a range of audience; and an ability to identify and use appropriate available technical literature'),
('IUBUCSE11', 'Self-directed', 'Recognition of the need for and an ability to engage in self-directed continuing\r\nprofessional development; be prepared to enter a top-ranked graduate program in Computer Science\r\nand Engineering.'),
('IUBUCSE12', 'Ethics', 'An understanding of and a commitment to address professional, ethical, legal, security, social\r\nissues and responsibilities including a respect for diversity.'),
('IUBUCSE13', 'Process Management', 'A commitment to quality, timeliness, and continuous improvement.'),
('IUBUEEE01', 'Knowledge', 'ElectricalStuff'),
('IUBUEEE02', 'Wires', 'ElectricalStuff2'),
('IUBUEEE03', 'Current', 'ElectricalStuff3'),
('IUBUEEE04', 'Voltage', 'ElectricalStuff4'),
('IUBUFIN01', 'Knowledge', 'FinanceStuff'),
('IUBUFIN02', 'Calculation', 'FinanceStuff2'),
('IUBUFIN03', 'Investment', 'FinanceStuff3'),
('IUBUFIN04', 'Buffer', 'FinanceStuff4');

-- --------------------------------------------------------

--
-- Table structure for table `programcoursemapping_t`
--

CREATE TABLE `programcoursemapping_t` (
  `program_id` char(38) DEFAULT NULL,
  `course_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programcoursemapping_t`
--

INSERT INTO `programcoursemapping_t` (`program_id`, `course_id`) VALUES
('6b46ac79-b1ca-11eb-8773-708bcd015b3f', 'IUBCSE101'),
('6b46ac79-b1ca-11eb-8773-708bcd015b3f', 'IUBCSE104'),
('6b46ac79-b1ca-11eb-8773-708bcd015b3f', 'IUBCSE201'),
('6b46ac79-b1ca-11eb-8773-708bcd015b3f', 'IUBCSE203'),
('6b46ac79-b1ca-11eb-8773-708bcd015b3f', 'IUBCSE204'),
('6b46ac79-b1ca-11eb-8773-708bcd015b3f', 'IUBCSE211'),
('6b46ac79-b1ca-11eb-8773-708bcd015b3f', 'IUBCSE213'),
('6b46ac79-b1ca-11eb-8773-708bcd015b3f', 'IUBCSE303'),
('6b434b39-b1ca-11eb-8773-708bcd015b3f', 'IUBFIN201'),
('6b506147-b1ca-11eb-8773-708bcd015b3f', 'IUBEEE131');

-- --------------------------------------------------------

--
-- Table structure for table `program_t`
--

CREATE TABLE `program_t` (
  `program_id` char(38) NOT NULL,
  `department_id` char(38) DEFAULT NULL,
  `programName` varchar(50) DEFAULT NULL,
  `totalCredits` int(11) DEFAULT NULL,
  `programLevel` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program_t`
--

INSERT INTO `program_t` (`program_id`, `department_id`, `programName`, `totalCredits`, `programLevel`) VALUES
('6b434b39-b1ca-11eb-8773-708bcd015b3f', '6c22c95c-b1c9-11eb-8773-708bcd015b3f', 'BBA in Finance', 125, 'U'),
('6b46ac79-b1ca-11eb-8773-708bcd015b3f', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'B.Sc. in Computer Science & Engineering', 143, 'U'),
('6b4a6c9b-b1ca-11eb-8773-708bcd015b3f', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'B.Sc. in Computer Engineering', 134, 'U'),
('6b4d9795-b1ca-11eb-8773-708bcd015b3f', '6c1af2bf-b1c9-11eb-8773-708bcd015b3f', 'M.Sc. in Computer Science', 33, 'P'),
('6b506147-b1ca-11eb-8773-708bcd015b3f', '6c1f5587-b1c9-11eb-8773-708bcd015b3f', 'B.Sc. in Electrical & Electronic Engineering', 147, 'U');

-- --------------------------------------------------------

--
-- Table structure for table `question_t`
--

CREATE TABLE `question_t` (
  `question_id` char(38) NOT NULL,
  `questionNo` int(11) NOT NULL,
  `assessment_id` char(38) DEFAULT NULL,
  `co_id` varchar(14) DEFAULT NULL,
  `marksAttainable` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_t`
--

INSERT INTO `question_t` (`question_id`, `questionNo`, `assessment_id`, `co_id`, `marksAttainable`) VALUES
('002e8bf4-b656-11eb-b7e0-708bcd015b3f', 1, '95aa8bdd-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO1', 10),
('0033953c-b656-11eb-b7e0-708bcd015b3f', 2, '95aa8bdd-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO2', 10),
('00370d8c-b656-11eb-b7e0-708bcd015b3f', 3, '95aa8bdd-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO3', 10),
('003ab53b-b656-11eb-b7e0-708bcd015b3f', 4, '95aa8bdd-b655-11eb-b7e0-708bcd015b3f', 'IUBUFIN201CO4', 10),
('003e83ba-b656-11eb-b7e0-708bcd015b3f', 1, '95aed856-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO1', 10),
('0042490a-b656-11eb-b7e0-708bcd015b3f', 2, '95aed856-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO2', 10),
('0045d7a7-b656-11eb-b7e0-708bcd015b3f', 3, '95aed856-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO3', 10),
('00493546-b656-11eb-b7e0-708bcd015b3f', 4, '95aed856-b655-11eb-b7e0-708bcd015b3f', 'IUBUEEE131CO4', 10),
('2dc825f3-b5ac-11eb-b01d-708bcd015b3f', 1, '2146b782-b5ac-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO4', 30),
('4bbdec04-b376-11eb-91e6-708bcd015b3f', 1, '268b026f-b376-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 25),
('510698a5-b376-11eb-91e6-708bcd015b3f', 2, '268b026f-b376-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 25),
('6e644d74-b37d-11eb-91e6-708bcd015b3f', 3, 'c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO2', 15),
('7046b8cd-b376-11eb-91e6-708bcd015b3f', 3, '268b026f-b376-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 30),
('78c62226-b376-11eb-91e6-708bcd015b3f', 4, '268b026f-b376-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO2', 20),
('7ea82ac6-b37b-11eb-91e6-708bcd015b3f', 1, '0da2509a-b37b-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 25),
('85aac1be-b37b-11eb-91e6-708bcd015b3f', 2, '0da2509a-b37b-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 25),
('8b14f30e-b37b-11eb-91e6-708bcd015b3f', 3, '0da2509a-b37b-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 30),
('91ac88db-b5a7-11eb-b01d-708bcd015b3f', 1, '8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 25),
('945be5dc-b37b-11eb-91e6-708bcd015b3f', 4, '0da2509a-b37b-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO2', 20),
('99073ac7-b5a7-11eb-b01d-708bcd015b3f', 2, '8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 25),
('9a2c6329-b378-11eb-91e6-708bcd015b3f', 5, '268b026f-b376-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 30),
('9b68e027-b37b-11eb-91e6-708bcd015b3f', 5, '0da2509a-b37b-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 30),
('9f5a5c2e-b37b-11eb-91e6-708bcd015b3f', 6, '0da2509a-b37b-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 20),
('a314155e-b378-11eb-91e6-708bcd015b3f', 6, '268b026f-b376-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 20),
('a4c3cee6-b5a7-11eb-b01d-708bcd015b3f', 3, '8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 30),
('a5668488-b37a-11eb-91e6-708bcd015b3f', 4, 'c143b864-b379-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO3', 50),
('a6c3cfb9-b5ab-11eb-b01d-708bcd015b3f', 1, '994c89bc-b5ab-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO4', 30),
('adb59956-b5a9-11eb-b01d-708bcd015b3f', 1, 'a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 20),
('afbb2c15-b5a7-11eb-b01d-708bcd015b3f', 4, '8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO2', 20),
('b21955bc-b5a9-11eb-b01d-708bcd015b3f', 2, 'a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 15),
('b6324815-b5a7-11eb-b01d-708bcd015b3f', 5, '8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 30),
('b817b4e7-b5a9-11eb-b01d-708bcd015b3f', 3, 'a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO2', 15),
('ba92066a-b5a7-11eb-b01d-708bcd015b3f', 6, '8a7bd839-b5a7-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 20),
('bee65790-b5ac-11eb-b01d-708bcd015b3f', 1, 'aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 20),
('bee740b5-b5a9-11eb-b01d-708bcd015b3f', 4, 'a59c8371-b5a9-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO3', 50),
('c36e4654-b5ac-11eb-b01d-708bcd015b3f', 2, 'aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 15),
('c86f301e-b5ac-11eb-b01d-708bcd015b3f', 3, 'aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO2', 15),
('cbf194ce-b5ab-11eb-b01d-708bcd015b3f', 1, 'c047f410-b5ab-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 25),
('ccfd3489-b37c-11eb-91e6-708bcd015b3f', 4, 'c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO3', 50),
('cdf3efd4-b379-11eb-91e6-708bcd015b3f', 1, 'c143b864-b379-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 20),
('ceeadc9e-b5ac-11eb-b01d-708bcd015b3f', 4, 'aefd787a-b5ac-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO3', 50),
('d0f22278-b5ab-11eb-b01d-708bcd015b3f', 2, 'c047f410-b5ab-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 25),
('d69e5ca5-b5ab-11eb-b01d-708bcd015b3f', 3, 'c047f410-b5ab-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 30),
('daf5c914-b379-11eb-91e6-708bcd015b3f', 2, 'c143b864-b379-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 15),
('dc19e4f1-b5ab-11eb-b01d-708bcd015b3f', 4, 'c047f410-b5ab-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO2', 20),
('dc85659f-b37b-11eb-91e6-708bcd015b3f', 1, 'c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 20),
('e00484c2-b37b-11eb-91e6-708bcd015b3f', 2, 'c7e91d9a-b37b-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO1', 15),
('e1ab4c1e-b5ab-11eb-b01d-708bcd015b3f', 5, 'c047f410-b5ab-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 30),
('e54a75a5-b5ab-11eb-b01d-708bcd015b3f', 6, 'c047f410-b5ab-11eb-b01d-708bcd015b3f', 'IUBUCSE101CO1', 20),
('eb2c8564-b379-11eb-91e6-708bcd015b3f', 3, 'c143b864-b379-11eb-91e6-708bcd015b3f', 'IUBUCSE303CO2', 15);

-- --------------------------------------------------------

--
-- Table structure for table `school_t`
--

CREATE TABLE `school_t` (
  `school_id` char(38) NOT NULL,
  `U_ID` char(38) DEFAULT NULL,
  `schoolName` varchar(50) DEFAULT NULL,
  `FName` varchar(15) DEFAULT NULL,
  `LName` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_t`
--

INSERT INTO `school_t` (`school_id`, `U_ID`, `schoolName`, `FName`, `LName`) VALUES
('4c6d37c8-b1c8-11eb-8773-708bcd015b3f', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Business & Entrepreneurship', 'Dr.Sarwar', 'Ahmed'),
('4c71b14c-b1c8-11eb-8773-708bcd015b3f', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Engineering, Technology & Sciences', 'Prof.Yusuf', 'Islam');

-- --------------------------------------------------------

--
-- Table structure for table `section_t`
--

CREATE TABLE `section_t` (
  `section_id` char(38) NOT NULL,
  `course_id` char(10) DEFAULT NULL,
  `faculty_id` varchar(7) DEFAULT NULL,
  `sectionNo` int(11) DEFAULT NULL,
  `timeSlot` time DEFAULT NULL,
  `days` varchar(2) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `session` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_t`
--

INSERT INTO `section_t` (`section_id`, `course_id`, `faculty_id`, `sectionNo`, `timeSlot`, `days`, `year`, `session`) VALUES
('0cff7c14-b24c-11eb-8773-708bcd015b3f', 'IUBCSE211', '0005', 1, '00:00:01', 'ST', 2020, 'Summer'),
('0d03d3a0-b24c-11eb-8773-708bcd015b3f', 'IUBCSE211', '0005', 2, '-00:00:07', 'MW', 2020, 'Summer'),
('0d06f351-b24c-11eb-8773-708bcd015b3f', 'IUBCSE211', '0005', 1, '00:00:15', 'ST', 2020, 'Autumn'),
('0d09cd3c-b24c-11eb-8773-708bcd015b3f', 'IUBCSE211', '0005', 2, '00:00:15', 'MW', 2020, 'Autumn'),
('0d0cebdf-b24c-11eb-8773-708bcd015b3f', 'IUBCSE211', '0005', 1, '-00:00:07', 'ST', 2021, 'Spring'),
('0d0fa839-b24c-11eb-8773-708bcd015b3f', 'IUBCSE211', '0005', 2, '00:00:01', 'MW', 2021, 'Spring'),
('15c01a94-b24b-11eb-8773-708bcd015b3f', 'IUBCSE104', '0004', 1, '-00:00:21', 'ST', 2020, 'Summer'),
('15c49990-b24b-11eb-8773-708bcd015b3f', 'IUBCSE104', '0004', 2, '-00:00:21', 'MW', 2020, 'Summer'),
('15c802d7-b24b-11eb-8773-708bcd015b3f', 'IUBCSE104', '0004', 1, '-00:00:28', 'ST', 2020, 'Autumn'),
('15cb3040-b24b-11eb-8773-708bcd015b3f', 'IUBCSE104', '0004', 2, '-00:00:28', 'MW', 2020, 'Autumn'),
('15ce67f1-b24b-11eb-8773-708bcd015b3f', 'IUBCSE104', '0004', 1, '00:00:08', 'MW', 2021, 'Spring'),
('15d1a10f-b24b-11eb-8773-708bcd015b3f', 'IUBCSE104', '0004', 2, '00:00:08', 'ST', 2021, 'Spring'),
('2f7882ee-b24c-11eb-8773-708bcd015b3f', 'IUBCSE213', '0006', 1, '00:00:08', 'ST', 2020, 'Summer'),
('2f7c88cf-b24c-11eb-8773-708bcd015b3f', 'IUBCSE213', '0006', 2, '00:00:08', 'MW', 2020, 'Summer'),
('2f805cc2-b24c-11eb-8773-708bcd015b3f', 'IUBCSE213', '0006', 1, '-00:00:31', 'ST', 2020, 'Autumn'),
('2f839096-b24c-11eb-8773-708bcd015b3f', 'IUBCSE213', '0006', 2, '00:00:01', 'MW', 2020, 'Autumn'),
('2f8644f4-b24c-11eb-8773-708bcd015b3f', 'IUBCSE213', '0006', 1, '00:00:08', 'ST', 2021, 'Spring'),
('2f895577-b24c-11eb-8773-708bcd015b3f', 'IUBCSE213', '0006', 2, '00:00:01', 'MW', 2021, 'Spring'),
('559bdfbe-b24b-11eb-8773-708bcd015b3f', 'IUBCSE201', '0002', 1, '-00:00:21', 'MW', 2020, 'Summer'),
('559f7c79-b24b-11eb-8773-708bcd015b3f', 'IUBCSE201', '0002', 2, '-00:00:21', 'ST', 2020, 'Summer'),
('55a2e81f-b24b-11eb-8773-708bcd015b3f', 'IUBCSE201', '0002', 1, '-00:00:28', 'MW', 2020, 'Autumn'),
('55a5c54e-b24b-11eb-8773-708bcd015b3f', 'IUBCSE201', '0002', 2, '-00:00:28', 'ST', 2020, 'Autumn'),
('55a9920e-b24b-11eb-8773-708bcd015b3f', 'IUBCSE201', '0002', 1, '00:00:08', 'MW', 2021, 'Spring'),
('55ac6f4c-b24b-11eb-8773-708bcd015b3f', 'IUBCSE201', '0002', 2, '00:00:08', 'ST', 2021, 'Spring'),
('6269f2fc-b249-11eb-8773-708bcd015b3f', 'IUBCSE101', '0001', 2, '00:00:01', 'ST', 2020, 'Summer'),
('626e68c2-b249-11eb-8773-708bcd015b3f', 'IUBCSE101', '0001', 1, '00:00:08', 'MW', 2020, 'Autumn'),
('62721848-b249-11eb-8773-708bcd015b3f', 'IUBCSE101', '0001', 2, '00:00:08', 'MW', 2020, 'Autumn'),
('62752d34-b249-11eb-8773-708bcd015b3f', 'IUBCSE101', '0001', 1, '-00:00:31', 'ST', 2021, 'Spring'),
('6278d221-b249-11eb-8773-708bcd015b3f', 'IUBCSE101', '0001', 2, '-00:00:31', 'ST', 2021, 'Spring'),
('8413ad98-b24c-11eb-8773-708bcd015b3f', 'IUBCSE303', '0007', 1, '00:00:08', 'ST', 2020, 'Summer'),
('841d9d93-b24c-11eb-8773-708bcd015b3f', 'IUBCSE303', '0008', 2, '00:00:08', 'MW', 2020, 'Summer'),
('8420b8a6-b24c-11eb-8773-708bcd015b3f', 'IUBCSE303', '0009', 3, '-00:00:31', 'MW', 2020, 'Summer'),
('8423d78c-b24c-11eb-8773-708bcd015b3f', 'IUBCSE303', '0007', 1, '-00:00:31', 'ST', 2020, 'Autumn'),
('8426a3b9-b24c-11eb-8773-708bcd015b3f', 'IUBCSE303', '0008', 2, '00:00:01', 'MW', 2020, 'Autumn'),
('842957fc-b24c-11eb-8773-708bcd015b3f', 'IUBCSE303', '0009', 3, '-00:00:31', 'ST', 2020, 'Autumn'),
('842cc378-b24c-11eb-8773-708bcd015b3f', 'IUBCSE303', '0007', 1, '00:00:08', 'ST', 2021, 'Spring'),
('842fee18-b24c-11eb-8773-708bcd015b3f', 'IUBCSE303', '0008', 2, '00:00:01', 'MW', 2021, 'Spring'),
('8432c784-b24c-11eb-8773-708bcd015b3f', 'IUBCSE303', '0009', 3, '-00:00:17', 'MW', 2021, 'Spring'),
('ae2d1383-b24b-11eb-8773-708bcd015b3f', 'IUBCSE203', '0001', 1, '-00:00:07', 'MW', 2020, 'Summer'),
('ae30aeb8-b24b-11eb-8773-708bcd015b3f', 'IUBCSE203', '0001', 2, '-00:00:07', 'ST', 2020, 'Summer'),
('ae33feb3-b24b-11eb-8773-708bcd015b3f', 'IUBCSE203', '0001', 1, '00:00:15', 'MW', 2020, 'Autumn'),
('ae374292-b24b-11eb-8773-708bcd015b3f', 'IUBCSE203', '0001', 2, '00:00:15', 'ST', 2020, 'Autumn'),
('ae3a97c6-b24b-11eb-8773-708bcd015b3f', 'IUBCSE203', '0001', 1, '00:00:01', 'MW', 2021, 'Spring'),
('ae3dc936-b24b-11eb-8773-708bcd015b3f', 'IUBCSE203', '0001', 2, '00:00:01', 'ST', 2021, 'Spring'),
('b380d786-b652-11eb-b7e0-708bcd015b3f', 'IUBEEE131', '0012', 1, '00:00:00', 'MW', 2021, 'Spring'),
('b3852a2c-b652-11eb-b7e0-708bcd015b3f', 'IUBFIN201', '0011', 1, '00:00:00', 'ST', 2021, 'Spring'),
('d4101e2c-b24b-11eb-8773-708bcd015b3f', 'IUBCSE204', '0003', 1, '-00:00:07', 'ST', 2020, 'Summer'),
('d420f221-b24b-11eb-8773-708bcd015b3f', 'IUBCSE204', '0003', 2, '-00:00:07', 'MW', 2020, 'Summer'),
('d4250365-b24b-11eb-8773-708bcd015b3f', 'IUBCSE204', '0003', 1, '00:00:15', 'ST', 2020, 'Autumn'),
('d428ffad-b24b-11eb-8773-708bcd015b3f', 'IUBCSE204', '0003', 2, '00:00:15', 'MW', 2020, 'Autumn'),
('d42d1f3c-b24b-11eb-8773-708bcd015b3f', 'IUBCSE204', '0003', 1, '00:00:01', 'ST', 2021, 'Spring'),
('d430bbc8-b24b-11eb-8773-708bcd015b3f', 'IUBCSE204', '0003', 2, '00:00:01', 'MW', 2021, 'Spring'),
('d6820376-b248-11eb-8773-708bcd015b3f', 'IUBCSE101', '0001', 1, '08:00:00', 'MW', 2020, 'Summer');

-- --------------------------------------------------------

--
-- Table structure for table `semestermapping_t`
--

CREATE TABLE `semestermapping_t` (
  `session` varchar(8) NOT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semestermapping_t`
--

INSERT INTO `semestermapping_t` (`session`, `startDate`, `endDate`) VALUES
('Autumn', '2000-11-01', '2000-01-30'),
('Spring', '2000-02-01', '2000-05-30'),
('Summer', '2000-06-01', '2000-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `studentcourseenrollment_t`
--

CREATE TABLE `studentcourseenrollment_t` (
  `courseEnrollment_id` char(38) NOT NULL,
  `student_id` varchar(7) DEFAULT NULL,
  `section_id` char(38) DEFAULT NULL,
  `classAttended` int(11) DEFAULT NULL,
  `totalClasses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentcourseenrollment_t`
--

INSERT INTO `studentcourseenrollment_t` (`courseEnrollment_id`, `student_id`, `section_id`, `classAttended`, `totalClasses`) VALUES
('06fb66d1-b26c-11eb-8773-708bcd015b3f', '1729416', '0d06f351-b24c-11eb-8773-708bcd015b3f', 22, 23),
('06ffa818-b26c-11eb-8773-708bcd015b3f', '1763881', '0d06f351-b24c-11eb-8773-708bcd015b3f', 23, 23),
('0702c668-b26c-11eb-8773-708bcd015b3f', '1781682', '0d06f351-b24c-11eb-8773-708bcd015b3f', 21, 23),
('070672a5-b26c-11eb-8773-708bcd015b3f', '1778274', '0d09cd3c-b24c-11eb-8773-708bcd015b3f', 17, 23),
('07096068-b26c-11eb-8773-708bcd015b3f', '1795656', '0d09cd3c-b24c-11eb-8773-708bcd015b3f', 21, 23),
('070c4de9-b26c-11eb-8773-708bcd015b3f', '1773277', '0d09cd3c-b24c-11eb-8773-708bcd015b3f', 18, 23),
('070f2a20-b26c-11eb-8773-708bcd015b3f', '1729416', '2f805cc2-b24c-11eb-8773-708bcd015b3f', 21, 23),
('07122b4b-b26c-11eb-8773-708bcd015b3f', '1763881', '2f805cc2-b24c-11eb-8773-708bcd015b3f', 22, 23),
('0714f4cd-b26c-11eb-8773-708bcd015b3f', '1781682', '2f805cc2-b24c-11eb-8773-708bcd015b3f', 19, 23),
('07184b82-b26c-11eb-8773-708bcd015b3f', '1778274', '2f839096-b24c-11eb-8773-708bcd015b3f', 19, 23),
('071b4e1b-b26c-11eb-8773-708bcd015b3f', '1795656', '2f839096-b24c-11eb-8773-708bcd015b3f', 23, 23),
('071eb623-b26c-11eb-8773-708bcd015b3f', '1773277', '2f839096-b24c-11eb-8773-708bcd015b3f', 20, 23),
('07220b13-b26c-11eb-8773-708bcd015b3f', '1729416', '8423d78c-b24c-11eb-8773-708bcd015b3f', 19, 23),
('07250391-b26c-11eb-8773-708bcd015b3f', '1763881', '8423d78c-b24c-11eb-8773-708bcd015b3f', 23, 23),
('0727d205-b26c-11eb-8773-708bcd015b3f', '1781682', '8423d78c-b24c-11eb-8773-708bcd015b3f', 21, 23),
('072aecbe-b26c-11eb-8773-708bcd015b3f', '1778274', '8426a3b9-b24c-11eb-8773-708bcd015b3f', 19, 23),
('072e2aea-b26c-11eb-8773-708bcd015b3f', '1795656', '8426a3b9-b24c-11eb-8773-708bcd015b3f', 22, 23),
('0731ade0-b26c-11eb-8773-708bcd015b3f', '1773277', '8426a3b9-b24c-11eb-8773-708bcd015b3f', 21, 23),
('2237a037-b25f-11eb-8773-708bcd015b3f', '1855787', '6269f2fc-b249-11eb-8773-708bcd015b3f', 23, 23),
('223caa94-b25f-11eb-8773-708bcd015b3f', '1893863', '6269f2fc-b249-11eb-8773-708bcd015b3f', 19, 23),
('2240cce2-b25f-11eb-8773-708bcd015b3f', '1842333', '6269f2fc-b249-11eb-8773-708bcd015b3f', 22, 23),
('2244edee-b25f-11eb-8773-708bcd015b3f', '1855787', '15c49990-b24b-11eb-8773-708bcd015b3f', 23, 23),
('2248f252-b25f-11eb-8773-708bcd015b3f', '1893863', '15c49990-b24b-11eb-8773-708bcd015b3f', 17, 23),
('224d21ee-b25f-11eb-8773-708bcd015b3f', '1842333', '15c49990-b24b-11eb-8773-708bcd015b3f', 20, 23),
('22513b69-b25f-11eb-8773-708bcd015b3f', '1855787', '55a5c54e-b24b-11eb-8773-708bcd015b3f', 23, 24),
('225568ec-b25f-11eb-8773-708bcd015b3f', '1893863', '55a5c54e-b24b-11eb-8773-708bcd015b3f', 17, 24),
('22598e4f-b25f-11eb-8773-708bcd015b3f', '1842333', '55a5c54e-b24b-11eb-8773-708bcd015b3f', 20, 24),
('225dd9ac-b25f-11eb-8773-708bcd015b3f', '1855787', 'ae30aeb8-b24b-11eb-8773-708bcd015b3f', 23, 24),
('22621b25-b25f-11eb-8773-708bcd015b3f', '1893863', 'ae30aeb8-b24b-11eb-8773-708bcd015b3f', 18, 24),
('226663c6-b25f-11eb-8773-708bcd015b3f', '1842333', 'ae30aeb8-b24b-11eb-8773-708bcd015b3f', 22, 24),
('226abeb6-b25f-11eb-8773-708bcd015b3f', '1855787', 'd428ffad-b24b-11eb-8773-708bcd015b3f', 22, 24),
('226ef199-b25f-11eb-8773-708bcd015b3f', '1893863', 'd428ffad-b24b-11eb-8773-708bcd015b3f', 19, 24),
('22732a4b-b25f-11eb-8773-708bcd015b3f', '1842333', 'd428ffad-b24b-11eb-8773-708bcd015b3f', 24, 24),
('37ef3e94-b269-11eb-8773-708bcd015b3f', '1930234', '626e68c2-b249-11eb-8773-708bcd015b3f', 21, 23),
('37f40be8-b269-11eb-8773-708bcd015b3f', '1930258', '626e68c2-b249-11eb-8773-708bcd015b3f', 22, 23),
('49a1ec99-b267-11eb-8773-708bcd015b3f', '1729416', '559bdfbe-b24b-11eb-8773-708bcd015b3f', 20, 23),
('49a68053-b267-11eb-8773-708bcd015b3f', '1763881', '559bdfbe-b24b-11eb-8773-708bcd015b3f', 22, 23),
('49a9d4af-b267-11eb-8773-708bcd015b3f', '1781682', '559bdfbe-b24b-11eb-8773-708bcd015b3f', 23, 23),
('49ad9e0a-b267-11eb-8773-708bcd015b3f', '1729416', 'ae2d1383-b24b-11eb-8773-708bcd015b3f', 20, 23),
('49b10967-b267-11eb-8773-708bcd015b3f', '1763881', 'ae2d1383-b24b-11eb-8773-708bcd015b3f', 22, 23),
('49b438ff-b267-11eb-8773-708bcd015b3f', '1781682', 'ae2d1383-b24b-11eb-8773-708bcd015b3f', 23, 23),
('49b7cac2-b267-11eb-8773-708bcd015b3f', '1729416', 'd4101e2c-b24b-11eb-8773-708bcd015b3f', 20, 23),
('49ba940e-b267-11eb-8773-708bcd015b3f', '1763881', 'd4101e2c-b24b-11eb-8773-708bcd015b3f', 22, 23),
('49bde0da-b267-11eb-8773-708bcd015b3f', '1781682', 'd4101e2c-b24b-11eb-8773-708bcd015b3f', 23, 23),
('4ef1ba7a-b24f-11eb-8773-708bcd015b3f', '1834433', 'd6820376-b248-11eb-8773-708bcd015b3f', 20, 23),
('4ef5db27-b24f-11eb-8773-708bcd015b3f', '1868128', 'd6820376-b248-11eb-8773-708bcd015b3f', 17, 23),
('4ef8d703-b24f-11eb-8773-708bcd015b3f', '1845457', 'd6820376-b248-11eb-8773-708bcd015b3f', 21, 23),
('60bed90c-b25f-11eb-8773-708bcd015b3f', '1855787', '0d0fa839-b24c-11eb-8773-708bcd015b3f', 23, 23),
('60c3288c-b25f-11eb-8773-708bcd015b3f', '1893863', '0d0fa839-b24c-11eb-8773-708bcd015b3f', 19, 23),
('60c689c3-b25f-11eb-8773-708bcd015b3f', '1842333', '0d0fa839-b24c-11eb-8773-708bcd015b3f', 22, 23),
('60c9b0df-b25f-11eb-8773-708bcd015b3f', '1855787', '2f895577-b24c-11eb-8773-708bcd015b3f', 21, 23),
('60cd0e28-b25f-11eb-8773-708bcd015b3f', '1893863', '2f895577-b24c-11eb-8773-708bcd015b3f', 17, 23),
('60d07d4c-b25f-11eb-8773-708bcd015b3f', '1842333', '2f895577-b24c-11eb-8773-708bcd015b3f', 23, 23),
('60d3dc8e-b25f-11eb-8773-708bcd015b3f', '1855787', '842fee18-b24c-11eb-8773-708bcd015b3f', 22, 23),
('60d7a4e0-b25f-11eb-8773-708bcd015b3f', '1893863', '842fee18-b24c-11eb-8773-708bcd015b3f', 19, 23),
('60db1504-b25f-11eb-8773-708bcd015b3f', '1842333', '842fee18-b24c-11eb-8773-708bcd015b3f', 22, 23),
('6345c6ec-b25e-11eb-8773-708bcd015b3f', '1834433', '0d0cebdf-b24c-11eb-8773-708bcd015b3f', 18, 23),
('634ab4b8-b25e-11eb-8773-708bcd015b3f', '1868128', '0d0cebdf-b24c-11eb-8773-708bcd015b3f', 19, 23),
('634e554d-b25e-11eb-8773-708bcd015b3f', '1845457', '0d0cebdf-b24c-11eb-8773-708bcd015b3f', 22, 23),
('63524047-b25e-11eb-8773-708bcd015b3f', '1834433', '2f8644f4-b24c-11eb-8773-708bcd015b3f', 18, 23),
('6355bf4a-b25e-11eb-8773-708bcd015b3f', '1868128', '2f8644f4-b24c-11eb-8773-708bcd015b3f', 19, 23),
('6358ea47-b25e-11eb-8773-708bcd015b3f', '1845457', '2f8644f4-b24c-11eb-8773-708bcd015b3f', 22, 23),
('635ce90b-b25e-11eb-8773-708bcd015b3f', '1834433', '842cc378-b24c-11eb-8773-708bcd015b3f', 21, 23),
('6360964d-b25e-11eb-8773-708bcd015b3f', '1868128', '842cc378-b24c-11eb-8773-708bcd015b3f', 20, 23),
('63639ccc-b25e-11eb-8773-708bcd015b3f', '1845457', '842cc378-b24c-11eb-8773-708bcd015b3f', 23, 23),
('6a6db97b-b26b-11eb-8773-708bcd015b3f', '1633554', '0d03d3a0-b24c-11eb-8773-708bcd015b3f', 19, 24),
('6a725116-b26b-11eb-8773-708bcd015b3f', '1645333', '0d03d3a0-b24c-11eb-8773-708bcd015b3f', 23, 24),
('6a765d0b-b26b-11eb-8773-708bcd015b3f', '1691291', '0d03d3a0-b24c-11eb-8773-708bcd015b3f', 21, 24),
('6a7a522f-b26b-11eb-8773-708bcd015b3f', '1416455', '2f7882ee-b24c-11eb-8773-708bcd015b3f', 19, 24),
('6a7e40dc-b26b-11eb-8773-708bcd015b3f', '1579288', '2f7882ee-b24c-11eb-8773-708bcd015b3f', 23, 24),
('6a81cf6e-b26b-11eb-8773-708bcd015b3f', '1625654', '2f7882ee-b24c-11eb-8773-708bcd015b3f', 21, 24),
('6a8598d5-b26b-11eb-8773-708bcd015b3f', '1633554', '2f7c88cf-b24c-11eb-8773-708bcd015b3f', 19, 24),
('6a890085-b26b-11eb-8773-708bcd015b3f', '1645333', '2f7c88cf-b24c-11eb-8773-708bcd015b3f', 23, 24),
('6a8c2f2e-b26b-11eb-8773-708bcd015b3f', '1691291', '2f7c88cf-b24c-11eb-8773-708bcd015b3f', 21, 24),
('6a8fd921-b26b-11eb-8773-708bcd015b3f', '1416455', '8413ad98-b24c-11eb-8773-708bcd015b3f', 20, 24),
('6a93e440-b26b-11eb-8773-708bcd015b3f', '1579288', '8413ad98-b24c-11eb-8773-708bcd015b3f', 22, 24),
('6a979c1d-b26b-11eb-8773-708bcd015b3f', '1625654', '8413ad98-b24c-11eb-8773-708bcd015b3f', 24, 24),
('6a9b6ad3-b26b-11eb-8773-708bcd015b3f', '1633554', '841d9d93-b24c-11eb-8773-708bcd015b3f', 19, 24),
('6a9f78b7-b26b-11eb-8773-708bcd015b3f', '1645333', '841d9d93-b24c-11eb-8773-708bcd015b3f', 22, 24),
('6aa36ec6-b26b-11eb-8773-708bcd015b3f', '1691291', '841d9d93-b24c-11eb-8773-708bcd015b3f', 20, 24),
('6ab19b3c-b268-11eb-8773-708bcd015b3f', '1729416', '62752d34-b249-11eb-8773-708bcd015b3f', 21, 23),
('6ab64411-b268-11eb-8773-708bcd015b3f', '1763881', '62752d34-b249-11eb-8773-708bcd015b3f', 22, 23),
('6ab93076-b268-11eb-8773-708bcd015b3f', '1781682', '62752d34-b249-11eb-8773-708bcd015b3f', 20, 23),
('6abc95e2-b268-11eb-8773-708bcd015b3f', '1729416', '15ce67f1-b24b-11eb-8773-708bcd015b3f', 22, 23),
('6abfc5a0-b268-11eb-8773-708bcd015b3f', '1763881', '15ce67f1-b24b-11eb-8773-708bcd015b3f', 20, 23),
('6ac2a3a1-b268-11eb-8773-708bcd015b3f', '1781682', '15ce67f1-b24b-11eb-8773-708bcd015b3f', 21, 23),
('6ccc3f78-b655-11eb-b7e0-708bcd015b3f', '1930111', 'b3852a2c-b652-11eb-b7e0-708bcd015b3f', 23, 24),
('6cd0ea73-b655-11eb-b7e0-708bcd015b3f', '1930112', 'b3852a2c-b652-11eb-b7e0-708bcd015b3f', 24, 24),
('6cd3d142-b655-11eb-b7e0-708bcd015b3f', '1930113', 'b3852a2c-b652-11eb-b7e0-708bcd015b3f', 21, 24),
('6cd7090d-b655-11eb-b7e0-708bcd015b3f', '1930119', 'b380d786-b652-11eb-b7e0-708bcd015b3f', 23, 24),
('6cda3dcc-b655-11eb-b7e0-708bcd015b3f', '1930122', 'b380d786-b652-11eb-b7e0-708bcd015b3f', 24, 24),
('6cdcc04b-b655-11eb-b7e0-708bcd015b3f', '1930132', 'b380d786-b652-11eb-b7e0-708bcd015b3f', 21, 24),
('813ace22-b26a-11eb-8773-708bcd015b3f', '1416455', '0cff7c14-b24c-11eb-8773-708bcd015b3f', 19, 24),
('813e5a9e-b26a-11eb-8773-708bcd015b3f', '1579288', '0cff7c14-b24c-11eb-8773-708bcd015b3f', 23, 24),
('814175eb-b26a-11eb-8773-708bcd015b3f', '1625654', '0cff7c14-b24c-11eb-8773-708bcd015b3f', 21, 24),
('873bc4e3-b269-11eb-8773-708bcd015b3f', '1930274', '626e68c2-b249-11eb-8773-708bcd015b3f', 20, 23),
('8740168c-b269-11eb-8773-708bcd015b3f', '1930885', '62721848-b249-11eb-8773-708bcd015b3f', 22, 23),
('8743da09-b269-11eb-8773-708bcd015b3f', '1930121', '62721848-b249-11eb-8773-708bcd015b3f', 20, 23),
('8746e332-b269-11eb-8773-708bcd015b3f', '1920111', '62721848-b249-11eb-8773-708bcd015b3f', 21, 23),
('874a4aeb-b269-11eb-8773-708bcd015b3f', '1930234', '55a9920e-b24b-11eb-8773-708bcd015b3f', 21, 23),
('874d19fa-b269-11eb-8773-708bcd015b3f', '1930258', '55a9920e-b24b-11eb-8773-708bcd015b3f', 23, 23),
('87505d2e-b269-11eb-8773-708bcd015b3f', '1930274', '55a9920e-b24b-11eb-8773-708bcd015b3f', 19, 23),
('8753db7f-b269-11eb-8773-708bcd015b3f', '1930885', '55ac6f4c-b24b-11eb-8773-708bcd015b3f', 21, 23),
('87576a88-b269-11eb-8773-708bcd015b3f', '1930121', '55ac6f4c-b24b-11eb-8773-708bcd015b3f', 18, 23),
('875aaffe-b269-11eb-8773-708bcd015b3f', '1920111', '55ac6f4c-b24b-11eb-8773-708bcd015b3f', 22, 23),
('875dd8f3-b269-11eb-8773-708bcd015b3f', '1930234', 'd42d1f3c-b24b-11eb-8773-708bcd015b3f', 21, 23),
('87610976-b269-11eb-8773-708bcd015b3f', '1930258', 'd42d1f3c-b24b-11eb-8773-708bcd015b3f', 23, 23),
('8763e657-b269-11eb-8773-708bcd015b3f', '1930274', 'd42d1f3c-b24b-11eb-8773-708bcd015b3f', 19, 23),
('8766a8f5-b269-11eb-8773-708bcd015b3f', '1930885', 'd430bbc8-b24b-11eb-8773-708bcd015b3f', 21, 23),
('876b3650-b269-11eb-8773-708bcd015b3f', '1930121', 'd430bbc8-b24b-11eb-8773-708bcd015b3f', 23, 23),
('876f1f35-b269-11eb-8773-708bcd015b3f', '1920111', 'd430bbc8-b24b-11eb-8773-708bcd015b3f', 22, 23),
('87724d42-b269-11eb-8773-708bcd015b3f', '1930234', 'ae3a97c6-b24b-11eb-8773-708bcd015b3f', 21, 23),
('87752c41-b269-11eb-8773-708bcd015b3f', '1930258', 'ae3a97c6-b24b-11eb-8773-708bcd015b3f', 23, 23),
('87787bae-b269-11eb-8773-708bcd015b3f', '1930274', 'ae3a97c6-b24b-11eb-8773-708bcd015b3f', 21, 23),
('877b8350-b269-11eb-8773-708bcd015b3f', '1930885', 'ae3dc936-b24b-11eb-8773-708bcd015b3f', 22, 23),
('877e713b-b269-11eb-8773-708bcd015b3f', '1930121', 'ae3dc936-b24b-11eb-8773-708bcd015b3f', 20, 23),
('8782004d-b269-11eb-8773-708bcd015b3f', '1920111', 'ae3dc936-b24b-11eb-8773-708bcd015b3f', 22, 23),
('8b0c63ee-b252-11eb-8773-708bcd015b3f', '1834433', '55a2e81f-b24b-11eb-8773-708bcd015b3f', 22, 24),
('8b1122ba-b252-11eb-8773-708bcd015b3f', '1868128', '55a2e81f-b24b-11eb-8773-708bcd015b3f', 19, 23),
('8b152569-b252-11eb-8773-708bcd015b3f', '1845457', '55a2e81f-b24b-11eb-8773-708bcd015b3f', 23, 23),
('8b191d2a-b252-11eb-8773-708bcd015b3f', '1834433', 'ae33feb3-b24b-11eb-8773-708bcd015b3f', 21, 24),
('8b1d0ac2-b252-11eb-8773-708bcd015b3f', '1868128', 'ae33feb3-b24b-11eb-8773-708bcd015b3f', 20, 24),
('8b20c89d-b252-11eb-8773-708bcd015b3f', '1845457', 'ae33feb3-b24b-11eb-8773-708bcd015b3f', 22, 24),
('8b24ff72-b252-11eb-8773-708bcd015b3f', '1834433', 'd4250365-b24b-11eb-8773-708bcd015b3f', 21, 24),
('8b29206f-b252-11eb-8773-708bcd015b3f', '1868128', 'd4250365-b24b-11eb-8773-708bcd015b3f', 20, 24),
('8b2d548a-b252-11eb-8773-708bcd015b3f', '1845457', 'd4250365-b24b-11eb-8773-708bcd015b3f', 22, 24),
('9028489b-b267-11eb-8773-708bcd015b3f', '1778274', '559f7c79-b24b-11eb-8773-708bcd015b3f', 17, 23),
('902b8f69-b267-11eb-8773-708bcd015b3f', '1795656', '559f7c79-b24b-11eb-8773-708bcd015b3f', 22, 23),
('902f8885-b267-11eb-8773-708bcd015b3f', '1773277', '559f7c79-b24b-11eb-8773-708bcd015b3f', 21, 23),
('9033330a-b267-11eb-8773-708bcd015b3f', '1778274', 'ae30aeb8-b24b-11eb-8773-708bcd015b3f', 20, 23),
('90365040-b267-11eb-8773-708bcd015b3f', '1795656', 'ae30aeb8-b24b-11eb-8773-708bcd015b3f', 23, 23),
('90392ad0-b267-11eb-8773-708bcd015b3f', '1773277', 'ae30aeb8-b24b-11eb-8773-708bcd015b3f', 17, 23),
('903c0aec-b267-11eb-8773-708bcd015b3f', '1778274', 'd420f221-b24b-11eb-8773-708bcd015b3f', 22, 23),
('903eb4a3-b267-11eb-8773-708bcd015b3f', '1795656', 'd420f221-b24b-11eb-8773-708bcd015b3f', 19, 23),
('9041edb1-b267-11eb-8773-708bcd015b3f', '1773277', 'd420f221-b24b-11eb-8773-708bcd015b3f', 22, 23),
('c777a7ae-b24f-11eb-8773-708bcd015b3f', '1834433', '15c01a94-b24b-11eb-8773-708bcd015b3f', 21, 23),
('c77be886-b24f-11eb-8773-708bcd015b3f', '1868128', '15c01a94-b24b-11eb-8773-708bcd015b3f', 18, 23),
('c77ef181-b24f-11eb-8773-708bcd015b3f', '1845457', '15c01a94-b24b-11eb-8773-708bcd015b3f', 22, 23),
('de7b34f1-b267-11eb-8773-708bcd015b3f', '1778274', '6278d221-b249-11eb-8773-708bcd015b3f', 17, 23),
('de7f65bc-b267-11eb-8773-708bcd015b3f', '1795656', '6278d221-b249-11eb-8773-708bcd015b3f', 22, 23),
('f58273c8-b267-11eb-8773-708bcd015b3f', '1773277', '6278d221-b249-11eb-8773-708bcd015b3f', 21, 23),
('f585f2b1-b267-11eb-8773-708bcd015b3f', '1778274', '15d1a10f-b24b-11eb-8773-708bcd015b3f', 20, 23),
('f588d176-b267-11eb-8773-708bcd015b3f', '1795656', '15d1a10f-b24b-11eb-8773-708bcd015b3f', 23, 23),
('f58c3895-b267-11eb-8773-708bcd015b3f', '1773277', '15d1a10f-b24b-11eb-8773-708bcd015b3f', 17, 23);

-- --------------------------------------------------------

--
-- Table structure for table `student_t`
--

CREATE TABLE `student_t` (
  `student_id` char(7) NOT NULL,
  `U_ID` char(38) DEFAULT NULL,
  `Fname` varchar(15) DEFAULT NULL,
  `Lname` varchar(15) DEFAULT NULL,
  `Email` varchar(25) DEFAULT NULL,
  `Contact` varchar(13) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `studenttype` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_t`
--

INSERT INTO `student_t` (`student_id`, `U_ID`, `Fname`, `Lname`, `Email`, `Contact`, `cgpa`, `studenttype`) VALUES
('1416455', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Sara', 'Long', 'sara@gmail.com', '01686588048', '3.03', 'U'),
('1579288', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Samuel', 'Powel', 'sam@gmail.com', '01686588050', '2.97', 'U'),
('1625654', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Frank', 'Miller', 'fm@gmail.com', '01686588051', '3.37', 'U'),
('1633554', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Barrack', 'Obama', 'barrack@yahoo.com', '01926758878', '3.99', 'U'),
('1645333', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Carl', 'Barnes', 'carl@gmail.com', '01686588052', '3.45', 'U'),
('1691291', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Judy', 'Taylor', 'sara@gmail.com', '01686588053', '3.19', 'U'),
('1729416', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Benjamin', 'Yamin', 'ben@gmail.com', '01686588054', '3.56', 'U'),
('1763881', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Steve', 'Roberts', 'steve@gmail.com', '01716588048', '2.83', 'U'),
('1773277', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Randy', 'Campbell', 'rcamp@gmail.com', '01736588050', '2.14', 'U'),
('1778274', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Kelly', 'perez', 'kelly@gmail.com', '01686588049', '2.91', 'U'),
('1781682', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Terry', 'Ramirez', 't.ramirez@gmail.com', '01686588055', '2.73', 'U'),
('1795656', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Katherine', 'Jones', 'kjones@gmail.com', '01916588049', '3.91', 'U'),
('1834433', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Nicholas', 'Cage', 'niccage@gmail.com', '01686588015', '2.76', 'U'),
('1842333', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Tammy', 'Roberts', 't.roberts@gmail.com', '01716588051', '3.12', 'U'),
('1845457', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Lisa', 'Allen', 'L.allen@gmail.com', '01716588054', '3.56', 'U'),
('1855787', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Helen', 'Nelson', 'helen@gmail.com', '01316588053', '2.41', 'U'),
('1868128', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Chris', 'Harris', 'chris@gmail.com', '01914588049', '2.98', 'U'),
('1893863', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Jane', 'Woods', 'jane@gmail.com', '01916588052', '3.04', 'U'),
('1920111', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Steve', 'Jobs', 'sjobs@gmail.com', '01716588123', '2.96', 'U'),
('1930111', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Kobe', 'Bryant', 'kobe@gmail.com', '1234', '3.11', 'U'),
('1930112', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Lebron', 'James', 'lebron@gmail.com', '1235', '3.01', 'U'),
('1930113', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Michael', 'Jordan', 'jordan@gmail.com', '1236', '3.91', 'U'),
('1930119', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Magic', 'Johnson', 'magic@gmail.com', '1224', '2.98', 'U'),
('1930121', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Bill', 'Gates', 'bill@gmail.com', '01311288053', '3.41', 'U'),
('1930122', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Larry', 'Bird', 'larry@gmail.com', '1235', '3.09', 'U'),
('1930132', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Wilt', 'Russel', 'wilt@gmail.com', '2236', '3.33', 'U'),
('1930234', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Tahzeeb', 'Ahmed', 'tahzeeb2g@gmail.com', '01734719888', '4.00', 'U'),
('1930258', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Mohammad', 'Shoaib', 'mshoaib@gmail.com', '01926588050', '4.00', 'U'),
('1930274', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Quazi', 'Ruhin', 'q.ruhin@gmail.com', '01711238051', '4.00', 'U'),
('1930885', '94c64084-b1c3-11eb-8773-708bcd015b3f', 'Abdullah', 'Akib', 'a.akib@gmail.com', '01917658052', '3.34', 'U');

-- --------------------------------------------------------

--
-- Table structure for table `university_t`
--

CREATE TABLE `university_t` (
  `U_ID` char(38) NOT NULL,
  `UName` varchar(50) DEFAULT NULL,
  `VCFName` varchar(15) DEFAULT NULL,
  `VCLName` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `university_t`
--

INSERT INTO `university_t` (`U_ID`, `UName`, `VCFName`, `VCLName`) VALUES
('94c64084-b1c3-11eb-8773-708bcd015b3f', 'Independent University Bangladesh', 'Tanweer', 'Hasan'),
('94c9d3d6-b1c3-11eb-8773-708bcd015b3f', 'North South University', 'Atiqul', 'Islam'),
('94ccdde1-b1c3-11eb-8773-708bcd015b3f', 'BRAC University', 'Vincent', 'Chang');

-- --------------------------------------------------------

--
-- Table structure for table `vchistory_t`
--

CREATE TABLE `vchistory_t` (
  `U_ID` char(38) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vchistory_t`
--

INSERT INTO `vchistory_t` (`U_ID`, `Fname`, `Lname`, `startdate`, `enddate`) VALUES
('94c64084-b1c3-11eb-8773-708bcd015b3f', 'Milan', 'Pagon', '2019-06-16', '2021-02-23'),
('94c64084-b1c3-11eb-8773-708bcd015b3f', 'Tanweer', 'Hasan', '2021-02-23', NULL),
('94c9d3d6-b1c3-11eb-8773-708bcd015b3f', 'Atiqul', 'Islam', '2016-02-16', NULL),
('94ccdde1-b1c3-11eb-8773-708bcd015b3f', 'Vincent', 'Chang', '2019-02-01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessmentmarksheet_t`
--
ALTER TABLE `assessmentmarksheet_t`
  ADD KEY `assessment_id` (`assessment_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `courseEnrollment_id` (`courseEnrollment_id`);

--
-- Indexes for table `assessment_t`
--
ALTER TABLE `assessment_t`
  ADD PRIMARY KEY (`assessment_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `coevaluation_t`
--
ALTER TABLE `coevaluation_t`
  ADD KEY `co_id` (`co_id`),
  ADD KEY `courseenrollment_id` (`courseenrollment_id`);

--
-- Indexes for table `coursehistory_t`
--
ALTER TABLE `coursehistory_t`
  ADD KEY `course_id` (`course_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `course_t`
--
ALTER TABLE `course_t`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `co_t`
--
ALTER TABLE `co_t`
  ADD PRIMARY KEY (`co_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `plo_id` (`plo_id`);

--
-- Indexes for table `curriculum_t`
--
ALTER TABLE `curriculum_t`
  ADD PRIMARY KEY (`curriculum_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `department_t`
--
ALTER TABLE `department_t`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `faculty_t`
--
ALTER TABLE `faculty_t`
  ADD PRIMARY KEY (`faculty_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `ploevaluation_t`
--
ALTER TABLE `ploevaluation_t`
  ADD KEY `plo_id` (`plo_id`),
  ADD KEY `courseenrollment_id` (`courseenrollment_id`);

--
-- Indexes for table `plohistory_t`
--
ALTER TABLE `plohistory_t`
  ADD KEY `plo_id` (`plo_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `plo_t`
--
ALTER TABLE `plo_t`
  ADD PRIMARY KEY (`plo_id`);

--
-- Indexes for table `programcoursemapping_t`
--
ALTER TABLE `programcoursemapping_t`
  ADD KEY `program_id` (`program_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `program_t`
--
ALTER TABLE `program_t`
  ADD PRIMARY KEY (`program_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `question_t`
--
ALTER TABLE `question_t`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `assessment_id` (`assessment_id`),
  ADD KEY `co_id` (`co_id`);

--
-- Indexes for table `school_t`
--
ALTER TABLE `school_t`
  ADD PRIMARY KEY (`school_id`),
  ADD KEY `U_ID` (`U_ID`);

--
-- Indexes for table `section_t`
--
ALTER TABLE `section_t`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `semestermapping_t`
--
ALTER TABLE `semestermapping_t`
  ADD PRIMARY KEY (`session`);

--
-- Indexes for table `studentcourseenrollment_t`
--
ALTER TABLE `studentcourseenrollment_t`
  ADD PRIMARY KEY (`courseEnrollment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `student_t`
--
ALTER TABLE `student_t`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `U_ID` (`U_ID`);

--
-- Indexes for table `university_t`
--
ALTER TABLE `university_t`
  ADD PRIMARY KEY (`U_ID`);

--
-- Indexes for table `vchistory_t`
--
ALTER TABLE `vchistory_t`
  ADD PRIMARY KEY (`U_ID`,`Fname`,`Lname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessmentmarksheet_t`
--
ALTER TABLE `assessmentmarksheet_t`
  ADD CONSTRAINT `assessmentmarksheet_t_ibfk_1` FOREIGN KEY (`assessment_id`) REFERENCES `assessment_t` (`assessment_id`),
  ADD CONSTRAINT `assessmentmarksheet_t_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question_t` (`question_id`),
  ADD CONSTRAINT `assessmentmarksheet_t_ibfk_3` FOREIGN KEY (`courseEnrollment_id`) REFERENCES `studentcourseenrollment_t` (`courseEnrollment_id`);

--
-- Constraints for table `assessment_t`
--
ALTER TABLE `assessment_t`
  ADD CONSTRAINT `assessment_t_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section_t` (`section_id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `coevaluation_t`
--
ALTER TABLE `coevaluation_t`
  ADD CONSTRAINT `coevaluation_t_ibfk_1` FOREIGN KEY (`co_id`) REFERENCES `co_t` (`co_id`),
  ADD CONSTRAINT `coevaluation_t_ibfk_2` FOREIGN KEY (`courseenrollment_id`) REFERENCES `studentcourseenrollment_t` (`courseEnrollment_id`);

--
-- Constraints for table `coursehistory_t`
--
ALTER TABLE `coursehistory_t`
  ADD CONSTRAINT `coursehistory_t_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course_t` (`course_id`),
  ADD CONSTRAINT `coursehistory_t_ibfk_2` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_t` (`curriculum_id`);

--
-- Constraints for table `course_t`
--
ALTER TABLE `course_t`
  ADD CONSTRAINT `course_t_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_t` (`department_id`);

--
-- Constraints for table `co_t`
--
ALTER TABLE `co_t`
  ADD CONSTRAINT `co_t_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course_t` (`course_id`),
  ADD CONSTRAINT `co_t_ibfk_2` FOREIGN KEY (`plo_id`) REFERENCES `plo_t` (`plo_id`);

--
-- Constraints for table `curriculum_t`
--
ALTER TABLE `curriculum_t`
  ADD CONSTRAINT `curriculum_t_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `program_t` (`program_id`);

--
-- Constraints for table `department_t`
--
ALTER TABLE `department_t`
  ADD CONSTRAINT `department_t_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `school_t` (`school_id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `faculty_t`
--
ALTER TABLE `faculty_t`
  ADD CONSTRAINT `faculty_t_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_t` (`department_id`);

--
-- Constraints for table `ploevaluation_t`
--
ALTER TABLE `ploevaluation_t`
  ADD CONSTRAINT `ploevaluation_t_ibfk_1` FOREIGN KEY (`plo_id`) REFERENCES `plo_t` (`plo_id`),
  ADD CONSTRAINT `ploevaluation_t_ibfk_2` FOREIGN KEY (`courseenrollment_id`) REFERENCES `studentcourseenrollment_t` (`courseEnrollment_id`);

--
-- Constraints for table `plohistory_t`
--
ALTER TABLE `plohistory_t`
  ADD CONSTRAINT `plohistory_t_ibfk_1` FOREIGN KEY (`plo_id`) REFERENCES `plo_t` (`plo_id`),
  ADD CONSTRAINT `plohistory_t_ibfk_2` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_t` (`curriculum_id`);

--
-- Constraints for table `programcoursemapping_t`
--
ALTER TABLE `programcoursemapping_t`
  ADD CONSTRAINT `programcoursemapping_t_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `program_t` (`program_id`),
  ADD CONSTRAINT `programcoursemapping_t_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course_t` (`course_id`);

--
-- Constraints for table `program_t`
--
ALTER TABLE `program_t`
  ADD CONSTRAINT `program_t_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_t` (`department_id`);

--
-- Constraints for table `question_t`
--
ALTER TABLE `question_t`
  ADD CONSTRAINT `question_t_ibfk_1` FOREIGN KEY (`assessment_id`) REFERENCES `assessment_t` (`assessment_id`),
  ADD CONSTRAINT `question_t_ibfk_2` FOREIGN KEY (`co_id`) REFERENCES `co_t` (`co_id`);

--
-- Constraints for table `school_t`
--
ALTER TABLE `school_t`
  ADD CONSTRAINT `school_t_ibfk_1` FOREIGN KEY (`U_ID`) REFERENCES `university_t` (`U_ID`);

--
-- Constraints for table `section_t`
--
ALTER TABLE `section_t`
  ADD CONSTRAINT `section_t_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course_t` (`course_id`),
  ADD CONSTRAINT `section_t_ibfk_2` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_t` (`faculty_id`);

--
-- Constraints for table `studentcourseenrollment_t`
--
ALTER TABLE `studentcourseenrollment_t`
  ADD CONSTRAINT `studentcourseenrollment_t_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_t` (`student_id`),
  ADD CONSTRAINT `studentcourseenrollment_t_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `section_t` (`section_id`);

--
-- Constraints for table `student_t`
--
ALTER TABLE `student_t`
  ADD CONSTRAINT `student_t_ibfk_1` FOREIGN KEY (`U_ID`) REFERENCES `university_t` (`U_ID`);

--
-- Constraints for table `vchistory_t`
--
ALTER TABLE `vchistory_t`
  ADD CONSTRAINT `vchistory_t_ibfk_1` FOREIGN KEY (`U_ID`) REFERENCES `university_t` (`U_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
