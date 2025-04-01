use Biblioteca;
select * from Libros;

select * from Autores;

--- condicional 
declare @favAutorId int =11;

if ((select count(*) from Libros where AutorID = @favAutorId) > 0)
begin 
	print 'hay libros de mi autor favorito'
end
else
begin 
	print 'no hay libros de mi autor favorito'
end;

--- ciclo while
DECLARE @contador INT
SET @contador = 0
WHILE (@contador <= 10)
BEGIN
    PRINT 'El contador es ' + CAST(@contador AS NVARCHAR(10))
    SET @contador = @contador + 1
END


-- subconsulta no correlacionada
declare @favAutor1 int = 2;
declare @favAutor2 int = 10;
select * from Libros where AutorID in (select AutorID from Autores where AutorID = @favAutor1 or AutorID = @favAutor2);


-- subconsulta correlacionada
SELECT L1.LibroID, L1.Titulo, L1.AutorID, L1.CategoriaID, L1.AñoPublicacion
FROM Libros L1
WHERE EXISTS (SELECT 1
              FROM Libros L2
              WHERE L2.AutorID = L1.AutorID
              AND L2.AñoPublicacion > L1.AñoPublicacion);
