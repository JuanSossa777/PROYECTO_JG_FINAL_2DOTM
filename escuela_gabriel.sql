-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2026 a las 07:49:06
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
-- Base de datos: `escuela_gabriel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_alumno` int(11) NOT NULL,
  `Dni` varchar(15) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Ap_Paterno` varchar(50) NOT NULL,
  `Ap_Materno` varchar(50) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Sexo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id_alumno`, `Dni`, `Nombres`, `Ap_Paterno`, `Ap_Materno`, `Edad`, `Sexo`) VALUES
(1, '2356890', 'Jhonatan', 'Picha', 'Torihuano', 26, 'F'),
(2, '', 'Mauricio', 'Acho', 'Lopez', 16, 'M'),
(3, '12634527', 'Luciana', 'Villena', 'Echalar', 14, 'M'),
(4, '10262735', 'Marimar', 'Fernandez', 'Valdez', 25, 'F'),
(5, '', 'Marcos', 'Amador', 'Caballero', 18, 'M'),
(6, '45271523', 'Noemi', 'Marca', 'gonzales', 19, 'F'),
(7, '7854120', 'Abigail', 'Arrieta', 'Ventura', 25, 'F'),
(8, '12621027', 'Juan', 'Sossa', 'Flores', 22, 'M'),
(9, '12621028', 'Leydy', 'Apaza', 'Gutierrez', 24, 'F'),
(10, '12457680', 'Yaquelin', 'Torrez', 'Gonzales', 19, 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ano_escolar`
--

CREATE TABLE `ano_escolar` (
  `id_ano_escolar` int(11) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_Termino` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ano_escolar`
--

INSERT INTO `ano_escolar` (`id_ano_escolar`, `Fecha_inicio`, `Fecha_Termino`) VALUES
(1, '2026-02-04', '2026-12-28'),
(2, '2026-02-04', '2026-12-28'),
(3, '2026-02-04', '2026-12-28'),
(4, '2026-02-04', '2026-12-28'),
(5, '2026-02-04', '2026-12-28'),
(6, '2026-02-04', '2026-12-28'),
(7, '2026-02-04', '2026-12-28'),
(8, '2026-02-04', '2026-12-28'),
(9, '2026-02-04', '2026-12-28'),
(10, '2026-02-04', '2026-12-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado`
--

CREATE TABLE `apoderado` (
  `id_apoderado` int(11) NOT NULL,
  `Dni` varchar(15) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Ocupacion` varchar(100) NOT NULL,
  `Estado_civil` varchar(50) NOT NULL,
  `Grado_instruccion` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Direccion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `apoderado`
--

INSERT INTO `apoderado` (`id_apoderado`, `Dni`, `Nombres`, `Apellidos`, `Edad`, `Sexo`, `Ocupacion`, `Estado_civil`, `Grado_instruccion`, `Telefono`, `Direccion`) VALUES
(1, '10293847', 'Lucia Fernanda', 'Mendoza Quispe', 42, 'M', 'Profesor de Matematica', 'Casado', 'Licenciatura', '71234567', 'Av Jaime Mendoza'),
(2, '89652104', 'Edurne Noelia', 'Medina Flores', 19, 'F', 'Enfermera', 'soltera', 'Tecnico medio', '45786521', 'Av. Jaime Mendoza '),
(3, '29387456', 'Maria Elena', 'Rojas Torrez', 38, 'F', 'Comerciante', 'Casada', 'Secundaria', '72345678', 'Calle Junin #123'),
(4, '38476982', 'Ana Isabel', 'Gutierrez Flores', 26, 'F', 'Profesora ', 'Divorciada', 'Licenciatura', '12681027', 'Calle Calvo'),
(5, '11223344', 'Hugo Fernando', 'Miranda Ortega', 42, 'M', 'Mecanico', 'soltero', 'Tecnico Superior', '26583120', 'Calle del Estudiante #67'),
(6, '13452014', 'Rosa Angela', 'Pochi Morales', 28, 'F', 'Ama de casa', 'Soltera', 'Bachiller ', '56320189', 'Zona Azari'),
(7, '62938475', 'Sonia Patricia', 'Lopez Aguilar', 24, 'F', 'Doctora ', 'Soltera', 'Licenciatura ', '73861206', 'Plaza 25 de Mayo'),
(8, '738229104', 'Roberto Alberto', 'Mamani Valdez', 45, 'M', 'Albañil', 'Soltero', 'Bachillerato', '56842105', 'Lajastambo'),
(9, '13631127', 'Cinthia Pamela', 'Padilla Vela', 21, 'F', 'Diseñadora grafica', 'Casada', 'Licenciada en Diseño Grafico', '45651027', 'Parque Bolivar'),
(10, '47896312', 'Carmen Rosa', 'Velasco Castro', 26, 'f', 'Profesora de música', 'soltera', 'licenciada en música', '56452014', 'Calle España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `id_aulas` int(11) NOT NULL,
  `Capacidad` int(11) NOT NULL,
  `VacantesLib` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`id_aulas`, `Capacidad`, `VacantesLib`) VALUES
(1, 30, 30),
(2, 35, 35),
(3, 20, 20),
(4, 24, 24),
(5, 19, 19),
(6, 25, 25),
(7, 31, 31),
(8, 22, 22),
(9, 3, 34),
(10, 30, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `Nombres` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id_curso`, `Nombres`) VALUES
(1, 'Primero de Secundaria'),
(2, 'Segundo de Secundaria'),
(3, 'Tercero de Secundaria'),
(4, 'Cuarto de secundaria'),
(5, 'Quinto de sencundaria'),
(6, 'Sexto de secundaria'),
(7, 'Tercero de secundaria'),
(8, 'Quinto de secundaria'),
(9, 'Segundo de secundaria'),
(10, 'Primero de secundaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` int(11) NOT NULL,
  `Dni` varchar(15) NOT NULL,
  `Nombres` varchar(100) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Sexo` char(1) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `id_especialidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_docente`, `Dni`, `Nombres`, `Apellidos`, `Edad`, `Sexo`, `Direccion`, `Email`, `Telefono`, `Fecha_Nacimiento`, `id_especialidad`) VALUES
(1, '2356890', 'Daniel', 'Vino Villca', 26, 'M', 'Zona Central', 'danielvino@gmail.com', '73867254', '2000-10-12', 0),
(2, '15786312', 'Carlos', 'Mendoza Quispe', 27, 'M', 'Calle Olañeta #44', 'carlos.mendoza@gmail.com', '71234567', '1999-08-20', 1),
(3, '457896532', 'Maria', 'Mendoza Quispe', 22, 'F', 'Av.Americas', 'mariaflores@gmail', '78125420', '2004-06-16', 2),
(4, '45968521', 'Jorge', 'Torrez Gonzales', 25, 'M', 'Av German Busch', 'JorgeTorrezG@gmail.com', '45789654', '2001-09-24', 3),
(5, '15248965', 'Elena', 'Rojas Castro', 21, 'F', 'Callejon de los gatos', 'elenita@gmail.com', '76867254', '2005-10-08', 4),
(6, '56981025', 'Claudia', 'Guzman Condori', 22, 'F', 'Villa Armonia', 'claudixx@gmail.com', '26151027', '2004-09-16', 5),
(7, '13754810', 'Fernando', 'Arias Morales', 26, 'M', 'Calle Potosi', 'ariasfercho@gmail.com', '45123695', '2000-10-01', 6),
(8, '36859210', 'Ana', 'Mamani Aguilar', 23, 'F', 'Zona Central', 'Aguilarana@gmail.com', '12547820', '2003-01-23', 7),
(9, '32698547', 'Patricia', 'Nina Condori', 27, 'M', 'Calle Tarija #3', 'patynina@gmail.com', '36541208', '1999-05-20', 8),
(10, '56894215', 'Luis', 'Quispe Sossa', 26, 'M', 'Villa Florida Este', 'sossluis@gmail.com', '78452102', '2000-11-18', 9),
(11, '12621029', 'Misael', 'Sossa Flores', 20, 'M', 'Av Estados Unidos', 'misasossflores@gmail.com', '73867254', '2006-09-04', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentacion`
--

CREATE TABLE `documentacion` (
  `id_documentacion` int(11) NOT NULL,
  `Partida` tinyint(1) NOT NULL,
  `Certificado` tinyint(1) NOT NULL,
  `Dni_Alumno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `documentacion`
--

INSERT INTO `documentacion` (`id_documentacion`, `Partida`, `Certificado`, `Dni_Alumno`) VALUES
(1, 1, 1, '10293847'),
(2, 1, 5, '29384756'),
(3, 0, 1, '384756229'),
(4, 1, 1, '47562938'),
(5, 0, 0, '62938475'),
(6, 1, 4, '11223355'),
(7, 0, 1, '84939156'),
(8, 0, 0, '45293865'),
(9, 1, 3, '15968547'),
(10, 0, 1, '62894510');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int(11) NOT NULL,
  `Especialidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`id_especialidad`, `Especialidad`) VALUES
(1, 'Matematica'),
(2, 'Lenguaje'),
(3, 'Sociales'),
(4, 'Educacion musical'),
(5, 'Educaion Fisica'),
(6, 'Biologia'),
(7, 'Astronomia'),
(8, 'Gastronomia'),
(9, 'Sistemas Informaticos'),
(10, 'Diseño Grafico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(11) NOT NULL,
  `Dia` varchar(20) NOT NULL,
  `Hora_inicio` time NOT NULL,
  `Hora_Fin` time NOT NULL,
  `Seccion` varchar(20) NOT NULL,
  `id_Aula` int(11) NOT NULL,
  `Dni_Docente` varchar(15) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id_horario`, `Dia`, `Hora_inicio`, `Hora_Fin`, `Seccion`, `id_Aula`, `Dni_Docente`, `id_curso`) VALUES
(1, 'Lunes', '08:30:00', '12:15:20', 'A', 101, '12345678', 1),
(2, 'Lunes', '08:30:00', '12:15:20', 'A', 101, '20304050', 2),
(3, 'Martes', '10:15:00', '15:00:00', 'B', 202, '70504023', 3),
(4, 'Martes', '10:15:00', '15:00:00', 'B', 125, '14205670', 4),
(5, 'Miercoles', '13:00:00', '18:30:00', 'D', 222, '40507020', 5),
(6, 'Martes', '10:15:00', '15:00:00', 'C', 125, '10567484', 6),
(7, 'Jueves', '08:15:00', '12:00:00', 'D', 103, '15465895', 7),
(8, 'Viernes', '09:30:00', '13:15:00', 'E', 255, '20534510', 8),
(9, 'Jueves', '09:30:00', '12:00:00', 'D', 103, '23567482', 9),
(10, 'Viernes', '09:30:00', '13:15:00', 'E', 255, '25487345', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Monto` decimal(10,0) NOT NULL,
  `Grado` varchar(50) NOT NULL,
  `Seccion` varchar(20) NOT NULL,
  `id_aulas` int(11) NOT NULL,
  `Dni_Alumno` varchar(15) NOT NULL,
  `Num_Ano` int(11) NOT NULL,
  `Dni_Docente` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `Fecha`, `Monto`, `Grado`, `Seccion`, `id_aulas`, `Dni_Alumno`, `Num_Ano`, `Dni_Docente`) VALUES
(2, '2026-02-01', 350, 'Primer año', 'A', 1, '10293847', 2026, '12345678'),
(3, '2026-02-02', 361, 'Segundo año', 'B', 2, '29384756', 2026, '20304050'),
(4, '2026-02-03', 350, 'Primer Año', 'A', 1, '15204257', 2026, '70504023'),
(5, '2026-02-04', 361, 'Segundo año', 'B', 2, '12621029', 2026, '14205670'),
(6, '2026-02-05', 400, 'Tercer Año', 'C', 3, '62938475', 2026, '40507020'),
(7, '2026-02-06', 350, 'Primer Año', 'A', 1, '11223355', 2026, '10567484'),
(8, '2026-02-07', 361, 'Segundo Año', 'B', 2, '84939156', 2026, '15465895'),
(9, '2026-02-08', 400, 'Tercer Año', 'E', 3, '15248532', 2026, '20534510'),
(10, '2026-02-09', 400, 'Tercer Año', 'D', 3, '15968547', 2026, '23567482'),
(11, '2026-02-10', 350, 'Primer Año', 'A', 1, '62894510', 2026, '25487345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id_notas` int(11) NOT NULL,
  `Nota` decimal(5,0) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `Dni_Alumno` varchar(15) NOT NULL,
  `id_Trimestres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id_notas`, `Nota`, `Descripcion`, `id_curso`, `Dni_Alumno`, `id_Trimestres`) VALUES
(1, 86, 'Excelente rendimiento', 1, '10293847', 2),
(2, 90, 'Destacado', 1, '20394857', 2),
(3, 45, 'Reprobado', 1, '15204257', 1),
(4, 61, 'Regular', 1, '12621029', 1),
(5, 79, 'Buen Desempeño', 1, '12621027', 3),
(6, 61, 'Aprobado con limite', 1, '7854210', 2),
(7, 95, 'Sobresaliente', 1, '36254710', 1),
(8, 81, 'Muy buen trabajo', 1, '15248532', 3),
(9, 100, 'Maravilloso sigue adelante', 1, '12563985', 2),
(10, 27, 'Estudia al año siguiente', 1, '56487521', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parentesco`
--

CREATE TABLE `parentesco` (
  `id_parentesco` int(11) NOT NULL,
  `parentesco` varchar(50) NOT NULL,
  `Dni_alumno` varchar(15) NOT NULL,
  `Dni_apoderado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parentesco`
--

INSERT INTO `parentesco` (`id_parentesco`, `parentesco`, `Dni_alumno`, `Dni_apoderado`) VALUES
(1, 'Padre', '12621045', '14326585'),
(2, 'Madre', '15456987', '23587410'),
(3, 'Tio', '23657810', '12620985'),
(4, 'Abuelo', '15459563', '32158012'),
(5, 'Hermano Mayor', '23564810', '45786521'),
(6, 'Primo', '12621045', '16234580'),
(7, 'Hermana ', '45896325', '10257845'),
(8, 'Abuela', '12645821', '12857496'),
(9, 'Conyugue', '89645012', '18450236'),
(10, 'Abuelo', '45697852', '12029687');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestres`
--

CREATE TABLE `trimestres` (
  `id_trimestres` int(11) NOT NULL,
  `Descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trimestres`
--

INSERT INTO `trimestres` (`id_trimestres`, `Descripcion`) VALUES
(1, 'Primer Trimestre 2026'),
(2, 'Segundo Trimestre 2026'),
(3, 'Tercer Trimestre 2026'),
(4, 'Primer Trimestre 2025'),
(5, 'Segundo Trimestre 2025'),
(6, 'Primer Trimestre 2024'),
(7, 'Segundo Trimestre 2024'),
(8, 'Tercer Trimestre 2024'),
(9, 'Primer Trimestre 2025'),
(10, 'Trimestre de Recuperacion 2026');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `Nombre`, `Contrasena`) VALUES
(1, '0', 'Juan '),
(2, 'Juan', '12345'),
(3, 'Gabriel', '4567'),
(4, 'Miguel', '987654351'),
(5, 'Christofer', '324646'),
(6, 'Misael', '15348'),
(7, 'Edurne', '165762351'),
(8, 'Leydy', '1468421'),
(9, 'Abigail', '564651324'),
(10, 'Shara', '5864246'),
(11, 'Maria', '56446513');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id_alumno`);

--
-- Indices de la tabla `ano_escolar`
--
ALTER TABLE `ano_escolar`
  ADD PRIMARY KEY (`id_ano_escolar`);

--
-- Indices de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD PRIMARY KEY (`id_apoderado`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id_aulas`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`);

--
-- Indices de la tabla `documentacion`
--
ALTER TABLE `documentacion`
  ADD PRIMARY KEY (`id_documentacion`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialidad`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id_notas`);

--
-- Indices de la tabla `parentesco`
--
ALTER TABLE `parentesco`
  ADD PRIMARY KEY (`id_parentesco`);

--
-- Indices de la tabla `trimestres`
--
ALTER TABLE `trimestres`
  ADD PRIMARY KEY (`id_trimestres`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id_alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ano_escolar`
--
ALTER TABLE `ano_escolar`
  MODIFY `id_ano_escolar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `id_apoderado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id_aulas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `documentacion`
--
ALTER TABLE `documentacion`
  MODIFY `id_documentacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `id_especialidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id_notas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `parentesco`
--
ALTER TABLE `parentesco`
  MODIFY `id_parentesco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `trimestres`
--
ALTER TABLE `trimestres`
  MODIFY `id_trimestres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
