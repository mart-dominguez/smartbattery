-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-03-2017 a las 13:15:26
-- Versión del servidor: 5.5.54-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `smartbattery`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SB_PARAMETROS`
--

CREATE TABLE IF NOT EXISTS `SB_PARAMETROS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(245) NOT NULL,
  `VALOR` decimal(18,12) NOT NULL,
  `UNIDADES` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`),
  KEY `ID_2` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Volcado de datos para la tabla `SB_PARAMETROS`
--

INSERT INTO `SB_PARAMETROS` (`ID`, `NOMBRE`, `DESCRIPCION`, `VALOR`, `UNIDADES`) VALUES
(1, 'Iapp', 'Iapp (A/cm^2)', 0.000233000000, 'A/cm^2'),
(2, 'DT', 'Delta T', 4.000000000000, 's'),
(3, 'CSAmax', ' (mol/cm^3)', 0.030555000000, 'mol/cm^3'),
(4, 'CSCmax', '', 0.022806000000, ''),
(5, 'eLA', '', 0.580000000000, ''),
(6, 'ePA', '', 0.020000000000, ''),
(7, 'eFA', '', 0.033000000000, ''),
(8, 'eLS', '', 0.550000000000, ''),
(9, 'ePS', '', 0.000000000000, ''),
(10, 'eLC', '', 0.374000000000, ''),
(11, 'ePS', '', 0.000000000000, ''),
(12, 'ePC', '', 0.000000000000, ''),
(13, 'eFC', '', 0.053000000000, ''),
(14, 'eSA', '', 0.387000000000, ''),
(15, 'eSC', '', 0.573000000000, ''),
(16, 'SigmaA0', '', 1.000000000000, ''),
(17, 'SigmaC0', '', 0.100000000000, ''),
(18, 'GAMA SigmaA', '', 1.000000000000, ''),
(19, 'GAMA SigmaC', '', 1.000000000000, ''),
(20, 'SigmaEffA', '', 0.420000000000, ''),
(21, 'SigmaEffC', '', 0.062600000000, ''),
(22, 'LA', '', 0.003400000000, ''),
(23, 'LS', '', 0.002500000000, ''),
(24, 'LC', '', 0.008000000000, ''),
(25, 'RSA', '', 0.000244000000, ''),
(26, 'RSC', '', 0.000004820000, ''),
(27, 'PKA', '', 1.000000000000, ''),
(28, 'PKS', '', 1.000000000000, ''),
(29, 'PKC', '', 5.400000000000, ''),
(30, 'DE', '', 0.000002000000, ''),
(31, 'PDEA', '', 1.000000000000, ''),
(32, 'PDES', '', 1.000000000000, ''),
(33, 'PDEC', '', 1.000000000000, ''),
(34, 'DeffA', '', 0.000001160000, ''),
(35, 'DeffS', '', 0.000001100000, ''),
(36, 'DeffC', '', 0.000000748000, ''),
(37, 'CA0 (mol/cm^3)', '', 0.001200000000, ''),
(38, 'CS0 (mol/cm^3)', '', 0.001200000000, ''),
(39, 'CC0 (mol/cm^3)', '', 0.001200000000, ''),
(40, 'CSA0 in (mol/cm^3)', '', 0.026580000000, ''),
(41, 'CSC0 in (mol/cm^3)', '', 0.000878031000, ''),
(42, 'Dif S A', '', 0.000000000030, ''),
(43, 'Dif S C', '', 0.000000000000, ''),
(44, 'ntpte', '', 0.363000000000, ''),
(45, 'kA (A cm^2.5 / mol^1.5)', '', 0.140464245520, ''),
(46, 'kC  (A cm^2.5 / mol^1.5)', '', 0.032894648669, ''),
(47, 'T', '', 298.000000000000, ''),
(48, 'Atr', '', 1.000000000000, ''),
(49, 'Vs', '', 1.000000000000, ''),
(50, 'LamdaA', '', 0.000682353000, ''),
(51, 'LamdaS', '', 0.000880000000, ''),
(52, 'LamdaC', '', 0.000187000000, ''),
(53, 'AtreA', '', 0.580000000000, ''),
(54, 'AtreS', '', 0.550000000000, ''),
(55, 'AtreC', '', 0.374000000000, ''),
(56, 'VOLeA', '', 0.001972000000, ''),
(57, 'VOLeS', '', 0.001375000000, ''),
(58, 'VOLeC', '', 0.002992000000, ''),
(59, 'VOLsA', '', 0.001315800000, ''),
(60, 'VOLsC', '', 0.004584000000, ''),
(61, 'AesA', '', 16.177868852459, ''),
(62, 'AesC', '', 2853.112033195020, ''),
(63, 'gamaA', '', 1.054545454545, ''),
(64, 'gamaC', '', 0.680000000000, ''),
(65, 'DA', '', 0.000375394491, ''),
(66, 'DC', '', 0.000163390127, ''),
(67, 'jA', '', 0.000000000149, ''),
(68, 'jC', '', 0.000000000001, ''),
(69, 't descarga', '', 14484.376463084000, ''),
(70, 'R', '', 8.314000000000, ''),
(71, 'F', '', 96486.000000000000, ''),
(72, 'AREA', '', 0.245000000000, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
