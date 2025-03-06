CREATE PROCEDURE MostrarAlumnos
AS
BEGIN
	SELECT * FROM Alumnos
END;

CREATE PROCEDURE MostrarAlumnoPorId
@ID INT
AS
BEGIN
	SELECT * FROM Alumnos WHERE ID = @ID
END;

EXEC MostrarAlumnos;

EXEC MostrarAlumnoPorId 50;


SELECT Edad FROM Alumnos GROUP BY Edad;

SELECT ID FROM Alumnos GROUP BY ID;

SELECT * FROM Alumnos WHERE Apellido LIKE '%nández';

SELECT Genero, AVG(Edad) FROM Alumnos GROUP BY Genero;
SELECT Genero, AVG(Edad) FROM Alumnos GROUP BY Genero HAVING AVG(Edad) >= 22;


SELECT * FROM Alumnos WHERE Edad > 17 AND Genero = 'Femenino';
SELECT * FROM Alumnos WHERE Genero = 'Masculino' OR Genero = 'Femenino';




CREATE TRIGGER InsertarFecha
ON Alumnos
FOR INSERT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Alumnos
	SET FechaInscripcion = GETDATE()
	WHERE ID IN (SELECT ID FROM inserted);
END;


INSERT INTO Alumnos(ID, Nombre, Apellido,Edad,Genero) VALUES (55, 'Jazmín', 'Luna', 23, 'Femenino');