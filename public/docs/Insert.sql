CREATE DATABASE UMG;
USE UMG;
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
);/*--ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;*/

-- umg.cursos definition

CREATE TABLE `cursos` (
  `curso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `profesor` varchar(100) DEFAULT NULL,
  `inactivo` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`curso`)
);/*-- ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;*/

-- umg.DETALLE definition

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL AUTO_INCREMEumgNT,
  `alumno_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`alumno_id`) REFERENCES `alumnos`(`alumno`) ON DELETE CASCADE,
  FOREIGN KEY (`curso_id`) REFERENCES `cursos`(`curso`) ON DELETE CASCADE
);/*--ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;*/

SELECT * FROM 
detalle,
cursos,
alumnos;


INSERT INTO `alumnos` (`nombre`, `apellido`, `direccion`, `movil`, `email`, `fecha_creacion`, `user`, `inactivo`)
VALUES
  ('Juan', 'Pérez', 'Calle Falsa 123', '555-1234', 'juan.perez@example.com', '2025-08-29 10:00:00', 'admin', 0),
  ('Ana', 'García', 'Avenida Siempre Viva 456', '555-5678', 'ana.garcia@example.com', '2025-08-29 10:05:00', 'admin', 0);  
  SELECT * FROM alumnos; 
  
INSERT INTO `cursos` (`nombre`, `profesor`, `inactivo`)
VALUES
  ('Matemáticas', 'Profesor A', 0),
  ('Física', 'Profesor B', 0),
  ('Química', 'Profesor C', 0);
  SELECT * FROM cursos;
  
INSERT INTO `detalle` (`alumno_id`, `curso_id`)
VALUES
  (1, 1),
  (1, 2),
  (2, 3);  
  SELECT * FROM detalle;
