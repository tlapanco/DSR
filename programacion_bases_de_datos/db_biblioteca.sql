-- Crear la base de datos
CREATE DATABASE Biblioteca;
GO

-- Usar la base de datos creada
USE Biblioteca;
GO

-- Crear tabla de autores
CREATE TABLE Autores (
    AutorID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Apellido NVARCHAR(100) NOT NULL
);
GO

-- Crear tabla de categorías
CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50) NOT NULL
);
GO

-- Crear tabla de libros
CREATE TABLE Libros (
    LibroID INT PRIMARY KEY IDENTITY(1,1),
    Titulo NVARCHAR(150) NOT NULL,
    AutorID INT,
    CategoriaID INT,
    AñoPublicacion INT,
    CONSTRAINT FK_Libros_Autores FOREIGN KEY (AutorID) REFERENCES Autores(AutorID),
    CONSTRAINT FK_Libros_Categorias FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);
GO

-- Crear tabla de préstamos
CREATE TABLE Prestamos (
    PrestamoID INT PRIMARY KEY IDENTITY(1,1),
    LibroID INT,
    FechaPrestamo DATE,
    FechaDevolucion DATE,
    CONSTRAINT FK_Prestamos_Libros FOREIGN KEY (LibroID) REFERENCES Libros(LibroID)
);
GO

-- Insertar 10 registros en la tabla de autores
INSERT INTO Autores (Nombre, Apellido) VALUES
('Gabriel', 'García Márquez'),
('Isabel', 'Allende'),
('Julio', 'Cortázar'),
('Mario', 'Vargas Llosa'),
('Jorge', 'Luis Borges'),
('Pablo', 'Neruda'),
('Octavio', 'Paz'),
('Laura', 'Esquivel'),
('Carlos', 'Fuentes'),
('Gabriela', 'Mistral');

-- Insertar 5 registros en la tabla de categorías
INSERT INTO Categorias (Nombre) VALUES
('Novela'),
('Poesía'),
('Ensayo'),
('Ciencia Ficción'),
('Cuento');

-- Insertar 20 registros en la tabla de libros
INSERT INTO Libros (Titulo, AutorID, CategoriaID, AñoPublicacion) VALUES
('Cien Años de Soledad', 1, 1, 1967),
('La Casa de los Espíritus', 2, 1, 1982),
('Rayuela', 3, 1, 1963),
('La Ciudad y los Perros', 4, 1, 1962),
('Ficciones', 5, 5, 1944),
('Veinte Poemas de Amor y una Canción Desesperada', 6, 2, 1924),
('El Laberinto de la Soledad', 7, 3, 1950),
('Como Agua para Chocolate', 8, 1, 1989),
('La Muerte de Artemio Cruz', 9, 1, 1962),
('Desolación', 10, 2, 1922),
('Crónica de una Muerte Anunciada', 1, 1, 1981),
('La Sombra del Viento', 9, 1, 2001),
('El Aleph', 5, 5, 1949),
('Confieso que He Vivido', 6, 3, 1974),
('La Tregua', 4, 1, 1960),
('El Túnel', 3, 1, 1948),
('Sobre Héroes y Tumbas', 5, 1, 1961),
('Doña Bárbara', 3, 1, 1929),
('La Región Más Transparente', 9, 1, 1958),
('Pedro Páramo', 10, 1, 1955);

-- Insertar 15 registros en la tabla de préstamos
INSERT INTO Prestamos (LibroID, FechaPrestamo, FechaDevolucion) VALUES
(1, '2025-03-01', '2025-03-15'),
(2, '2025-03-02', '2025-03-16'),
(3, '2025-03-03', '2025-03-17'),
(4, '2025-03-04', '2025-03-18'),
(5, '2025-03-05', '2025-03-19'),
(6, '2025-03-06', '2025-03-20'),
(7, '2025-03-07', '2025-03-21'),
(8, '2025-03-08', '2025-03-22'),
(9, '2025-03-09', '2025-03-23'),
(10, '2025-03-10', '2025-03-24'),
(11, '2025-03-11', '2025-03-25'),
(12, '2025-03-12', '2025-03-26'),
(13, '2025-03-13', '2025-03-27'),
(14, '2025-03-14', '2025-03-28'),
(15, '2025-03-15', '2025-03-29');
