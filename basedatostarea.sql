-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2024 a las 19:47:20
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
-- Base de datos: `basedatostarea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `basedatostarea`
--

CREATE TABLE `basedatostarea` (
  `id` int(100) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `dni` int(8) NOT NULL,
  `f_nacimiento` date NOT NULL,
  `genero` char(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `password2` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `basedatostarea` (`id`, `nombre`, `apellido`, `dni`, `f_nacimiento`, `genero`, `email`, `password`, `password2`) VALUES
(1, 'daniel', 'perez', 31546954, '2016-04-05', 0, 'saddad@dffsfsd.com',  '1111111111', '1111111111'),
(2, 'andres', 'Aldair', 97554661, '2014-10-15', 0, 'ksldfsdlfn@dsksdf.com',  '2222222222', '2222222222'),
(3, 'Flavio', 'Dron', 27459078, '2013-11-14', 0, 'dsfdsfsa@dsfdssa.com', '3333333333', '3333333333'),
(4, 'Martin', 'Mangia', 23643091, '2014-04-24', 0, 'ddfsas@iuyyui.com', '4444444444', '4444444444');
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `basedatostarea`
--
ALTER TABLE `basedatostarea`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `basedatostarea`
--
ALTER TABLE `basedatostarea`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
