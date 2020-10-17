-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2020 a las 00:52:11
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `erp_preliminar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacion`
--

CREATE TABLE `aplicacion` (
  `pk_id_aplicacion` int(10) NOT NULL,
  `nombre_aplicacion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `informe_aplicacion` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_aplicacion` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `aplicacion`
--

INSERT INTO `aplicacion` (`pk_id_aplicacion`, `nombre_aplicacion`, `informe_aplicacion`, `estado_aplicacion`) VALUES
(1, 'PRUEBA1', 'NOHAY', 1),
(2, 'PRUEBA 2', 'NO HAY', 1),
(3, 'PRUEBA 3', 'NO HAY ', 1),
(4, 'MRP', 'NO HAY', 1),
(5, 'Bancos', 'NO HAY', 1),
(6, 'MateriaPrima', 'NO HAY', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacionperfil`
--

CREATE TABLE `aplicacionperfil` (
  `pk_id_aplicacionperfil` int(10) NOT NULL,
  `fk_idaplicacion_aplicacionperfil` int(10) DEFAULT NULL,
  `fk_idperfil_aplicacionperfil` int(10) DEFAULT NULL,
  `fk_idpermiso_aplicacionperfil` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `aplicacionperfil`
--

INSERT INTO `aplicacionperfil` (`pk_id_aplicacionperfil`, `fk_idaplicacion_aplicacionperfil`, `fk_idperfil_aplicacionperfil`, `fk_idpermiso_aplicacionperfil`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 2, 1),
(4, 5, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicacionusuario`
--

CREATE TABLE `aplicacionusuario` (
  `pk_id_aplicacionusuario` int(10) NOT NULL,
  `fk_idlogin_aplicacionusuario` int(10) DEFAULT NULL,
  `fk_idaplicacion_aplicacionusuario` int(10) DEFAULT NULL,
  `fk_idpermiso_aplicacionusuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `aplicacionusuario`
--

INSERT INTO `aplicacionusuario` (`pk_id_aplicacionusuario`, `fk_idlogin_aplicacionusuario`, `fk_idaplicacion_aplicacionusuario`, `fk_idpermiso_aplicacionusuario`) VALUES
(1, 3, 5, 8),
(2, 3, 6, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `pk_idarea` int(11) NOT NULL,
  `nombre_area` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion_area` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_area` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`pk_idarea`, `nombre_area`, `descripcion_area`, `estado_area`) VALUES
(1, 'FRM', 'Esta area se manejaran las finanzas de la empresa, como libros contables, bancos, presupuestos, clientes.', 0),
(2, 'FRM', 'Area de Finanzas', 0),
(3, 'FRM', 'FRM,FRM,FRM', 0),
(4, 'FRM', 'Prueba insertar', 0),
(5, 'a', 'a', 0),
(6, 'a', 'a', 0),
(7, 'a', 'a', 0),
(8, 'FMR', 'A', 0),
(9, 'FMR', 'A', 0),
(10, 'aaaaaa', 'A', 0),
(11, 'FMR', 'A', 0),
(12, 'FMR', 'A', 0),
(13, 'FMR', 'A', 0),
(14, 'FMR', 'A', 0),
(15, 'A', 'A', 1),
(16, 'A', 'A', 1),
(17, 'FRM', 'AAAAAAA', 1),
(18, 'asda', 'asda', 1),
(19, 'qweq', 'qweq', 1),
(20, 'CRM', 'VENTAS', 1),
(21, 'UMG', 'UMG', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balance_detalle`
--

CREATE TABLE `balance_detalle` (
  `pk_idbalanceencabezado` int(11) NOT NULL,
  `pk_idcuenta` int(11) NOT NULL,
  `debe_balance_detalle` double DEFAULT NULL,
  `haber_balance_detalle` double DEFAULT NULL,
  `deudor_balance_detalle` double DEFAULT NULL,
  `acreedor_balance_detalle` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balance_encabezado`
--

CREATE TABLE `balance_encabezado` (
  `pk_idbalanceencabezado` int(11) NOT NULL,
  `descripcion_balance_encabezado` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaCreacion_balance_encabezado` datetime DEFAULT NULL,
  `totalDebeHaber_balance_encabezado` double DEFAULT NULL,
  `totalDeudorAcreedor_balance_encabezado` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `pk_idbanco` int(11) NOT NULL,
  `nombre_banco` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_banco` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`pk_idbanco`, `nombre_banco`, `estado_banco`) VALUES
(1, 'Banrural1', 1),
(2, 'Banrural', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `pk_id_bitacora` int(10) NOT NULL,
  `fk_idusuario_bitacora` int(10) DEFAULT NULL,
  `fk_idaplicacion_bitacora` int(10) DEFAULT NULL,
  `fechahora_bitacora` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccionhost_bitacora` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombrehost_bitacora` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accion_bitacora` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`pk_id_bitacora`, `fk_idusuario_bitacora`, `fk_idaplicacion_bitacora`, `fechahora_bitacora`, `direccionhost_bitacora`, `nombrehost_bitacora`, `accion_bitacora`) VALUES
(111, 3, 5, '15/10/2020 19:43:31', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 3,  FRM,  FRM,FRM,FRM,  1) '),
(112, 3, 5, '15/10/2020 19:43:31', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(113, 3, 5, '15/10/2020 19:53:33', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 1,  Prueba insertar,  FRM,  4) '),
(114, 3, 5, '15/10/2020 19:53:33', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 4,  FRM,  Prueba insertar,  1) '),
(115, 3, 5, '15/10/2020 19:53:33', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(116, 3, 5, '15/10/2020 19:53:33', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(117, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(118, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE estado_area= 1 '),
(119, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(120, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(121, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 1,  a,  a,  5) '),
(122, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 5,  a,  a,  1) '),
(123, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(124, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 1,  a,  a,  6) '),
(125, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 6,  a,  a,  1) '),
(126, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(127, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 1,  a,  a,  7) '),
(128, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 7,  a,  a,  1) '),
(129, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(130, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(131, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE estado_area= 1 '),
(132, 3, 5, '15/10/2020 20:01:07', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(133, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 8,  FMR,  A,  1) '),
(134, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(135, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 9,  FMR,  A,  1) '),
(136, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(137, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(138, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 10,  FMR,  A,  1) '),
(139, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(140, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(141, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET   nombre_area =  aaaaaa,  descripcion_area =  A,  estado_area =  1  WHERE pk_idarea = 10; '),
(142, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(143, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(144, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE pk_idarea= 10 '),
(145, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(146, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(147, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE pk_idarea= 9 '),
(148, 3, 5, '15/10/2020 20:09:18', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(149, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 11,  FMR,  A,  1) '),
(150, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(151, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 12,  FMR,  A,  1) '),
(152, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(153, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(154, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 13,  FMR,  A,  1) '),
(155, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(156, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 14,  FMR,  A,  1) '),
(157, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(158, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(159, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE pk_idarea= 12 '),
(160, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(161, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(162, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE pk_idarea= 11 '),
(163, 3, 5, '15/10/2020 20:10:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(164, 3, 5, '15/10/2020 20:12:27', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(165, 3, 5, '15/10/2020 20:12:27', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE pk_idarea= 13 '),
(166, 3, 5, '15/10/2020 20:12:27', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(167, 3, 5, '15/10/2020 20:12:27', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE pk_idarea= 8 '),
(168, 3, 5, '15/10/2020 20:12:27', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(169, 3, 5, '15/10/2020 20:12:27', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE pk_idarea= 8 '),
(170, 3, 5, '15/10/2020 20:12:27', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(171, 3, 5, '15/10/2020 20:12:27', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE pk_idarea= 14 '),
(172, 3, 5, '15/10/2020 20:19:43', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 15,  A,  A,  1) '),
(173, 3, 5, '15/10/2020 20:21:12', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 16,  A,  A,  1) '),
(174, 3, 5, '16/10/2020 01:55:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 17,  FRM,  SDASDA,  1) '),
(175, 3, 5, '16/10/2020 01:55:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(176, 3, 5, '16/10/2020 01:55:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET   nombre_area =  FRM,  descripcion_area =  AAAAAAA,  estado_area =  1  WHERE pk_idarea = 17; '),
(177, 3, 5, '16/10/2020 01:55:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(178, 3, 5, '16/10/2020 01:55:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(179, 3, 5, '16/10/2020 01:55:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Formulario de ayuda'),
(180, 3, 5, '16/10/2020 01:55:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Salir de la aplicacion'),
(181, 3, 5, '16/10/2020 02:17:13', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(182, 3, 5, '16/10/2020 02:34:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(183, 3, 5, '16/10/2020 02:34:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(184, 3, 5, '16/10/2020 02:34:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(185, 3, 5, '16/10/2020 02:34:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(186, 3, 5, '16/10/2020 02:34:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Formulario de ayuda'),
(187, 3, 5, '16/10/2020 02:34:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Salir de la aplicacion'),
(188, 3, 5, '16/10/2020 10:48:33', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(189, 3, 5, '16/10/2020 10:48:33', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(190, 3, 5, '16/10/2020 10:48:33', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 18,  asda,  asda,  1) '),
(191, 3, 5, '16/10/2020 10:53:13', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(192, 3, 5, '16/10/2020 19:08:13', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(193, 3, 5, '16/10/2020 19:08:13', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Formulario de ayuda'),
(194, 3, 6, '16/10/2020 21:27:29', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO materiaprimainsumo VALUES ( 1,  a,  aa,  a,  1,  a) '),
(195, 3, 6, '16/10/2020 21:27:29', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(196, 3, 6, '16/10/2020 21:28:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO materiaprimainsumo VALUES ( 1,  a,  a,  a,  1,  a) '),
(197, 3, 6, '16/10/2020 21:28:46', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(198, 3, 6, '16/10/2020 21:30:52', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO materiaprimainsumo VALUES ( 1,  a,  a,  a,  1,  5) '),
(199, 3, 6, '16/10/2020 21:31:25', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO materiaprimainsumo VALUES ( 2,  w,  w,  w,  1,  5) '),
(200, 3, 6, '16/10/2020 21:34:04', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO materiaprimainsumo VALUES ( 3,  platano,  rrrrr,  materia prima,  1,  5.5) '),
(201, 3, 6, '16/10/2020 21:35:29', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(202, 3, 6, '16/10/2020 21:35:29', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE materiaprimainsumo SET estado_materiaprimainsumo=0 WHERE pk_id_materiaprimainsumo= 3 '),
(203, 3, 6, '16/10/2020 21:35:29', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(204, 3, 5, '16/10/2020 23:13:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 19,  qweq,  qweq,  1) '),
(205, 3, 5, '16/10/2020 23:27:43', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(206, 3, 5, '16/10/2020 23:27:43', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(207, 3, 5, '17/10/2020 11:14:19', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 20,  CRM,  VENTAS,  1) '),
(208, 3, 5, '17/10/2020 12:08:30', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(209, 3, 5, '17/10/2020 12:36:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', ' INSERT INTO area VALUES ( 21,  UMG,  ASDA,  1) '),
(210, 3, 5, '17/10/2020 12:36:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(211, 3, 5, '17/10/2020 12:36:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET   nombre_area =  UMG,  descripcion_area =  UMG,  estado_area =  1  WHERE pk_idarea = 21; '),
(212, 3, 5, '17/10/2020 12:36:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Eliminacion de Datos'),
(213, 3, 5, '17/10/2020 12:36:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'UPDATE area SET estado_area=0 WHERE pk_idarea= 21 '),
(214, 3, 5, '17/10/2020 12:36:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Refrescar Datos'),
(215, 3, 5, '17/10/2020 12:36:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(216, 3, 5, '17/10/2020 12:36:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Cancelar'),
(217, 3, 5, '17/10/2020 12:36:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Formulario de ayuda'),
(218, 3, 5, '17/10/2020 12:36:51', 'fdb4:f58e:1300:1d00:', 'LAPTOP-I01T9HGS', 'Salir de la aplicacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `pk_id_bodega` int(10) NOT NULL,
  `fk_id_municipio` int(10) NOT NULL,
  `dimensiones` double(5,2) NOT NULL,
  `direccion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(8) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capacitacion`
--

CREATE TABLE `capacitacion` (
  `pk_id_capacitacion` int(11) NOT NULL,
  `fk_id_encabezado_capacitacion` int(11) DEFAULT NULL,
  `fk_id_empleado_capacitacion` int(11) DEFAULT NULL,
  `resultado_capacitacion` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `pk_id_categoria_producto` int(10) NOT NULL,
  `descripcion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_tamaño`
--

CREATE TABLE `categoria_tamaño` (
  `pk_idcategoriatamaño` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_tipo`
--

CREATE TABLE `categoria_tipo` (
  `pk_idcategoriatipo` int(11) NOT NULL,
  `nombre_categoria_tipo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion_categoria_tipo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `pk_idcliente` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencia_desarrollo`
--

CREATE TABLE `competencia_desarrollo` (
  `pk_id_encabezado_desarrollo` int(11) NOT NULL,
  `fk_id_empleado_encabezado_desarrollo` int(11) DEFAULT NULL,
  `fecha_inicio_encabezado_desarrollo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_fin_encabezado_desarrollo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_id_competencia_encabezado_desarrollo` int(11) DEFAULT NULL,
  `resultado_competencia_encabezado_desarrollo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_detalle`
--

CREATE TABLE `compra_detalle` (
  `fk_id_encabezado_compra` int(10) NOT NULL,
  `cod_linea` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `precio_unitario` double(8,2) NOT NULL,
  `subtotal` double(12,2) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_encabezado`
--

CREATE TABLE `compra_encabezado` (
  `pk_id_encabezado_compra` int(10) NOT NULL,
  `fk_id_proveedor` int(10) NOT NULL,
  `fec_compra` datetime NOT NULL,
  `total_compra` double(12,2) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consulta_inteligente`
--

CREATE TABLE `consulta_inteligente` (
  `pk_id_consulta_inteligente` int(11) NOT NULL,
  `nombre_consulta_inteligente` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contenido_consulta_inteligente` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `pk_id_contrato` int(11) NOT NULL,
  `nombre_contrato` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_suscripcion_contrato` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_id_tipo_contrato` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controlcalidad`
--

CREATE TABLE `controlcalidad` (
  `pk_id_controlcalidad` int(10) NOT NULL,
  `fk_idordenproduccion_controlcalidad` int(11) NOT NULL,
  `fk_idinventario_controlcalidad` int(11) NOT NULL,
  `fk_idresponsable_controlcalidad` int(10) NOT NULL,
  `resultado_controlcalidad` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_controlcalidad` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `controlproducto`
--

CREATE TABLE `controlproducto` (
  `pk_id_controlproducto` int(10) NOT NULL,
  `fk_idordenproduccion_controlproducto` int(10) DEFAULT NULL,
  `fk_idestadoproduccion_controlproducto` int(10) DEFAULT NULL,
  `resultado_controlproducto` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_controlproducto` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_empleado`
--

CREATE TABLE `control_empleado` (
  `pk_idControlEmpleado` int(11) NOT NULL,
  `Horas_Efectivas_De_Trabajo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Horas_Extras` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Comisiones` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fK_idEMPLEADO` int(11) NOT NULL,
  `fk_idventa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo_cliente`
--

CREATE TABLE `correo_cliente` (
  `pk_iddireccionCliente` int(11) NOT NULL,
  `numero` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calle` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `colonia` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciudad` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo_proveedor`
--

CREATE TABLE `correo_proveedor` (
  `pk_id_correo_proveedor` int(10) NOT NULL,
  `fk_id_proveedor` int(10) NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_por_cobrar`
--

CREATE TABLE `cuentas_por_cobrar` (
  `pk_idcuentacobrar` int(11) NOT NULL,
  `cuota` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abono` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_idfactura` int(11) NOT NULL,
  `fk_idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_bancaria`
--

CREATE TABLE `cuenta_bancaria` (
  `pk_idnumerocuenta` int(11) NOT NULL,
  `fk_idbanco` int(11) NOT NULL,
  `fk_idpropietario` int(11) NOT NULL,
  `fk_idtipomoneda` int(11) NOT NULL,
  `saldo_cuenta_bancaria` double DEFAULT NULL,
  `fecha_apertura_cuenta_bancaria` datetime DEFAULT NULL,
  `estado_apertura_cuenta` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_contable`
--

CREATE TABLE `cuenta_contable` (
  `pk_idcuenta` int(11) NOT NULL,
  `nombre_cuenta_contable` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nivel_cuenta_contable` int(11) DEFAULT NULL,
  `fk_cuentapadre` int(11) DEFAULT NULL,
  `saldo_cuenta_contable` double DEFAULT NULL,
  `estado_cuenta_contable` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `pk_id_curso` int(11) NOT NULL,
  `nombre_curso` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `capacitador_curso` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deduccion`
--

CREATE TABLE `deduccion` (
  `pk_id_deduccion` int(11) NOT NULL,
  `nombre_deduccion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monto_deduccion` double DEFAULT NULL,
  `descripcion_deduccion` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `pk_id_departamento` int(10) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento_empresarial`
--

CREATE TABLE `departamento_empresarial` (
  `pk_id__departamento_empresarial` int(11) NOT NULL,
  `nombre_departamento_empresarial` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallebitacora`
--

CREATE TABLE `detallebitacora` (
  `pk_id_detallebitacora` int(10) NOT NULL,
  `fk_idbitacora_detallebitacora` int(10) DEFAULT NULL,
  `querryantigua_detallebitacora` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `querrynueva_detallebitacora` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_consulta_inteligente`
--

CREATE TABLE `detalle_consulta_inteligente` (
  `pk_id_detalle_consulta_inteligente` int(11) NOT NULL,
  `fk_id_empleado_detalle_consulta_inteligente` int(11) DEFAULT NULL,
  `fk_id_consulta_detalle_consulta_inteligente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `pk_id_detalle_factura` int(11) NOT NULL,
  `fk_idfactura` int(11) NOT NULL,
  `fk_idproducto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_nomina`
--

CREATE TABLE `detalle_nomina` (
  `pk_id_detalle_nomina` int(11) NOT NULL,
  `fk_id_encabezado_detalle_nomina` int(11) DEFAULT NULL,
  `fk_id_empleado_detalle_nomina` int(11) DEFAULT NULL,
  `fk_id_percepciones_detalle_nomina` int(11) DEFAULT NULL,
  `fk_id_deducciones_detalle_nomina` int(11) DEFAULT NULL,
  `salario_base_detalle_nomina` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_transaccion`
--

CREATE TABLE `detalle_transaccion` (
  `pk_iddetalletransaccion` int(11) NOT NULL,
  `fk_idencabezadotransaccion` int(11) NOT NULL,
  `fk_idtipotransaccion` int(11) NOT NULL,
  `monto_detalle_transaccion` double DEFAULT NULL,
  `descripcion_detalle_transaccion` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion_detalle`
--

CREATE TABLE `devolucion_detalle` (
  `fk_id_encabezado_devolucion` int(10) NOT NULL,
  `cod_linea` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `fk_id_estado_producto` int(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `iva_por_cobrar` double(8,2) NOT NULL,
  `precio_unitario` double(8,2) NOT NULL,
  `subtotal` double(12,2) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion_encabezado`
--

CREATE TABLE `devolucion_encabezado` (
  `pk_id_encabezado_devolucion` int(10) NOT NULL,
  `fk_id_fabrica` int(10) NOT NULL,
  `fk_id_categoria_producto` int(10) NOT NULL,
  `fec_devolucion` datetime NOT NULL,
  `total_devolucion` double(12,2) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diario_detalle`
--

CREATE TABLE `diario_detalle` (
  `pk_polizaencabezado` int(11) NOT NULL,
  `pk_idcuenta` int(11) NOT NULL,
  `monto_diario_detalle` double DEFAULT NULL,
  `debe_diario_detalle` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diario_encabezado`
--

CREATE TABLE `diario_encabezado` (
  `pk_polizaencabezado` int(11) NOT NULL,
  `fecha_diarioencabezado` datetime DEFAULT NULL,
  `descripcion_diarioencabezado` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_diarioencabezado` tinyint(4) DEFAULT NULL,
  `total_diarioencabezado` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `pk_id_direccion` int(11) NOT NULL,
  `departamento_direccion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zona_direccion` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `municipio_direccion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residencia_direccion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_empleado_direccion` int(11) DEFAULT NULL,
  `fk_reclutamiento_direccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `pk_id_empleado` int(11) NOT NULL,
  `nombre1_empleado` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre2_empleado` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido1_empleado` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido2_empleado` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_nacimiento_empleado` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dpi_empleado` int(11) DEFAULT NULL,
  `fk_id_genero_empleado` int(11) DEFAULT NULL,
  `fk_id_estado_civil_empleado` int(11) DEFAULT NULL,
  `email_empleado` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono_empleado` int(11) DEFAULT NULL,
  `numero_iggs_empleado` int(11) DEFAULT NULL,
  `fk_id_licencia_conducir_empleado` int(11) DEFAULT NULL,
  `fk_id_contrato_empleado` int(11) DEFAULT NULL,
  `fk_id_puesto_empleado` int(11) DEFAULT NULL,
  `cuenta_bancaria_empleado` int(11) DEFAULT NULL,
  `fk_id_departamento_empresarial_empleado` int(11) DEFAULT NULL,
  `estado_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_capacitacion`
--

CREATE TABLE `encabezado_capacitacion` (
  `pk_id_encabezado_capacitacion` int(11) NOT NULL,
  `nombre_encabezado_capacitacion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_inicio_encabezado_capacitacion` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_fin_encabezado_capacitacion` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_id_curso_encabezado_capacitacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_nomina`
--

CREATE TABLE `encabezado_nomina` (
  `pk_id_encabezado_nomina` int(11) NOT NULL,
  `nombre_encabezado_nomina` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_inicio_encabezado_nomina` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_fin_encabezado_nomina` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encabezado_transaccion`
--

CREATE TABLE `encabezado_transaccion` (
  `pk_idencabezadotransaccion` int(11) NOT NULL,
  `fk_idnumerocuenta` int(11) NOT NULL,
  `fecha_encabezado_transaccion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado_bodega`
--

CREATE TABLE `encargado_bodega` (
  `pk_id_encargado_bodega` int(10) NOT NULL,
  `fk_id_empleado` int(10) NOT NULL,
  `fk_id_bodega` int(10) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrevista`
--

CREATE TABLE `entrevista` (
  `pk_id_entrevista` int(11) NOT NULL,
  `fk_id_empleado_entrevista` int(11) DEFAULT NULL,
  `fk_id_reclutamiento_entrevista` int(11) DEFAULT NULL,
  `fk_id_tipo_entrevista` int(11) DEFAULT NULL,
  `resultado_entrevista` int(11) DEFAULT NULL,
  `comentarios_entrevistador_entrevista` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio_producto`
--

CREATE TABLE `envio_producto` (
  `pk_id_envio_producto` int(10) NOT NULL,
  `fk_id_ruta` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `fk_id_empleado` int(10) NOT NULL,
  `fk_id_vehiculo` int(10) NOT NULL,
  `fec_envio` datetime NOT NULL,
  `fec_recibido` datetime NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadoproduccion`
--

CREATE TABLE `estadoproduccion` (
  `pk_id_estadoproduccion` int(10) NOT NULL,
  `nombre_estadoproduccion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duracion_estadoproduccion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `pk_id_estado_civil` int(11) NOT NULL,
  `nombre_estado_civil` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_producto`
--

CREATE TABLE `estado_producto` (
  `pk_id_estado_producto` int(10) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabrica`
--

CREATE TABLE `fabrica` (
  `pk_id_fabrica` int(10) NOT NULL,
  `fk_id_municipio` int(10) NOT NULL,
  `dimensiones` double(5,2) NOT NULL,
  `direccion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(8) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `pk_idfactura` int(11) NOT NULL,
  `fk_idmodopago` int(11) NOT NULL,
  `fk_idcliente` int(11) NOT NULL,
  `fK_idEMPLEADO` int(11) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `falta`
--

CREATE TABLE `falta` (
  `pk_id_falta` int(11) NOT NULL,
  `nombre_falta` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripción_falta` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `falta_empleado`
--

CREATE TABLE `falta_empleado` (
  `pk_id_falta_empleado` int(11) NOT NULL,
  `fk_id_empleado_falta_empleado` int(11) DEFAULT NULL,
  `fk_id_tipo_falta_empleado` int(11) DEFAULT NULL,
  `fecha_falta_empleado` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion_academica`
--

CREATE TABLE `formacion_academica` (
  `pk_id_formacion_academica` int(11) NOT NULL,
  `nombre_formacion_academica` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `pk_id_genero` int(11) NOT NULL,
  `nombre_genero` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horaempleado`
--

CREATE TABLE `horaempleado` (
  `pk_id_horaempleado` int(10) NOT NULL,
  `fk_idempleado_horaempleado` int(10) DEFAULT NULL,
  `tiempo_horaempleado` int(11) DEFAULT NULL,
  `fk_idordenproduccion_horaempleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `pk_id_horario` int(11) NOT NULL,
  `nombre_horario` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion_horario` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventariocrm`
--

CREATE TABLE `inventariocrm` (
  `pk_idinventario` int(11) NOT NULL,
  `existencia` int(11) DEFAULT NULL,
  `fk_idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventariomrp`
--

CREATE TABLE `inventariomrp` (
  `pk_id_inventario` int(10) NOT NULL,
  `fk_idmateriaprimainsumo_inventario` int(11) DEFAULT NULL,
  `fk_idtipoinventario_inventario` int(11) DEFAULT NULL,
  `fecha_inventario` date DEFAULT NULL,
  `cantidad_inventario` int(11) DEFAULT NULL,
  `estado_inventario` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarioscm`
--

CREATE TABLE `inventarioscm` (
  `pk_id_inventario` int(10) NOT NULL,
  `fk_id_bodega` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `fecha_salida` datetime NOT NULL,
  `cantidad_ingresa` int(10) NOT NULL,
  `cantidad_salida` int(10) NOT NULL,
  `existencia` int(10) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencia_conduccion`
--

CREATE TABLE `licencia_conduccion` (
  `pk_id_licencia_conduccion` int(11) NOT NULL,
  `tipo_licencia_conduccion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea_producto`
--

CREATE TABLE `linea_producto` (
  `pk_id_linea` int(10) NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `pk_id_login` int(10) NOT NULL,
  `usuario_login` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contraseña_login` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombreCompleto_login` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_login` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`pk_id_login`, `usuario_login`, `contraseña_login`, `nombreCompleto_login`, `estado_login`) VALUES
(1, 'bjsican', 'bjsican', 'Billy Jeshua Sican Matias', 1),
(2, 'jmorataya', 'jmorataya', 'Julio Morataya', 1),
(3, 'bmaza', 'bmaza', 'Bryan Mazariegos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `pk_id_marca` int(10) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprimainsumo`
--

CREATE TABLE `materiaprimainsumo` (
  `pk_id_materiaprimainsumo` int(10) NOT NULL,
  `nombre_materiaprimainsumo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion_materiaprimainsumo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marca_materiaprimainsumo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_materiaprimainsumo` tinyint(1) DEFAULT NULL,
  `precio_materiaprimainsumo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `materiaprimainsumo`
--

INSERT INTO `materiaprimainsumo` (`pk_id_materiaprimainsumo`, `nombre_materiaprimainsumo`, `descripcion_materiaprimainsumo`, `marca_materiaprimainsumo`, `estado_materiaprimainsumo`, `precio_materiaprimainsumo`) VALUES
(1, 'a', 'a', 'a', 1, 5),
(2, 'w', 'w', 'w', 1, 5),
(3, 'platano', 'rrrrr', 'materia prima', 0, 5.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mayor_detalle`
--

CREATE TABLE `mayor_detalle` (
  `pk_idmayorencabezado` int(11) NOT NULL,
  `pk_polizaencabezado` int(11) NOT NULL,
  `subtotal_mayor_detalle` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mayor_encabezado`
--

CREATE TABLE `mayor_encabezado` (
  `pk_idmayorencabezado` int(11) NOT NULL,
  `pk_idcuenta` int(11) NOT NULL,
  `montoDebe_mayor_encabezado` double DEFAULT NULL,
  `montoHaber_mayor_encabezado` double DEFAULT NULL,
  `fecha_mayor_encabezado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modo_de_pago`
--

CREATE TABLE `modo_de_pago` (
  `pk_idmodopago` int(11) NOT NULL,
  `tipo_pago` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `pk_id_municipio` int(10) NOT NULL,
  `fk_id_departamento` int(10) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordencompra`
--

CREATE TABLE `ordencompra` (
  `pk_id_ordencompra` int(10) NOT NULL,
  `fk_idmateriaprimainsumos_ordencompra` int(11) DEFAULT NULL,
  `fechaenvio_ordencompra` date DEFAULT NULL,
  `cantidad_ordencompra` int(11) DEFAULT NULL,
  `estado_ordencompra` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenproduccion`
--

CREATE TABLE `ordenproduccion` (
  `pk_id_ordenproduccion` int(10) NOT NULL,
  `fk_idtipoproducto_idordenproduccion` int(10) DEFAULT NULL,
  `cantidad_ordenproduccion` int(11) DEFAULT NULL,
  `fecha_ordenproduccion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_ordenproduccion` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `pk_id_pais` int(10) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `capital` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `fk_id_encabezado_pedido` int(10) NOT NULL,
  `cod_linea` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `precio_unitario` double(8,2) NOT NULL,
  `subtotal` double(12,2) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido_encabezado`
--

CREATE TABLE `pedido_encabezado` (
  `pk_id_encabezado_pedido` int(10) NOT NULL,
  `fk_id_fabrica` int(10) NOT NULL,
  `fec_pedido` datetime NOT NULL,
  `total_pedido` double(12,2) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `percepcion`
--

CREATE TABLE `percepcion` (
  `pk_id_percepcion` int(11) NOT NULL,
  `nombre_percepcion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monto_percepcion` double DEFAULT NULL,
  `descripcion_percepcion` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `pk_id_perfil` int(10) NOT NULL,
  `nombre_perfil` int(10) DEFAULT NULL,
  `descripcion_perfil` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_perfil` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`pk_id_perfil`, `nombre_perfil`, `descripcion_perfil`, `estado_perfil`) VALUES
(1, 0, 'Pruebas', 1),
(2, 0, 'Coordinador', 1),
(3, 0, 'Prueba', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfilusuario`
--

CREATE TABLE `perfilusuario` (
  `pk_id_perfilusuario` int(10) NOT NULL,
  `fk_idusuario_perfilusuario` int(10) DEFAULT NULL,
  `fk_idperfil_perfilusuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `perfilusuario`
--

INSERT INTO `perfilusuario` (`pk_id_perfilusuario`, `fk_idusuario_perfilusuario`, `fk_idperfil_perfilusuario`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `pk_id_permiso` int(10) NOT NULL,
  `insertar_permiso` tinyint(1) DEFAULT NULL,
  `modificar_permiso` tinyint(1) DEFAULT NULL,
  `eliminar_permiso` tinyint(1) DEFAULT NULL,
  `consultar_permiso` tinyint(1) DEFAULT NULL,
  `imprimir_permiso` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`pk_id_permiso`, `insertar_permiso`, `modificar_permiso`, `eliminar_permiso`, `consultar_permiso`, `imprimir_permiso`) VALUES
(1, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 1),
(3, 0, 0, 0, 1, 0),
(4, 0, 0, 0, 1, 1),
(5, 0, 0, 1, 0, 0),
(6, 0, 0, 1, 0, 1),
(7, 0, 0, 1, 1, 0),
(8, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuesto`
--

CREATE TABLE `presupuesto` (
  `pk_idpresupuesto` int(11) NOT NULL,
  `nombre_presupuesto` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cantidad_presupuesto` double DEFAULT NULL,
  `fk_idtipomoneda` int(11) NOT NULL,
  `fk_area` int(11) NOT NULL,
  `descripcion_presupuesto` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_presupuesto` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `pk_idproducto` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_idcategoriatamaño` int(11) NOT NULL,
  `fk_idcategoriatipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productodetalle`
--

CREATE TABLE `productodetalle` (
  `pk_id_productodetalle` int(10) NOT NULL,
  `fk_idtipoproductoencabezado_productodetalle` int(11) DEFAULT NULL,
  `fk_idmateriaprimainsumo_productodetalle` int(11) DEFAULT NULL,
  `cantidad_productodetalle` int(11) DEFAULT NULL,
  `estado_productodetalle` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoscm`
--

CREATE TABLE `productoscm` (
  `pk_id_producto` int(10) NOT NULL,
  `fk_id_lineaProducto` int(10) NOT NULL,
  `fk_id_categoria_producto` int(10) NOT NULL,
  `precio` double(12,2) NOT NULL,
  `medida` double(5,2) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `pk_idpropietario` int(11) NOT NULL,
  `nombre_propietario` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion_propietario` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_propietario` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `pk_id_proveedor` int(10) NOT NULL,
  `fk_id_pais` int(10) NOT NULL,
  `razon_social` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `representante_legal` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `pk_id_puesto` int(11) NOT NULL,
  `nombre_puesto` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salario_puesto` double DEFAULT NULL,
  `fk_id_horario_puesto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reclutamiento`
--

CREATE TABLE `reclutamiento` (
  `pk_id_reclutamiento` int(11) NOT NULL,
  `fk_id_empleado_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_formacion_academica_reclutamiento` int(11) DEFAULT NULL,
  `nombre1_reclutamiento` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre2_reclutamiento` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido1_reclutamiento` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido2_reclutamiento` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_nacimiento_reclutamiento` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dpi_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_genero_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_estado_civil_reclutamiento` int(11) DEFAULT NULL,
  `email_reclutamiento` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono_reclutamiento` int(11) DEFAULT NULL,
  `numero_igss_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_licencia_conducir_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_puesto_reclutamiento` int(11) DEFAULT NULL,
  `estado_reclutado_entrevista` int(11) DEFAULT NULL,
  `fk_id_departamento_empresarial_reclutamiento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `pk_id_ruta` int(10) NOT NULL,
  `origen` int(10) NOT NULL,
  `destino` int(10) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldo_historico`
--

CREATE TABLE `saldo_historico` (
  `pk_idcuenta` int(11) NOT NULL,
  `fecha_saldo_historico` datetime NOT NULL,
  `monto_saldo_historico` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `pk_id_sucursal` int(10) NOT NULL,
  `fk_id_municipio` int(10) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(8) NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono_cliente`
--

CREATE TABLE `telefono_cliente` (
  `pk_idtelefono` int(11) NOT NULL,
  `Numero_Telefono` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fk_idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono_proveedor`
--

CREATE TABLE `telefono_proveedor` (
  `pk_id_telefono_proveedor` int(10) NOT NULL,
  `fk_id_proveedor` int(10) NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoinventario`
--

CREATE TABLE `tipoinventario` (
  `pk_id_tipoinventario` int(10) NOT NULL,
  `nombre_tipoinventario` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion_tipo_inventario` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproductoencabezado`
--

CREATE TABLE `tipoproductoencabezado` (
  `pk_id_tipoproductoencabezado` int(10) NOT NULL,
  `nombre_tipoproductoencabezado` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion_tipoproductoencabezado` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio_tipoproductoencabezado` double DEFAULT NULL,
  `estado_tipoproductoencabezado` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_competencia`
--

CREATE TABLE `tipo_competencia` (
  `pk_id_competencia` int(11) NOT NULL,
  `nombre_competencia` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_contrato`
--

CREATE TABLE `tipo_contrato` (
  `pk_id_tipo_contrato` int(11) NOT NULL,
  `nombre_tipo_contrato` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_entrevista`
--

CREATE TABLE `tipo_entrevista` (
  `pk_id_tipo_entrevista` int(11) NOT NULL,
  `nombre_tipo_entrevista` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_moneda`
--

CREATE TABLE `tipo_moneda` (
  `pk_idtipomoneda` int(11) NOT NULL,
  `moneda_tipo_moneda` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simbolo_tipo_moneda` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion_tipo_moneda` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_tipo_moneda` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_transaccion`
--

CREATE TABLE `tipo_transaccion` (
  `pk_idtipotransaccion` int(11) NOT NULL,
  `nombre_tipo_transaccion` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion_tipo_transaccion` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado_tipo_transaccion` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `pk_id_vehiculo` int(10) NOT NULL,
  `fk_id_marca` int(10) NOT NULL,
  `placa` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `anio` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tipo_combustible` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `pk_idventa` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `fk_idcliente` int(11) NOT NULL,
  `fk_idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`pk_id_aplicacion`);

--
-- Indices de la tabla `aplicacionperfil`
--
ALTER TABLE `aplicacionperfil`
  ADD PRIMARY KEY (`pk_id_aplicacionperfil`),
  ADD KEY `fk_aplicacionperfil_aplicacion` (`fk_idaplicacion_aplicacionperfil`),
  ADD KEY `fk_aplicacionperfil_perfil` (`fk_idperfil_aplicacionperfil`),
  ADD KEY `fk_aplicacionperfil_permiso` (`fk_idpermiso_aplicacionperfil`);

--
-- Indices de la tabla `aplicacionusuario`
--
ALTER TABLE `aplicacionusuario`
  ADD PRIMARY KEY (`pk_id_aplicacionusuario`),
  ADD KEY `fk_aplicacionusuario_login` (`fk_idlogin_aplicacionusuario`),
  ADD KEY `fk_aplicacionusuario_aplicacion` (`fk_idaplicacion_aplicacionusuario`),
  ADD KEY `fk_aplicacionusuario_permiso` (`fk_idpermiso_aplicacionusuario`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`pk_idarea`);

--
-- Indices de la tabla `balance_detalle`
--
ALTER TABLE `balance_detalle`
  ADD PRIMARY KEY (`pk_idbalanceencabezado`),
  ADD KEY `fk_balancedetalle_cuenta` (`pk_idcuenta`);

--
-- Indices de la tabla `balance_encabezado`
--
ALTER TABLE `balance_encabezado`
  ADD PRIMARY KEY (`pk_idbalanceencabezado`);

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`pk_idbanco`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`pk_id_bitacora`),
  ADD KEY `fk_login_bitacora` (`fk_idusuario_bitacora`),
  ADD KEY `fk_aplicacion_bitacora` (`fk_idaplicacion_bitacora`);

--
-- Indices de la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`pk_id_bodega`),
  ADD KEY `pk_id_bodega` (`pk_id_bodega`),
  ADD KEY `fk_bodega_municipio` (`fk_id_municipio`);

--
-- Indices de la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
  ADD PRIMARY KEY (`pk_id_capacitacion`),
  ADD KEY `fk_encabezado_capacitacion` (`fk_id_encabezado_capacitacion`),
  ADD KEY `fk_empleado_capacitacion` (`fk_id_empleado_capacitacion`);

--
-- Indices de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`pk_id_categoria_producto`),
  ADD KEY `pk_id_categoria_producto` (`pk_id_categoria_producto`);

--
-- Indices de la tabla `categoria_tamaño`
--
ALTER TABLE `categoria_tamaño`
  ADD PRIMARY KEY (`pk_idcategoriatamaño`);

--
-- Indices de la tabla `categoria_tipo`
--
ALTER TABLE `categoria_tipo`
  ADD PRIMARY KEY (`pk_idcategoriatipo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`pk_idcliente`);

--
-- Indices de la tabla `competencia_desarrollo`
--
ALTER TABLE `competencia_desarrollo`
  ADD PRIMARY KEY (`pk_id_encabezado_desarrollo`),
  ADD KEY `fk_empleado_encabezado_desarrollo` (`fk_id_empleado_encabezado_desarrollo`),
  ADD KEY `fk_competencia_encabezado_desarrollo` (`fk_id_competencia_encabezado_desarrollo`);

--
-- Indices de la tabla `compra_detalle`
--
ALTER TABLE `compra_detalle`
  ADD PRIMARY KEY (`fk_id_encabezado_compra`,`cod_linea`),
  ADD KEY `fk_id_encabezado_compra` (`fk_id_encabezado_compra`,`cod_linea`),
  ADD KEY `fk_compra_producto` (`fk_id_producto`);

--
-- Indices de la tabla `compra_encabezado`
--
ALTER TABLE `compra_encabezado`
  ADD PRIMARY KEY (`pk_id_encabezado_compra`),
  ADD KEY `pk_id_encabezado_compra` (`pk_id_encabezado_compra`),
  ADD KEY `fk_compra_proveedor` (`fk_id_proveedor`);

--
-- Indices de la tabla `consulta_inteligente`
--
ALTER TABLE `consulta_inteligente`
  ADD PRIMARY KEY (`pk_id_consulta_inteligente`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`pk_id_contrato`),
  ADD KEY `fk_tipo_contrato` (`fk_id_tipo_contrato`);

--
-- Indices de la tabla `controlcalidad`
--
ALTER TABLE `controlcalidad`
  ADD PRIMARY KEY (`pk_id_controlcalidad`),
  ADD KEY `fk_CONTROLCALIDAD_ORDENPRODUCCION1` (`fk_idordenproduccion_controlcalidad`),
  ADD KEY `fk_CONTROLCALIDAD_INVENTARIO1` (`fk_idinventario_controlcalidad`),
  ADD KEY `fk_EMPLEADOS_CONTROLCALIDAD1` (`fk_idresponsable_controlcalidad`);

--
-- Indices de la tabla `controlproducto`
--
ALTER TABLE `controlproducto`
  ADD PRIMARY KEY (`pk_id_controlproducto`),
  ADD KEY `fk_CONTROLPRODUCTO_ORDENPRODUCCION1` (`fk_idordenproduccion_controlproducto`),
  ADD KEY `fk_CONTROLPRODUCTO_ESTADOPRODUCCION` (`fk_idestadoproduccion_controlproducto`);

--
-- Indices de la tabla `control_empleado`
--
ALTER TABLE `control_empleado`
  ADD PRIMARY KEY (`pk_idControlEmpleado`),
  ADD KEY `fk_CONTROL_EMPLEADO_VENTA1` (`fk_idventa`),
  ADD KEY `fk_CONTROL_EMPLEADO_EMPLEADO1` (`fK_idEMPLEADO`);

--
-- Indices de la tabla `correo_cliente`
--
ALTER TABLE `correo_cliente`
  ADD PRIMARY KEY (`pk_iddireccionCliente`),
  ADD KEY `fk_direccionCliente_cliente1` (`fk_idcliente`);

--
-- Indices de la tabla `correo_proveedor`
--
ALTER TABLE `correo_proveedor`
  ADD PRIMARY KEY (`pk_id_correo_proveedor`),
  ADD KEY `pk_id_correo_proveedor` (`pk_id_correo_proveedor`),
  ADD KEY `fk_proveedor_correo` (`fk_id_proveedor`);

--
-- Indices de la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  ADD PRIMARY KEY (`pk_idcuentacobrar`),
  ADD KEY `fk_cuentasporcobrar_factura1` (`fk_idfactura`),
  ADD KEY `fk_cuentasporcobrar_cliente1` (`fk_idcliente`);

--
-- Indices de la tabla `cuenta_bancaria`
--
ALTER TABLE `cuenta_bancaria`
  ADD PRIMARY KEY (`pk_idnumerocuenta`),
  ADD KEY `fk_cuentabancaria_banco` (`fk_idbanco`),
  ADD KEY `fk_cuentabancaria_propietario` (`fk_idpropietario`),
  ADD KEY `fk_cuentabancaria_tipomoneda` (`fk_idtipomoneda`);

--
-- Indices de la tabla `cuenta_contable`
--
ALTER TABLE `cuenta_contable`
  ADD PRIMARY KEY (`pk_idcuenta`),
  ADD KEY `fk_cuentapadre_cuentahijo` (`fk_cuentapadre`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`pk_id_curso`);

--
-- Indices de la tabla `deduccion`
--
ALTER TABLE `deduccion`
  ADD PRIMARY KEY (`pk_id_deduccion`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`pk_id_departamento`),
  ADD KEY `pk_id_departamento` (`pk_id_departamento`);

--
-- Indices de la tabla `departamento_empresarial`
--
ALTER TABLE `departamento_empresarial`
  ADD PRIMARY KEY (`pk_id__departamento_empresarial`);

--
-- Indices de la tabla `detallebitacora`
--
ALTER TABLE `detallebitacora`
  ADD PRIMARY KEY (`pk_id_detallebitacora`),
  ADD KEY `fk_bitacora_detallebitacora` (`fk_idbitacora_detallebitacora`);

--
-- Indices de la tabla `detalle_consulta_inteligente`
--
ALTER TABLE `detalle_consulta_inteligente`
  ADD PRIMARY KEY (`pk_id_detalle_consulta_inteligente`),
  ADD KEY `fk_empleado_detalle_consulta_inteligente` (`fk_id_empleado_detalle_consulta_inteligente`),
  ADD KEY `fk_consulta_detalle_consulta_inteligente` (`fk_id_consulta_detalle_consulta_inteligente`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`pk_id_detalle_factura`),
  ADD KEY `fk_DETALLE_FACTURA_FACTURA1` (`fk_idfactura`),
  ADD KEY `fk_DETALLE_FACTURA_PRODUCTO1` (`fk_idproducto`);

--
-- Indices de la tabla `detalle_nomina`
--
ALTER TABLE `detalle_nomina`
  ADD PRIMARY KEY (`pk_id_detalle_nomina`),
  ADD KEY `fk_encabezado_detalle_nomina` (`fk_id_encabezado_detalle_nomina`),
  ADD KEY `fk_emplado_detalle_nomina` (`fk_id_empleado_detalle_nomina`),
  ADD KEY `fk_percepcion_detalle_nomina` (`fk_id_percepciones_detalle_nomina`),
  ADD KEY `fk_deduccion_detalle_nomina` (`fk_id_deducciones_detalle_nomina`);

--
-- Indices de la tabla `detalle_transaccion`
--
ALTER TABLE `detalle_transaccion`
  ADD PRIMARY KEY (`pk_iddetalletransaccion`),
  ADD KEY `fk_detalle_encabezado` (`fk_idencabezadotransaccion`),
  ADD KEY `fk_detalle_tipotransaccion` (`fk_idtipotransaccion`);

--
-- Indices de la tabla `devolucion_detalle`
--
ALTER TABLE `devolucion_detalle`
  ADD PRIMARY KEY (`fk_id_encabezado_devolucion`,`cod_linea`),
  ADD KEY `fk_id_encabezado_devolucion` (`fk_id_encabezado_devolucion`,`cod_linea`),
  ADD KEY `fk_devolucion_producto` (`fk_id_producto`),
  ADD KEY `fk_devolucion_Estadoproducto` (`fk_id_estado_producto`);

--
-- Indices de la tabla `devolucion_encabezado`
--
ALTER TABLE `devolucion_encabezado`
  ADD PRIMARY KEY (`pk_id_encabezado_devolucion`),
  ADD KEY `pk_id_encabezado_devolucion` (`pk_id_encabezado_devolucion`),
  ADD KEY `fk_devolucion_fabrica` (`fk_id_fabrica`),
  ADD KEY `fk_devolucion_categoria` (`fk_id_categoria_producto`);

--
-- Indices de la tabla `diario_detalle`
--
ALTER TABLE `diario_detalle`
  ADD PRIMARY KEY (`pk_polizaencabezado`),
  ADD KEY `fk_diariodetalle_cuenta` (`pk_idcuenta`);

--
-- Indices de la tabla `diario_encabezado`
--
ALTER TABLE `diario_encabezado`
  ADD PRIMARY KEY (`pk_polizaencabezado`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`pk_id_direccion`),
  ADD KEY `fk_empleado_direccion` (`fk_empleado_direccion`),
  ADD KEY `fk_reclutamiento_direccion` (`fk_reclutamiento_direccion`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`pk_id_empleado`),
  ADD KEY `fk_genero_empleado1` (`fk_id_genero_empleado`),
  ADD KEY `fk_estado_civil_empleado` (`fk_id_estado_civil_empleado`),
  ADD KEY `fk_licencia_conducir_empleado` (`fk_id_licencia_conducir_empleado`),
  ADD KEY `fk_contrato_empleado` (`fk_id_contrato_empleado`),
  ADD KEY `fk_puesto_empleado` (`fk_id_puesto_empleado`),
  ADD KEY `fk_departamento_empresarial_empleado` (`fk_id_departamento_empresarial_empleado`);

--
-- Indices de la tabla `encabezado_capacitacion`
--
ALTER TABLE `encabezado_capacitacion`
  ADD PRIMARY KEY (`pk_id_encabezado_capacitacion`),
  ADD KEY `fk_curso_encabezado_capacitacion` (`fk_id_curso_encabezado_capacitacion`);

--
-- Indices de la tabla `encabezado_nomina`
--
ALTER TABLE `encabezado_nomina`
  ADD PRIMARY KEY (`pk_id_encabezado_nomina`);

--
-- Indices de la tabla `encabezado_transaccion`
--
ALTER TABLE `encabezado_transaccion`
  ADD PRIMARY KEY (`pk_idencabezadotransaccion`),
  ADD KEY `fk_encabezadotransaccion_numerocuenta` (`fk_idnumerocuenta`);

--
-- Indices de la tabla `encargado_bodega`
--
ALTER TABLE `encargado_bodega`
  ADD PRIMARY KEY (`pk_id_encargado_bodega`),
  ADD KEY `pk_id_encargado_bodega` (`pk_id_encargado_bodega`),
  ADD KEY `fk_empleado_bodega` (`fk_id_bodega`),
  ADD KEY `fk_empleado_encargado` (`fk_id_empleado`);

--
-- Indices de la tabla `entrevista`
--
ALTER TABLE `entrevista`
  ADD PRIMARY KEY (`pk_id_entrevista`),
  ADD KEY `fk_empleado_entrevista` (`fk_id_empleado_entrevista`),
  ADD KEY `fk_reclutamiento_entrevista` (`fk_id_reclutamiento_entrevista`),
  ADD KEY `fk_tipo_entrevista` (`fk_id_tipo_entrevista`);

--
-- Indices de la tabla `envio_producto`
--
ALTER TABLE `envio_producto`
  ADD PRIMARY KEY (`pk_id_envio_producto`),
  ADD KEY `pk_id_envio_producto` (`pk_id_envio_producto`),
  ADD KEY `fk_envio_producto` (`fk_id_producto`),
  ADD KEY `fk_envio_ruta` (`fk_id_ruta`),
  ADD KEY `fk_envio_empleado` (`fk_id_empleado`);

--
-- Indices de la tabla `estadoproduccion`
--
ALTER TABLE `estadoproduccion`
  ADD PRIMARY KEY (`pk_id_estadoproduccion`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`pk_id_estado_civil`);

--
-- Indices de la tabla `estado_producto`
--
ALTER TABLE `estado_producto`
  ADD PRIMARY KEY (`pk_id_estado_producto`),
  ADD KEY `pk_id_estado_producto` (`pk_id_estado_producto`);

--
-- Indices de la tabla `fabrica`
--
ALTER TABLE `fabrica`
  ADD PRIMARY KEY (`pk_id_fabrica`),
  ADD KEY `pk_id_fabrica` (`pk_id_fabrica`),
  ADD KEY `fk_fabrica_municipio` (`fk_id_municipio`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`pk_idfactura`),
  ADD KEY `fk_factura_modopago1` (`fk_idmodopago`),
  ADD KEY `fk_factura_cliente1` (`fk_idcliente`),
  ADD KEY `fk_FACTURA_EMPLEADO1` (`fK_idEMPLEADO`);

--
-- Indices de la tabla `falta`
--
ALTER TABLE `falta`
  ADD PRIMARY KEY (`pk_id_falta`);

--
-- Indices de la tabla `falta_empleado`
--
ALTER TABLE `falta_empleado`
  ADD KEY `fk_empleado_falta` (`fk_id_empleado_falta_empleado`),
  ADD KEY `fk_tipo_falta` (`fk_id_tipo_falta_empleado`);

--
-- Indices de la tabla `formacion_academica`
--
ALTER TABLE `formacion_academica`
  ADD PRIMARY KEY (`pk_id_formacion_academica`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`pk_id_genero`);

--
-- Indices de la tabla `horaempleado`
--
ALTER TABLE `horaempleado`
  ADD PRIMARY KEY (`pk_id_horaempleado`),
  ADD KEY `fk_HORAEMPLEADO_ORDENPRODUCCION1` (`fk_idordenproduccion_horaempleado`),
  ADD KEY `fk_HORAEMPLEADO_EMPLEADO` (`fk_idempleado_horaempleado`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`pk_id_horario`);

--
-- Indices de la tabla `inventariocrm`
--
ALTER TABLE `inventariocrm`
  ADD PRIMARY KEY (`pk_idinventario`),
  ADD KEY `fk_inventario_producto1` (`fk_idproducto`);

--
-- Indices de la tabla `inventariomrp`
--
ALTER TABLE `inventariomrp`
  ADD PRIMARY KEY (`pk_id_inventario`),
  ADD KEY `fk_INVENTARIO_MATERIAPRIMAINSUMO` (`fk_idmateriaprimainsumo_inventario`),
  ADD KEY `fk_INVENTARIO_TIPOINVENTARIO` (`fk_idtipoinventario_inventario`);

--
-- Indices de la tabla `inventarioscm`
--
ALTER TABLE `inventarioscm`
  ADD PRIMARY KEY (`pk_id_inventario`),
  ADD KEY `pk_id_inventario` (`pk_id_inventario`),
  ADD KEY `fk_inventario_producto` (`fk_id_producto`),
  ADD KEY `fk_inventario_bodega` (`fk_id_bodega`);

--
-- Indices de la tabla `licencia_conduccion`
--
ALTER TABLE `licencia_conduccion`
  ADD PRIMARY KEY (`pk_id_licencia_conduccion`);

--
-- Indices de la tabla `linea_producto`
--
ALTER TABLE `linea_producto`
  ADD PRIMARY KEY (`pk_id_linea`),
  ADD KEY `pk_id_linea` (`pk_id_linea`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_id_login`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`pk_id_marca`),
  ADD KEY `pk_id_marca` (`pk_id_marca`);

--
-- Indices de la tabla `materiaprimainsumo`
--
ALTER TABLE `materiaprimainsumo`
  ADD PRIMARY KEY (`pk_id_materiaprimainsumo`);

--
-- Indices de la tabla `mayor_detalle`
--
ALTER TABLE `mayor_detalle`
  ADD PRIMARY KEY (`pk_idmayorencabezado`),
  ADD KEY `fk_mayorencabezado_polizaencabezado` (`pk_polizaencabezado`);

--
-- Indices de la tabla `mayor_encabezado`
--
ALTER TABLE `mayor_encabezado`
  ADD PRIMARY KEY (`pk_idmayorencabezado`),
  ADD KEY `fk_mayorencabezado_cuenta` (`pk_idcuenta`);

--
-- Indices de la tabla `modo_de_pago`
--
ALTER TABLE `modo_de_pago`
  ADD PRIMARY KEY (`pk_idmodopago`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`pk_id_municipio`),
  ADD KEY `pk_id_municipio` (`pk_id_municipio`),
  ADD KEY `fk_municipio_departamento` (`fk_id_departamento`);

--
-- Indices de la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD PRIMARY KEY (`pk_id_ordencompra`),
  ADD KEY `fk_ORDENCOMPRA_MATERIAPRIMAINSUMO` (`fk_idmateriaprimainsumos_ordencompra`);

--
-- Indices de la tabla `ordenproduccion`
--
ALTER TABLE `ordenproduccion`
  ADD PRIMARY KEY (`pk_id_ordenproduccion`),
  ADD KEY `fk_ORDENPRODUCCION_TIPOINVENTARIO` (`fk_idtipoproducto_idordenproduccion`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`pk_id_pais`),
  ADD KEY `pk_id_pais` (`pk_id_pais`);

--
-- Indices de la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD PRIMARY KEY (`fk_id_encabezado_pedido`,`cod_linea`),
  ADD KEY `fk_id_encabezado_pedido` (`fk_id_encabezado_pedido`,`cod_linea`),
  ADD KEY `fk_pedido_producto` (`fk_id_producto`);

--
-- Indices de la tabla `pedido_encabezado`
--
ALTER TABLE `pedido_encabezado`
  ADD PRIMARY KEY (`pk_id_encabezado_pedido`),
  ADD KEY `pk_id_encabezado_pedido` (`pk_id_encabezado_pedido`),
  ADD KEY `fk_pedido_fabrica` (`fk_id_fabrica`);

--
-- Indices de la tabla `percepcion`
--
ALTER TABLE `percepcion`
  ADD PRIMARY KEY (`pk_id_percepcion`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`pk_id_perfil`);

--
-- Indices de la tabla `perfilusuario`
--
ALTER TABLE `perfilusuario`
  ADD PRIMARY KEY (`pk_id_perfilusuario`),
  ADD KEY `fk_perfil_usuario_login` (`fk_idusuario_perfilusuario`),
  ADD KEY `fk_perfil_usuario_perfil` (`fk_idperfil_perfilusuario`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`pk_id_permiso`);

--
-- Indices de la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD PRIMARY KEY (`pk_idpresupuesto`),
  ADD KEY `fk_presupuesto_tipomoneda` (`fk_idtipomoneda`),
  ADD KEY `fk_presupuesto_area` (`fk_area`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`pk_idproducto`),
  ADD KEY `fk_producto_categoriatamaño1` (`fk_idcategoriatamaño`),
  ADD KEY `fk_producto_categoriatipo1` (`fk_idcategoriatipo`);

--
-- Indices de la tabla `productodetalle`
--
ALTER TABLE `productodetalle`
  ADD PRIMARY KEY (`pk_id_productodetalle`),
  ADD KEY `fk_PRODUCTODETALLE_TIPOPRODUCTOENCABEZADO` (`fk_idtipoproductoencabezado_productodetalle`),
  ADD KEY `fk_PRODUCTODETALLE_MATERIAPRIMAINSUMO` (`fk_idmateriaprimainsumo_productodetalle`);

--
-- Indices de la tabla `productoscm`
--
ALTER TABLE `productoscm`
  ADD PRIMARY KEY (`pk_id_producto`),
  ADD KEY `pk_id_producto` (`pk_id_producto`),
  ADD KEY `fk_producto_lineaProducto` (`fk_id_lineaProducto`),
  ADD KEY `fk_producto_categoriaProducto` (`fk_id_categoria_producto`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`pk_idpropietario`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`pk_id_proveedor`),
  ADD KEY `pk_id_proveedor` (`pk_id_proveedor`),
  ADD KEY `fk_proveedor_pais` (`fk_id_pais`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`pk_id_puesto`),
  ADD KEY `fk_horario_puesto` (`fk_id_horario_puesto`);

--
-- Indices de la tabla `reclutamiento`
--
ALTER TABLE `reclutamiento`
  ADD PRIMARY KEY (`pk_id_reclutamiento`),
  ADD KEY `fk_empleado_reclutamiento` (`fk_id_empleado_reclutamiento`),
  ADD KEY `fk_formacion_academica_reclutamiento` (`fk_id_formacion_academica_reclutamiento`),
  ADD KEY `fk_genero_reclutamiento` (`fk_id_genero_reclutamiento`),
  ADD KEY `fk_estado_civil_reclutamiento` (`fk_id_estado_civil_reclutamiento`),
  ADD KEY `fk_licencia_conducir_reclutamiento` (`fk_id_licencia_conducir_reclutamiento`),
  ADD KEY `fk_puesto_reclutamiento` (`fk_id_puesto_reclutamiento`),
  ADD KEY `fk_departamento_empresarial_reclutamiento` (`fk_id_departamento_empresarial_reclutamiento`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`pk_id_ruta`),
  ADD KEY `pk_id_ruta` (`pk_id_ruta`);

--
-- Indices de la tabla `saldo_historico`
--
ALTER TABLE `saldo_historico`
  ADD PRIMARY KEY (`pk_idcuenta`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`pk_id_sucursal`),
  ADD KEY `pk_id_sucursal` (`pk_id_sucursal`),
  ADD KEY `fk_sucursal_municipio` (`fk_id_municipio`);

--
-- Indices de la tabla `telefono_cliente`
--
ALTER TABLE `telefono_cliente`
  ADD PRIMARY KEY (`pk_idtelefono`),
  ADD KEY `fk_telefono_cliente1` (`fk_idcliente`);

--
-- Indices de la tabla `telefono_proveedor`
--
ALTER TABLE `telefono_proveedor`
  ADD PRIMARY KEY (`pk_id_telefono_proveedor`),
  ADD KEY `pk_id_telefono_proveedor` (`pk_id_telefono_proveedor`),
  ADD KEY `fk_proveedor_telefono` (`fk_id_proveedor`);

--
-- Indices de la tabla `tipoinventario`
--
ALTER TABLE `tipoinventario`
  ADD PRIMARY KEY (`pk_id_tipoinventario`);

--
-- Indices de la tabla `tipoproductoencabezado`
--
ALTER TABLE `tipoproductoencabezado`
  ADD PRIMARY KEY (`pk_id_tipoproductoencabezado`);

--
-- Indices de la tabla `tipo_competencia`
--
ALTER TABLE `tipo_competencia`
  ADD PRIMARY KEY (`pk_id_competencia`);

--
-- Indices de la tabla `tipo_contrato`
--
ALTER TABLE `tipo_contrato`
  ADD PRIMARY KEY (`pk_id_tipo_contrato`);

--
-- Indices de la tabla `tipo_entrevista`
--
ALTER TABLE `tipo_entrevista`
  ADD PRIMARY KEY (`pk_id_tipo_entrevista`);

--
-- Indices de la tabla `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  ADD PRIMARY KEY (`pk_idtipomoneda`);

--
-- Indices de la tabla `tipo_transaccion`
--
ALTER TABLE `tipo_transaccion`
  ADD PRIMARY KEY (`pk_idtipotransaccion`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`pk_id_vehiculo`),
  ADD KEY `pk_id_vehiculo` (`pk_id_vehiculo`),
  ADD KEY `fk_vehiculo_marca` (`fk_id_marca`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`pk_idventa`),
  ADD KEY `fk_venta_cliente` (`fk_idcliente`),
  ADD KEY `fk_venta_producto1` (`fk_idproducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicacion`
--
ALTER TABLE `aplicacion`
  MODIFY `pk_id_aplicacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `aplicacionperfil`
--
ALTER TABLE `aplicacionperfil`
  MODIFY `pk_id_aplicacionperfil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `aplicacionusuario`
--
ALTER TABLE `aplicacionusuario`
  MODIFY `pk_id_aplicacionusuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `pk_id_bitacora` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT de la tabla `bodega`
--
ALTER TABLE `bodega`
  MODIFY `pk_id_bodega` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `pk_id_categoria_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `controlcalidad`
--
ALTER TABLE `controlcalidad`
  MODIFY `pk_id_controlcalidad` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `controlproducto`
--
ALTER TABLE `controlproducto`
  MODIFY `pk_id_controlproducto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `correo_proveedor`
--
ALTER TABLE `correo_proveedor`
  MODIFY `pk_id_correo_proveedor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  MODIFY `pk_idcuentacobrar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `pk_id_departamento` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallebitacora`
--
ALTER TABLE `detallebitacora`
  MODIFY `pk_id_detallebitacora` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `encargado_bodega`
--
ALTER TABLE `encargado_bodega`
  MODIFY `pk_id_encargado_bodega` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `envio_producto`
--
ALTER TABLE `envio_producto`
  MODIFY `pk_id_envio_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadoproduccion`
--
ALTER TABLE `estadoproduccion`
  MODIFY `pk_id_estadoproduccion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado_producto`
--
ALTER TABLE `estado_producto`
  MODIFY `pk_id_estado_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horaempleado`
--
ALTER TABLE `horaempleado`
  MODIFY `pk_id_horaempleado` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventariomrp`
--
ALTER TABLE `inventariomrp`
  MODIFY `pk_id_inventario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventarioscm`
--
ALTER TABLE `inventarioscm`
  MODIFY `pk_id_inventario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `linea_producto`
--
ALTER TABLE `linea_producto`
  MODIFY `pk_id_linea` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `pk_id_login` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `pk_id_marca` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materiaprimainsumo`
--
ALTER TABLE `materiaprimainsumo`
  MODIFY `pk_id_materiaprimainsumo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `pk_id_municipio` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  MODIFY `pk_id_ordencompra` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordenproduccion`
--
ALTER TABLE `ordenproduccion`
  MODIFY `pk_id_ordenproduccion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `pk_id_pais` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `pk_id_perfil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `perfilusuario`
--
ALTER TABLE `perfilusuario`
  MODIFY `pk_id_perfilusuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `pk_id_permiso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productodetalle`
--
ALTER TABLE `productodetalle`
  MODIFY `pk_id_productodetalle` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productoscm`
--
ALTER TABLE `productoscm`
  MODIFY `pk_id_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `pk_id_proveedor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `pk_id_ruta` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `pk_id_sucursal` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `telefono_proveedor`
--
ALTER TABLE `telefono_proveedor`
  MODIFY `pk_id_telefono_proveedor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoinventario`
--
ALTER TABLE `tipoinventario`
  MODIFY `pk_id_tipoinventario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoproductoencabezado`
--
ALTER TABLE `tipoproductoencabezado`
  MODIFY `pk_id_tipoproductoencabezado` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `pk_id_vehiculo` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aplicacionperfil`
--
ALTER TABLE `aplicacionperfil`
  ADD CONSTRAINT `fk_aplicacionperfil_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacionperfil`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionperfil_perfil` FOREIGN KEY (`fk_idperfil_aplicacionperfil`) REFERENCES `perfil` (`pk_id_perfil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionperfil_permiso` FOREIGN KEY (`fk_idpermiso_aplicacionperfil`) REFERENCES `permiso` (`pk_id_permiso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `aplicacionusuario`
--
ALTER TABLE `aplicacionusuario`
  ADD CONSTRAINT `fk_aplicacionusuario_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacionusuario`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionusuario_login` FOREIGN KEY (`fk_idlogin_aplicacionusuario`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionusuario_permiso` FOREIGN KEY (`fk_idpermiso_aplicacionusuario`) REFERENCES `permiso` (`pk_id_permiso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `balance_detalle`
--
ALTER TABLE `balance_detalle`
  ADD CONSTRAINT `fk_balancedetalle_cuenta` FOREIGN KEY (`pk_idcuenta`) REFERENCES `cuenta_contable` (`pk_idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_balanceencabezado_detalle` FOREIGN KEY (`pk_idbalanceencabezado`) REFERENCES `balance_encabezado` (`pk_idbalanceencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `fk_aplicacion_bitacora` FOREIGN KEY (`fk_idaplicacion_bitacora`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_login_bitacora` FOREIGN KEY (`fk_idusuario_bitacora`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD CONSTRAINT `fk_bodega_municipio` FOREIGN KEY (`fk_id_municipio`) REFERENCES `municipio` (`pk_id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `capacitacion`
--
ALTER TABLE `capacitacion`
  ADD CONSTRAINT `fk_empleado_capacitacion` FOREIGN KEY (`fk_id_empleado_capacitacion`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_encabezado_capacitacion` FOREIGN KEY (`fk_id_encabezado_capacitacion`) REFERENCES `encabezado_capacitacion` (`pk_id_encabezado_capacitacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `competencia_desarrollo`
--
ALTER TABLE `competencia_desarrollo`
  ADD CONSTRAINT `fk_competencia_encabezado_desarrollo` FOREIGN KEY (`fk_id_competencia_encabezado_desarrollo`) REFERENCES `tipo_competencia` (`pk_id_competencia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_empleado_encabezado_desarrollo` FOREIGN KEY (`fk_id_empleado_encabezado_desarrollo`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `compra_detalle`
--
ALTER TABLE `compra_detalle`
  ADD CONSTRAINT `fk_compra_detalle` FOREIGN KEY (`fk_id_encabezado_compra`) REFERENCES `compra_encabezado` (`pk_id_encabezado_compra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_compra_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `compra_encabezado`
--
ALTER TABLE `compra_encabezado`
  ADD CONSTRAINT `fk_compra_proveedor` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `fk_tipo_contrato` FOREIGN KEY (`fk_id_tipo_contrato`) REFERENCES `tipo_contrato` (`pk_id_tipo_contrato`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `controlcalidad`
--
ALTER TABLE `controlcalidad`
  ADD CONSTRAINT `fk_CONTROLCALIDAD_INVENTARIO1` FOREIGN KEY (`fk_idinventario_controlcalidad`) REFERENCES `inventariomrp` (`pk_id_inventario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CONTROLCALIDAD_ORDENPRODUCCION1` FOREIGN KEY (`fk_idordenproduccion_controlcalidad`) REFERENCES `ordenproduccion` (`pk_id_ordenproduccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EMPLEADOS_CONTROLCALIDAD1` FOREIGN KEY (`fk_idresponsable_controlcalidad`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `controlproducto`
--
ALTER TABLE `controlproducto`
  ADD CONSTRAINT `fk_CONTROLPRODUCTO_ESTADOPRODUCCION` FOREIGN KEY (`fk_idestadoproduccion_controlproducto`) REFERENCES `estadoproduccion` (`pk_id_estadoproduccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CONTROLPRODUCTO_ORDENPRODUCCION1` FOREIGN KEY (`fk_idordenproduccion_controlproducto`) REFERENCES `ordenproduccion` (`pk_id_ordenproduccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `control_empleado`
--
ALTER TABLE `control_empleado`
  ADD CONSTRAINT `fk_CONTROL_EMPLEADO_EMPLEADO1` FOREIGN KEY (`fK_idEMPLEADO`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CONTROL_EMPLEADO_VENTA1` FOREIGN KEY (`fk_idventa`) REFERENCES `venta` (`pk_idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `correo_cliente`
--
ALTER TABLE `correo_cliente`
  ADD CONSTRAINT `fk_direccionCliente_cliente1` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`pk_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `correo_proveedor`
--
ALTER TABLE `correo_proveedor`
  ADD CONSTRAINT `fk_proveedor_correo` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  ADD CONSTRAINT `fk_cuentasporcobrar_cliente1` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`pk_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cuentasporcobrar_factura1` FOREIGN KEY (`fk_idfactura`) REFERENCES `factura` (`pk_idfactura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuenta_bancaria`
--
ALTER TABLE `cuenta_bancaria`
  ADD CONSTRAINT `fk_cuentabancaria_banco` FOREIGN KEY (`fk_idbanco`) REFERENCES `banco` (`pk_idbanco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cuentabancaria_propietario` FOREIGN KEY (`fk_idpropietario`) REFERENCES `propietario` (`pk_idpropietario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cuentabancaria_tipomoneda` FOREIGN KEY (`fk_idtipomoneda`) REFERENCES `tipo_moneda` (`pk_idtipomoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuenta_contable`
--
ALTER TABLE `cuenta_contable`
  ADD CONSTRAINT `fk_cuentapadre_cuentahijo` FOREIGN KEY (`fk_cuentapadre`) REFERENCES `cuenta_contable` (`pk_idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detallebitacora`
--
ALTER TABLE `detallebitacora`
  ADD CONSTRAINT `fk_bitacora_detallebitacora` FOREIGN KEY (`fk_idbitacora_detallebitacora`) REFERENCES `bitacora` (`pk_id_bitacora`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_consulta_inteligente`
--
ALTER TABLE `detalle_consulta_inteligente`
  ADD CONSTRAINT `fk_consulta_detalle_consulta_inteligente` FOREIGN KEY (`fk_id_consulta_detalle_consulta_inteligente`) REFERENCES `consulta_inteligente` (`pk_id_consulta_inteligente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_empleado_detalle_consulta_inteligente` FOREIGN KEY (`fk_id_empleado_detalle_consulta_inteligente`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `fk_DETALLE_FACTURA_FACTURA1` FOREIGN KEY (`fk_idfactura`) REFERENCES `factura` (`pk_idfactura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DETALLE_FACTURA_PRODUCTO1` FOREIGN KEY (`fk_idproducto`) REFERENCES `producto` (`pk_idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_nomina`
--
ALTER TABLE `detalle_nomina`
  ADD CONSTRAINT `fk_deduccion_detalle_nomina` FOREIGN KEY (`fk_id_deducciones_detalle_nomina`) REFERENCES `deduccion` (`pk_id_deduccion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_emplado_detalle_nomina` FOREIGN KEY (`fk_id_empleado_detalle_nomina`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_encabezado_detalle_nomina` FOREIGN KEY (`fk_id_encabezado_detalle_nomina`) REFERENCES `encabezado_nomina` (`pk_id_encabezado_nomina`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_percepcion_detalle_nomina` FOREIGN KEY (`fk_id_percepciones_detalle_nomina`) REFERENCES `percepcion` (`pk_id_percepcion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_transaccion`
--
ALTER TABLE `detalle_transaccion`
  ADD CONSTRAINT `fk_detalle_encabezado` FOREIGN KEY (`fk_idencabezadotransaccion`) REFERENCES `encabezado_transaccion` (`pk_idencabezadotransaccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_tipotransaccion` FOREIGN KEY (`fk_idtipotransaccion`) REFERENCES `tipo_transaccion` (`pk_idtipotransaccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `devolucion_detalle`
--
ALTER TABLE `devolucion_detalle`
  ADD CONSTRAINT `fk_devolucionDetalle_encabezado` FOREIGN KEY (`fk_id_encabezado_devolucion`) REFERENCES `devolucion_encabezado` (`pk_id_encabezado_devolucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_devolucion_Estadoproducto` FOREIGN KEY (`fk_id_estado_producto`) REFERENCES `estado_producto` (`pk_id_estado_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_devolucion_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `devolucion_encabezado`
--
ALTER TABLE `devolucion_encabezado`
  ADD CONSTRAINT `fk_devolucion_categoria` FOREIGN KEY (`fk_id_categoria_producto`) REFERENCES `categoria_producto` (`pk_id_categoria_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_devolucion_fabrica` FOREIGN KEY (`fk_id_fabrica`) REFERENCES `fabrica` (`pk_id_fabrica`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `diario_detalle`
--
ALTER TABLE `diario_detalle`
  ADD CONSTRAINT `fk_diariodetalle_cuenta` FOREIGN KEY (`pk_idcuenta`) REFERENCES `cuenta_contable` (`pk_idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_diariodetalle_encabezado` FOREIGN KEY (`pk_polizaencabezado`) REFERENCES `diario_encabezado` (`pk_polizaencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `fk_empleado_direccion` FOREIGN KEY (`fk_empleado_direccion`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reclutamiento_direccion` FOREIGN KEY (`fk_reclutamiento_direccion`) REFERENCES `reclutamiento` (`pk_id_reclutamiento`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_contrato_empleado` FOREIGN KEY (`fk_id_contrato_empleado`) REFERENCES `contrato` (`pk_id_contrato`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_departamento_empresarial_empleado` FOREIGN KEY (`fk_id_departamento_empresarial_empleado`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estado_civil_empleado` FOREIGN KEY (`fk_id_estado_civil_empleado`) REFERENCES `estado_civil` (`pk_id_estado_civil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_genero_empleado1` FOREIGN KEY (`fk_id_genero_empleado`) REFERENCES `genero` (`pk_id_genero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_licencia_conducir_empleado` FOREIGN KEY (`fk_id_licencia_conducir_empleado`) REFERENCES `licencia_conduccion` (`pk_id_licencia_conduccion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_puesto_empleado` FOREIGN KEY (`fk_id_puesto_empleado`) REFERENCES `puesto` (`pk_id_puesto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `encabezado_capacitacion`
--
ALTER TABLE `encabezado_capacitacion`
  ADD CONSTRAINT `fk_curso_encabezado_capacitacion` FOREIGN KEY (`fk_id_curso_encabezado_capacitacion`) REFERENCES `curso` (`pk_id_curso`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `encabezado_transaccion`
--
ALTER TABLE `encabezado_transaccion`
  ADD CONSTRAINT `fk_encabezadotransaccion_numerocuenta` FOREIGN KEY (`fk_idnumerocuenta`) REFERENCES `cuenta_bancaria` (`pk_idnumerocuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `encargado_bodega`
--
ALTER TABLE `encargado_bodega`
  ADD CONSTRAINT `fk_empleado_bodega` FOREIGN KEY (`fk_id_bodega`) REFERENCES `bodega` (`pk_id_bodega`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_empleado_encargado` FOREIGN KEY (`fk_id_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `entrevista`
--
ALTER TABLE `entrevista`
  ADD CONSTRAINT `fk_empleado_entrevista` FOREIGN KEY (`fk_id_empleado_entrevista`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reclutamiento_entrevista` FOREIGN KEY (`fk_id_reclutamiento_entrevista`) REFERENCES `reclutamiento` (`pk_id_reclutamiento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_entrevista` FOREIGN KEY (`fk_id_tipo_entrevista`) REFERENCES `tipo_entrevista` (`pk_id_tipo_entrevista`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `envio_producto`
--
ALTER TABLE `envio_producto`
  ADD CONSTRAINT `fk_envio_empleado` FOREIGN KEY (`fk_id_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_envio_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_envio_ruta` FOREIGN KEY (`fk_id_ruta`) REFERENCES `ruta` (`pk_id_ruta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fabrica`
--
ALTER TABLE `fabrica`
  ADD CONSTRAINT `fk_fabrica_municipio` FOREIGN KEY (`fk_id_municipio`) REFERENCES `municipio` (`pk_id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `fk_FACTURA_EMPLEADO1` FOREIGN KEY (`fK_idEMPLEADO`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_factura_cliente1` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`pk_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_factura_modopago1` FOREIGN KEY (`fk_idmodopago`) REFERENCES `modo_de_pago` (`pk_idmodopago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `falta_empleado`
--
ALTER TABLE `falta_empleado`
  ADD CONSTRAINT `fk_empleado_falta` FOREIGN KEY (`fk_id_empleado_falta_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_falta` FOREIGN KEY (`fk_id_tipo_falta_empleado`) REFERENCES `falta` (`pk_id_falta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `horaempleado`
--
ALTER TABLE `horaempleado`
  ADD CONSTRAINT `fk_HORAEMPLEADO_EMPLEADO` FOREIGN KEY (`fk_idempleado_horaempleado`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_HORAEMPLEADO_ORDENPRODUCCION1` FOREIGN KEY (`fk_idordenproduccion_horaempleado`) REFERENCES `ordenproduccion` (`pk_id_ordenproduccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inventariocrm`
--
ALTER TABLE `inventariocrm`
  ADD CONSTRAINT `fk_inventario_producto1` FOREIGN KEY (`fk_idproducto`) REFERENCES `producto` (`pk_idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inventariomrp`
--
ALTER TABLE `inventariomrp`
  ADD CONSTRAINT `fk_INVENTARIO_MATERIAPRIMAINSUMO` FOREIGN KEY (`fk_idmateriaprimainsumo_inventario`) REFERENCES `materiaprimainsumo` (`pk_id_materiaprimainsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_INVENTARIO_TIPOINVENTARIO` FOREIGN KEY (`fk_idtipoinventario_inventario`) REFERENCES `tipoinventario` (`pk_id_tipoinventario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `inventarioscm`
--
ALTER TABLE `inventarioscm`
  ADD CONSTRAINT `fk_inventario_bodega` FOREIGN KEY (`fk_id_bodega`) REFERENCES `bodega` (`pk_id_bodega`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inventario_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mayor_detalle`
--
ALTER TABLE `mayor_detalle`
  ADD CONSTRAINT `fk_mayorencabezado_detallemayor` FOREIGN KEY (`pk_idmayorencabezado`) REFERENCES `mayor_encabezado` (`pk_idmayorencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mayorencabezado_polizaencabezado` FOREIGN KEY (`pk_polizaencabezado`) REFERENCES `diario_encabezado` (`pk_polizaencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mayor_encabezado`
--
ALTER TABLE `mayor_encabezado`
  ADD CONSTRAINT `fk_mayorencabezado_cuenta` FOREIGN KEY (`pk_idcuenta`) REFERENCES `cuenta_contable` (`pk_idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `fk_municipio_departamento` FOREIGN KEY (`fk_id_departamento`) REFERENCES `departamento` (`pk_id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD CONSTRAINT `fk_ORDENCOMPRA_MATERIAPRIMAINSUMO` FOREIGN KEY (`fk_idmateriaprimainsumos_ordencompra`) REFERENCES `materiaprimainsumo` (`pk_id_materiaprimainsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ordenproduccion`
--
ALTER TABLE `ordenproduccion`
  ADD CONSTRAINT `fk_ORDENPRODUCCION_TIPOINVENTARIO` FOREIGN KEY (`fk_idtipoproducto_idordenproduccion`) REFERENCES `tipoinventario` (`pk_id_tipoinventario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD CONSTRAINT `fk_encabezado_pedido` FOREIGN KEY (`fk_id_encabezado_pedido`) REFERENCES `pedido_encabezado` (`pk_id_encabezado_pedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pedido_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido_encabezado`
--
ALTER TABLE `pedido_encabezado`
  ADD CONSTRAINT `fk_pedido_fabrica` FOREIGN KEY (`fk_id_fabrica`) REFERENCES `fabrica` (`pk_id_fabrica`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `perfilusuario`
--
ALTER TABLE `perfilusuario`
  ADD CONSTRAINT `fk_perfil_usuario_login` FOREIGN KEY (`fk_idusuario_perfilusuario`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_perfil_usuario_perfil` FOREIGN KEY (`fk_idperfil_perfilusuario`) REFERENCES `perfil` (`pk_id_perfil`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD CONSTRAINT `fk_presupuesto_area` FOREIGN KEY (`fk_area`) REFERENCES `area` (`pk_idarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_presupuesto_tipomoneda` FOREIGN KEY (`fk_idtipomoneda`) REFERENCES `tipo_moneda` (`pk_idtipomoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoriatamaño1` FOREIGN KEY (`fk_idcategoriatamaño`) REFERENCES `categoria_tamaño` (`pk_idcategoriatamaño`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_categoriatipo1` FOREIGN KEY (`fk_idcategoriatipo`) REFERENCES `categoria_tipo` (`pk_idcategoriatipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productodetalle`
--
ALTER TABLE `productodetalle`
  ADD CONSTRAINT `fk_PRODUCTODETALLE_MATERIAPRIMAINSUMO` FOREIGN KEY (`fk_idmateriaprimainsumo_productodetalle`) REFERENCES `materiaprimainsumo` (`pk_id_materiaprimainsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PRODUCTODETALLE_TIPOPRODUCTOENCABEZADO` FOREIGN KEY (`fk_idtipoproductoencabezado_productodetalle`) REFERENCES `tipoproductoencabezado` (`pk_id_tipoproductoencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productoscm`
--
ALTER TABLE `productoscm`
  ADD CONSTRAINT `fk_producto_categoriaProducto` FOREIGN KEY (`fk_id_categoria_producto`) REFERENCES `categoria_producto` (`pk_id_categoria_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_lineaProducto` FOREIGN KEY (`fk_id_lineaProducto`) REFERENCES `linea_producto` (`pk_id_linea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `fk_proveedor_pais` FOREIGN KEY (`fk_id_pais`) REFERENCES `pais` (`pk_id_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD CONSTRAINT `fk_horario_puesto` FOREIGN KEY (`fk_id_horario_puesto`) REFERENCES `horario` (`pk_id_horario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `reclutamiento`
--
ALTER TABLE `reclutamiento`
  ADD CONSTRAINT `fk_departamento_empresarial_reclutamiento` FOREIGN KEY (`fk_id_departamento_empresarial_reclutamiento`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_empleado_reclutamiento` FOREIGN KEY (`fk_id_empleado_reclutamiento`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estado_civil_reclutamiento` FOREIGN KEY (`fk_id_estado_civil_reclutamiento`) REFERENCES `estado_civil` (`pk_id_estado_civil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_formacion_academica_reclutamiento` FOREIGN KEY (`fk_id_formacion_academica_reclutamiento`) REFERENCES `formacion_academica` (`pk_id_formacion_academica`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_genero_reclutamiento` FOREIGN KEY (`fk_id_genero_reclutamiento`) REFERENCES `genero` (`pk_id_genero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_licencia_conducir_reclutamiento` FOREIGN KEY (`fk_id_licencia_conducir_reclutamiento`) REFERENCES `licencia_conduccion` (`pk_id_licencia_conduccion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_puesto_reclutamiento` FOREIGN KEY (`fk_id_puesto_reclutamiento`) REFERENCES `puesto` (`pk_id_puesto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `saldo_historico`
--
ALTER TABLE `saldo_historico`
  ADD CONSTRAINT `fk_saldo_cuenta` FOREIGN KEY (`pk_idcuenta`) REFERENCES `cuenta_contable` (`pk_idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `fk_sucursal_municipio` FOREIGN KEY (`fk_id_municipio`) REFERENCES `municipio` (`pk_id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `telefono_cliente`
--
ALTER TABLE `telefono_cliente`
  ADD CONSTRAINT `fk_telefono_cliente1` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`pk_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `telefono_proveedor`
--
ALTER TABLE `telefono_proveedor`
  ADD CONSTRAINT `fk_proveedor_telefono` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `fk_vehiculo_marca` FOREIGN KEY (`fk_id_marca`) REFERENCES `marca` (`pk_id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`pk_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_producto1` FOREIGN KEY (`fk_idproducto`) REFERENCES `producto` (`pk_idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
