-- Crear la base de datos
CREATE DATABASE AutosDB;
GO

-- Usar la base de datos
USE AutosDB;
GO

-- Crear la tabla Vehiculos
CREATE TABLE Vehiculos (
    Id_vehicle INT IDENTITY(1,1) PRIMARY KEY,
    Chasis VARCHAR(50) NOT NULL UNIQUE,
    Cliente_serial VARCHAR(50) NOT NULL,
    Modelo VARCHAR(100) NOT NULL,
    Color VARCHAR(50) NOT NULL,
    Hora_registro DATETIME DEFAULT GETDATE() NOT NULL
);
GO

USE AutosDB;
GO

INSERT INTO Vehiculos (Chasis, Cliente_serial, Modelo, Color, Hora_registro)
VALUES 
('CHASIS001', 'CLI001', 'Toyota Corolla', 'Rojo', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS002', 'CLI002', 'Honda Civic', 'Azul', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS003', 'CLI003', 'Ford Focus', 'Negro', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS004', 'CLI004', 'Chevrolet Cruze', 'Blanco', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS005', 'CLI005', 'Nissan Sentra', 'Gris', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS006', 'CLI006', 'Mazda 3', 'Rojo', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS007', 'CLI007', 'Hyundai Elantra', 'Azul', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS008', 'CLI008', 'Volkswagen Jetta', 'Negro', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS009', 'CLI009', 'Kia Forte', 'Blanco', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS010', 'CLI010', 'Subaru Impreza', 'Gris', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),

('CHASIS011', 'CLI011', 'BMW Serie 3', 'Rojo', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS012', 'CLI012', 'Mercedes Clase C', 'Azul', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS013', 'CLI013', 'Audi A4', 'Negro', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS014', 'CLI014', 'Lexus IS', 'Blanco', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS015', 'CLI015', 'Volvo S60', 'Gris', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS016', 'CLI016', 'Tesla Model 3', 'Rojo', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS017', 'CLI017', 'Ford Mustang', 'Azul', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS018', 'CLI018', 'Chevrolet Camaro', 'Negro', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS019', 'CLI019', 'Dodge Charger', 'Blanco', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS020', 'CLI020', 'Honda Accord', 'Gris', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),

('CHASIS021', 'CLI021', 'Toyota Camry', 'Rojo', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS022', 'CLI022', 'Mazda 6', 'Azul', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS023', 'CLI023', 'Hyundai Sonata', 'Negro', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS024', 'CLI024', 'Kia Optima', 'Blanco', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS025', 'CLI025', 'Nissan Altima', 'Gris', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS026', 'CLI026', 'Volkswagen Passat', 'Rojo', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS027', 'CLI027', 'Subaru Legacy', 'Azul', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS028', 'CLI028', 'BMW Serie 5', 'Negro', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS029', 'CLI029', 'Mercedes Clase E', 'Blanco', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01')),
('CHASIS030', 'CLI030', 'Audi A6', 'Gris', DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 730, '2023-01-01'));
GO

select * from Vehiculos;