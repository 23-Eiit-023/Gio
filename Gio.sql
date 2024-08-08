CREATE DATABASE GIO;

-- Tabla MATERIALES
CREATE TABLE MATERIALES (
    ID_MATERIAL INT PRIMARY KEY,
    NOMBRE NVARCHAR(100) NOT NULL,
    DESCRIPCION NVARCHAR(MAX),
    STOCK INT NOT NULL,
    PRECIO_UNITARIO Money NOT NULL
);

-- Tabla PROVEEDORES
CREATE TABLE PROVEEDORES (
    ID_PROVEEDOR INT PRIMARY KEY,
    NOMBRE NVARCHAR(100) NOT NULL,
    CONTACTO NVARCHAR(50),
    TELEFONO NVARCHAR(20)
);

-- Tabla PROYECTOS
CREATE TABLE PROYECTOS (
    ID_PROYECTO INT PRIMARY KEY,
    NOMBRE NVARCHAR(100) NOT NULL,
    DESCRIPCION NVARCHAR(MAX),
    FECHA_INICIO DATE,
    FECHA_FIN DATE
);

-- Tabla ORDENES_DE_COMPRA
CREATE TABLE ORDENES_DE_COMPRA (
    ID_ORDEN INT PRIMARY KEY,
    FECHA DATE,
    ID_MATERIAL INT,
    CANTIDAD INT,
    ID_PROVEEDOR INT,
    FOREIGN KEY (ID_MATERIAL) REFERENCES MATERIALES(ID_MATERIAL),
    FOREIGN KEY (ID_PROVEEDOR) REFERENCES PROVEEDORES(ID_PROVEEDOR)
);

-- Tabla EMPLEADOS
CREATE TABLE EMPLEADOS (
    ID_EMPLEADO INT PRIMARY KEY,
    NOMBRE NVARCHAR(100) NOT NULL,
    PUESTO NVARCHAR(50),
    FECHA_NACIMIENTO DATE,
    SALARIO Money
);




INSERT INTO MATERIALES (ID_MATERIAL, NOMBRE, DESCRIPCION, STOCK, PRECIO_UNITARIO) VALUES
(1, 'Cemento', 'Material utilizado para la construcci�n de estructuras.', 100, 50.00),
(2, 'Ladrillos', 'Material utilizado como unidad b�sica de construcci�n.', 500, 1.20),
(3, 'Arena', 'Material utilizado en mezclas de construcci�n.', 300, 20.00),
(4, 'Grava', 'Material granular utilizado como agregado en concreto.', 200, 30.00),
(5, 'Hierro', 'Material utilizado para armaduras en estructuras de concreto.', 150, 80.00),
(6, 'Madera', 'Material utilizado en encofrados y acabados.', 250, 40.00),
(7, 'Pintura', 'Material utilizado para acabados y protecci�n de superficies.', 120, 15.00),
(8, 'Tuber�as PVC', 'Material utilizado para sistemas de distribuci�n de agua.', 180, 25.00),
(9, 'Tejas', 'Material utilizado para techos en construcciones.', 300, 5.00),
(10, 'Aislante t�rmico', 'Material utilizado para mejorar el aislamiento en construcciones.', 80, 50.00);


INSERT INTO PROVEEDORES (ID_PROVEEDOR, NOMBRE, CONTACTO, TELEFONO) VALUES
(1, 'ConstruMateriales S.A.', 'Juan P�rez', '555-1234'),
(2, 'Ferreter�a La Construcci�n', 'Mar�a G�mez', '555-5678'),
(3, 'Arena y Grava S.A.', 'Luis Mart�nez', '555-9876'),
(4, 'Hierro y Acero S.A.', 'Ana L�pez', '555-4321'),
(5, 'Maderas del Norte', 'Carlos Ram�rez', '555-8765'),
(6, 'Pinturas Express', 'Laura S�nchez', '555-2345'),
(7, 'Tuber�as y Conexiones S.A.', 'Pedro Rodr�guez', '555-7890'),
(8, 'Tejas del Sur', 'Sof�a Gonz�lez', '555-3456'),
(9, 'Aislantes T�rmicos S.A.', 'Manuel Torres', '555-6543'),
(10, 'Suministros Generales', 'Elena Ruiz', '555-2109');


