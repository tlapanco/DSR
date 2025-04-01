-- Crear la base de datos
CREATE DATABASE ImportadoraAutos;
GO

-- Usar la base de datos creada
USE ImportadoraAutos;
GO

-- Crear la tabla de TiposChasis
CREATE TABLE TiposChasis (
    ChasisID INT PRIMARY KEY IDENTITY(1,1),
    NombreChasis NVARCHAR(50) NOT NULL
);
GO

-- Crear la tabla de Servicios
CREATE TABLE Servicios (
    ServicioID INT PRIMARY KEY IDENTITY(1,1),
    NombreServicio NVARCHAR(50) NOT NULL,
    Descripcion NVARCHAR(255) NULL,
    Costo DECIMAL(10,2) NOT NULL
);
GO

-- Crear la tabla de Autos
CREATE TABLE Autos (
    AutoID INT PRIMARY KEY IDENTITY(1,1),
    Marca NVARCHAR(50) NOT NULL,
    Modelo NVARCHAR(50) NOT NULL,
    Año INT NOT NULL,
    ChasisID INT NOT NULL,
    FOREIGN KEY (ChasisID) REFERENCES TiposChasis(ChasisID)
);
GO

-- Crear la tabla para relacionar Autos con Servicios
CREATE TABLE Autos_Servicios (
    AutoID INT NOT NULL,
    ServicioID INT NOT NULL,
    FOREIGN KEY (AutoID) REFERENCES Autos(AutoID),
    FOREIGN KEY (ServicioID) REFERENCES Servicios(ServicioID),
    PRIMARY KEY (AutoID, ServicioID)
);
GO

-- Insertar registros en la tabla TiposChasis
INSERT INTO TiposChasis (NombreChasis) VALUES 
('Sedán'),
('Hatchback'),
('SUV'),
('Coupé'),
('Convertible'),
('Pick-Up'),
('Minivan'),
('Wagon'),
('Roadster'),
('Crossover');

GO

-- Insertar 50 registros en la tabla Autos
INSERT INTO Autos (Marca, Modelo, Año, ChasisID) VALUES 
('Toyota', 'Yaris', 2018, 1),
('Toyota', 'Highlander', 2017, 2),
('Honda', 'Accord', 2019, 1),
('Honda', 'CR-V', 2016, 2),
('Ford', 'Fusion', 2015, 1),
('Ford', 'Escape', 2020, 2),
('Chevrolet', 'Malibu', 2021, 1),
('Chevrolet', 'Equinox', 2022, 2),
('Nissan', 'Sentra', 2019, 1),
('Nissan', 'Murano', 2020, 2),
('BMW', 'X1', 2017, 3),
('BMW', 'X2', 2016, 3),
('Mercedes-Benz', 'A-Class', 2020, 3),
('Mercedes-Benz', 'GLA', 2021, 3),
('Audi', 'A3', 2018, 3),
('Audi', 'Q3', 2017, 3),
('Tesla', 'Model X', 2022, 4),
('Volkswagen', 'Jetta', 2019, 1),
('Volkswagen', 'Tiguan', 2020, 2),
('Subaru', 'WRX', 2021, 1),
('Subaru', 'Crosstrek', 2016, 2),
('Mazda', 'MX-5 Miata', 2018, 4),
('Mazda', 'CX-30', 2019, 2),
('Hyundai', 'Kona', 2017, 2),
('Hyundai', 'Veloster', 2021, 4),
('Kia', 'Stinger', 2019, 3),
('Kia', 'Niro', 2020, 2),
('Lexus', 'NX', 2018, 3),
('Lexus', 'IS', 2017, 3),
('Jaguar', 'E-Pace', 2016, 3),
('Jaguar', 'F-Type', 2020, 4),
('Infiniti', 'QX50', 2021, 3),
('Acura', 'RDX', 2022, 2),
('Cadillac', 'XT5', 2017, 2),
('Dodge', 'Durango', 2018, 2),
('Chrysler', 'Pacifica', 2019, 2),
('Buick', 'Enclave', 2020, 2),
('Mitsubishi', 'Outlander', 2021, 2),
('Volvo', 'XC40', 2016, 3),
('Alfa Romeo', '4C', 2017, 4),
('Genesis', 'GV70', 2018, 2),
('Lincoln', 'Aviator', 2019, 2),
('Fiat', 'Panda', 2020, 4),
('Porsche', 'Cayenne', 2021, 3),
('Mini', 'Clubman', 2017, 4),
('Land Rover', 'Evoque', 2016, 3),
('Jeep', 'Renegade', 2020, 2),
('GMC', 'Yukon', 2021, 2),
('Ram', '3500', 2019, 2),
('Toyota', 'Corolla', 2022, 1),
('Honda', 'Civic', 2021, 1),
('Ford', 'Mustang', 2023, 2),
('Chevrolet', 'Camaro', 2022, 2),
('Nissan', 'Altima', 2021, 1),
('BMW', '3 Series', 2022, 3),
('Mercedes-Benz', 'C-Class', 2023, 3),
('Audi', 'A4', 2021, 3),
('Tesla', 'Model 3', 2022, 4),
('Volkswagen', 'Passat', 2021, 1),
('Subaru', 'Impreza', 2023, 1),
('Mazda', 'Mazda3', 2022, 1),
('Hyundai', 'Elantra', 2021, 1),
('Kia', 'Optima', 2023, 1),
('Lexus', 'ES', 2022, 3),
('Jaguar', 'XE', 2021, 3),
('Infiniti', 'Q50', 2023, 3),
('Acura', 'TLX', 2022, 1),
('Cadillac', 'ATS', 2021, 2),
('Dodge', 'Charger', 2023, 2),
('Chrysler', '300', 2022, 2),
('Buick', 'Regal', 2021, 1),
('Mitsubishi', 'Lancer', 2023, 1),
('Volvo', 'S60', 2022, 3),
('Alfa Romeo', 'Giulia', 2021, 3),
('Genesis', 'G70', 2023, 1),
('Lincoln', 'MKZ', 2022, 2),
('Fiat', '500', 2021, 4),
('Porsche', 'Panamera', 2023, 3),
('Mini', 'Cooper', 2022, 4),
('Land Rover', 'Range Rover', 2021, 3),
('Jeep', 'Grand Cherokee', 2023, 2),
('GMC', 'Acadia', 2022, 2),
('Ram', '1500', 2021, 2),
('Chevrolet', 'Silverado', 2023, 2),
('Ford', 'F-150', 2022, 2),
('Nissan', 'Frontier', 2021, 2),
('Toyota', 'Tundra', 2023, 2),
('Honda', 'Ridgeline', 2022, 2),
('Mazda', 'CX-5', 2021, 1),
('Hyundai', 'Tucson', 2023, 1),
('Kia', 'Sorento', 2022, 1),
('Subaru', 'Forester', 2021, 1),
('Volkswagen', 'Tiguan', 2023, 1),
('BMW', 'X3', 2022, 3),
('Mercedes-Benz', 'GLC', 2021, 3),
('Audi', 'Q5', 2023, 3),
('Volvo', 'XC60', 2022, 3),
('Lexus', 'RX', 2021, 3);

