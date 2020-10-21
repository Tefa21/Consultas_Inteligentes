-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2020 at 04:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_clc`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplicacion`
--

CREATE TABLE `aplicacion` (
  `pk_id_aplicacion` int(10) NOT NULL,
  `fk_id_modulo` int(10) NOT NULL,
  `nombre_aplicacion` varchar(40) NOT NULL,
  `descripcion_aplicacion` varchar(45) NOT NULL,
  `estado_aplicacion` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aplicacionperfil`
--

CREATE TABLE `aplicacionperfil` (
  `pk_id_aplicacionperfil` int(10) NOT NULL,
  `fk_idaplicacion_aplicacionperfil` int(10) DEFAULT NULL,
  `fk_idperfil_aplicacionperfil` int(10) DEFAULT NULL,
  `fk_idpermiso_aplicacionperfil` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `aplicacionusuario`
--

CREATE TABLE `aplicacionusuario` (
  `pk_id_aplicacionusuario` int(10) NOT NULL,
  `fk_idlogin_aplicacionusuario` int(10) DEFAULT NULL,
  `fk_idaplicacion_aplicacionusuario` int(10) DEFAULT NULL,
  `fk_idpermiso_aplicacionusuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `pk_idarea` int(11) NOT NULL,
  `nombre_area` varchar(45) DEFAULT NULL,
  `descripcion_area` varchar(75) DEFAULT NULL,
  `estado_area` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `balance_detalle`
--

CREATE TABLE `balance_detalle` (
  `pk_idbalanceencabezado` int(11) NOT NULL,
  `pk_idcuenta` int(11) NOT NULL,
  `debe_balance_detalle` double DEFAULT NULL,
  `haber_balance_detalle` double DEFAULT NULL,
  `deudor_balance_detalle` double DEFAULT NULL,
  `acreedor_balance_detalle` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `balance_encabezado`
--

CREATE TABLE `balance_encabezado` (
  `pk_idbalanceencabezado` int(11) NOT NULL,
  `descripcion_balance_encabezado` varchar(75) DEFAULT NULL,
  `fechaCreacion_balance_encabezado` datetime DEFAULT NULL,
  `totalDebeHaber_balance_encabezado` double DEFAULT NULL,
  `totalDeudorAcreedor_balance_encabezado` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `banco`
--

CREATE TABLE `banco` (
  `pk_idbanco` int(11) NOT NULL,
  `nombre_banco` varchar(50) DEFAULT NULL,
  `estado_banco` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bitacora`
--

CREATE TABLE `bitacora` (
  `pk_id_bitacora` int(10) NOT NULL,
  `fk_idusuario_bitacora` int(10) DEFAULT NULL,
  `fk_idaplicacion_bitacora` int(10) DEFAULT NULL,
  `fechahora_bitacora` varchar(50) DEFAULT NULL,
  `direccionhost_bitacora` varchar(20) DEFAULT NULL,
  `nombrehost_bitacora` varchar(20) DEFAULT NULL,
  `accion_bitacora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bodega`
--

CREATE TABLE `bodega` (
  `pk_id_bodega` int(10) NOT NULL,
  `fk_id_municipio` int(10) NOT NULL,
  `dimensiones_bodega` double(5,2) NOT NULL,
  `direccion_bodega` varchar(45) NOT NULL,
  `telefono_bodega` int(8) NOT NULL,
  `descripcion_bodega` varchar(45) NOT NULL,
  `estado_bodega` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `capacitacion`
--

CREATE TABLE `capacitacion` (
  `pk_id_capacitacion` int(11) NOT NULL,
  `fk_id_encabezado_capacitacion` int(11) DEFAULT NULL,
  `fk_id_empleado_capacitacion` int(11) DEFAULT NULL,
  `resultado_capacitacion` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categoria_producto`
--

CREATE TABLE `categoria_producto` (
  `pk_id_categoria_producto` int(10) NOT NULL,
  `nombre_categoria_producto` varchar(35) NOT NULL,
  `descripcion_categoria_producto` varchar(60) NOT NULL,
  `estado_categoria_producto` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categoria_tamaño`
--

CREATE TABLE `categoria_tamaño` (
  `pk_idcategoriatamaño` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categoria_tipo`
--

CREATE TABLE `categoria_tipo` (
  `pk_idcategoriatipo` int(11) NOT NULL,
  `nombre_categoria_tipo` varchar(45) DEFAULT NULL,
  `descripcion_categoria_tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `pk_idcliente` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `fecha_de_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `competencia_desarrollo`
--

CREATE TABLE `competencia_desarrollo` (
  `pk_id_encabezado_desarrollo` int(11) NOT NULL,
  `fk_id_empleado_encabezado_desarrollo` int(11) DEFAULT NULL,
  `fecha_inicio_encabezado_desarrollo` varchar(10) DEFAULT NULL,
  `fecha_fin_encabezado_desarrollo` varchar(10) DEFAULT NULL,
  `fk_id_competencia_encabezado_desarrollo` int(11) DEFAULT NULL,
  `resultado_competencia_encabezado_desarrollo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `compra_detalle`
--

CREATE TABLE `compra_detalle` (
  `fk_id_compra_encabezado` int(10) NOT NULL,
  `cod_linea_compra_detalle` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `cantidad_compra_detalle` int(10) NOT NULL,
  `precio_unitario_compra_detalle` double(8,2) NOT NULL,
  `subtotal_compra_detalle` double(12,2) NOT NULL,
  `estado_compra_detalle` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `compra_encabezado`
--

CREATE TABLE `compra_encabezado` (
  `pk_id_compra_encabezado` int(10) NOT NULL,
  `fk_id_proveedor` int(10) NOT NULL,
  `fec_compra_encabezado_compra` datetime NOT NULL,
  `total_compra_encabezado_compra` double(12,2) NOT NULL,
  `estado_encabezado_compra` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `consulta_inteligente`
--

CREATE TABLE `consulta_inteligente` (
  `pk_id_consulta_inteligente` int(11) NOT NULL,
  `nombre_consulta_inteligente` varchar(100) DEFAULT NULL,
  `contenido_consulta_inteligente` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consulta_inteligente`
--

INSERT INTO `consulta_inteligente` (`pk_id_consulta_inteligente`, `nombre_consulta_inteligente`, `contenido_consulta_inteligente`) VALUES
(1, 'miwebo', 'bili comemela'),
(3, 'biliputo', 'SELECT fk_id_modulo FROM aplicacion WHERE fk_id_modulo = 2;'),
(4, 'mipito', 'SELECT debe_balance_detalle FROM balance_detalle WHERE debe_balance_detalle = 4;'),
(5, '555', 'SELECT pk_id_aplicacion FROM aplicacion WHERE pk_id_aplicacion = 6;'),
(6, '2323', 'SELECT fk_id_modulo FROM aplicacion WHERE fk_id_modulo = 1;'),
(7, 'soltero', 'SELECT nombre_estado_civil FROM estado_civil WHERE nombre_estado_civil = \'soltero\';'),
(8, 'casado', 'SELECT nombre_estado_civil FROM estado_civil WHERE nombre_estado_civil = \'casado\''),
(9, '1111', 'SELECT nombre_estado_civil FROM estado_civil WHERE nombre_estado_civil = \'soltero\';'),
(10, 'asdfasdf', 'SELECT pk_id_estado_civil FROM estado_civil WHERE pk_id_estado_civil = \'1\';'),
(11, '567546', 'SELECT pk_idcuenta FROM balance_detalle WHERE pk_idcuenta = \'4\';'),
(12, '567546', 'SELECT pk_idcuenta FROM balance_detalle;'),
(13, '123123123', 'SELECT pk_idarea FROM area WHERE pk_idarea = \'3\';'),
(14, 'asdfasdfasdfasdf', 'SELECT descripcion_area FROM area WHERE descripcion_area = \'sadf\';'),
(15, 'asdfasdfasdfasdfadf', 'SELECT fk_id_modulo FROM aplicacion WHERE fk_id_modulo = \'23\';'),
(16, 'soltero1', 'SELECT pk_id_estado_civil FROM estado_civil WHERE pk_id_estado_civil = \'1\';'),
(17, '234', 'SELECT fk_id_modulo FROM aplicacion WHERE fk_id_modulo = \'2\';'),
(18, 'qqqqqq', 'SELECT fk_id_municipio FROM bodega WHERE fk_id_municipio = \'1\';'),
(19, 'qqqqqqq', 'SELECT nombre_area FROM area WHERE nombre_area = \'2222\';'),
(20, 'asdf', 'SELECT apellido FROM cliente;'),
(21, 'ewewewewe', 'SELECT debe_balance_detalle FROM balance_detalle AND debe_balance_detalle = \'eee\';'),
(22, '123123123', 'SELECT pk_idarea FROM area WHERE pk_idarea = \'3\';'),
(23, 'blilimelapela', 'SELECT fk_id_modulo FROM aplicacion WHERE fk_id_modulo = \'1\';');

-- --------------------------------------------------------

--
-- Table structure for table `contrato`
--

CREATE TABLE `contrato` (
  `pk_id_contrato` int(11) NOT NULL,
  `nombre_contrato` varchar(45) DEFAULT NULL,
  `fecha_suscripcion_contrato` varchar(10) DEFAULT NULL,
  `fk_id_tipo_contrato` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `controlcalidad`
--

CREATE TABLE `controlcalidad` (
  `pk_id_controlcalidad` int(10) NOT NULL,
  `fk_idordenproduccion_controlcalidad` int(11) NOT NULL,
  `fk_idinventario_controlcalidad` int(11) NOT NULL,
  `fk_idresponsable_controlcalidad` int(10) NOT NULL,
  `resultado_controlcalidad` varchar(45) DEFAULT NULL,
  `estado_controlcalidad` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `controlproducto`
--

CREATE TABLE `controlproducto` (
  `pk_id_controlproducto` int(10) NOT NULL,
  `fk_idordenproduccion_controlproducto` int(10) DEFAULT NULL,
  `fk_idestadoproduccion_controlproducto` int(10) DEFAULT NULL,
  `resultado_controlproducto` varchar(45) DEFAULT NULL,
  `estado_controlproducto` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `control_empleado`
--

CREATE TABLE `control_empleado` (
  `pk_idControlEmpleado` int(11) NOT NULL,
  `Horas_Efectivas_De_Trabajo` varchar(45) DEFAULT NULL,
  `Horas_Extras` varchar(45) DEFAULT NULL,
  `Comisiones` varchar(45) DEFAULT NULL,
  `fK_idEMPLEADO` int(11) NOT NULL,
  `fk_idventa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `correo_cliente`
--

CREATE TABLE `correo_cliente` (
  `pk_iddireccionCliente` int(11) NOT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `fk_idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `correo_proveedor`
--

CREATE TABLE `correo_proveedor` (
  `pk_id_correo_proveedor` int(10) NOT NULL,
  `fk_id_proveedor` int(10) NOT NULL,
  `correo_correo_proveedor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cuentas_por_cobrar`
--

CREATE TABLE `cuentas_por_cobrar` (
  `pk_idcuentacobrar` int(11) NOT NULL,
  `cuota` varchar(45) DEFAULT NULL,
  `abono` varchar(45) DEFAULT NULL,
  `fk_idfactura` int(11) NOT NULL,
  `fk_idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cuenta_bancaria`
--

CREATE TABLE `cuenta_bancaria` (
  `pk_idnumerocuenta` int(11) NOT NULL,
  `fk_idbanco` int(11) NOT NULL,
  `fk_idpropietario` int(11) NOT NULL,
  `fk_idtipomoneda` int(11) NOT NULL,
  `saldo_cuenta_bancaria` double DEFAULT NULL,
  `fecha_apertura_cuenta_bancaria` datetime DEFAULT NULL,
  `estado_apertura_cuenta` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cuenta_contable`
--

CREATE TABLE `cuenta_contable` (
  `pk_idcuenta` int(11) NOT NULL,
  `nombre_cuenta_contable` varchar(75) DEFAULT NULL,
  `nivel_cuenta_contable` int(11) DEFAULT NULL,
  `fk_cuentapadre` int(11) DEFAULT NULL,
  `saldo_cuenta_contable` double DEFAULT NULL,
  `estado_cuenta_contable` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `curso`
--

CREATE TABLE `curso` (
  `pk_id_curso` int(11) NOT NULL,
  `nombre_curso` varchar(45) DEFAULT NULL,
  `capacitador_curso` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deduccion`
--

CREATE TABLE `deduccion` (
  `pk_id_deduccion` int(11) NOT NULL,
  `nombre_deduccion` varchar(45) DEFAULT NULL,
  `monto_deduccion` double DEFAULT NULL,
  `descripcion_deduccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `pk_id_departamento` int(10) NOT NULL,
  `nombre_departamento` varchar(30) NOT NULL,
  `descripcion_departamento` varchar(45) NOT NULL,
  `estado_departamento` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `departamento_empresarial`
--

CREATE TABLE `departamento_empresarial` (
  `pk_id__departamento_empresarial` int(11) NOT NULL,
  `nombre_departamento_empresarial` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detallebitacora`
--

CREATE TABLE `detallebitacora` (
  `pk_id_detallebitacora` int(10) NOT NULL,
  `fk_idbitacora_detallebitacora` int(10) DEFAULT NULL,
  `querryantigua_detallebitacora` varchar(50) DEFAULT NULL,
  `querrynueva_detallebitacora` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `pk_id_detalle_factura` int(11) NOT NULL,
  `fk_idfactura` int(11) NOT NULL,
  `fk_idproducto` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_nomina`
--

CREATE TABLE `detalle_nomina` (
  `pk_id_detalle_nomina` int(11) NOT NULL,
  `fk_id_encabezado_detalle_nomina` int(11) DEFAULT NULL,
  `fk_id_empleado_detalle_nomina` int(11) DEFAULT NULL,
  `fk_id_percepciones_detalle_nomina` int(11) DEFAULT NULL,
  `fk_id_deducciones_detalle_nomina` int(11) DEFAULT NULL,
  `salario_base_detalle_nomina` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_transaccion`
--

CREATE TABLE `detalle_transaccion` (
  `pk_iddetalletransaccion` int(11) NOT NULL,
  `fk_idencabezadotransaccion` int(11) NOT NULL,
  `fk_idtipotransaccion` int(11) NOT NULL,
  `monto_detalle_transaccion` double DEFAULT NULL,
  `descripcion_detalle_transaccion` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `devolucion_detalle`
--

CREATE TABLE `devolucion_detalle` (
  `fk_id_devolucion_encabezado` int(10) NOT NULL,
  `cod_linea_devolucion_encabezado` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `fk_id_estado_producto` int(10) NOT NULL,
  `cantidad_devolucion_encabezado` int(10) NOT NULL,
  `iva_por_cobrar_devolucion_encabezado` double(8,2) NOT NULL,
  `precio_unitario_devolucion_encabezado` double(8,2) NOT NULL,
  `subtotal_devolucion_encabezado` double(12,2) NOT NULL,
  `estado_devolucion_encabezado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `devolucion_encabezado`
--

CREATE TABLE `devolucion_encabezado` (
  `pk_id_devolucion_encabezado` int(10) NOT NULL,
  `fk_id_fabrica` int(10) NOT NULL,
  `fk_id_categoria_producto` int(10) NOT NULL,
  `fec_devolucion_encabezado` datetime NOT NULL,
  `total_devolucion_encabezado` double(12,2) NOT NULL,
  `estado_devolucion_encabezado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `diario_detalle`
--

CREATE TABLE `diario_detalle` (
  `pk_polizaencabezado` int(11) NOT NULL,
  `pk_idcuenta` int(11) NOT NULL,
  `monto_diario_detalle` double DEFAULT NULL,
  `debe_diario_detalle` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `diario_encabezado`
--

CREATE TABLE `diario_encabezado` (
  `pk_polizaencabezado` int(11) NOT NULL,
  `fecha_diarioencabezado` datetime DEFAULT NULL,
  `descripcion_diarioencabezado` varchar(75) DEFAULT NULL,
  `estado_diarioencabezado` tinyint(4) DEFAULT NULL,
  `total_diarioencabezado` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `direccion`
--

CREATE TABLE `direccion` (
  `pk_id_direccion` int(11) NOT NULL,
  `departamento_direccion` varchar(45) DEFAULT NULL,
  `zona_direccion` varchar(7) DEFAULT NULL,
  `municipio_direccion` varchar(100) DEFAULT NULL,
  `residencia_direccion` varchar(45) DEFAULT NULL,
  `fk_empleado_direccion` int(11) DEFAULT NULL,
  `fk_reclutamiento_direccion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `empleado`
--

CREATE TABLE `empleado` (
  `pk_id_empleado` int(11) NOT NULL,
  `nombre1_empleado` varchar(45) DEFAULT NULL,
  `nombre2_empleado` varchar(45) DEFAULT NULL,
  `apellido1_empleado` varchar(45) DEFAULT NULL,
  `apellido2_empleado` varchar(45) DEFAULT NULL,
  `fecha_nacimiento_empleado` varchar(10) DEFAULT NULL,
  `dpi_empleado` int(11) DEFAULT NULL,
  `fk_id_genero_empleado` int(11) DEFAULT NULL,
  `fk_id_estado_civil_empleado` int(11) DEFAULT NULL,
  `email_empleado` varchar(125) DEFAULT NULL,
  `telefono_empleado` int(11) DEFAULT NULL,
  `numero_iggs_empleado` int(11) DEFAULT NULL,
  `fk_id_licencia_conducir_empleado` int(11) DEFAULT NULL,
  `fk_id_contrato_empleado` int(11) DEFAULT NULL,
  `fk_id_puesto_empleado` int(11) DEFAULT NULL,
  `cuenta_bancaria_empleado` int(11) DEFAULT NULL,
  `fk_id_departamento_empresarial_empleado` int(11) DEFAULT NULL,
  `estado_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `encabezado_capacitacion`
--

CREATE TABLE `encabezado_capacitacion` (
  `pk_id_encabezado_capacitacion` int(11) NOT NULL,
  `nombre_encabezado_capacitacion` varchar(45) DEFAULT NULL,
  `fecha_inicio_encabezado_capacitacion` varchar(10) DEFAULT NULL,
  `fecha_fin_encabezado_capacitacion` varchar(10) DEFAULT NULL,
  `fk_id_curso_encabezado_capacitacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `encabezado_nomina`
--

CREATE TABLE `encabezado_nomina` (
  `pk_id_encabezado_nomina` int(11) NOT NULL,
  `nombre_encabezado_nomina` varchar(45) DEFAULT NULL,
  `fecha_inicio_encabezado_nomina` varchar(10) DEFAULT NULL,
  `fecha_fin_encabezado_nomina` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `encabezado_transaccion`
--

CREATE TABLE `encabezado_transaccion` (
  `pk_idencabezadotransaccion` int(11) NOT NULL,
  `fk_idnumerocuenta` int(11) NOT NULL,
  `fecha_encabezado_transaccion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `encargado_bodega`
--

CREATE TABLE `encargado_bodega` (
  `pk_id_encargado_bodega` int(10) NOT NULL,
  `fk_id_empleado` int(10) NOT NULL,
  `fk_id_bodega` int(10) NOT NULL,
  `estado_encargado_bodega` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `entrevista`
--

CREATE TABLE `entrevista` (
  `pk_id_entrevista` int(11) NOT NULL,
  `fk_id_empleado_entrevista` int(11) DEFAULT NULL,
  `fk_id_reclutamiento_entrevista` int(11) DEFAULT NULL,
  `fk_id_tipo_entrevista` int(11) DEFAULT NULL,
  `resultado_entrevista` int(11) DEFAULT NULL,
  `comentarios_entrevistador_entrevista` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `envio_producto`
--

CREATE TABLE `envio_producto` (
  `pk_id_envio_producto` int(10) NOT NULL,
  `fk_id_ruta` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `fk_id_empleado` int(10) NOT NULL,
  `fk_id_vehiculo` int(10) NOT NULL,
  `fec_envio_producto` datetime NOT NULL,
  `fec_recibido_envio_producto` datetime NOT NULL,
  `descripcion_envio_producto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `estadoproduccion`
--

CREATE TABLE `estadoproduccion` (
  `pk_id_estadoproduccion` int(10) NOT NULL,
  `nombre_estadoproduccion` varchar(45) DEFAULT NULL,
  `duracion_estadoproduccion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `estado_civil`
--

CREATE TABLE `estado_civil` (
  `pk_id_estado_civil` int(11) NOT NULL,
  `nombre_estado_civil` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `estado_civil`
--

INSERT INTO `estado_civil` (`pk_id_estado_civil`, `nombre_estado_civil`) VALUES
(1, 'soltero'),
(2, 'casado');

-- --------------------------------------------------------

--
-- Table structure for table `estado_producto`
--

CREATE TABLE `estado_producto` (
  `pk_id_estado_producto` int(10) NOT NULL,
  `nombre_estado_producto` varchar(25) NOT NULL,
  `descripcion_estado_producto` varchar(45) NOT NULL,
  `estado_estado_producto` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fabrica`
--

CREATE TABLE `fabrica` (
  `pk_id_fabrica` int(10) NOT NULL,
  `fk_id_municipio` int(10) NOT NULL,
  `dimensiones_fabrica` double(5,2) NOT NULL,
  `direccion_fabrica` varchar(45) NOT NULL,
  `telefono_fabrica` int(8) NOT NULL,
  `descripcion_fabrica` varchar(45) NOT NULL,
  `estado_fabrica` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `pk_idfactura` int(11) NOT NULL,
  `fk_idmodopago` int(11) NOT NULL,
  `fk_idcliente` int(11) NOT NULL,
  `fK_idEMPLEADO` int(11) NOT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `falta`
--

CREATE TABLE `falta` (
  `pk_id_falta` int(11) NOT NULL,
  `nombre_falta` varchar(45) DEFAULT NULL,
  `descripción_falta` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `falta_empleado`
--

CREATE TABLE `falta_empleado` (
  `pk_id_falta_empleado` int(11) NOT NULL,
  `fk_id_empleado_falta_empleado` int(11) DEFAULT NULL,
  `fk_id_tipo_falta_empleado` int(11) DEFAULT NULL,
  `fecha_falta_empleado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formacion_academica`
--

CREATE TABLE `formacion_academica` (
  `pk_id_formacion_academica` int(11) NOT NULL,
  `nombre_formacion_academica` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `genero`
--

CREATE TABLE `genero` (
  `pk_id_genero` int(11) NOT NULL,
  `nombre_genero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `horaempleado`
--

CREATE TABLE `horaempleado` (
  `pk_id_horaempleado` int(10) NOT NULL,
  `fk_idempleado_horaempleado` int(10) DEFAULT NULL,
  `tiempo_horaempleado` int(11) DEFAULT NULL,
  `fk_idordenproduccion_horaempleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `horario`
--

CREATE TABLE `horario` (
  `pk_id_horario` int(11) NOT NULL,
  `nombre_horario` varchar(45) DEFAULT NULL,
  `descripcion_horario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventario`
--

CREATE TABLE `inventario` (
  `pk_id_inventario` int(10) NOT NULL,
  `fk_id_bodega` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `existencia_inventario` int(10) NOT NULL,
  `estado_inventario` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventariocrm`
--

CREATE TABLE `inventariocrm` (
  `pk_idinventario` int(11) NOT NULL,
  `existencia` int(11) DEFAULT NULL,
  `fk_idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inventariomrp`
--

CREATE TABLE `inventariomrp` (
  `pk_id_inventario` int(10) NOT NULL,
  `fk_idmateriaprimainsumo_inventario` int(11) DEFAULT NULL,
  `fk_idtipoinventario_inventario` int(11) DEFAULT NULL,
  `fecha_inventario` date DEFAULT NULL,
  `cantidad_inventario` int(11) DEFAULT NULL,
  `estado_inventario` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `licencia_conduccion`
--

CREATE TABLE `licencia_conduccion` (
  `pk_id_licencia_conduccion` int(11) NOT NULL,
  `tipo_licencia_conduccion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `linea_producto`
--

CREATE TABLE `linea_producto` (
  `pk_id_linea_producto` int(10) NOT NULL,
  `nombre_linea_producto` varchar(25) NOT NULL,
  `descripcion_linea_producto` varchar(50) NOT NULL,
  `estado_linea_producto` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `pk_id_login` int(10) NOT NULL,
  `usuario_login` varchar(45) DEFAULT NULL,
  `contraseña_login` varchar(45) DEFAULT NULL,
  `nombreCompleto_login` varchar(100) DEFAULT NULL,
  `estado_login` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marca`
--

CREATE TABLE `marca` (
  `pk_id_marca` int(10) NOT NULL,
  `descripcion_marca` varchar(45) NOT NULL,
  `estado_marca` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `materiaprimainsumo`
--

CREATE TABLE `materiaprimainsumo` (
  `pk_id_materiaprimainsumo` int(10) NOT NULL,
  `nombre_materiaprimainsumo` varchar(45) DEFAULT NULL,
  `descripcion_materiaprimainsumo` varchar(45) DEFAULT NULL,
  `marca_materiaprimainsumo` varchar(45) DEFAULT NULL,
  `estado_materiaprimainsumo` tinyint(1) DEFAULT NULL,
  `precio_materiaprimainsumo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mayor_detalle`
--

CREATE TABLE `mayor_detalle` (
  `pk_idmayorencabezado` int(11) NOT NULL,
  `pk_polizaencabezado` int(11) NOT NULL,
  `subtotal_mayor_detalle` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mayor_encabezado`
--

CREATE TABLE `mayor_encabezado` (
  `pk_idmayorencabezado` int(11) NOT NULL,
  `pk_idcuenta` int(11) NOT NULL,
  `montoDebe_mayor_encabezado` double DEFAULT NULL,
  `montoHaber_mayor_encabezado` double DEFAULT NULL,
  `fecha_mayor_encabezado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modo_de_pago`
--

CREATE TABLE `modo_de_pago` (
  `pk_idmodopago` int(11) NOT NULL,
  `tipo_pago` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modulo`
--

CREATE TABLE `modulo` (
  `pk_id_modulo` int(10) NOT NULL,
  `nombre_modulo` varchar(30) NOT NULL,
  `descripcion_modulo` varchar(50) NOT NULL,
  `estado_modulo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movimiento_inventario`
--

CREATE TABLE `movimiento_inventario` (
  `pk_id_movimiento_inventario` int(10) NOT NULL,
  `fecha_movimiento_inventario` datetime NOT NULL,
  `fk_id_tipo_movimiento` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movimiento_inventario_detalle`
--

CREATE TABLE `movimiento_inventario_detalle` (
  `pk_id_movimiento_inventario_detalle` int(10) NOT NULL,
  `fk_id_movimiento_inventario` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `cantidad` int(8) NOT NULL,
  `origen` varchar(35) NOT NULL,
  `destino` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `municipio`
--

CREATE TABLE `municipio` (
  `pk_id_municipio` int(10) NOT NULL,
  `fk_id_departamento` int(10) NOT NULL,
  `nombre_municipio` varchar(30) NOT NULL,
  `descripcion_municipio` varchar(45) NOT NULL,
  `estado_municipio` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ordencompra`
--

CREATE TABLE `ordencompra` (
  `pk_id_ordencompra` int(10) NOT NULL,
  `fk_idmateriaprimainsumos_ordencompra` int(11) DEFAULT NULL,
  `fechaenvio_ordencompra` date DEFAULT NULL,
  `cantidad_ordencompra` int(11) DEFAULT NULL,
  `estado_ordencompra` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ordenproduccion`
--

CREATE TABLE `ordenproduccion` (
  `pk_id_ordenproduccion` int(10) NOT NULL,
  `fk_idtipoproducto_idordenproduccion` int(10) DEFAULT NULL,
  `cantidad_ordenproduccion` int(11) DEFAULT NULL,
  `fecha_ordenproduccion` varchar(45) DEFAULT NULL,
  `estado_ordenproduccion` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `pk_id_pais` int(10) NOT NULL,
  `nombre_pais` varchar(40) NOT NULL,
  `capital_pais` varchar(40) NOT NULL,
  `estado_pais` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pedido_detalle`
--

CREATE TABLE `pedido_detalle` (
  `fk_id_pedido_encabezado` int(10) NOT NULL,
  `cod_linea_pedido_detalle` int(10) NOT NULL,
  `fk_id_producto` int(10) NOT NULL,
  `cantidad_pedido_detalle` int(10) NOT NULL,
  `precio_unitario_pedido_detalle` double(8,2) NOT NULL,
  `subtotal_pedido_detalle` double(12,2) NOT NULL,
  `estado_pedido_detalle` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pedido_encabezado`
--

CREATE TABLE `pedido_encabezado` (
  `pk_id_pedido_encabezado` int(10) NOT NULL,
  `fk_id_fabrica` int(10) NOT NULL,
  `fec_pedido_pedido_encabezado` datetime NOT NULL,
  `total_pedido_encabezado` double(12,2) NOT NULL,
  `estado_pedido_encabezado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `percepcion`
--

CREATE TABLE `percepcion` (
  `pk_id_percepcion` int(11) NOT NULL,
  `nombre_percepcion` varchar(45) DEFAULT NULL,
  `monto_percepcion` double DEFAULT NULL,
  `descripcion_percepcion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `perfil`
--

CREATE TABLE `perfil` (
  `pk_id_perfil` int(10) NOT NULL,
  `nombre_perfil` int(10) DEFAULT NULL,
  `descripcion_perfil` varchar(50) DEFAULT NULL,
  `estado_perfil` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `perfilusuario`
--

CREATE TABLE `perfilusuario` (
  `pk_id_perfilusuario` int(10) NOT NULL,
  `fk_idusuario_perfilusuario` int(10) DEFAULT NULL,
  `fk_idperfil_perfilusuario` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permiso`
--

CREATE TABLE `permiso` (
  `pk_id_permiso` int(10) NOT NULL,
  `insertar_permiso` tinyint(1) DEFAULT NULL,
  `modificar_permiso` tinyint(1) DEFAULT NULL,
  `eliminar_permiso` tinyint(1) DEFAULT NULL,
  `consultar_permiso` tinyint(1) DEFAULT NULL,
  `imprimir_permiso` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `presupuesto`
--

CREATE TABLE `presupuesto` (
  `pk_idpresupuesto` int(11) NOT NULL,
  `nombre_presupuesto` varchar(45) DEFAULT NULL,
  `cantidad_presupuesto` double DEFAULT NULL,
  `fk_idtipomoneda` int(11) NOT NULL,
  `fk_area` int(11) NOT NULL,
  `descripcion_presupuesto` varchar(75) DEFAULT NULL,
  `estado_presupuesto` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `pk_idproducto` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `fk_idcategoriatamaño` int(11) NOT NULL,
  `fk_idcategoriatipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productodetalle`
--

CREATE TABLE `productodetalle` (
  `pk_id_productodetalle` int(10) NOT NULL,
  `fk_idtipoproductoencabezado_productodetalle` int(11) DEFAULT NULL,
  `fk_idmateriaprimainsumo_productodetalle` int(11) DEFAULT NULL,
  `cantidad_productodetalle` int(11) DEFAULT NULL,
  `estado_productodetalle` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productoscm`
--

CREATE TABLE `productoscm` (
  `pk_id_producto` int(10) NOT NULL,
  `fk_id_linea_producto` int(10) NOT NULL,
  `fk_id_categoria_producto` int(10) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `precio_producto` double(12,2) NOT NULL,
  `medida_producto` double(5,2) NOT NULL,
  `descripcion_producto` varchar(45) NOT NULL,
  `estado_producto` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `propietario`
--

CREATE TABLE `propietario` (
  `pk_idpropietario` int(11) NOT NULL,
  `nombre_propietario` varchar(45) DEFAULT NULL,
  `descripcion_propietario` varchar(75) DEFAULT NULL,
  `estado_propietario` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `pk_id_proveedor` int(10) NOT NULL,
  `fk_id_pais` int(10) NOT NULL,
  `razon_social_proveedor` varchar(45) NOT NULL,
  `representante_legal_proveedor` varchar(45) NOT NULL,
  `nit_proveedor` varchar(20) NOT NULL,
  `estado_proveedor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `puesto`
--

CREATE TABLE `puesto` (
  `pk_id_puesto` int(11) NOT NULL,
  `nombre_puesto` varchar(45) DEFAULT NULL,
  `salario_puesto` double DEFAULT NULL,
  `fk_id_horario_puesto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reclutamiento`
--

CREATE TABLE `reclutamiento` (
  `pk_id_reclutamiento` int(11) NOT NULL,
  `fk_id_empleado_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_formacion_academica_reclutamiento` int(11) DEFAULT NULL,
  `nombre1_reclutamiento` varchar(45) DEFAULT NULL,
  `nombre2_reclutamiento` varchar(45) DEFAULT NULL,
  `apellido1_reclutamiento` varchar(45) DEFAULT NULL,
  `apellido2_reclutamiento` varchar(45) DEFAULT NULL,
  `fecha_nacimiento_reclutamiento` varchar(10) DEFAULT NULL,
  `dpi_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_genero_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_estado_civil_reclutamiento` int(11) DEFAULT NULL,
  `email_reclutamiento` varchar(125) DEFAULT NULL,
  `telefono_reclutamiento` int(11) DEFAULT NULL,
  `numero_igss_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_licencia_conducir_reclutamiento` int(11) DEFAULT NULL,
  `fk_id_puesto_reclutamiento` int(11) DEFAULT NULL,
  `estado_reclutado_entrevista` int(11) DEFAULT NULL,
  `fk_id_departamento_empresarial_reclutamiento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reporte`
--

CREATE TABLE `reporte` (
  `pk_id_reporte` int(10) NOT NULL,
  `nombre_reporte` varchar(40) NOT NULL,
  `ruta_reporte` varchar(100) NOT NULL,
  `estado_reporte` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reporte_aplicativo`
--

CREATE TABLE `reporte_aplicativo` (
  `fk_id_reporte` int(10) NOT NULL,
  `fk_id_aplicacion` int(10) NOT NULL,
  `fk_id_modulo` int(10) NOT NULL,
  `estado_reporte_aplicativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reporte_modulo`
--

CREATE TABLE `reporte_modulo` (
  `fk_id_reporte` int(10) NOT NULL,
  `fk_id_modulo` int(10) NOT NULL,
  `estado_reporte_modulo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ruta`
--

CREATE TABLE `ruta` (
  `pk_id_ruta` int(10) NOT NULL,
  `origen_ruta` int(10) NOT NULL,
  `destino_ruta` int(10) NOT NULL,
  `descripcion_ruta` varchar(45) NOT NULL,
  `estado_ruta` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `saldo_historico`
--

CREATE TABLE `saldo_historico` (
  `pk_idcuenta` int(11) NOT NULL,
  `fecha_saldo_historico` datetime NOT NULL,
  `monto_saldo_historico` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sucursal`
--

CREATE TABLE `sucursal` (
  `pk_id_sucursal` int(10) NOT NULL,
  `fk_id_municipio` int(10) NOT NULL,
  `nombre_sucursal` varchar(45) NOT NULL,
  `direccion_sucursal` varchar(45) NOT NULL,
  `telefono_sucursal` int(8) NOT NULL,
  `descripcion_sucursal` varchar(45) NOT NULL,
  `estado_sucursal` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `telefono_cliente`
--

CREATE TABLE `telefono_cliente` (
  `pk_idtelefono` int(11) NOT NULL,
  `Numero_Telefono` varchar(8) DEFAULT NULL,
  `fk_idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `telefono_proveedor`
--

CREATE TABLE `telefono_proveedor` (
  `pk_id_telefono_proveedor` int(10) NOT NULL,
  `fk_id_proveedor` int(10) NOT NULL,
  `telefono_telefono_proveedor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipoinventario`
--

CREATE TABLE `tipoinventario` (
  `pk_id_tipoinventario` int(10) NOT NULL,
  `nombre_tipoinventario` varchar(45) DEFAULT NULL,
  `descripcion_tipo_inventario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipoproductoencabezado`
--

CREATE TABLE `tipoproductoencabezado` (
  `pk_id_tipoproductoencabezado` int(10) NOT NULL,
  `nombre_tipoproductoencabezado` varchar(45) DEFAULT NULL,
  `descripcion_tipoproductoencabezado` varchar(45) DEFAULT NULL,
  `precio_tipoproductoencabezado` double DEFAULT NULL,
  `estado_tipoproductoencabezado` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_competencia`
--

CREATE TABLE `tipo_competencia` (
  `pk_id_competencia` int(11) NOT NULL,
  `nombre_competencia` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_contrato`
--

CREATE TABLE `tipo_contrato` (
  `pk_id_tipo_contrato` int(11) NOT NULL,
  `nombre_tipo_contrato` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_entrevista`
--

CREATE TABLE `tipo_entrevista` (
  `pk_id_tipo_entrevista` int(11) NOT NULL,
  `nombre_tipo_entrevista` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_moneda`
--

CREATE TABLE `tipo_moneda` (
  `pk_idtipomoneda` int(11) NOT NULL,
  `moneda_tipo_moneda` varchar(45) DEFAULT NULL,
  `simbolo_tipo_moneda` varchar(2) DEFAULT NULL,
  `descripcion_tipo_moneda` varchar(75) DEFAULT NULL,
  `estado_tipo_moneda` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_movimiento`
--

CREATE TABLE `tipo_movimiento` (
  `pk_id_tipo_movimiento` int(10) NOT NULL,
  `nombre_tipo_movimiento` varchar(45) NOT NULL,
  `signo_tipo` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_transaccion`
--

CREATE TABLE `tipo_transaccion` (
  `pk_idtipotransaccion` int(11) NOT NULL,
  `nombre_tipo_transaccion` varchar(45) DEFAULT NULL,
  `descripcion_tipo_transaccion` varchar(75) DEFAULT NULL,
  `estado_tipo_transaccion` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehiculo`
--

CREATE TABLE `vehiculo` (
  `pk_id_vehiculo` int(10) NOT NULL,
  `fk_id_marca` int(10) NOT NULL,
  `placa_vehiculo` varchar(45) NOT NULL,
  `modelo_vehiculo` varchar(45) NOT NULL,
  `color_vehiculo` varchar(45) NOT NULL,
  `anio_vehiculo` varchar(45) NOT NULL,
  `tipo_combustible_vehiculo` varchar(45) NOT NULL,
  `estado_vehiculo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `venta`
--

CREATE TABLE `venta` (
  `pk_idventa` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `fk_idcliente` int(11) NOT NULL,
  `fk_idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD PRIMARY KEY (`pk_id_aplicacion`),
  ADD KEY `pk_id_aplicacion` (`pk_id_aplicacion`),
  ADD KEY `fk_aplicativo_modulo` (`fk_id_modulo`);

--
-- Indexes for table `aplicacionperfil`
--
ALTER TABLE `aplicacionperfil`
  ADD PRIMARY KEY (`pk_id_aplicacionperfil`),
  ADD KEY `fk_aplicacionperfil_aplicacion` (`fk_idaplicacion_aplicacionperfil`),
  ADD KEY `fk_aplicacionperfil_perfil` (`fk_idperfil_aplicacionperfil`),
  ADD KEY `fk_aplicacionperfil_permiso` (`fk_idpermiso_aplicacionperfil`);

--
-- Indexes for table `aplicacionusuario`
--
ALTER TABLE `aplicacionusuario`
  ADD PRIMARY KEY (`pk_id_aplicacionusuario`),
  ADD KEY `fk_aplicacionusuario_login` (`fk_idlogin_aplicacionusuario`),
  ADD KEY `fk_aplicacionusuario_aplicacion` (`fk_idaplicacion_aplicacionusuario`),
  ADD KEY `fk_aplicacionusuario_permiso` (`fk_idpermiso_aplicacionusuario`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`pk_idarea`);

--
-- Indexes for table `balance_detalle`
--
ALTER TABLE `balance_detalle`
  ADD PRIMARY KEY (`pk_idbalanceencabezado`),
  ADD KEY `fk_balancedetalle_cuenta` (`pk_idcuenta`);

--
-- Indexes for table `balance_encabezado`
--
ALTER TABLE `balance_encabezado`
  ADD PRIMARY KEY (`pk_idbalanceencabezado`);

--
-- Indexes for table `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`pk_idbanco`);

--
-- Indexes for table `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`pk_id_bitacora`),
  ADD KEY `fk_login_bitacora` (`fk_idusuario_bitacora`),
  ADD KEY `fk_aplicacion_bitacora` (`fk_idaplicacion_bitacora`);

--
-- Indexes for table `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`pk_id_bodega`),
  ADD KEY `pk_id_bodega` (`pk_id_bodega`),
  ADD KEY `fk_bodega_municipio` (`fk_id_municipio`);

--
-- Indexes for table `capacitacion`
--
ALTER TABLE `capacitacion`
  ADD PRIMARY KEY (`pk_id_capacitacion`),
  ADD KEY `fk_encabezado_capacitacion` (`fk_id_encabezado_capacitacion`),
  ADD KEY `fk_empleado_capacitacion` (`fk_id_empleado_capacitacion`);

--
-- Indexes for table `categoria_producto`
--
ALTER TABLE `categoria_producto`
  ADD PRIMARY KEY (`pk_id_categoria_producto`),
  ADD KEY `pk_id_categoria_producto` (`pk_id_categoria_producto`);

--
-- Indexes for table `categoria_tamaño`
--
ALTER TABLE `categoria_tamaño`
  ADD PRIMARY KEY (`pk_idcategoriatamaño`);

--
-- Indexes for table `categoria_tipo`
--
ALTER TABLE `categoria_tipo`
  ADD PRIMARY KEY (`pk_idcategoriatipo`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`pk_idcliente`);

--
-- Indexes for table `competencia_desarrollo`
--
ALTER TABLE `competencia_desarrollo`
  ADD PRIMARY KEY (`pk_id_encabezado_desarrollo`),
  ADD KEY `fk_empleado_encabezado_desarrollo` (`fk_id_empleado_encabezado_desarrollo`),
  ADD KEY `fk_competencia_encabezado_desarrollo` (`fk_id_competencia_encabezado_desarrollo`);

--
-- Indexes for table `compra_detalle`
--
ALTER TABLE `compra_detalle`
  ADD PRIMARY KEY (`fk_id_compra_encabezado`,`cod_linea_compra_detalle`),
  ADD KEY `fk_id_compra_encabezado` (`fk_id_compra_encabezado`,`cod_linea_compra_detalle`),
  ADD KEY `fk_compra_producto` (`fk_id_producto`);

--
-- Indexes for table `compra_encabezado`
--
ALTER TABLE `compra_encabezado`
  ADD PRIMARY KEY (`pk_id_compra_encabezado`),
  ADD KEY `pk_id_compra_encabezado` (`pk_id_compra_encabezado`),
  ADD KEY `fk_compra_proveedor` (`fk_id_proveedor`);

--
-- Indexes for table `consulta_inteligente`
--
ALTER TABLE `consulta_inteligente`
  ADD PRIMARY KEY (`pk_id_consulta_inteligente`);

--
-- Indexes for table `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`pk_id_contrato`),
  ADD KEY `fk_tipo_contrato` (`fk_id_tipo_contrato`);

--
-- Indexes for table `controlcalidad`
--
ALTER TABLE `controlcalidad`
  ADD PRIMARY KEY (`pk_id_controlcalidad`),
  ADD KEY `fk_CONTROLCALIDAD_ORDENPRODUCCION1` (`fk_idordenproduccion_controlcalidad`),
  ADD KEY `fk_CONTROLCALIDAD_INVENTARIO1` (`fk_idinventario_controlcalidad`),
  ADD KEY `fk_EMPLEADOS_CONTROLCALIDAD1` (`fk_idresponsable_controlcalidad`);

--
-- Indexes for table `controlproducto`
--
ALTER TABLE `controlproducto`
  ADD PRIMARY KEY (`pk_id_controlproducto`),
  ADD KEY `fk_CONTROLPRODUCTO_ORDENPRODUCCION1` (`fk_idordenproduccion_controlproducto`),
  ADD KEY `fk_CONTROLPRODUCTO_ESTADOPRODUCCION` (`fk_idestadoproduccion_controlproducto`);

--
-- Indexes for table `control_empleado`
--
ALTER TABLE `control_empleado`
  ADD PRIMARY KEY (`pk_idControlEmpleado`),
  ADD KEY `fk_CONTROL_EMPLEADO_VENTA1` (`fk_idventa`),
  ADD KEY `fk_CONTROL_EMPLEADO_EMPLEADO1` (`fK_idEMPLEADO`);

--
-- Indexes for table `correo_cliente`
--
ALTER TABLE `correo_cliente`
  ADD PRIMARY KEY (`pk_iddireccionCliente`),
  ADD KEY `fk_direccionCliente_cliente1` (`fk_idcliente`);

--
-- Indexes for table `correo_proveedor`
--
ALTER TABLE `correo_proveedor`
  ADD PRIMARY KEY (`pk_id_correo_proveedor`),
  ADD KEY `pk_id_correo_proveedor` (`pk_id_correo_proveedor`),
  ADD KEY `fk_proveedor_correo` (`fk_id_proveedor`);

--
-- Indexes for table `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  ADD PRIMARY KEY (`pk_idcuentacobrar`),
  ADD KEY `fk_cuentasporcobrar_factura1` (`fk_idfactura`),
  ADD KEY `fk_cuentasporcobrar_cliente1` (`fk_idcliente`);

--
-- Indexes for table `cuenta_bancaria`
--
ALTER TABLE `cuenta_bancaria`
  ADD PRIMARY KEY (`pk_idnumerocuenta`),
  ADD KEY `fk_cuentabancaria_banco` (`fk_idbanco`),
  ADD KEY `fk_cuentabancaria_propietario` (`fk_idpropietario`),
  ADD KEY `fk_cuentabancaria_tipomoneda` (`fk_idtipomoneda`);

--
-- Indexes for table `cuenta_contable`
--
ALTER TABLE `cuenta_contable`
  ADD PRIMARY KEY (`pk_idcuenta`),
  ADD KEY `fk_cuentapadre_cuentahijo` (`fk_cuentapadre`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`pk_id_curso`);

--
-- Indexes for table `deduccion`
--
ALTER TABLE `deduccion`
  ADD PRIMARY KEY (`pk_id_deduccion`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`pk_id_departamento`),
  ADD KEY `pk_id_departamento` (`pk_id_departamento`);

--
-- Indexes for table `departamento_empresarial`
--
ALTER TABLE `departamento_empresarial`
  ADD PRIMARY KEY (`pk_id__departamento_empresarial`);

--
-- Indexes for table `detallebitacora`
--
ALTER TABLE `detallebitacora`
  ADD PRIMARY KEY (`pk_id_detallebitacora`),
  ADD KEY `fk_bitacora_detallebitacora` (`fk_idbitacora_detallebitacora`);

--
-- Indexes for table `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`pk_id_detalle_factura`),
  ADD KEY `fk_DETALLE_FACTURA_FACTURA1` (`fk_idfactura`),
  ADD KEY `fk_DETALLE_FACTURA_PRODUCTO1` (`fk_idproducto`);

--
-- Indexes for table `detalle_nomina`
--
ALTER TABLE `detalle_nomina`
  ADD PRIMARY KEY (`pk_id_detalle_nomina`),
  ADD KEY `fk_encabezado_detalle_nomina` (`fk_id_encabezado_detalle_nomina`),
  ADD KEY `fk_emplado_detalle_nomina` (`fk_id_empleado_detalle_nomina`),
  ADD KEY `fk_percepcion_detalle_nomina` (`fk_id_percepciones_detalle_nomina`),
  ADD KEY `fk_deduccion_detalle_nomina` (`fk_id_deducciones_detalle_nomina`);

--
-- Indexes for table `detalle_transaccion`
--
ALTER TABLE `detalle_transaccion`
  ADD PRIMARY KEY (`pk_iddetalletransaccion`),
  ADD KEY `fk_detalle_encabezado` (`fk_idencabezadotransaccion`),
  ADD KEY `fk_detalle_tipotransaccion` (`fk_idtipotransaccion`);

--
-- Indexes for table `devolucion_detalle`
--
ALTER TABLE `devolucion_detalle`
  ADD PRIMARY KEY (`fk_id_devolucion_encabezado`,`cod_linea_devolucion_encabezado`),
  ADD KEY `fk_id_devolucion_encabezado` (`fk_id_devolucion_encabezado`,`cod_linea_devolucion_encabezado`),
  ADD KEY `fk_devolucion_producto` (`fk_id_producto`),
  ADD KEY `fk_devolucion_Estadoproducto` (`fk_id_estado_producto`);

--
-- Indexes for table `devolucion_encabezado`
--
ALTER TABLE `devolucion_encabezado`
  ADD PRIMARY KEY (`pk_id_devolucion_encabezado`),
  ADD KEY `pk_id_devolucion_encabezado` (`pk_id_devolucion_encabezado`),
  ADD KEY `fk_devolucion_fabrica` (`fk_id_fabrica`),
  ADD KEY `fk_devolucion_categoria` (`fk_id_categoria_producto`);

--
-- Indexes for table `diario_detalle`
--
ALTER TABLE `diario_detalle`
  ADD PRIMARY KEY (`pk_polizaencabezado`),
  ADD KEY `fk_diariodetalle_cuenta` (`pk_idcuenta`);

--
-- Indexes for table `diario_encabezado`
--
ALTER TABLE `diario_encabezado`
  ADD PRIMARY KEY (`pk_polizaencabezado`);

--
-- Indexes for table `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`pk_id_direccion`),
  ADD KEY `fk_empleado_direccion` (`fk_empleado_direccion`),
  ADD KEY `fk_reclutamiento_direccion` (`fk_reclutamiento_direccion`);

--
-- Indexes for table `empleado`
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
-- Indexes for table `encabezado_capacitacion`
--
ALTER TABLE `encabezado_capacitacion`
  ADD PRIMARY KEY (`pk_id_encabezado_capacitacion`),
  ADD KEY `fk_curso_encabezado_capacitacion` (`fk_id_curso_encabezado_capacitacion`);

--
-- Indexes for table `encabezado_nomina`
--
ALTER TABLE `encabezado_nomina`
  ADD PRIMARY KEY (`pk_id_encabezado_nomina`);

--
-- Indexes for table `encabezado_transaccion`
--
ALTER TABLE `encabezado_transaccion`
  ADD PRIMARY KEY (`pk_idencabezadotransaccion`),
  ADD KEY `fk_encabezadotransaccion_numerocuenta` (`fk_idnumerocuenta`);

--
-- Indexes for table `encargado_bodega`
--
ALTER TABLE `encargado_bodega`
  ADD PRIMARY KEY (`pk_id_encargado_bodega`),
  ADD KEY `pk_id_encargado_bodega` (`pk_id_encargado_bodega`),
  ADD KEY `fk_empleado_encargado` (`fk_id_empleado`),
  ADD KEY `fk_empleado_bodega1` (`fk_id_bodega`);

--
-- Indexes for table `entrevista`
--
ALTER TABLE `entrevista`
  ADD PRIMARY KEY (`pk_id_entrevista`),
  ADD KEY `fk_empleado_entrevista` (`fk_id_empleado_entrevista`),
  ADD KEY `fk_reclutamiento_entrevista` (`fk_id_reclutamiento_entrevista`),
  ADD KEY `fk_tipo_entrevista` (`fk_id_tipo_entrevista`);

--
-- Indexes for table `envio_producto`
--
ALTER TABLE `envio_producto`
  ADD PRIMARY KEY (`pk_id_envio_producto`),
  ADD KEY `pk_id_envio_producto` (`pk_id_envio_producto`),
  ADD KEY `fk_envio_producto_vehiculo` (`fk_id_vehiculo`),
  ADD KEY `fk_envio_producto` (`fk_id_producto`),
  ADD KEY `fk_envio_empleado` (`fk_id_empleado`),
  ADD KEY `fk_envio_ruta` (`fk_id_ruta`);

--
-- Indexes for table `estadoproduccion`
--
ALTER TABLE `estadoproduccion`
  ADD PRIMARY KEY (`pk_id_estadoproduccion`);

--
-- Indexes for table `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`pk_id_estado_civil`);

--
-- Indexes for table `estado_producto`
--
ALTER TABLE `estado_producto`
  ADD PRIMARY KEY (`pk_id_estado_producto`),
  ADD KEY `pk_id_estado_producto` (`pk_id_estado_producto`);

--
-- Indexes for table `fabrica`
--
ALTER TABLE `fabrica`
  ADD PRIMARY KEY (`pk_id_fabrica`),
  ADD KEY `pk_id_fabrica` (`pk_id_fabrica`),
  ADD KEY `fk_fabrica_municipio` (`fk_id_municipio`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`pk_idfactura`),
  ADD KEY `fk_factura_modopago1` (`fk_idmodopago`),
  ADD KEY `fk_factura_cliente1` (`fk_idcliente`),
  ADD KEY `fk_FACTURA_EMPLEADO1` (`fK_idEMPLEADO`);

--
-- Indexes for table `falta`
--
ALTER TABLE `falta`
  ADD PRIMARY KEY (`pk_id_falta`);

--
-- Indexes for table `falta_empleado`
--
ALTER TABLE `falta_empleado`
  ADD KEY `fk_empleado_falta` (`fk_id_empleado_falta_empleado`),
  ADD KEY `fk_tipo_falta` (`fk_id_tipo_falta_empleado`);

--
-- Indexes for table `formacion_academica`
--
ALTER TABLE `formacion_academica`
  ADD PRIMARY KEY (`pk_id_formacion_academica`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`pk_id_genero`);

--
-- Indexes for table `horaempleado`
--
ALTER TABLE `horaempleado`
  ADD PRIMARY KEY (`pk_id_horaempleado`),
  ADD KEY `fk_HORAEMPLEADO_ORDENPRODUCCION1` (`fk_idordenproduccion_horaempleado`),
  ADD KEY `fk_HORAEMPLEADO_EMPLEADO` (`fk_idempleado_horaempleado`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`pk_id_horario`);

--
-- Indexes for table `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`pk_id_inventario`),
  ADD KEY `pk_id_inventario` (`pk_id_inventario`),
  ADD KEY `fk_inventario_producto` (`fk_id_producto`),
  ADD KEY `fk_inventario_bodega` (`fk_id_bodega`);

--
-- Indexes for table `inventariocrm`
--
ALTER TABLE `inventariocrm`
  ADD PRIMARY KEY (`pk_idinventario`),
  ADD KEY `fk_inventario_producto1` (`fk_idproducto`);

--
-- Indexes for table `inventariomrp`
--
ALTER TABLE `inventariomrp`
  ADD PRIMARY KEY (`pk_id_inventario`),
  ADD KEY `fk_INVENTARIO_MATERIAPRIMAINSUMO` (`fk_idmateriaprimainsumo_inventario`),
  ADD KEY `fk_INVENTARIO_TIPOINVENTARIO` (`fk_idtipoinventario_inventario`);

--
-- Indexes for table `licencia_conduccion`
--
ALTER TABLE `licencia_conduccion`
  ADD PRIMARY KEY (`pk_id_licencia_conduccion`);

--
-- Indexes for table `linea_producto`
--
ALTER TABLE `linea_producto`
  ADD PRIMARY KEY (`pk_id_linea_producto`),
  ADD KEY `pk_id_linea_producto` (`pk_id_linea_producto`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_id_login`);

--
-- Indexes for table `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`pk_id_marca`),
  ADD KEY `pk_id_marca` (`pk_id_marca`);

--
-- Indexes for table `materiaprimainsumo`
--
ALTER TABLE `materiaprimainsumo`
  ADD PRIMARY KEY (`pk_id_materiaprimainsumo`);

--
-- Indexes for table `mayor_detalle`
--
ALTER TABLE `mayor_detalle`
  ADD PRIMARY KEY (`pk_idmayorencabezado`),
  ADD KEY `fk_mayorencabezado_polizaencabezado` (`pk_polizaencabezado`);

--
-- Indexes for table `mayor_encabezado`
--
ALTER TABLE `mayor_encabezado`
  ADD PRIMARY KEY (`pk_idmayorencabezado`),
  ADD KEY `fk_mayorencabezado_cuenta` (`pk_idcuenta`);

--
-- Indexes for table `modo_de_pago`
--
ALTER TABLE `modo_de_pago`
  ADD PRIMARY KEY (`pk_idmodopago`);

--
-- Indexes for table `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`pk_id_modulo`),
  ADD KEY `pk_id_modulo` (`pk_id_modulo`);

--
-- Indexes for table `movimiento_inventario`
--
ALTER TABLE `movimiento_inventario`
  ADD PRIMARY KEY (`pk_id_movimiento_inventario`),
  ADD KEY `pk_id_movimiento_inventario` (`pk_id_movimiento_inventario`),
  ADD KEY `fk_mov_inventario_tipo` (`fk_id_tipo_movimiento`);

--
-- Indexes for table `movimiento_inventario_detalle`
--
ALTER TABLE `movimiento_inventario_detalle`
  ADD PRIMARY KEY (`pk_id_movimiento_inventario_detalle`),
  ADD KEY `pk_id_movimiento_inventario_detalle` (`pk_id_movimiento_inventario_detalle`),
  ADD KEY `fk_mov_inventario_detalle_mov` (`fk_id_movimiento_inventario`),
  ADD KEY `fk_mov_inventario_detalle_producto` (`fk_id_producto`);

--
-- Indexes for table `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`pk_id_municipio`),
  ADD KEY `pk_id_municipio` (`pk_id_municipio`),
  ADD KEY `fk_municipio_departamento` (`fk_id_departamento`);

--
-- Indexes for table `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD PRIMARY KEY (`pk_id_ordencompra`),
  ADD KEY `fk_ORDENCOMPRA_MATERIAPRIMAINSUMO` (`fk_idmateriaprimainsumos_ordencompra`);

--
-- Indexes for table `ordenproduccion`
--
ALTER TABLE `ordenproduccion`
  ADD PRIMARY KEY (`pk_id_ordenproduccion`),
  ADD KEY `fk_ORDENPRODUCCION_TIPOINVENTARIO` (`fk_idtipoproducto_idordenproduccion`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`pk_id_pais`),
  ADD KEY `pk_id_pais` (`pk_id_pais`);

--
-- Indexes for table `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD PRIMARY KEY (`fk_id_pedido_encabezado`,`cod_linea_pedido_detalle`),
  ADD KEY `fk_id_pedido_encabezado` (`fk_id_pedido_encabezado`,`cod_linea_pedido_detalle`),
  ADD KEY `fk_pedido_producto` (`fk_id_producto`);

--
-- Indexes for table `pedido_encabezado`
--
ALTER TABLE `pedido_encabezado`
  ADD PRIMARY KEY (`pk_id_pedido_encabezado`),
  ADD KEY `pk_id_pedido_encabezado` (`pk_id_pedido_encabezado`),
  ADD KEY `fk_pedido_fabrica` (`fk_id_fabrica`);

--
-- Indexes for table `percepcion`
--
ALTER TABLE `percepcion`
  ADD PRIMARY KEY (`pk_id_percepcion`);

--
-- Indexes for table `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`pk_id_perfil`);

--
-- Indexes for table `perfilusuario`
--
ALTER TABLE `perfilusuario`
  ADD PRIMARY KEY (`pk_id_perfilusuario`),
  ADD KEY `fk_perfil_usuario_login` (`fk_idusuario_perfilusuario`),
  ADD KEY `fk_perfil_usuario_perfil` (`fk_idperfil_perfilusuario`);

--
-- Indexes for table `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`pk_id_permiso`);

--
-- Indexes for table `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD PRIMARY KEY (`pk_idpresupuesto`),
  ADD KEY `fk_presupuesto_tipomoneda` (`fk_idtipomoneda`),
  ADD KEY `fk_presupuesto_area` (`fk_area`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`pk_idproducto`),
  ADD KEY `fk_producto_categoriatamaño1` (`fk_idcategoriatamaño`),
  ADD KEY `fk_producto_categoriatipo1` (`fk_idcategoriatipo`);

--
-- Indexes for table `productodetalle`
--
ALTER TABLE `productodetalle`
  ADD PRIMARY KEY (`pk_id_productodetalle`),
  ADD KEY `fk_PRODUCTODETALLE_TIPOPRODUCTOENCABEZADO` (`fk_idtipoproductoencabezado_productodetalle`),
  ADD KEY `fk_PRODUCTODETALLE_MATERIAPRIMAINSUMO` (`fk_idmateriaprimainsumo_productodetalle`);

--
-- Indexes for table `productoscm`
--
ALTER TABLE `productoscm`
  ADD PRIMARY KEY (`pk_id_producto`),
  ADD KEY `pk_id_producto` (`pk_id_producto`),
  ADD KEY `fk_producto_lineaProducto` (`fk_id_linea_producto`),
  ADD KEY `fk_producto_categoriaProducto` (`fk_id_categoria_producto`);

--
-- Indexes for table `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`pk_idpropietario`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`pk_id_proveedor`),
  ADD KEY `pk_id_proveedor` (`pk_id_proveedor`),
  ADD KEY `fk_proveedor_pais` (`fk_id_pais`);

--
-- Indexes for table `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`pk_id_puesto`),
  ADD KEY `fk_horario_puesto` (`fk_id_horario_puesto`);

--
-- Indexes for table `reclutamiento`
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
-- Indexes for table `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`pk_id_reporte`),
  ADD KEY `pk_id_reporte` (`pk_id_reporte`);

--
-- Indexes for table `reporte_aplicativo`
--
ALTER TABLE `reporte_aplicativo`
  ADD PRIMARY KEY (`fk_id_reporte`,`fk_id_aplicacion`,`fk_id_modulo`),
  ADD KEY `fk_id_reporte` (`fk_id_reporte`,`fk_id_aplicacion`,`fk_id_modulo`),
  ADD KEY `fk_reporte_aplicativo_modulo` (`fk_id_modulo`),
  ADD KEY `fk_report_aplicativo` (`fk_id_aplicacion`);

--
-- Indexes for table `reporte_modulo`
--
ALTER TABLE `reporte_modulo`
  ADD PRIMARY KEY (`fk_id_reporte`,`fk_id_modulo`),
  ADD KEY `fk_id_reporte` (`fk_id_reporte`,`fk_id_modulo`),
  ADD KEY `fk_reporte_de_modulo_reportes` (`fk_id_modulo`);

--
-- Indexes for table `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`pk_id_ruta`),
  ADD KEY `pk_id_ruta` (`pk_id_ruta`);

--
-- Indexes for table `saldo_historico`
--
ALTER TABLE `saldo_historico`
  ADD PRIMARY KEY (`pk_idcuenta`);

--
-- Indexes for table `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`pk_id_sucursal`),
  ADD KEY `pk_id_sucursal` (`pk_id_sucursal`),
  ADD KEY `fk_sucursal_municipio` (`fk_id_municipio`);

--
-- Indexes for table `telefono_cliente`
--
ALTER TABLE `telefono_cliente`
  ADD PRIMARY KEY (`pk_idtelefono`),
  ADD KEY `fk_telefono_cliente1` (`fk_idcliente`);

--
-- Indexes for table `telefono_proveedor`
--
ALTER TABLE `telefono_proveedor`
  ADD PRIMARY KEY (`pk_id_telefono_proveedor`),
  ADD KEY `pk_id_telefono_proveedor` (`pk_id_telefono_proveedor`),
  ADD KEY `fk_proveedor_telefono` (`fk_id_proveedor`);

--
-- Indexes for table `tipoinventario`
--
ALTER TABLE `tipoinventario`
  ADD PRIMARY KEY (`pk_id_tipoinventario`);

--
-- Indexes for table `tipoproductoencabezado`
--
ALTER TABLE `tipoproductoencabezado`
  ADD PRIMARY KEY (`pk_id_tipoproductoencabezado`);

--
-- Indexes for table `tipo_competencia`
--
ALTER TABLE `tipo_competencia`
  ADD PRIMARY KEY (`pk_id_competencia`);

--
-- Indexes for table `tipo_contrato`
--
ALTER TABLE `tipo_contrato`
  ADD PRIMARY KEY (`pk_id_tipo_contrato`);

--
-- Indexes for table `tipo_entrevista`
--
ALTER TABLE `tipo_entrevista`
  ADD PRIMARY KEY (`pk_id_tipo_entrevista`);

--
-- Indexes for table `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  ADD PRIMARY KEY (`pk_idtipomoneda`);

--
-- Indexes for table `tipo_movimiento`
--
ALTER TABLE `tipo_movimiento`
  ADD PRIMARY KEY (`pk_id_tipo_movimiento`),
  ADD KEY `pk_id_tipo_movimiento` (`pk_id_tipo_movimiento`);

--
-- Indexes for table `tipo_transaccion`
--
ALTER TABLE `tipo_transaccion`
  ADD PRIMARY KEY (`pk_idtipotransaccion`);

--
-- Indexes for table `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`pk_id_vehiculo`),
  ADD KEY `pk_id_vehiculo` (`pk_id_vehiculo`),
  ADD KEY `fk_vehiculo_marca` (`fk_id_marca`);

--
-- Indexes for table `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`pk_idventa`),
  ADD KEY `fk_venta_cliente` (`fk_idcliente`),
  ADD KEY `fk_venta_producto1` (`fk_idproducto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplicacion`
--
ALTER TABLE `aplicacion`
  MODIFY `pk_id_aplicacion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aplicacionperfil`
--
ALTER TABLE `aplicacionperfil`
  MODIFY `pk_id_aplicacionperfil` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aplicacionusuario`
--
ALTER TABLE `aplicacionusuario`
  MODIFY `pk_id_aplicacionusuario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `pk_id_bitacora` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bodega`
--
ALTER TABLE `bodega`
  MODIFY `pk_id_bodega` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categoria_producto`
--
ALTER TABLE `categoria_producto`
  MODIFY `pk_id_categoria_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consulta_inteligente`
--
ALTER TABLE `consulta_inteligente`
  MODIFY `pk_id_consulta_inteligente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `controlcalidad`
--
ALTER TABLE `controlcalidad`
  MODIFY `pk_id_controlcalidad` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `controlproducto`
--
ALTER TABLE `controlproducto`
  MODIFY `pk_id_controlproducto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `correo_proveedor`
--
ALTER TABLE `correo_proveedor`
  MODIFY `pk_id_correo_proveedor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  MODIFY `pk_idcuentacobrar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `pk_id_departamento` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detallebitacora`
--
ALTER TABLE `detallebitacora`
  MODIFY `pk_id_detallebitacora` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `encargado_bodega`
--
ALTER TABLE `encargado_bodega`
  MODIFY `pk_id_encargado_bodega` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `envio_producto`
--
ALTER TABLE `envio_producto`
  MODIFY `pk_id_envio_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estadoproduccion`
--
ALTER TABLE `estadoproduccion`
  MODIFY `pk_id_estadoproduccion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estado_producto`
--
ALTER TABLE `estado_producto`
  MODIFY `pk_id_estado_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fabrica`
--
ALTER TABLE `fabrica`
  MODIFY `pk_id_fabrica` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `horaempleado`
--
ALTER TABLE `horaempleado`
  MODIFY `pk_id_horaempleado` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventario`
--
ALTER TABLE `inventario`
  MODIFY `pk_id_inventario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventariomrp`
--
ALTER TABLE `inventariomrp`
  MODIFY `pk_id_inventario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linea_producto`
--
ALTER TABLE `linea_producto`
  MODIFY `pk_id_linea_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `pk_id_login` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marca`
--
ALTER TABLE `marca`
  MODIFY `pk_id_marca` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materiaprimainsumo`
--
ALTER TABLE `materiaprimainsumo`
  MODIFY `pk_id_materiaprimainsumo` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modulo`
--
ALTER TABLE `modulo`
  MODIFY `pk_id_modulo` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `municipio`
--
ALTER TABLE `municipio`
  MODIFY `pk_id_municipio` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordencompra`
--
ALTER TABLE `ordencompra`
  MODIFY `pk_id_ordencompra` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordenproduccion`
--
ALTER TABLE `ordenproduccion`
  MODIFY `pk_id_ordenproduccion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `pk_id_pais` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perfil`
--
ALTER TABLE `perfil`
  MODIFY `pk_id_perfil` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perfilusuario`
--
ALTER TABLE `perfilusuario`
  MODIFY `pk_id_perfilusuario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permiso`
--
ALTER TABLE `permiso`
  MODIFY `pk_id_permiso` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productodetalle`
--
ALTER TABLE `productodetalle`
  MODIFY `pk_id_productodetalle` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productoscm`
--
ALTER TABLE `productoscm`
  MODIFY `pk_id_producto` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `pk_id_proveedor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporte`
--
ALTER TABLE `reporte`
  MODIFY `pk_id_reporte` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ruta`
--
ALTER TABLE `ruta`
  MODIFY `pk_id_ruta` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `pk_id_sucursal` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telefono_proveedor`
--
ALTER TABLE `telefono_proveedor`
  MODIFY `pk_id_telefono_proveedor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipoinventario`
--
ALTER TABLE `tipoinventario`
  MODIFY `pk_id_tipoinventario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipoproductoencabezado`
--
ALTER TABLE `tipoproductoencabezado`
  MODIFY `pk_id_tipoproductoencabezado` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `pk_id_vehiculo` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aplicacion`
--
ALTER TABLE `aplicacion`
  ADD CONSTRAINT `fk_aplicativo_modulo` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`);

--
-- Constraints for table `aplicacionperfil`
--
ALTER TABLE `aplicacionperfil`
  ADD CONSTRAINT `fk_aplicacionperfil_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacionperfil`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionperfil_perfil` FOREIGN KEY (`fk_idperfil_aplicacionperfil`) REFERENCES `perfil` (`pk_id_perfil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionperfil_permiso` FOREIGN KEY (`fk_idpermiso_aplicacionperfil`) REFERENCES `permiso` (`pk_id_permiso`) ON UPDATE CASCADE;

--
-- Constraints for table `aplicacionusuario`
--
ALTER TABLE `aplicacionusuario`
  ADD CONSTRAINT `fk_aplicacionusuario_aplicacion` FOREIGN KEY (`fk_idaplicacion_aplicacionusuario`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionusuario_login` FOREIGN KEY (`fk_idlogin_aplicacionusuario`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_aplicacionusuario_permiso` FOREIGN KEY (`fk_idpermiso_aplicacionusuario`) REFERENCES `permiso` (`pk_id_permiso`) ON UPDATE CASCADE;

--
-- Constraints for table `balance_detalle`
--
ALTER TABLE `balance_detalle`
  ADD CONSTRAINT `fk_balancedetalle_cuenta` FOREIGN KEY (`pk_idcuenta`) REFERENCES `cuenta_contable` (`pk_idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_balanceencabezado_detalle` FOREIGN KEY (`pk_idbalanceencabezado`) REFERENCES `balance_encabezado` (`pk_idbalanceencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `fk_aplicacion_bitacora` FOREIGN KEY (`fk_idaplicacion_bitacora`) REFERENCES `aplicacion` (`pk_id_aplicacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_login_bitacora` FOREIGN KEY (`fk_idusuario_bitacora`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE;

--
-- Constraints for table `bodega`
--
ALTER TABLE `bodega`
  ADD CONSTRAINT `fk_bodega_municipio` FOREIGN KEY (`fk_id_municipio`) REFERENCES `municipio` (`pk_id_municipio`);

--
-- Constraints for table `capacitacion`
--
ALTER TABLE `capacitacion`
  ADD CONSTRAINT `fk_empleado_capacitacion` FOREIGN KEY (`fk_id_empleado_capacitacion`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_encabezado_capacitacion` FOREIGN KEY (`fk_id_encabezado_capacitacion`) REFERENCES `encabezado_capacitacion` (`pk_id_encabezado_capacitacion`) ON UPDATE CASCADE;

--
-- Constraints for table `competencia_desarrollo`
--
ALTER TABLE `competencia_desarrollo`
  ADD CONSTRAINT `fk_competencia_encabezado_desarrollo` FOREIGN KEY (`fk_id_competencia_encabezado_desarrollo`) REFERENCES `tipo_competencia` (`pk_id_competencia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_empleado_encabezado_desarrollo` FOREIGN KEY (`fk_id_empleado_encabezado_desarrollo`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE;

--
-- Constraints for table `compra_detalle`
--
ALTER TABLE `compra_detalle`
  ADD CONSTRAINT `fk_compra_detalle` FOREIGN KEY (`fk_id_compra_encabezado`) REFERENCES `compra_encabezado` (`pk_id_compra_encabezado`),
  ADD CONSTRAINT `fk_compra_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`);

--
-- Constraints for table `compra_encabezado`
--
ALTER TABLE `compra_encabezado`
  ADD CONSTRAINT `fk_compra_proveedor` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`);

--
-- Constraints for table `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `fk_tipo_contrato` FOREIGN KEY (`fk_id_tipo_contrato`) REFERENCES `tipo_contrato` (`pk_id_tipo_contrato`) ON UPDATE CASCADE;

--
-- Constraints for table `controlcalidad`
--
ALTER TABLE `controlcalidad`
  ADD CONSTRAINT `fk_CONTROLCALIDAD_INVENTARIO1` FOREIGN KEY (`fk_idinventario_controlcalidad`) REFERENCES `inventariomrp` (`pk_id_inventario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CONTROLCALIDAD_ORDENPRODUCCION1` FOREIGN KEY (`fk_idordenproduccion_controlcalidad`) REFERENCES `ordenproduccion` (`pk_id_ordenproduccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EMPLEADOS_CONTROLCALIDAD1` FOREIGN KEY (`fk_idresponsable_controlcalidad`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `controlproducto`
--
ALTER TABLE `controlproducto`
  ADD CONSTRAINT `fk_CONTROLPRODUCTO_ESTADOPRODUCCION` FOREIGN KEY (`fk_idestadoproduccion_controlproducto`) REFERENCES `estadoproduccion` (`pk_id_estadoproduccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CONTROLPRODUCTO_ORDENPRODUCCION1` FOREIGN KEY (`fk_idordenproduccion_controlproducto`) REFERENCES `ordenproduccion` (`pk_id_ordenproduccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `control_empleado`
--
ALTER TABLE `control_empleado`
  ADD CONSTRAINT `fk_CONTROL_EMPLEADO_EMPLEADO1` FOREIGN KEY (`fK_idEMPLEADO`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CONTROL_EMPLEADO_VENTA1` FOREIGN KEY (`fk_idventa`) REFERENCES `venta` (`pk_idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `correo_cliente`
--
ALTER TABLE `correo_cliente`
  ADD CONSTRAINT `fk_direccionCliente_cliente1` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`pk_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `correo_proveedor`
--
ALTER TABLE `correo_proveedor`
  ADD CONSTRAINT `fk_proveedor_correo` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`);

--
-- Constraints for table `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  ADD CONSTRAINT `fk_cuentasporcobrar_cliente1` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`pk_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cuentasporcobrar_factura1` FOREIGN KEY (`fk_idfactura`) REFERENCES `factura` (`pk_idfactura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cuenta_bancaria`
--
ALTER TABLE `cuenta_bancaria`
  ADD CONSTRAINT `fk_cuentabancaria_banco` FOREIGN KEY (`fk_idbanco`) REFERENCES `banco` (`pk_idbanco`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cuentabancaria_propietario` FOREIGN KEY (`fk_idpropietario`) REFERENCES `propietario` (`pk_idpropietario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cuentabancaria_tipomoneda` FOREIGN KEY (`fk_idtipomoneda`) REFERENCES `tipo_moneda` (`pk_idtipomoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cuenta_contable`
--
ALTER TABLE `cuenta_contable`
  ADD CONSTRAINT `fk_cuentapadre_cuentahijo` FOREIGN KEY (`fk_cuentapadre`) REFERENCES `cuenta_contable` (`pk_idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `detallebitacora`
--
ALTER TABLE `detallebitacora`
  ADD CONSTRAINT `fk_bitacora_detallebitacora` FOREIGN KEY (`fk_idbitacora_detallebitacora`) REFERENCES `bitacora` (`pk_id_bitacora`) ON UPDATE CASCADE;

--
-- Constraints for table `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `fk_DETALLE_FACTURA_FACTURA1` FOREIGN KEY (`fk_idfactura`) REFERENCES `factura` (`pk_idfactura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DETALLE_FACTURA_PRODUCTO1` FOREIGN KEY (`fk_idproducto`) REFERENCES `producto` (`pk_idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `detalle_nomina`
--
ALTER TABLE `detalle_nomina`
  ADD CONSTRAINT `fk_deduccion_detalle_nomina` FOREIGN KEY (`fk_id_deducciones_detalle_nomina`) REFERENCES `deduccion` (`pk_id_deduccion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_emplado_detalle_nomina` FOREIGN KEY (`fk_id_empleado_detalle_nomina`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_encabezado_detalle_nomina` FOREIGN KEY (`fk_id_encabezado_detalle_nomina`) REFERENCES `encabezado_nomina` (`pk_id_encabezado_nomina`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_percepcion_detalle_nomina` FOREIGN KEY (`fk_id_percepciones_detalle_nomina`) REFERENCES `percepcion` (`pk_id_percepcion`) ON UPDATE CASCADE;

--
-- Constraints for table `detalle_transaccion`
--
ALTER TABLE `detalle_transaccion`
  ADD CONSTRAINT `fk_detalle_encabezado` FOREIGN KEY (`fk_idencabezadotransaccion`) REFERENCES `encabezado_transaccion` (`pk_idencabezadotransaccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_tipotransaccion` FOREIGN KEY (`fk_idtipotransaccion`) REFERENCES `tipo_transaccion` (`pk_idtipotransaccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `devolucion_detalle`
--
ALTER TABLE `devolucion_detalle`
  ADD CONSTRAINT `fk_devolucionDetalle_encabezado` FOREIGN KEY (`fk_id_devolucion_encabezado`) REFERENCES `devolucion_encabezado` (`pk_id_devolucion_encabezado`),
  ADD CONSTRAINT `fk_devolucion_Estadoproducto` FOREIGN KEY (`fk_id_estado_producto`) REFERENCES `estado_producto` (`pk_id_estado_producto`),
  ADD CONSTRAINT `fk_devolucion_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`);

--
-- Constraints for table `devolucion_encabezado`
--
ALTER TABLE `devolucion_encabezado`
  ADD CONSTRAINT `fk_devolucion_categoria` FOREIGN KEY (`fk_id_categoria_producto`) REFERENCES `categoria_producto` (`pk_id_categoria_producto`),
  ADD CONSTRAINT `fk_devolucion_fabrica` FOREIGN KEY (`fk_id_fabrica`) REFERENCES `fabrica` (`pk_id_fabrica`);

--
-- Constraints for table `diario_detalle`
--
ALTER TABLE `diario_detalle`
  ADD CONSTRAINT `fk_diariodetalle_cuenta` FOREIGN KEY (`pk_idcuenta`) REFERENCES `cuenta_contable` (`pk_idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_diariodetalle_encabezado` FOREIGN KEY (`pk_polizaencabezado`) REFERENCES `diario_encabezado` (`pk_polizaencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `direccion`
--
ALTER TABLE `direccion`
  ADD CONSTRAINT `fk_empleado_direccion` FOREIGN KEY (`fk_empleado_direccion`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reclutamiento_direccion` FOREIGN KEY (`fk_reclutamiento_direccion`) REFERENCES `reclutamiento` (`pk_id_reclutamiento`) ON UPDATE CASCADE;

--
-- Constraints for table `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_contrato_empleado` FOREIGN KEY (`fk_id_contrato_empleado`) REFERENCES `contrato` (`pk_id_contrato`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_departamento_empresarial_empleado` FOREIGN KEY (`fk_id_departamento_empresarial_empleado`) REFERENCES `departamento_empresarial` (`pk_id__departamento_empresarial`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estado_civil_empleado` FOREIGN KEY (`fk_id_estado_civil_empleado`) REFERENCES `estado_civil` (`pk_id_estado_civil`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_genero_empleado1` FOREIGN KEY (`fk_id_genero_empleado`) REFERENCES `genero` (`pk_id_genero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_licencia_conducir_empleado` FOREIGN KEY (`fk_id_licencia_conducir_empleado`) REFERENCES `licencia_conduccion` (`pk_id_licencia_conduccion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_puesto_empleado` FOREIGN KEY (`fk_id_puesto_empleado`) REFERENCES `puesto` (`pk_id_puesto`) ON UPDATE CASCADE;

--
-- Constraints for table `encabezado_capacitacion`
--
ALTER TABLE `encabezado_capacitacion`
  ADD CONSTRAINT `fk_curso_encabezado_capacitacion` FOREIGN KEY (`fk_id_curso_encabezado_capacitacion`) REFERENCES `curso` (`pk_id_curso`) ON UPDATE CASCADE;

--
-- Constraints for table `encabezado_transaccion`
--
ALTER TABLE `encabezado_transaccion`
  ADD CONSTRAINT `fk_encabezadotransaccion_numerocuenta` FOREIGN KEY (`fk_idnumerocuenta`) REFERENCES `cuenta_bancaria` (`pk_idnumerocuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `encargado_bodega`
--
ALTER TABLE `encargado_bodega`
  ADD CONSTRAINT `fk_empleado_bodega1` FOREIGN KEY (`fk_id_bodega`) REFERENCES `bodega` (`pk_id_bodega`),
  ADD CONSTRAINT `fk_empleado_encargado` FOREIGN KEY (`fk_id_empleado`) REFERENCES `empleado` (`pk_id_empleado`);

--
-- Constraints for table `entrevista`
--
ALTER TABLE `entrevista`
  ADD CONSTRAINT `fk_empleado_entrevista` FOREIGN KEY (`fk_id_empleado_entrevista`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reclutamiento_entrevista` FOREIGN KEY (`fk_id_reclutamiento_entrevista`) REFERENCES `reclutamiento` (`pk_id_reclutamiento`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_entrevista` FOREIGN KEY (`fk_id_tipo_entrevista`) REFERENCES `tipo_entrevista` (`pk_id_tipo_entrevista`) ON UPDATE CASCADE;

--
-- Constraints for table `envio_producto`
--
ALTER TABLE `envio_producto`
  ADD CONSTRAINT `fk_envio_empleado` FOREIGN KEY (`fk_id_empleado`) REFERENCES `empleado` (`pk_id_empleado`),
  ADD CONSTRAINT `fk_envio_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`),
  ADD CONSTRAINT `fk_envio_producto_vehiculo` FOREIGN KEY (`fk_id_vehiculo`) REFERENCES `vehiculo` (`pk_id_vehiculo`),
  ADD CONSTRAINT `fk_envio_ruta` FOREIGN KEY (`fk_id_ruta`) REFERENCES `ruta` (`pk_id_ruta`);

--
-- Constraints for table `fabrica`
--
ALTER TABLE `fabrica`
  ADD CONSTRAINT `fk_fabrica_municipio` FOREIGN KEY (`fk_id_municipio`) REFERENCES `municipio` (`pk_id_municipio`);

--
-- Constraints for table `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `fk_FACTURA_EMPLEADO1` FOREIGN KEY (`fK_idEMPLEADO`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_factura_cliente1` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`pk_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_factura_modopago1` FOREIGN KEY (`fk_idmodopago`) REFERENCES `modo_de_pago` (`pk_idmodopago`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `falta_empleado`
--
ALTER TABLE `falta_empleado`
  ADD CONSTRAINT `fk_empleado_falta` FOREIGN KEY (`fk_id_empleado_falta_empleado`) REFERENCES `empleado` (`pk_id_empleado`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_falta` FOREIGN KEY (`fk_id_tipo_falta_empleado`) REFERENCES `falta` (`pk_id_falta`) ON UPDATE CASCADE;

--
-- Constraints for table `horaempleado`
--
ALTER TABLE `horaempleado`
  ADD CONSTRAINT `fk_HORAEMPLEADO_EMPLEADO` FOREIGN KEY (`fk_idempleado_horaempleado`) REFERENCES `empleado` (`pk_id_empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_HORAEMPLEADO_ORDENPRODUCCION1` FOREIGN KEY (`fk_idordenproduccion_horaempleado`) REFERENCES `ordenproduccion` (`pk_id_ordenproduccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `fk_inventario_bodega` FOREIGN KEY (`fk_id_bodega`) REFERENCES `bodega` (`pk_id_bodega`),
  ADD CONSTRAINT `fk_inventario_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`);

--
-- Constraints for table `inventariocrm`
--
ALTER TABLE `inventariocrm`
  ADD CONSTRAINT `fk_inventario_producto1` FOREIGN KEY (`fk_idproducto`) REFERENCES `producto` (`pk_idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `inventariomrp`
--
ALTER TABLE `inventariomrp`
  ADD CONSTRAINT `fk_INVENTARIO_MATERIAPRIMAINSUMO` FOREIGN KEY (`fk_idmateriaprimainsumo_inventario`) REFERENCES `materiaprimainsumo` (`pk_id_materiaprimainsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_INVENTARIO_TIPOINVENTARIO` FOREIGN KEY (`fk_idtipoinventario_inventario`) REFERENCES `tipoinventario` (`pk_id_tipoinventario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mayor_detalle`
--
ALTER TABLE `mayor_detalle`
  ADD CONSTRAINT `fk_mayorencabezado_detallemayor` FOREIGN KEY (`pk_idmayorencabezado`) REFERENCES `mayor_encabezado` (`pk_idmayorencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mayorencabezado_polizaencabezado` FOREIGN KEY (`pk_polizaencabezado`) REFERENCES `diario_encabezado` (`pk_polizaencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mayor_encabezado`
--
ALTER TABLE `mayor_encabezado`
  ADD CONSTRAINT `fk_mayorencabezado_cuenta` FOREIGN KEY (`pk_idcuenta`) REFERENCES `cuenta_contable` (`pk_idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `movimiento_inventario`
--
ALTER TABLE `movimiento_inventario`
  ADD CONSTRAINT `fk_mov_inventario_tipo` FOREIGN KEY (`fk_id_tipo_movimiento`) REFERENCES `tipo_movimiento` (`pk_id_tipo_movimiento`);

--
-- Constraints for table `movimiento_inventario_detalle`
--
ALTER TABLE `movimiento_inventario_detalle`
  ADD CONSTRAINT `fk_mov_inventario_detalle_mov` FOREIGN KEY (`fk_id_movimiento_inventario`) REFERENCES `movimiento_inventario` (`pk_id_movimiento_inventario`),
  ADD CONSTRAINT `fk_mov_inventario_detalle_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`);

--
-- Constraints for table `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `fk_municipio_departamento` FOREIGN KEY (`fk_id_departamento`) REFERENCES `departamento` (`pk_id_departamento`);

--
-- Constraints for table `ordencompra`
--
ALTER TABLE `ordencompra`
  ADD CONSTRAINT `fk_ORDENCOMPRA_MATERIAPRIMAINSUMO` FOREIGN KEY (`fk_idmateriaprimainsumos_ordencompra`) REFERENCES `materiaprimainsumo` (`pk_id_materiaprimainsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ordenproduccion`
--
ALTER TABLE `ordenproduccion`
  ADD CONSTRAINT `fk_ORDENPRODUCCION_TIPOINVENTARIO` FOREIGN KEY (`fk_idtipoproducto_idordenproduccion`) REFERENCES `tipoinventario` (`pk_id_tipoinventario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pedido_detalle`
--
ALTER TABLE `pedido_detalle`
  ADD CONSTRAINT `fk_encabezado_pedido` FOREIGN KEY (`fk_id_pedido_encabezado`) REFERENCES `pedido_encabezado` (`pk_id_pedido_encabezado`),
  ADD CONSTRAINT `fk_pedido_producto` FOREIGN KEY (`fk_id_producto`) REFERENCES `productoscm` (`pk_id_producto`);

--
-- Constraints for table `pedido_encabezado`
--
ALTER TABLE `pedido_encabezado`
  ADD CONSTRAINT `fk_pedido_fabrica` FOREIGN KEY (`fk_id_fabrica`) REFERENCES `fabrica` (`pk_id_fabrica`);

--
-- Constraints for table `perfilusuario`
--
ALTER TABLE `perfilusuario`
  ADD CONSTRAINT `fk_perfil_usuario_login` FOREIGN KEY (`fk_idusuario_perfilusuario`) REFERENCES `login` (`pk_id_login`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_perfil_usuario_perfil` FOREIGN KEY (`fk_idperfil_perfilusuario`) REFERENCES `perfil` (`pk_id_perfil`) ON UPDATE CASCADE;

--
-- Constraints for table `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD CONSTRAINT `fk_presupuesto_area` FOREIGN KEY (`fk_area`) REFERENCES `area` (`pk_idarea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_presupuesto_tipomoneda` FOREIGN KEY (`fk_idtipomoneda`) REFERENCES `tipo_moneda` (`pk_idtipomoneda`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoriatamaño1` FOREIGN KEY (`fk_idcategoriatamaño`) REFERENCES `categoria_tamaño` (`pk_idcategoriatamaño`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_categoriatipo1` FOREIGN KEY (`fk_idcategoriatipo`) REFERENCES `categoria_tipo` (`pk_idcategoriatipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productodetalle`
--
ALTER TABLE `productodetalle`
  ADD CONSTRAINT `fk_PRODUCTODETALLE_MATERIAPRIMAINSUMO` FOREIGN KEY (`fk_idmateriaprimainsumo_productodetalle`) REFERENCES `materiaprimainsumo` (`pk_id_materiaprimainsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_PRODUCTODETALLE_TIPOPRODUCTOENCABEZADO` FOREIGN KEY (`fk_idtipoproductoencabezado_productodetalle`) REFERENCES `tipoproductoencabezado` (`pk_id_tipoproductoencabezado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productoscm`
--
ALTER TABLE `productoscm`
  ADD CONSTRAINT `fk_producto_categoriaProducto` FOREIGN KEY (`fk_id_categoria_producto`) REFERENCES `categoria_producto` (`pk_id_categoria_producto`),
  ADD CONSTRAINT `fk_producto_lineaProducto` FOREIGN KEY (`fk_id_linea_producto`) REFERENCES `linea_producto` (`pk_id_linea_producto`);

--
-- Constraints for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `fk_proveedor_pais` FOREIGN KEY (`fk_id_pais`) REFERENCES `pais` (`pk_id_pais`);

--
-- Constraints for table `puesto`
--
ALTER TABLE `puesto`
  ADD CONSTRAINT `fk_horario_puesto` FOREIGN KEY (`fk_id_horario_puesto`) REFERENCES `horario` (`pk_id_horario`) ON UPDATE CASCADE;

--
-- Constraints for table `reclutamiento`
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
-- Constraints for table `reporte_aplicativo`
--
ALTER TABLE `reporte_aplicativo`
  ADD CONSTRAINT `fk_report_aplicativo` FOREIGN KEY (`fk_id_aplicacion`) REFERENCES `aplicacion` (`pk_id_aplicacion`),
  ADD CONSTRAINT `fk_reporte_aplicativo_modulo` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`),
  ADD CONSTRAINT `fk_reporte_aplicativo_reporte` FOREIGN KEY (`fk_id_reporte`) REFERENCES `reporte` (`pk_id_reporte`);

--
-- Constraints for table `reporte_modulo`
--
ALTER TABLE `reporte_modulo`
  ADD CONSTRAINT `fk_reporte_de_modulo` FOREIGN KEY (`fk_id_reporte`) REFERENCES `reporte` (`pk_id_reporte`),
  ADD CONSTRAINT `fk_reporte_de_modulo_reportes` FOREIGN KEY (`fk_id_modulo`) REFERENCES `modulo` (`pk_id_modulo`);

--
-- Constraints for table `saldo_historico`
--
ALTER TABLE `saldo_historico`
  ADD CONSTRAINT `fk_saldo_cuenta` FOREIGN KEY (`pk_idcuenta`) REFERENCES `cuenta_contable` (`pk_idcuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `fk_sucursal_municipio` FOREIGN KEY (`fk_id_municipio`) REFERENCES `municipio` (`pk_id_municipio`);

--
-- Constraints for table `telefono_cliente`
--
ALTER TABLE `telefono_cliente`
  ADD CONSTRAINT `fk_telefono_cliente1` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`pk_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `telefono_proveedor`
--
ALTER TABLE `telefono_proveedor`
  ADD CONSTRAINT `fk_proveedor_telefono` FOREIGN KEY (`fk_id_proveedor`) REFERENCES `proveedor` (`pk_id_proveedor`);

--
-- Constraints for table `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `fk_vehiculo_marca` FOREIGN KEY (`fk_id_marca`) REFERENCES `marca` (`pk_id_marca`);

--
-- Constraints for table `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`pk_idcliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_producto1` FOREIGN KEY (`fk_idproducto`) REFERENCES `producto` (`pk_idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
