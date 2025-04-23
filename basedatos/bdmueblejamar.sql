-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2025 a las 01:38:23
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
-- Base de datos: `bdmueblejamar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `documento` varchar(10) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `contrasena` varchar(250) NOT NULL,
  `rol` varchar(20) NOT NULL DEFAULT 'Cliente',
  `estado` varchar(20) NOT NULL DEFAULT 'Activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `documento`, `nombres`, `telefono`, `correo`, `contrasena`, `rol`, `estado`) VALUES
(1, '12345677', 'Pepe Ramos', '3022222222', 'rpepe@gmail.com', 'pepe12345', 'Cliente', 'Activo'),
(2, '123345678', 'Luis Mazo', '3022222224', 'lmazo15@gmail.com', 'mazol25', 'Cliente', 'Activo'),
(3, '12345678', 'Santi Diaz', '3002222225', 'santip@gmail.com', '$2b$10$2GPTXAmIQIY7tM8m6HIZS.FFU5giHqkyr3MOEAgzdqQR2SEnmjZ1C', 'Cliente', 'Activo'),
(4, '1025762115', 'Keiner Sebastian Arenas Patiño', '3023420201', 'keinerarenas77@gmail.com', '$2b$10$NnjA3sIfM7rzqmdais3TReque5G9.gN25ftBgEnpRBVE2xhj/rJ7G', 'Cliente', 'Activo'),
(5, '12345657', 'Yeison Jimenez', '3013333334', 'yeisonj@gmail.com', '$2b$10$5Zd0bxAANaDO6.DrT7FnKeSJxnIAkdkYxldA1tMmxmoTRpbzRt6FG', 'Cliente', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `documento` (`documento`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
