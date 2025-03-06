 --DROP DATABASE IF EXISTS Escuela; -- Borrar DB si existe
 --drop database escuela;
CREATE DATABASE Escuela; -- Crear DB llamada escuela

USE Escuela; -- Indicamos que DB haremos uso para nuestras instrucciones

 --Crear una tabala llamada alumnos, con sus respectivos campos

CREATE TABLE Alumnos (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Edad INT,
    Genero VARCHAR(10),
    FechaInscripcion DATE
);

INSERT INTO Alumnos (ID, Nombre, Apellido, Edad, Genero, FechaInscripcion) VALUES
(1, 'Juan', 'Pérez', 20, 'Masculino', '2023-01-15'),
(2, 'María', 'González', 21, 'Femenino', '2023-02-10'),
(3, 'Carlos', 'Ramírez', 22, 'Masculino', '2023-03-05'),
(4, 'Ana', 'Martínez', 23, 'Femenino', '2023-04-20'),
(5, 'Luis', 'López', 24, 'Masculino', '2023-05-25'),
(6, 'Marta', 'Hernández', 21, 'Femenino', '2023-06-30'),
(7, 'Jorge', 'García', 22, 'Masculino', '2023-07-15'),
(8, 'Lucía', 'Sánchez', 23, 'Femenino', '2023-08-10'),
(9, 'Raúl', 'Fernández', 24, 'Masculino', '2023-09-05'),
(10, 'Elena', 'Torres', 20, 'Femenino', '2023-10-01'),
(11, 'David', 'Castro', 22, 'Masculino', '2023-11-12'),
(12, 'Laura', 'Vargas', 23, 'Femenino', '2023-12-08'),
(13, 'Héctor', 'Rojas', 24, 'Masculino', '2023-01-20'),
(14, 'Claudia', 'Mendoza', 21, 'Femenino', '2023-02-15'),
(15, 'Andrés', 'Ruiz', 22, 'Masculino', '2023-03-10'),
(16, 'Patricia', 'Jiménez', 23, 'Femenino', '2023-04-05'),
(17, 'Sergio', 'Morales', 24, 'Masculino', '2023-05-01'),
(18, 'Rosa', 'Ortiz', 20, 'Femenino', '2023-06-18'),
(19, 'Adrián', 'Guzmán', 21, 'Masculino', '2023-07-13'),
(20, 'Valeria', 'Ramos', 22, 'Femenino', '2023-08-08'),
(21, 'Fernando', 'Silva', 23, 'Masculino', '2023-09-03'),
(22, 'Isabel', 'Flores', 24, 'Femenino', '2023-10-28'),
(23, 'Alberto', 'Navarro', 20, 'Masculino', '2023-11-23'),
(24, 'Gabriela', 'Díaz', 21, 'Femenino', '2023-12-18'),
(25, 'Rodrigo', 'Acosta', 22, 'Masculino', '2023-01-13'),
(26, 'Daniela', 'Romero', 23, 'Femenino', '2023-02-07'),
(27, 'Enrique', 'Luna', 24, 'Masculino', '2023-03-04'),
(28, 'Alejandra', 'Meza', 20, 'Femenino', '2023-04-29'),
(29, 'Miguel', 'Palacios', 21, 'Masculino', '2023-05-24'),
(30, 'Carla', 'Bustos', 22, 'Femenino', '2023-06-19'),
(31, 'Oscar', 'Velasco', 23, 'Masculino', '2023-07-14'),
(32, 'Sofía', 'Cortés', 24, 'Femenino', '2023-08-09'),
(33, 'Francisco', 'Núñez', 20, 'Masculino', '2023-09-04'),
(34, 'Teresa', 'Santana', 21, 'Femenino', '2023-10-30'),
(35, 'Iván', 'Arroyo', 22, 'Masculino', '2023-11-25'),
(36, 'Carmen', 'Blanco', 23, 'Femenino', '2023-12-20'),
(37, 'Jesús', 'Zamora', 24, 'Masculino', '2023-01-15'),
(38, 'Angela', 'Salinas', 20, 'Femenino', '2023-02-10'),
(39, 'Ricardo', 'Esquivel', 21, 'Masculino', '2023-03-07'),
(40, 'Beatriz', 'Segura', 22, 'Femenino', '2023-04-02'),
(41, 'Manuel', 'Ortega', 23, 'Masculino', '2023-05-28'),
(42, 'Verónica', 'Montes', 24, 'Femenino', '2023-06-23'),
(43, 'Eduardo', 'Pineda', 20, 'Masculino', '2023-07-18'),
(44, 'Paula', 'Herrera', 21, 'Femenino', '2023-08-13'),
(45, 'Felipe', 'Alvarado', 22, 'Masculino', '2023-09-08'),
(46, 'Marcela', 'Campos', 23, 'Femenino', '2023-10-03'),
(47, 'Tomás', 'Cano', 24, 'Masculino', '2023-11-28'),
(48, 'Alicia', 'Solís', 20, 'Femenino', '2023-12-23'),
(49, 'Esteban', 'Peña', 21, 'Masculino', '2023-01-18'),
(50, 'Natalia', 'Molina', 22, 'Femenino', '2023-02-13');


SELECT * FROM Alumnos; -- Obtener todos los registros de la tabla
SELECT Nombre, Apellido FROM Alumnos; -- Obtener todos los registros, recuperando solamente nombre y apellido

INSERT INTO Alumnos VALUES (51, 'Brithany', 'Ortiz', 23, 'Femenino', '2023-11-02' ); -- Agregar registro sin especificar columnas

SELECT * FROM Alumnos WHERE ID = 51; -- Obtener información de un registro en especifico
UPDATE Alumnos SET Edad = 24 WHERE ID=51; -- Actualizar información de un registro
SELECT * FROM Alumnos WHERE ID = 51;


TRUNCATE TABLE Alumnos; -- Borrar todos los registros de la tabla
SELECT * FROM Alumnos;


EXEC sp_rename Alumnos, Alumno; -- Procedimiento almacenado para cambiar el nombre de un objeto
