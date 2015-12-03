-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2015 a las 06:14:24
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `baseinterfaz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblclientes`
--

CREATE TABLE IF NOT EXISTS `tblclientes` (
  `cedula_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(20) NOT NULL,
  `apellido_cliente` varchar(20) NOT NULL,
  `telefono_cliente` int(11) NOT NULL,
  `dirreccion_cliente` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblclientes`
--

INSERT INTO `tblclientes` (`cedula_cliente`, `nombre_cliente`, `apellido_cliente`, `telefono_cliente`, `dirreccion_cliente`) VALUES
(1123, 'Michael', 'Steven', 3233, 'casd'),
(52024653, 'Francisco', 'Perez', 754842, 'Cra 210'),
(1014263824, 'Andres David', 'Torres RIvera', 319505050, 'direccion andres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblfactxdatos`
--

CREATE TABLE IF NOT EXISTS `tblfactxdatos` (
  `id_fact` int(11) NOT NULL,
  `cedula_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(15) NOT NULL,
  `apellido_cliente` varchar(15) NOT NULL,
  `telefono_cliente` int(11) NOT NULL,
  `direccion_cliente` varchar(15) NOT NULL,
  `fecha_exp` varchar(30) NOT NULL,
  `fecha_venc` varchar(30) NOT NULL,
  `total` int(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblfactxdatos`
--

INSERT INTO `tblfactxdatos` (`id_fact`, `cedula_cliente`, `nombre_cliente`, `apellido_cliente`, `telefono_cliente`, `direccion_cliente`, `fecha_exp`, `fecha_venc`, `total`) VALUES
(555, 52024653, 'Francisco', 'Perez', 754842, 'Cra 210', '15 de noviembre de 2015', '30 de noviembre de 2015', 260000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblfactxproductos`
--

CREATE TABLE IF NOT EXISTS `tblfactxproductos` (
  `id_fact` int(11) NOT NULL,
  `cod_producto` int(11) NOT NULL,
  `nombre_producto` varchar(15) NOT NULL,
  `cantidad_prod` int(11) NOT NULL,
  `precio_unitario` int(30) NOT NULL,
  `subtotal` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblfactxproductos`
--

INSERT INTO `tblfactxproductos` (`id_fact`, `cod_producto`, `nombre_producto`, `cantidad_prod`, `precio_unitario`, `subtotal`) VALUES
(250, 7006, 'Bieleta', 23, 98000, 2254000),
(555, 6324, 'Silenciador', 20, 13000, 260000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE IF NOT EXISTS `tblproductos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(40) NOT NULL,
  `marca_producto` varchar(45) NOT NULL,
  `precio_producto` double NOT NULL,
  `cantidad_producto` int(10) NOT NULL,
  `descripcion_producto` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`id_producto`, `nombre_producto`, `marca_producto`, `precio_producto`, `cantidad_producto`, `descripcion_producto`) VALUES
(1, 'Motor V8', 'Ford', 980000, 12, ''),
(2, 'Parabrisas', 'Avan', 320000, 8, 'parte de motor'),
(44, 'producto', 'mar', 454, 454, 'des'),
(295, 'Bombas de Asistencia', 'Calibra', 32000, 35, 'suspensión y Transmisión'),
(1047, 'Rotulas', 'Clio', 3000, 67, 'suspensión y Transmisión'),
(2006, 'Rotulas', 'Espace', 5000, 31, 'Suspension y transmision'),
(2020, 'Prueba', 'Prueba', 45112, 1, 'adasdasdasd'),
(2024, 'Silenciador', 'Clio', 52000, 26, 'Partes Externas'),
(2076, 'Bomba de aceite', 'Clio', 80000, 78, 'Parte de motor'),
(2441, 'Cardan', 'Ascona', 74000, 28, 'Parte de motor'),
(2456, 'Parabrisas', 'Avantime', 52000, 26, 'Partes Externas'),
(2689, 'Parabrisas', 'Cabina', 50000, 32, 'Partes Externas'),
(3452, 'Muelles de Suspensión', 'Espace', 23000, 19, 'suspensión y Transmisión'),
(3454, 'Bomba de Aceite', 'Ascona', 12000, 50, 'parte de motor'),
(5926, 'Silenciador', 'Ascona', 10000, 20, 'parte de motor'),
(6324, 'Silenciador', 'Manta B', 13000, 45, 'parte de motor'),
(7006, 'Bieleta', 'Avantime', 98000, 20, 'suspension y transmision'),
(8256, 'Bombas de Asistencia', 'Ascona', 36000, 15, 'suspensión y Transmisión'),
(9562, 'Bieleta', 'Megane II', 6000, 35, 'suspensión y Transmisión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`usr_id` int(11) NOT NULL,
  `usr_nick` varchar(20) NOT NULL,
  `usr_pass` varchar(20) NOT NULL,
  `usr_tipo` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usr_id`, `usr_nick`, `usr_pass`, `usr_tipo`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'empleado', 'empleado', 'empleado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblclientes`
--
ALTER TABLE `tblclientes`
 ADD PRIMARY KEY (`cedula_cliente`);

--
-- Indices de la tabla `tblfactxproductos`
--
ALTER TABLE `tblfactxproductos`
 ADD PRIMARY KEY (`id_fact`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
 ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
