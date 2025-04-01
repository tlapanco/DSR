-- DROP IF EXISTS PruebaIndices;
CREATE DATABASE PruebaIndices;
USE PruebaIndices;

--Creaci�n de tabla de ejemplo
CREATE TABLE Ventas (
	VentaID INT NOT NULL,
	FechaVenta DATE NOT NULL,
	ClienteID INT NOT NULL,
	TotalVenta DECIMAL(10,2) NOT NULL
);

-- Ver �ndices del sistema
select * from sys.indexes;
select name, index_id, type_desc from sys.indexes;

-- Creaci�n de �ndice cl�ster
CREATE CLUSTERED INDEX idx_clust_FechaVenta ON Ventas(FechaVenta);

-- Verificar si existe el nuevo �ndice
SELECT name,index_id, type_desc FROM sys.indexes WHERE object_id = OBJECT_ID('Ventas');

--- Agregamos un registro duplicado
INSERT INTO Ventas VALUES ( 1, '12-02-2025', 12, 100.02);
INSERT INTO Ventas VALUES ( 1, '12-02-2022', 12, 100.02);
SELECT * FROM Ventas;-- Tenemos dos registros ya que la PK no est� l�gicamente creada

-- Agregamos l�gicamente la PK a la tabla
-- Primero eliminamos el registro duplicado
DELETE FROM Ventas WHERE VentaID = 1 AND FechaVenta = '12-02-2025';
ALTER TABLE Ventas
ADD CONSTRAINT PK_Ventas PRIMARY KEY NONCLUSTERED (VentaID);
INSERT INTO Ventas VALUES ( 1, '12-02-2022', 12, 100.02);--genera un error ya que viola la PK


USE ImportadoraAutos;

SELECT * FROM Servicios;
--Crear una vista
CREATE VIEW ServiciosBaratos AS
SELECT ServicioID, NombreServicio, Descripcion, Costo
FROM Servicios WHERE Costo <= 1000;

-- DROP VIEW ServiciosBaratos;-- Borrar una vista

SELECT * FROM ServiciosBaratos; -- Ver vista