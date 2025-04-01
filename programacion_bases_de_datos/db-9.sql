-- Crear la base de datos
CREATE DATABASE PapeleriaDB;
GO

-- Usar la base de datos
USE PapeleriaDB;
GO

-- Tabla de Categorías
CREATE TABLE Categorias (
    id_categoria INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT NULL
);
GO

-- Tabla de Proveedores
CREATE TABLE Proveedores (
    id_proveedor INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    contacto VARCHAR(100) NULL,
    telefono VARCHAR(15) NULL,
    email VARCHAR(100) NULL,
    direccion TEXT NULL,
    fecha_registro DATETIME DEFAULT GETDATE()
);
GO

-- Tabla de Productos
CREATE TABLE Productos (
    id_producto INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    id_categoria INT NOT NULL,
    id_proveedor INT NOT NULL,
    fecha_registro DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);
GO

-- Tabla de Clientes
CREATE TABLE Clientes (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NULL,
    email VARCHAR(100) NULL,
    direccion TEXT NULL,
    fecha_registro DATETIME DEFAULT GETDATE()
);
GO

-- Tabla de Empleados
CREATE TABLE Empleados (
    id_empleado INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NULL,
    email VARCHAR(100) NULL,
    puesto VARCHAR(50) NOT NULL,
    fecha_contratacion DATE NOT NULL
);
GO

-- Tabla de Usuarios (Para control de acceso)
CREATE TABLE Usuarios (
    id_usuario INT IDENTITY(1,1) PRIMARY KEY,
    id_empleado INT NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    rol VARCHAR(50) NOT NULL CHECK (rol IN ('Admin', 'Vendedor')),
    fecha_creacion DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);
GO

-- Tabla de Ventas
CREATE TABLE Ventas (
    id_venta INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    fecha_venta DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);
GO

-- Tabla de Detalle de Ventas
CREATE TABLE Detalle_Ventas (
    id_detalle INT IDENTITY(1,1) PRIMARY KEY,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);
GO

-- Crear un Trigger para actualizar stock después de una venta
--CREATE TRIGGER trg_ActualizarStock 
--ON Detalle_Ventas
--AFTER INSERT
--AS
--BEGIN
--    SET NOCOUNT ON;

--    UPDATE p
--    SET p.stock = p.stock - i.cantidad
--    FROM Productos p
--    INNER JOIN inserted i ON p.id_producto = i.id_producto;
--END;
--GO

USE PapeleriaDB;
GO

-- Insertar Categorías
INSERT INTO Categorias (nombre, descripcion) VALUES
('Papel', 'Diferentes tipos de papel para oficina y escuela'),
('Escritura', 'Útiles de escritura como bolígrafos, lápices y marcadores'),
('Arte', 'Materiales para dibujo y pintura'),
('Organización', 'Folders, engrapadoras y organizadores'),
('Tecnología', 'Accesorios electrónicos y de oficina');
GO

-- Insertar Proveedores
INSERT INTO Proveedores (nombre, contacto, telefono, email, direccion) VALUES
('Papeles del Norte', 'Juan Pérez', '555-1234', 'contacto@papelnorte.com', 'Av. Principal 123, CDMX'),
('Suministros Escolares SA', 'María Gómez', '555-5678', 'ventas@suministroes.com', 'Calle Secundaria 456, Monterrey'),
('Arte y Color', 'Carlos Ruiz', '555-9876', 'info@arteycolor.com', 'Carrera 78, Guadalajara'),
('Tecnología Express', 'Luisa Fernández', '555-4321', 'soporte@tecexpress.com', 'Calle Digital 789, Querétaro'),
('Ofimundo', 'Ricardo López', '555-2468', 'admin@ofimundo.com', 'Av. Insurgentes 321, CDMX');
GO

