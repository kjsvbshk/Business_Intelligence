-- Creacion de la base de datos (si no existe)
CREATE DATABASE IF NOT EXISTS rentabilidad;
USE rentabilidad;

-- Tabla: Usuarios
CREATE TABLE Usuarios (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Fecha_Registro DATE NOT NULL
);
-- Cargar datos en la tabla Usuarios
LOAD DATA INFILE '../data/usuarios.csv'
INTO TABLE Usuarios
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla: Tipos_Inversion
CREATE TABLE Tipos_Inversion (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL UNIQUE
);
-- Cargar datos en la tabla Tipos_Inversion
LOAD DATA INFILE '../data/tipos_inversion.csv'
INTO TABLE Tipos_Inversion
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- Tabla: Tipos_Riesgo
CREATE TABLE Tipos_Riesgo (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nivel VARCHAR(20) NOT NULL UNIQUE
);
-- Cargar datos en la tabla Tipos_Riesgo
LOAD DATA INFILE '../data/tipos_riesgo.csv'
INTO TABLE Tipos_Riesgo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla: Tipos_Gasto
CREATE TABLE Tipos_Gasto (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL UNIQUE,
    Descripcion TEXT
);
-- Cargar datos en la tabla Tipos_Gasto
LOAD DATA INFILE '../data/tipos_gasto.csv'
INTO TABLE Tipos_Gasto
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla: Categorias_Activos
CREATE TABLE Categorias_Activos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL UNIQUE
);
-- Cargar datos en la tabla Categorias_Activos
LOAD DATA INFILE '../data/categorias_activos.csv'
INTO TABLE Categorias_Activos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla: Monedas
CREATE TABLE Monedas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Codigo CHAR(3) NOT NULL UNIQUE,
    Nombre VARCHAR(50) NOT NULL
);
-- Cargar datos en la tabla Monedas
LOAD DATA INFILE './data/monedas.csv'
INTO TABLE Monedas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla: Portafolios
CREATE TABLE Portafolios (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Usuario_ID INT NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Fecha_Creacion DATE NOT NULL,
    FOREIGN KEY (Usuario_ID) REFERENCES Usuarios(ID)
);
-- Cargar datos en la tabla Portafolios
LOAD DATA INFILE './data/portafolios.csv'
INTO TABLE Portafolios
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- Tabla: Inversiones
CREATE TABLE Inversiones (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Tipo_ID INT NOT NULL,
    Fecha_Inicio DATE NOT NULL,
    Monto_Inicial DECIMAL(15, 2) NOT NULL CHECK (Monto_Inicial >= 0),
    Riesgo_ID INT NOT NULL,
    Usuario_ID INT NOT NULL,
    Descripcion TEXT,
    Moneda_ID INT,
    Categoria_ID INT,
    FOREIGN KEY (Tipo_ID) REFERENCES Tipos_Inversion(ID),
    FOREIGN KEY (Riesgo_ID) REFERENCES Tipos_Riesgo(ID),
    FOREIGN KEY (Usuario_ID) REFERENCES Usuarios(ID),
    FOREIGN KEY (Moneda_ID) REFERENCES Monedas(ID),
    FOREIGN KEY (Categoria_ID) REFERENCES Categorias_Activos(ID)
);
-- Cargar datos en la tabla Inversiones
LOAD DATA INFILE './data/inversiones.csv'
INTO TABLE Inversiones
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Tabla: Rendimientos
CREATE TABLE Rendimientos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Rendimiento_Porcentual DECIMAL(5, 2) NOT NULL,
    Rendimiento_Monetario DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID)
);

-- Tabla: Mercado
CREATE TABLE Mercado (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Indice_Mercado DECIMAL(10, 2) NOT NULL,
    Volatilidad DECIMAL(5, 2) NOT NULL CHECK (Volatilidad >= 0)
);

-- Tabla: Gastos_Inversion
CREATE TABLE Gastos_Inversion (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Tipo_Gasto_ID INT NOT NULL,
    Monto DECIMAL(15, 2) NOT NULL CHECK (Monto >= 0),
    Fecha DATE NOT NULL,
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID),
    FOREIGN KEY (Tipo_Gasto_ID) REFERENCES Tipos_Gasto(ID)
);

-- Tabla: Diversificacion
CREATE TABLE Diversificacion (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Portafolio_ID INT NOT NULL,
    Inversion_ID INT NOT NULL,
    Porcentaje_Asignado DECIMAL(5, 2) NOT NULL CHECK (Porcentaje_Asignado BETWEEN 0 AND 100),
    FOREIGN KEY (Portafolio_ID) REFERENCES Portafolios(ID),
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID)
);

-- Tabla: Portafolio_Inversion
CREATE TABLE Portafolio_Inversion (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Portafolio_ID INT NOT NULL,
    Inversion_ID INT NOT NULL,
    FOREIGN KEY (Portafolio_ID) REFERENCES Portafolios(ID),
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID)
);


-- Tabla: Inversion_Categoria
CREATE TABLE Inversion_Categoria (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Categoria_ID INT NOT NULL,
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID),
    FOREIGN KEY (Categoria_ID) REFERENCES Categorias_Activos(ID)
);


-- Tabla: Inversion_Moneda
CREATE TABLE Inversion_Moneda (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Moneda_ID INT NOT NULL,
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID),
    FOREIGN KEY (Moneda_ID) REFERENCES Monedas(ID)
);

