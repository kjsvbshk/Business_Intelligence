-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS inversiones_db;
USE inversiones_db;

-- 1. Tabla de Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Correo VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20),
    Direccion VARCHAR(255)
);

-- 2. Tabla de Productos
CREATE TABLE IF NOT EXISTS Productos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Categoria VARCHAR(100) NOT NULL,
    Precio DECIMAL(15, 2) NOT NULL,
    Costo DECIMAL(15, 2) NOT NULL
);

-- 3. Tabla de Ventas
CREATE TABLE IF NOT EXISTS Ventas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Cliente_ID INT NOT NULL,
    Total DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (Cliente_ID) REFERENCES Clientes(ID)
);

-- 4. Tabla de Detalle_Ventas
CREATE TABLE IF NOT EXISTS Detalle_Ventas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Venta_ID INT NOT NULL,
    Producto_ID INT NOT NULL,
    Cantidad INT NOT NULL,
    Precio_Unitario DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (Venta_ID) REFERENCES Ventas(ID),
    FOREIGN KEY (Producto_ID) REFERENCES Productos(ID)
);

-- 5. Tabla de Metodos_Pago
CREATE TABLE IF NOT EXISTS Metodos_Pago (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Metodo VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(255),
    Codigos VARCHAR(10)
);

-- 6. Tabla de Inventario
CREATE TABLE IF NOT EXISTS Inventario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Producto_ID INT NOT NULL,
    Cantidad_Disponible INT NOT NULL,
    Ubicacion VARCHAR(100),
    FOREIGN KEY (Producto_ID) REFERENCES Productos(ID)
);

-- 7. Tabla de Proveedores
CREATE TABLE IF NOT EXISTS Proveedores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Contacto VARCHAR(100),
    Direccion VARCHAR(255)
);

-- 8. Tabla de Compras
CREATE TABLE IF NOT EXISTS Compras (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Proveedor_ID INT NOT NULL,
    Total DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (Proveedor_ID) REFERENCES Proveedores(ID)
);

-- 9. Tabla de Detalle_Compras
CREATE TABLE IF NOT EXISTS Detalle_Compras (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Compra_ID INT NOT NULL,
    Producto_ID INT NOT NULL,
    Cantidad INT NOT NULL,
    Precio_Unitario DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (Compra_ID) REFERENCES Compras(ID),
    FOREIGN KEY (Producto_ID) REFERENCES Productos(ID)
);

-- 10. Tabla de Movimientos_Inventario
CREATE TABLE IF NOT EXISTS Movimientos_Inventario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Producto_ID INT NOT NULL,
    Tipo_Movimiento ENUM('Entrada', 'Salida') NOT NULL,
    Cantidad INT NOT NULL,
    Fecha DATE NOT NULL,
    FOREIGN KEY (Producto_ID) REFERENCES Productos(ID)
);

-- 11. Tabla de Campañas
CREATE TABLE IF NOT EXISTS Campanas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Fecha_Inicio DATE NOT NULL,
    Fecha_Fin DATE NOT NULL,
    Presupuesto DECIMAL(15, 2) NOT NULL
);

-- 12. Tabla de Canales_Marketing
CREATE TABLE IF NOT EXISTS Canales_Marketing (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Tipo VARCHAR(50) NOT NULL
);

-- 13. Tabla de Leads
CREATE TABLE IF NOT EXISTS Leads (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Correo VARCHAR(100) NOT NULL,
    Canal_ID INT NOT NULL,
    Fecha_Registro DATE NOT NULL,
    FOREIGN KEY (Canal_ID) REFERENCES Canales_Marketing(ID)
);

-- 14. Tabla de Conversiones
CREATE TABLE IF NOT EXISTS Conversiones (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Lead_ID INT NOT NULL,
    Fecha_Conversion DATE NOT NULL,
    Monto DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (Lead_ID) REFERENCES Leads(ID)
);

-- 15. Tabla de Gastos_Marketing
CREATE TABLE IF NOT EXISTS Gastos_Marketing (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Campana_ID INT NOT NULL,
    Monto DECIMAL(15, 2) NOT NULL,
    Fecha DATE NOT NULL,
    FOREIGN KEY (Campana_ID) REFERENCES Campanas(ID)
);

-- 16. Tabla de Empleados
CREATE TABLE IF NOT EXISTS Empleados (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Puesto VARCHAR(100) NOT NULL,
    Departamento VARCHAR(100) NOT NULL,
    Salario DECIMAL(15, 2) NOT NULL
);

-- 17. Tabla de Asistencias
CREATE TABLE IF NOT EXISTS Asistencias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Empleado_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Hora_Entrada TIME NOT NULL,
    Hora_Salida TIME NOT NULL,
    FOREIGN KEY (Empleado_ID) REFERENCES Empleados(ID)
);

-- 18. Tabla de Evaluaciones
CREATE TABLE IF NOT EXISTS Evaluaciones (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Empleado_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Calificacion DECIMAL(5, 2) NOT NULL,
    Comentarios TEXT,
    FOREIGN KEY (Empleado_ID) REFERENCES Empleados(ID)
);

-- 19. Tabla de Capacitaciones
CREATE TABLE IF NOT EXISTS Capacitaciones (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Fecha DATE NOT NULL,
    Empleado_ID INT NOT NULL,
    FOREIGN KEY (Empleado_ID) REFERENCES Empleados(ID)
);

-- 20. Tabla de Gastos_Nomina
CREATE TABLE IF NOT EXISTS Gastos_Nomina (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Empleado_ID INT NOT NULL,
    Monto DECIMAL(15, 2) NOT NULL,
    Fecha DATE NOT NULL,
    FOREIGN KEY (Empleado_ID) REFERENCES Empleados(ID)
);

-- 21. Tabla de Gastos
CREATE TABLE IF NOT EXISTS Gastos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(100) NOT NULL,
    Monto DECIMAL(15, 2) NOT NULL,
    Fecha DATE NOT NULL,
    Descripcion TEXT
);

-- 22. Tabla de Ingresos
CREATE TABLE IF NOT EXISTS Ingresos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(100) NOT NULL,
    Monto DECIMAL(15, 2) NOT NULL,
    Fecha DATE NOT NULL,
    Descripcion TEXT
);

-- 23. Tabla de Impuestos
CREATE TABLE IF NOT EXISTS Impuestos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(100) NOT NULL,
    Monto DECIMAL(15, 2) NOT NULL,
    Fecha DATE NOT NULL
);

-- 24. Tabla de Balance_General
CREATE TABLE IF NOT EXISTS Balance_General (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Activos DECIMAL(15, 2) NOT NULL,
    Pasivos DECIMAL(15, 2) NOT NULL,
    Patrimonio DECIMAL(15, 2) NOT NULL
);

-- 25. Tabla de Flujo_Caja
CREATE TABLE IF NOT EXISTS Flujo_Caja (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Entradas DECIMAL(15, 2) NOT NULL,
    Salidas DECIMAL(15, 2) NOT NULL,
    Saldo DECIMAL(15, 2) NOT NULL
);