INSERT INTO PROYECTOS (ID_PROYECTO, NOMBRE, DESCRIPCION, FECHA_INICIO, FECHA_FIN) VALUES
(1, 'Construcci�n Edificio A', 'Construcci�n de un edificio residencial de 10 pisos.', '2023-01-15', '2024-06-30'),
(2, 'Renovaci�n Local Comercial', 'Renovaci�n completa de un local comercial en el centro.', '2023-03-01', '2023-08-15'),
(3, 'Construcci�n de Viviendas', 'Construcci�n de 20 viviendas unifamiliares en un nuevo desarrollo.', '2023-02-10', '2024-01-30'),
(4, 'Ampliaci�n de Bodega', 'Ampliaci�n de la bodega de almacenamiento principal.', '2023-04-20', '2023-11-30'),
(5, 'Rehabilitaci�n de Carretera', 'Rehabilitaci�n de un tramo de carretera principal.', '2023-05-15', '2023-10-31'),
(6, 'Construcci�n de Parque Infantil', 'Construcci�n de un parque infantil en el �rea recreativa del municipio.', '2023-06-01', '2024-03-31'),
(7, 'Remodelaci�n de Oficinas', 'Remodelaci�n completa de las oficinas corporativas.', '2023-07-10', '2023-12-15'),
(8, 'Instalaci�n de Red El�ctrica', 'Instalaci�n de red el�ctrica en nueva zona residencial.', '2023-08-05', '2024-02-28'),
(9, 'Construcci�n de Puente', 'Construcci�n de un puente sobre un r�o importante.', '2023-09-15', '2024-05-30'),
(10, 'Reconstrucci�n de Fachadas', 'Reconstrucci�n y restauraci�n de fachadas hist�ricas.', '2023-10-01', '2024-04-15');


INSERT INTO ORDENES_DE_COMPRA (ID_ORDEN, FECHA, ID_MATERIAL, CANTIDAD, ID_PROVEEDOR) VALUES
(1, '2023-01-02', 1, 200, 1),
(2, '2023-01-05', 2, 1000, 2),
(3, '2023-02-10', 3, 500, 3),
(4, '2023-02-15', 4, 300, 4),
(5, '2023-03-01', 5, 150, 5),
(6, '2023-03-05', 6, 250, 6),
(7, '2023-04-10', 7, 100, 7),
(8, '2023-04-15', 8, 150, 8),
(9, '2023-05-20', 9, 200, 9),
(10, '2023-06-01', 10, 50, 10);


INSERT INTO EMPLEADOS (ID_EMPLEADO, NOMBRE, PUESTO, FECHA_NACIMIENTO, SALARIO) VALUES
(1, 'Juan P�rez', 'Encargado de Almac�n', '1980-05-10', 2500.00),
(2, 'Mar�a G�mez', 'Asistente de Compras', '1985-09-15', 2000.00),
(3, 'Luis Mart�nez', 'Operario de Almac�n', '1990-02-20', 1800.00),
(4, 'Ana L�pez', 'Contador', '1982-11-25', 3000.00),
(5, 'Carlos Ram�rez', 'Jefe de Proyecto', '1978-07-12', 3500.00),
(6, 'Laura S�nchez', 'Dise�adora Gr�fica', '1987-04-30', 2200.00),
(7, 'Pedro Rodr�guez', 'T�cnico de Mantenimiento', '1992-01-05', 1900.00),
(8, 'Sof�a Gonz�lez', 'Ingeniero Civil', '1984-08-18', 4000.00),
(9, 'Manuel Torres', 'Arquitecto', '1981-03-22', 3800.00),
(10, 'Elena Ruiz', 'Asistente Administrativo', '1989-06-08', 2000.00);

Select *from MATERIALES;