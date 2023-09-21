-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2023 a las 18:22:33
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario-basico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ims_product`
--

CREATE TABLE `ims_product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(300) NOT NULL,
  `model` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(150) NOT NULL,
  `supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ims_product`
--

INSERT INTO `ims_product` (`pid`, `pname`, `model`, `quantity`, `unit`, `supplier`) VALUES
(3161747, 'Hector Martinez Lopez', '3112244498', 1, 'COL CARLOS LOZANO Y LOZANO', 1069733827),
(20761623, 'Maria Isabel Rios Diaz', '3227603399', 7, 'ESCUELA FUSACATAN', 1069733827),
(20823222, 'Claribel Ruiz Gonzalez', '3112244498', 1, 'COL CARLOS LOZANO Y LOZANO', 1069733827),
(53038859, 'Yohana Zamora', '3238015956', 16, 'COLEGIO RICAURTE', 1069733827),
(80258281, 'Fidel Roa', '3115129972', 18, 'COLEGIO RICAURTE', 1069733827),
(1000861695, 'Fidel Andres Roa', '3133184102', 13, 'ESC REFUGIO INFANTIL', 1069733827),
(1007159715, 'Paula Alejandra Zamora', '3238015956', 12, 'UNIVERSIDAD DE CUNDINAMARCA', 1069733827),
(1031170885, 'Valeria Ruiz Ochoa', '3213384828', 7, 'COL CARLOS LOZANO Y LOZANO', 1069733827),
(1069716758, 'Yuli Alvarez Diaz', '3227603399', 8, 'COL CARLOS LOZANO Y LOZANO', 1069733827);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ims_supplier`
--

CREATE TABLE `ims_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `mobile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ims_supplier`
--

INSERT INTO `ims_supplier` (`supplier_id`, `supplier_name`, `mobile`) VALUES
(1069733827, 'Diana Fernandez', '3001710518');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ims_user`
--

CREATE TABLE `ims_user` (
  `userid` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` enum('admin','member') NOT NULL,
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ims_user`
--

INSERT INTO `ims_user` (`userid`, `email`, `password`, `name`, `type`, `status`) VALUES
(1, 'blayore@hotmail.com', '4b67deeb9aba04a5b54632ad19934f26', 'yoly', 'admin', 'Active');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ims_product`
--
ALTER TABLE `ims_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indices de la tabla `ims_supplier`
--
ALTER TABLE `ims_supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indices de la tabla `ims_user`
--
ALTER TABLE `ims_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ims_product`
--
ALTER TABLE `ims_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1069734441;

--
-- AUTO_INCREMENT de la tabla `ims_user`
--
ALTER TABLE `ims_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
