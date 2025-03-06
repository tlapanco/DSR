USE Biblioteca;

SELECT Libros.Titulo, Autores.Nombre 
FROM Libros 
INNER JOIN Autores 
ON Libros.AutorID = Autores.AutorID;

SELECT Libros.Titulo, Prestamos.FechaPrestamo
FROM Libros 
LEFT JOIN Prestamos
ON Prestamos.LibroID = Libros.LibroID;

SELECT Libros.Titulo, Categorias.Nombre
FROM Libros
RIGHT JOIN Categorias
ON Libros.CategoriaID = Categorias.CategoriaID;

SELECT COUNT(*) AS 'TOTAL LIBROS' 
FROM Libros;

SELECT COUNT(*) AS 'TOTAL NOVELAS'
FROM Libros
INNER JOIN Categorias
ON Libros.CategoriaID = Categorias.CategoriaID
WHERE Categorias.Nombre = 'Novela';