-- Tabla: Analisis_Portafolio
CREATE TABLE Analisis_Portafolio (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Portafolio_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    ROI DECIMAL(5, 2) NOT NULL,
    Rentabilidad_Anualizada DECIMAL(5, 2) NOT NULL,
    Ratio_Sharpe DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (Portafolio_ID) REFERENCES Portafolios(ID)
);

-- Tabla: Reportes_Riesgo
CREATE TABLE Reportes_Riesgo (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Portafolio_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Volatilidad DECIMAL(5, 2) NOT NULL,
    Riesgo_Total DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (Portafolio_ID) REFERENCES Portafolios(ID)
);

-- Tabla: Historico_Rendimientos
CREATE TABLE Historico_Rendimientos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Rendimiento_Porcentual DECIMAL(5, 2) NOT NULL,
    Rendimiento_Monetario DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID)
);

-- Tabla: Historico_Mercado
CREATE TABLE Historico_Mercado (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Indice_Mercado DECIMAL(10, 2) NOT NULL,
    Volatilidad DECIMAL(5, 2) NOT NULL CHECK (Volatilidad >= 0)
);

-- Tabla: Historico_Gastos
CREATE TABLE Historico_Gastos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Tipo_Gasto_ID INT NOT NULL,
    Monto DECIMAL(15, 2) NOT NULL CHECK (Monto >= 0),
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID),
    FOREIGN KEY (Tipo_Gasto_ID) REFERENCES Tipos_Gasto(ID)
);

-- Tabla: Estrategias
CREATE TABLE Estrategias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla: Rebalanceo
CREATE TABLE Rebalanceo (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Portafolio_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Inversion_ID INT NOT NULL,
    Porcentaje_Anterior DECIMAL(5, 2) NOT NULL CHECK (Porcentaje_Anterior BETWEEN 0 AND 100),
    Porcentaje_Nuevo DECIMAL(5, 2) NOT NULL CHECK (Porcentaje_Nuevo BETWEEN 0 AND 100),
    FOREIGN KEY (Portafolio_ID) REFERENCES Portafolios(ID),
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID)
);

-- Tabla: Optimizacion
CREATE TABLE Optimizacion (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Portafolio_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    ROI_Objetivo DECIMAL(5, 2) NOT NULL,
    Riesgo_Maximo DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (Portafolio_ID) REFERENCES Portafolios(ID)
);

-- Tabla: Log_Cambios
CREATE TABLE Log_Cambios (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tabla_Afectada VARCHAR(50) NOT NULL,
    Registro_ID INT NOT NULL,
    Usuario_ID INT NOT NULL,
    Fecha DATETIME NOT NULL,
    Accion VARCHAR(10) NOT NULL CHECK (Accion IN ('INSERT', 'UPDATE', 'DELETE')),
    FOREIGN KEY (Usuario_ID) REFERENCES Usuarios(ID)
);

-- Tabla: Backup_Inversiones
CREATE TABLE Backup_Inversiones (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Tipo_ID INT NOT NULL,
    Fecha_Inicio DATE NOT NULL,
    Monto_Inicial DECIMAL(15, 2) NOT NULL CHECK (Monto_Inicial >= 0),
    Riesgo_ID INT NOT NULL,
    Usuario_ID INT NOT NULL,
    Fecha_Backup DATETIME NOT NULL
);

-- Tabla: Backup_Rendimientos
CREATE TABLE Backup_Rendimientos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Rendimiento_ID INT NOT NULL,
    Inversion_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Rendimiento_Porcentual DECIMAL(5, 2) NOT NULL,
    Rendimiento_Monetario DECIMAL(15, 2) NOT NULL,
    Fecha_Backup DATETIME NOT NULL
);

-- Índices para optimizacion
CREATE INDEX idx_inversiones_tipo ON Inversiones(Tipo_ID);
CREATE INDEX idx_inversiones_riesgo ON Inversiones(Riesgo_ID);
CREATE INDEX idx_inversiones_usuario ON Inversiones(Usuario_ID);
CREATE INDEX idx_rendimientos_inversion ON Rendimientos(Inversion_ID);
CREATE INDEX idx_rendimientos_fecha ON Rendimientos(Fecha);
CREATE INDEX idx_gastos_inversion ON Gastos_Inversion(Inversion_ID);
CREATE INDEX idx_gastos_tipo ON Gastos_Inversion(Tipo_Gasto_ID);
CREATE INDEX idx_diversificacion_portafolio ON Diversificacion(Portafolio_ID);
CREATE INDEX idx_diversificacion_inversion ON Diversificacion(Inversion_ID);

-- Triggers para validaciones
DELIMITER //
CREATE TRIGGER valida_fecha_rendimiento
BEFORE INSERT ON Rendimientos
FOR EACH ROW
BEGIN
    DECLARE fecha_inicio DATE;
    SELECT Fecha_Inicio INTO fecha_inicio FROM Inversiones WHERE ID = NEW.Inversion_ID;
    IF NEW.Fecha < fecha_inicio THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La fecha del rendimiento no puede ser anterior a la fecha de inicio de la inversion.';
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER valida_fecha_gasto
BEFORE INSERT ON Gastos_Inversion
FOR EACH ROW
BEGIN
    DECLARE fecha_inicio DATE;
    SELECT Fecha_Inicio INTO fecha_inicio FROM Inversiones WHERE ID = NEW.Inversion_ID;
    IF NEW.Fecha < fecha_inicio THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La fecha del gasto no puede ser anterior a la fecha de inicio de la inversion.';
    END IF;
END //
DELIMITER ;

