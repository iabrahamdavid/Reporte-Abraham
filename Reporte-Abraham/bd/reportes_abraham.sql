-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2023 a las 06:42:43
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reportes_abraham`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `nombre_profesor` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Nombre del Estudiante',
  `edad_profesor` int(11) NOT NULL COMMENT 'Cedula del Estudiante',
  `cedula_profesor` int(11) NOT NULL COMMENT 'Edad del Estudiante',
  `annos_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='datatable demo table';

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre_profesor`, `edad_profesor`, `cedula_profesor`, `annos_servicio`) VALUES
(1, 'Aloysius Lipson', 32, 15910707, 16),
(2, 'Maximilian Aleswell', 33, 11246402, 5),
(3, 'Tedie Morfield', 44, 20161256, 17),
(4, 'Basile Lowell', 45, 20264363, 12),
(5, 'Lesya Churn', 34, 9963007, 22),
(6, 'Ron Dalmon', 40, 19469126, 7),
(7, 'Svend Shay', 34, 11029640, 22),
(8, 'Gayelord Behan', 48, 16266569, 15),
(9, 'Lulu Trembley', 35, 16001460, 22),
(10, 'Ailina Pavier', 45, 5268707, 12),
(11, 'Arvy Castaner', 47, 20113283, 21),
(12, 'Devlin Halleybone', 49, 5056901, 20),
(13, 'Che Theunissen', 28, 7465545, 20),
(14, 'Codi Briamo', 51, 23829884, 12),
(15, 'Cosimo Paulitschke', 25, 20810508, 20),
(16, 'Germana Feltham', 53, 21167707, 18),
(17, 'Ambrosio Pitney', 47, 17750476, 13),
(18, 'Nikolos McBrier', 30, 12616811, 20),
(19, 'Brad Filipic', 52, 22173802, 20),
(20, 'Hilarius Fenlon', 27, 18038005, 1),
(21, 'Stefa Yeomans', 48, 23067764, 1),
(22, 'Ari Drage', 27, 10408488, 20),
(23, 'Burtie Wolseley', 37, 15542016, 6),
(24, 'Marylinda Lewson', 44, 5109791, 3),
(25, 'Tresa Camilio', 30, 22130974, 8),
(26, 'Malynda Narraway', 40, 13310203, 3),
(27, 'Kyle Dewes', 39, 21501418, 16),
(28, 'Eula Paye', 53, 17645309, 22),
(29, 'Esma Edkins', 48, 19414535, 22),
(30, 'Jordain Kahane', 51, 11007412, 1),
(31, 'Arvie Rickeard', 51, 9643408, 2),
(32, 'Nedi Povey', 37, 10875757, 2),
(33, 'Philippa Sprake', 27, 7032408, 11),
(34, 'Rosemonde Dyett', 30, 18613359, 22),
(35, 'Kellyann McFayden', 39, 22035088, 8),
(36, 'Juan Lopez', 41, 23448272, 19),
(37, 'Irma Handaside', 43, 15640339, 6),
(38, 'Merci Deniskevich', 31, 14427323, 1),
(39, 'Kennan Biggerstaff', 47, 11935850, 10),
(40, 'Pamella Eggerton', 36, 14243637, 4),
(41, 'Elias Vasyatkin', 54, 15725358, 3),
(42, 'Nat Wyley', 25, 21022143, 17),
(43, 'Druci Grivori', 49, 14757997, 4),
(44, 'Juanito Lopinho', 43, 9482529, 21),
(45, 'Theodora Toby', 48, 4714314, 4),
(46, 'Packston Raitie', 33, 14391468, 22),
(47, 'Karyl Macek', 41, 11103797, 6),
(48, 'Eada Puffett', 36, 10251851, 8),
(49, 'Sofia Aldridge', 41, 8309263, 11),
(50, 'Eugene Najafian', 41, 11882744, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