GO

-- Insertar registros en la tabla Servicios
INSERT INTO Servicios (NombreServicio, Descripcion, Costo) VALUES 
('Cambio de aceite', 'Cambio de aceite del motor y revisión de niveles', 500.00),
('Alineación y balanceo', 'Ajuste de la alineación y balanceo de las ruedas', 800.00),
('Revisión de frenos', 'Inspección y cambio de pastillas de freno', 1200.00),
('Mantenimiento general', 'Revisión completa del vehículo y mantenimiento preventivo', 1500.00),
('Cambio de llantas', 'Cambio de llantas y revisión de presión', 600.00),
('Diagnóstico de motor', 'Diagnóstico del estado del motor con equipo especializado', 1000.00),
('Revisión de aire acondicionado', 'Revisión y recarga del sistema de aire acondicionado', 700.00),
('Revisión de suspensión', 'Inspección y reparación del sistema de suspensión', 1300.00),
('Cambio de batería', 'Reemplazo de la batería del vehículo', 900.00),
('Lavado y detallado', 'Lavado completo y detallado del vehículo', 400.00),
('Revisión de transmisión', 'Inspección y mantenimiento de la transmisión', 1500.00),
('Cambio de filtro de aire', 'Reemplazo del filtro de aire del motor', 300.00),
('Revisión de sistemas eléctricos', 'Inspección y reparación del sistema eléctrico', 1100.00),
('Revisión de escape', 'Inspección y reparación del sistema de escape', 900.00),
('Revisión de luces', 'Inspección y ajuste de luces y faros', 500.00),
('Aplicación de cerámica', 'Aplicación de revestimiento cerámico para protección de pintura', 2000.00),
('Cambio de parabrisas', 'Reemplazo del parabrisas', 2500.00),
('Tintado de ventanas', 'Aplicación de tintado a las ventanas del vehículo', 1200.00),
('Reparación de abolladuras', 'Reparación de abolladuras en la carrocería', 1800.00),
('Revisión de sistema de combustible', 'Inspección y limpieza del sistema de combustible', 1300.00),
('Cambio de filtros de combustible', 'Reemplazo de los filtros de combustible', 400.00),
('Revisión de sistema de escape', 'Inspección y reparación del sistema de escape', 1100.00),
('Revisión de cinturones de seguridad', 'Inspección y reparación de cinturones de seguridad', 700.00),
('Aplicación de protección UV', 'Aplicación de protector UV para el interior del vehículo', 800.00),
('Servicio de emergencia en carretera', 'Asistencia y reparaciones de emergencia en carretera', 2000.00),
('Revisión de sistema de enfriamiento', 'Inspección y mantenimiento del sistema de enfriamiento', 1400.00),
('Cambio de radiador', 'Reemplazo del radiador', 2200.00),
('Revisión de sistema de dirección', 'Inspección y ajuste del sistema de dirección', 1200.00),
('Mantenimiento de transmisión automática', 'Mantenimiento preventivo de transmisión automática', 1800.00),
('Cambio de bujías', 'Reemplazo de bujías del motor', 600.00);

GO