-- Insertar Productos
INSERT INTO Productos (nombre, descripcion, precio, stock, id_categoria, id_proveedor) VALUES
('Resma de papel tamaño carta', 'Papel blanco tamaño carta 500 hojas', 120.00, 100, 1, 1),
('Bolígrafo azul', 'Bolígrafo de tinta azul punta mediana', 10.00, 500, 2, 2),
('Marcadores de colores', 'Set de 12 marcadores de colores vibrantes', 80.00, 200, 3, 3),
('Engrapadora metálica', 'Engrapadora resistente con 1000 grapas', 150.00, 50, 4, 4),
('USB 32GB', 'Memoria USB de 32GB marca Kingston', 250.00, 30, 5, 5),
('Cuaderno Profesional', 'Cuaderno de rayas con 100 hojas', 50.00, 300, 1, 2),
('Lápiz HB', 'Lápiz negro con goma', 5.00, 600, 2, 2),
('Acuarelas', 'Caja de acuarelas con 24 colores', 90.00, 120, 3, 3),
('Carpeta de anillas', 'Carpeta tamaño carta con 3 anillas', 75.00, 80, 4, 1),
('Mouse inalámbrico', 'Mouse óptico inalámbrico', 320.00, 40, 5, 4);
GO

-- Insertar Clientes
INSERT INTO Clientes (nombre, telefono, email, direccion) VALUES
('Pedro López', '555-1001', 'pedro.lopez@email.com', 'Calle 1, CDMX'),
('Mariana Rodríguez', '555-2002', 'mariana.rod@email.com', 'Calle 2, Monterrey'),
('José Martínez', '555-3003', 'jose.mtz@email.com', 'Calle 3, Guadalajara'),
('Ana Fernández', '555-4004', 'ana.fer@email.com', 'Calle 4, Querétaro'),
('Carlos Ramírez', '555-5005', 'carlos.rmz@email.com', 'Calle 5, Puebla');
GO

-- Insertar Empleados
INSERT INTO Empleados (nombre, telefono, email, puesto, fecha_contratacion) VALUES
('Luis Pérez', '555-6001', 'luis.perez@empresa.com', 'Cajero', '2023-01-15'),
('Andrea Gómez', '555-6002', 'andrea.gomez@empresa.com', 'Vendedor', '2022-11-20'),
('Javier Méndez', '555-6003', 'javier.mendez@empresa.com', 'Gerente', '2021-06-10'),
('Sofía Herrera', '555-6004', 'sofia.herrera@empresa.com', 'Vendedor', '2022-08-05'),
('Roberto Díaz', '555-6005', 'roberto.diaz@empresa.com', 'Cajero', '2023-03-01');
GO

-- Insertar Usuarios
INSERT INTO Usuarios (id_empleado, username, password_hash, rol) VALUES
(1, 'luisp', HASHBYTES('SHA2_256', 'password123'), 'Vendedor'),
(2, 'andreag', HASHBYTES('SHA2_256', 'password456'), 'Vendedor'),
(3, 'javierm', HASHBYTES('SHA2_256', 'adminpass'), 'Admin'),
(4, 'sofiah', HASHBYTES('SHA2_256', 'ventas2023'), 'Vendedor'),
(5, 'robertod', HASHBYTES('SHA2_256', 'clave789'), 'Vendedor');
GO

-- Insertar Ventas
INSERT INTO Ventas (id_cliente, id_empleado, total) VALUES
(1, 1, 130.00),
(2, 2, 240.00),
(3, 3, 50.00),
(4, 4, 500.00),
(5, 5, 75.00);
GO

-- Insertar Detalle de Ventas
INSERT INTO Detalle_Ventas (id_venta, id_producto, cantidad, precio_unitario, subtotal) VALUES
(1, 1, 1, 120.00, 120.00),
(1, 2, 1, 10.00, 10.00),
(2, 3, 3, 80.00, 240.00),
(3, 6, 1, 50.00, 50.00),
(4, 5, 2, 250.00, 500.00),
(5, 9, 1, 75.00, 75.00);
GO

DECLARE @i INT = 1;
WHILE @i <= 10000
BEGIN
    INSERT INTO Productos (nombre, descripcion, precio, stock, id_categoria, id_proveedor)
    VALUES ('Producto ' + CAST(@i AS VARCHAR), 
            'Descripción del producto ' + CAST(@i AS VARCHAR), 
            ROUND(RAND() * (500 - 10) + 10, 2),  -- Precio entre 10 y 500
            CAST(RAND() * 1000 AS INT),          -- Stock entre 0 y 1000
            (SELECT TOP 1 id_categoria FROM Categorias ORDER BY NEWID()), 
            (SELECT TOP 1 id_proveedor FROM Proveedores ORDER BY NEWID()));
    SET @i = @i + 1;
END;
GO

select * from Productos;