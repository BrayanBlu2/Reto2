-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2024 a las 11:59:55
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
-- Base de datos: `reto2final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idEmpleado` int(11) NOT NULL,
  `Puesto` varchar(100) NOT NULL,
  `NombreEmpleado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idEmpleado`, `Puesto`, `NombreEmpleado`) VALUES
(1, 'Director General', 'Josep Abrego'),
(4, 'Director de Cocina', 'Marc Pujades'),
(5, 'Recepcionista', 'Marc'),
(6, 'Cocinero', 'Maria'),
(7, 'Comercial', 'Jordi'),
(8, 'Maître', 'Fernando'),
(9, 'Chef', 'Xabi'),
(10, 'Camarero', 'Montse'),
(11, 'Jefe de sala', 'Marina'),
(12, 'Limpiador', 'Alejandro'),
(13, 'Limpiador', 'Sara'),
(14, 'Cocinero', 'Xabi'),
(15, 'Cocinero', 'Miguel'),
(16, 'Comercial', 'Ana'),
(17, 'Comercial', 'Miguel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados_hacen_reservas`
--

CREATE TABLE `empleados_hacen_reservas` (
  `idEmpleado` int(11) NOT NULL,
  `idReserva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `NumeroHabitacion` int(11) NOT NULL,
  `Tamaño` varchar(50) NOT NULL,
  `idReserva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`NumeroHabitacion`, `Tamaño`, `idReserva`) VALUES
(101, '1', 15),
(102, '2', 27),
(103, '1', 8),
(105, '1', 8),
(200, '1', 18),
(201, '1', 9),
(203, '1', 18),
(206, '2', 10),
(210, '1', 26),
(211, '2', 21),
(300, '2', 9),
(301, '1', 19),
(311, '2', 8),
(315, '2', 10),
(316, '1', 26),
(317, '2', 14),
(320, '1', 28),
(321, '2', 22),
(330, '1', 31),
(400, '2', 17),
(401, '1', 25),
(405, '1', 22),
(408, '2', 20),
(416, '2', 30),
(500, '1', 17),
(505, '2', 11),
(510, '1', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `idReserva` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `NumeroPersonas` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Calle` varchar(150) NOT NULL,
  `NumeroPortal` varchar(50) NOT NULL,
  `Ciudad` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`idReserva`, `Fecha`, `NumeroPersonas`, `Nombre`, `Apellido`, `Telefono`, `Calle`, `NumeroPortal`, `Ciudad`) VALUES
(8, '2024-01-23', 2, 'Carlos', 'Alvarez', '654659825', 'Los Astilleros', '12', 'Vigo'),
(9, '2024-02-26', 1, 'Marta', 'Rico', '666547898', 'Lope de Vega', '34', 'Madrid'),
(10, '2024-02-09', 2, 'Miguel', 'Fernandez', '646577898', 'Passeig Maritim ', '78', 'Barcelona'),
(11, '2024-02-16', 2, 'Sandra', 'Lopez', '631545891', 'Carrer Marina', '11', 'Barcelona'),
(12, '2024-02-22', 1, 'Jordi', 'Gassol', '622547778', 'Avinguda Diagonal', '511', 'Barcelona'),
(13, '2024-03-03', 1, 'Montse', 'Pujades', '621547890', 'Plaça Concordia', '2', 'Barcelona'),
(14, '2024-03-11', 2, 'Marc', 'Imbert', '655543899', 'Sor Eulalia Danzizu', '11', 'Barcelona'),
(15, '2024-04-02', 2, 'Albert', 'Garcia', '611742899', 'Passeig de Gracia', '102', 'Barcelona'),
(16, '2024-04-13', 1, 'Monica', 'Ferrer', '655517892', 'Entença', '12', 'Barcelona'),
(17, '2024-04-30', 2, 'Ignasi', 'Llorens', '633547899', 'Rambla Catalunya', '09', 'Barcelona'),
(18, '2024-02-14', 2, 'Carolina', 'Montcada', '666454545', 'Federico Lorca', '12', 'Girona'),
(19, '2024-02-22', 2, 'Silvia', 'Grande', '689898989', 'Miraflores', '35', 'Figueres'),
(20, '2024-03-17', 1, 'Pablo', 'Lopez', '623232323', 'Avinguda Diagonal', '102', 'Barcelona'),
(21, '2024-04-24', 2, 'Elena', 'Grande', '689457856', 'Francesc Macia', '02', 'Barcelona'),
(22, '2024-04-26', 2, 'Joan', 'Baro', '666323232', 'Joan Despi ', '12', 'Barcelona'),
(23, '2024-04-30', 1, 'Helena', 'Ximenis', '699455612', 'Raval', '14', 'Barcelona'),
(24, '2024-05-05', 2, 'Joan', 'Arana', '621121212', 'Carrer de Borrell', '18', 'Sabadell'),
(25, '2024-05-15', 2, 'Roberto', 'Lorca', '656124589', 'Calle los tres faros', '05', 'Albacete'),
(26, '2024-05-20', 1, 'Cristina', 'Fernandez', '698567814', 'Calle los tres pinos', '1', 'Santander'),
(27, '2024-06-10', 2, 'Brayan', 'Arana', '699567845', 'Calle Isabel II', '8', 'San Sebastian'),
(28, '2024-06-02', 1, 'Lucas', 'Madrueño', '656451236', 'Plaza de Sol', '5', 'Madrid'),
(29, '2024-06-16', 1, 'Laura', 'Estepona', '666568915', 'Calle los Alaminos', '25', 'Valencia'),
(30, '2024-06-17', 2, 'Montse', 'Pedrera', '632124569', 'Carrer Maritim', '45', 'Tarragona'),
(31, '2024-06-16', 1, 'Erick', 'Guzman', '699365623', 'Avenida Sancho el Sabio', '02', 'San Sebastian'),
(32, '2024-07-03', 1, 'Pedro', 'Gutierrez', '612234578', 'Calle Terracota', '18', 'Badajoz');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `empleados_hacen_reservas`
--
ALTER TABLE `empleados_hacen_reservas`
  ADD KEY `idEmpleado` (`idEmpleado`),
  ADD KEY `idReserva` (`idReserva`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`NumeroHabitacion`),
  ADD KEY `idReserva` (`idReserva`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idReserva`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados_hacen_reservas`
--
ALTER TABLE `empleados_hacen_reservas`
  ADD CONSTRAINT `empleados_hacen_reservas_ibfk_1` FOREIGN KEY (`idReserva`) REFERENCES `reservas` (`idReserva`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `empleados_hacen_reservas_ibfk_2` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD CONSTRAINT `habitaciones_ibfk_1` FOREIGN KEY (`idReserva`) REFERENCES `reservas` (`idReserva`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
