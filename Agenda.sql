-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2014 at 04:09 a.m.
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Agenda`
--

-- --------------------------------------------------------

--
-- Table structure for table `Contactos`
--

CREATE TABLE IF NOT EXISTS `Contactos` (
  `codigo_contacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `apodo` varchar(20) NOT NULL,
  `usuario` int(11) NOT NULL,
  PRIMARY KEY (`codigo_contacto`),
  KEY `usuario` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CorreoE`
--

CREATE TABLE IF NOT EXISTS `CorreoE` (
  `codigo_correo` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `contacto` int(11) NOT NULL,
  PRIMARY KEY (`codigo_correo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Direccion`
--

CREATE TABLE IF NOT EXISTS `Direccion` (
  `codigo_direccion` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(45) NOT NULL,
  `lugar` varchar(45) NOT NULL,
  `provincia` varchar(45) NOT NULL,
  `municipio` varchar(45) NOT NULL,
  `codigo_postal` varchar(45) NOT NULL,
  `contacto` int(11) NOT NULL,
  PRIMARY KEY (`codigo_direccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Notas`
--

CREATE TABLE IF NOT EXISTS `Notas` (
  `codigo_nota` int(11) NOT NULL AUTO_INCREMENT,
  `encabezado` varchar(45) NOT NULL,
  `cuerpo` varchar(150) NOT NULL,
  `contacto` int(11) NOT NULL,
  PRIMARY KEY (`codigo_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Telefonos`
--

CREATE TABLE IF NOT EXISTS `Telefonos` (
  `codigo_telefono` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(10) NOT NULL,
  `contacto` int(11) NOT NULL,
  PRIMARY KEY (`codigo_telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Usuarios`
--

CREATE TABLE IF NOT EXISTS `Usuarios` (
  `codigo_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(25) NOT NULL,
  `constrasena` varchar(15) NOT NULL,
  PRIMARY KEY (`codigo_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
