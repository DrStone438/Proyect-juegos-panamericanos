-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 04:46:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juegos_panamericanos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medallas`
--

CREATE TABLE `medallas` (
  `pais` varchar(80) NOT NULL,
  `medallas_oro` int(11) NOT NULL,
  `medallas_plata` int(11) NOT NULL,
  `medallas_bronce` int(11) NOT NULL,
  `TOTAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medallas`
--

INSERT INTO `medallas` (`pais`, `medallas_oro`, `medallas_plata`, `medallas_bronce`, `TOTAL`) VALUES
('Antigua y barbuda', 0, 0, 0, 0),
('Argentina', 10, 10, 10, 0),
('Aruba', 0, 0, 0, 0),
('Bahamas', 0, 0, 0, 0),
('Barbados', 0, 0, 0, 0),
('Belice', 0, 0, 0, 0),
('Bermudas', 0, 0, 0, 0),
('Bolivia', 0, 0, 0, 0),
('Cabada', 0, 0, 0, 0),
('Chile', 5, 4, 2, 0),
('Colombia', 0, 0, 0, 0),
('Costa Rica', 0, 0, 0, 0),
('Cuba', 0, 0, 0, 0),
('Dominica', 0, 0, 0, 0),
('Ecuador', 0, 0, 0, 0),
('El Salvador', 0, 0, 0, 0),
('Estados Unidos', 0, 0, 0, 0),
('Granada', 0, 0, 0, 0),
('Guatemala', 0, 0, 0, 0),
('Guyana', 0, 0, 0, 0),
('Haiti', 0, 0, 0, 0),
('Honduras', 0, 0, 0, 0),
('Isla Caiman', 0, 0, 0, 0),
('Isla Virgenes Britanicas', 0, 0, 0, 0),
('Isla Virgenes de los Estados Unidos', 0, 0, 0, 0),
('Jamaica', 0, 0, 0, 0),
('Mexico', 9, 4, 7, 0),
('Nicaragua', 0, 0, 0, 0),
('Panama', 0, 0, 0, 0),
('Paraguay', 0, 0, 0, 0),
('Peru', 8, 6, 0, 0),
('Puerto rico', 0, 0, 0, 0),
('Republica Dominicana', 0, 0, 0, 0),
('San Cristobal y Neves', 0, 0, 0, 0),
('San Vicente y las Granadinas', 0, 0, 0, 0),
('Santa Lucia', 0, 0, 0, 0),
('Surinam', 0, 0, 0, 0),
('Trinidad y Tobago', 0, 0, 0, 0),
('Uruguay', 0, 0, 0, 0),
('Venezuela', 0, 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medallas`
--
ALTER TABLE `medallas`
  ADD PRIMARY KEY (`pais`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
