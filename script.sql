CREATE DATABASE `umg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;

-- umg.alumnos definition

CREATE TABLE `alumnos` (
  `alumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `movil` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha_creacion` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `inactivo` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`alumno`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- umg.cursos definition

CREATE TABLE `cursos` (
  `curso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `profesor` varchar(100) DEFAULT NULL,
  `inactivo` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`curso`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- umg.DETALLE definition

CREATE TABLE `detalle_alumno_curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alumno_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`alumno_id`) REFERENCES `alumnos`(`alumno`) ON DELETE CASCADE,
  FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`curso`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;