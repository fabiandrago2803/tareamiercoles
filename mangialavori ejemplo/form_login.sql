-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2024 a las 00:15:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formulario_usuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_login`
--

CREATE TABLE `form_login` (
  `Id` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido` text NOT NULL,
  `Dni` int(8) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Nacimiento` date NOT NULL,
  `Contrasena` varchar(16) NOT NULL,
  `RepContras` varchar(16) NOT NULL,
  `Genero` tinyint(1) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `form_login`
--

INSERT INTO `form_login` (`Id`, `Nombre`, `Apellido`, `Dni`, `Email`, `Nacimiento`, `Contrasena`, `RepContras`, `Genero`, `Transporte`) VALUES
(1, 'daniel', 'perez', 31546954, 'saddad@dffsfsd.com', '2016-04-05', 'hola', 'hola', 0),
(2, 'andres', 'Aldair', 97554661, 'ksldfsdlfn@dsksdf.com', '2014-10-15', 'chau', 'chau', 0),
(3, 'Flavio', 'Dron', 27459078, 'dsfdsfsa@dsfdssa.com', '2013-11-14', 'hello', 'hello', 0),
(4, 'Martin', 'Mangia', 23643091, 'ddfsas@iuyyui.com', '2014-04-24', 'bye', 'bye', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `form_login`
--
ALTER TABLE `form_login`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `form_login`
--
ALTER TABLE `form_login`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
