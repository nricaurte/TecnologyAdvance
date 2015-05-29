-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2015 a las 14:49:24
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tecnologyadvance`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `ciudad` varchar(20) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `ciudad`, `direccion`, `telefono`, `email`) VALUES
('106974122', 'Andres', 'Valencia', 'Fusa', 'Calle112', '313122', 'Javier@hot'),
('1069751356', 'Nestor', 'Fernando', 'Bogota', 'Calle 12', '3132212', 'fernando@hotm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE IF NOT EXISTS `detalle_factura` (
  `id_factura` int(11) NOT NULL DEFAULT '0',
  `id_producto` varchar(20) NOT NULL DEFAULT '',
  `nombre` varchar(40) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(15,0) DEFAULT NULL,
  `total` decimal(15,0) DEFAULT NULL,
  PRIMARY KEY (`id_factura`,`id_producto`),
  KEY `id_producto` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`id_factura`, `id_producto`, `nombre`, `cantidad`, `precio`, `total`) VALUES
(2, '1394', 'LenovaZ-  Plateado,Usb3,14pulgadas', 1, '1859000', '1859000'),
(3, '1394', 'LenovaZ-  Plateado,Usb3,14pulgadas', 2, '1859000', '3718000'),
(4, '1394', 'LenovaZ-  Plateado,Usb3,14pulgadas', 1, '1859000', '1859000'),
(5, '1394', 'LenovaZ-  Plateado,Usb3,14pulgadas', 4, '1859000', '7436000'),
(6, '1394', 'LenovaZ-  Plateado,Usb3,14pulgadas', 1, '1859000', '1859000'),
(7, '1394', 'LenovaZ-  Plateado,Usb3,14pulgadas', 4, '1859000', '7436000'),
(8, '1394', 'LenovaZ-  Plateado,Usb3,14pulgadas', 1, '1859000', '1859000'),
(9, '1394', 'LenovaZ-  Plateado,Usb3,14pulgadas', 4, '1859000', '7436000'),
(10, '1394', 'LenovaZ', 1, '1859000', '1859000'),
(11, '1394', 'LenovaZ', 1, '1859000', '1859000'),
(12, '1394', 'LenovaZ', 1, '1859000', '1859000'),
(13, '1394', 'LenovaZ', 2, '1859000', '3718000'),
(13, '1398', 'Lenova 411', 2, '2540000', '5080000'),
(14, '15031', 'ASUS Transformer Boo', 2, '2300000', '4600000'),
(14, '15032', 'Dell Alienware 17 ', 2, '3200000', '6400000'),
(14, '21572', 'Dell Serie 3000', 2, '1200000', '2400000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` varchar(20) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_usuario` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_factura`, `id_cliente`, `fecha`, `hora`, `id_usuario`, `total`) VALUES
(1, '106974122', '2015-05-11', '11:33:04', '11', 323323),
(2, '106974122', '2015-05-28', '09:41:01', '11', 1859000),
(3, '106974122', '2015-05-28', '09:42:47', '11', 3718000),
(4, '106974122', '2015-05-28', '09:47:08', '11', 1859000),
(5, '106974122', '2015-05-28', '09:47:21', '11', 7436000),
(6, '106974122', '2015-05-28', '09:50:59', '11', 1859000),
(7, '106974122', '2015-05-28', '09:53:34', '11', 7436000),
(8, '106974122', '2015-05-28', '09:54:48', '11', 1859000),
(9, '106974122', '2015-05-28', '09:55:14', '11', 7436000),
(10, '106974122', '2015-05-29', '11:58:03', '11', 1859000),
(11, '106974122', '2015-05-29', '11:59:04', '11', 1859000),
(12, '106974122', '2015-05-29', '12:12:47', '11', 1859000),
(13, '106974122', '2015-05-29', '12:14:05', '11', 8798000),
(14, '106974122', '2015-05-29', '14:48:32', '11', 13400000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE IF NOT EXISTS `inventarios` (
  `id` int(39) NOT NULL AUTO_INCREMENT,
  `id_producto` varchar(20) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `valor_uni` decimal(40,0) DEFAULT NULL,
  `cantidade` int(50) NOT NULL,
  `totale` decimal(60,0) NOT NULL,
  `cantidads` int(60) NOT NULL,
  `totals` decimal(40,0) NOT NULL,
  `cantidadt` int(50) NOT NULL,
  `valort` decimal(40,0) NOT NULL,
  `totalt` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`id`, `id_producto`, `descripcion`, `fecha`, `valor_uni`, `cantidade`, `totale`, `cantidads`, `totals`, `cantidadt`, `valort`, `totalt`) VALUES
(2, '1394', 'hecho', '2015-05-27', '1859000', 9, '16771000', 0, '0', 9, '1859000', 16771000),
(3, '1394', 'venta', '2015-05-28', '1859000', 0, '0', 1, '1859000', 8, '1859000', 14872000),
(4, '1394', 'hecho', '2015-05-29', '1859000', 3, '5577000', 0, '0', 11, '1859000', 14872000),
(5, '1394', 'hecho', '2015-05-29', '1859000', 4, '7436000', 0, '0', 15, '1859000', 27885000),
(6, '1394', 'venta', '2015-05-29', '1859000', 0, '0', 1, '1859000', 14, '1859000', 26026000),
(7, '1398', 'hecho', '2015-05-29', '2540000', 10, '25400000', 0, '0', 10, '2540000', 25400000),
(8, '1394', 'venta', '2015-05-29', '1859000', 0, '0', 2, '3718000', 12, '1859000', 22308000),
(9, '1398', 'venta', '2015-05-29', '2540000', 0, '0', 2, '5080000', 8, '2540000', 20320000),
(10, '1394', 'hecho', '2015-05-29', '1859000', 1, '1859000', 0, '0', 13, '1859000', 24167000),
(11, '1394', 'hecho', '2015-05-29', '1859000', 2, '3718000', 0, '0', 15, '1859000', 27885000),
(12, '15031', 'hecho', '2015-05-29', '2300000', 10, '23000000', 0, '0', 10, '2300000', 23000000),
(13, '15032', 'hecho', '2015-05-29', '3200000', 10, '32000000', 0, '0', 10, '3200000', 32000000),
(14, '21572', 'hecho', '2015-05-29', '1200000', 10, '12000000', 0, '0', 10, '1200000', 12000000),
(15, '15031', 'venta', '2015-05-29', '2300000', 0, '0', 2, '4600000', 8, '2300000', 18400000),
(16, '21572', 'venta', '2015-05-29', '1200000', 0, '0', 2, '2400000', 8, '1200000', 9600000),
(17, '15032', 'venta', '2015-05-29', '3200000', 0, '0', 2, '6400000', 8, '3200000', 25600000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` varchar(20) NOT NULL,
  `descripcion` varchar(2500) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `especificaciones` varchar(250) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(15,0) NOT NULL,
  `archivo` varchar(70) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `descripcion`, `nombre`, `especificaciones`, `cantidad`, `precio`, `archivo`) VALUES
('1394', '  Plateado,Usb3,14pulgadas', 'LenovaZ', 'Windows8,1,Procesador Intel i7 4 generacion,Nivia 820 2Gb ,5horas Bateria,2kg.089 de espesor', 0, '1859000', 'Archivo/lenovoz.png'),
('1398', 'Plateado,Usb3,14pulgadas', 'Lenova 411', 'La pant', 0, '2540000', 'Archivo/411.png'),
('15031', 'Colores Negro y plateado', 'ASUS Transformer Boo', 'Winows 8.1\nUsb 3.0\nRma8gbs\n1Tb\n13 pulgadas\n', 0, '2300000', 'Archivo/asus1.png'),
('15032', '17 pulgadas', 'Dell Alienware 17 ', 'Windows 8.1Nivia 820 Getforce1TbInter cor I7', 0, '3200000', 'Archivo/alien7.png'),
('21572', 'Negro 1,14,15 pulgadas', 'Dell Serie 3000', 'Windows 8.1                                 Intel cor i3                                  Ram 6Gb   ,500Gbs                                  ', 43, '1200000', 'Archivo/s.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `telefono`, `direccion`, `ciudad`, `email`) VALUES
(1, 'Alejandro Ruiz', '8797983', 'Calle3', 'Bogota', 'Alejandro.ruiz@hotmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(20) DEFAULT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `apellido` varchar(15) DEFAULT NULL,
  `direccion` varchar(40) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `rol` varchar(20) NOT NULL,
  `estado` varchar(5) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email`, `nombre`, `apellido`, `direccion`, `telefono`, `rol`, `estado`, `pass`, `salt`) VALUES
('11', 'Fernando@hotmail.com', 'Fernando', 'Ricaurte', 'calle20 # 7-88 Balmoral', '8674456', 'Administrador', '1', '74a49c698dbd3c12e36b0b287447d833f74f3937ff132ebff7054baa18623c35a705bb18b82e2ac0384b5127db97016e63609f712bc90e3506cfbea97599f46f66abdcb0c1e6cdb53b78de3d8b2b2d48', '66abdcb0c1e6cdb53b78de3d8b2b2d48'),
('13', 'Nestor@hotmail.com', 'Nestor', 'Ricaurte', 'calle22 # 3-55 Fusacatan', '4343', 'Cajero', '0', '4dff4ea340f0a823f15d3f4f01ab62eae0e5da579ccb851f8db9dfe84c58b2b37b89903a740e1ee172da793a6e79d560e5f7f9bd058a12a280433ed6fa46510aea3c2edab01513f75f331dcdc6ae804e', 'ea3c2edab01513f75f331dcdc6ae804e'),
('44', 'aljandro@ruiz', 'Alejandro', 'Ruiz', 'Calle3', '4343', 'Cajero', '1', '08856a9022cc1f4b7c90b2d059e64acb6f6c5ac11da907d86db6a3072e9d821c59603c1ea94a2e537bea0a38320d678c482a66eaaf1a79c4d3432ea41e51b721d835bb1980e05e668aa9c1e9a02f3c52', 'd835bb1980e05e668aa9c1e9a02f3c52');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `id_factura` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id_factura`),
  ADD CONSTRAINT `id_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
