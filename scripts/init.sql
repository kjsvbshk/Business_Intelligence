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
-- -- Cargar datos en la tabla Usuarios
LOAD DATA INFILE '/data/usuarios.csv'
INTO TABLE Usuarios
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre, Email, Fecha_Registro);

-- Tabla: Tipos_Inversion
CREATE TABLE Tipos_Inversion (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL UNIQUE
);

-- -- Cargar datos en la tabla Tipos_Inversion
LOAD DATA INFILE '/data/tipos_inversion.csv'
INTO TABLE Tipos_Inversion
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre);

-- Tabla: Tipos_Riesgo
CREATE TABLE Tipos_Riesgo (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nivel VARCHAR(20) NOT NULL UNIQUE
);
-- -- Cargar datos en la tabla Tipos_Riesgo
LOAD DATA INFILE '/data/tipos_riesgo.csv'
INTO TABLE Tipos_Riesgo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nivel);

-- Tabla: Tipos_Gasto
CREATE TABLE Tipos_Gasto (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL UNIQUE,
    Descripcion TEXT
);
-- -- Cargar datos en la tabla Tipos_Gasto
LOAD DATA INFILE '/data/tipos_gasto.csv'
INTO TABLE Tipos_Gasto
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre, Descripcion);

-- Tabla: Categorias_Activos
CREATE TABLE Categorias_Activos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL UNIQUE
);
-- -- Cargar datos en la tabla Categorias_Activos
LOAD DATA INFILE '/data/categorias_activos.csv'
INTO TABLE Categorias_Activos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre);

-- Tabla: Monedas
CREATE TABLE Monedas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Codigo CHAR(3) NOT NULL UNIQUE,
    Nombre VARCHAR(50) NOT NULL
);
-- -- Cargar datos en la tabla Monedas
LOAD DATA INFILE '/data/monedas.csv'
INTO TABLE Monedas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Codigo, Nombre);

-- Tabla: Portafolios
CREATE TABLE Portafolios (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Usuario_ID INT NOT NULL,
    Nombre VARCHAR(100) NOT NULL,
    Descripcion TEXT,
    Fecha_Creacion DATE NOT NULL,
    FOREIGN KEY (Usuario_ID) REFERENCES Usuarios(ID)
);

-- -- Cargar datos en la tabla Portafolios
LOAD DATA INFILE '/data/portafolios.csv'
INTO TABLE Portafolios
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Usuario_ID, Nombre, Descripcion, Fecha_Creacion);

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

-- -- Cargar datos en la tabla Inversiones
LOAD DATA INFILE '/data/inversiones.csv'
INTO TABLE Inversiones
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre, Tipo_ID, Fecha_Inicio, Monto_Inicial, Riesgo_ID, Usuario_ID, Descripcion, Moneda_ID, Categoria_ID);

-- Tabla: Rendimientos
CREATE TABLE Rendimientos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Rendimiento_Porcentual DECIMAL(5, 2) NOT NULL,
    Rendimiento_Monetario DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID)
);

-- -- Cargar datos en la tabla Rendimientos
LOAD DATA INFILE '/data/rendimientos.csv'
INTO TABLE Rendimientos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Inversion_ID, Fecha, Rendimiento_Porcentual, Rendimiento_Monetario);

-- Tabla: Mercado
CREATE TABLE Mercado (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Indice_Mercado DECIMAL(10, 2) NOT NULL,
    Volatilidad DECIMAL(5, 2) NOT NULL CHECK (Volatilidad >= 0),
    Tipo_Indice VARCHAR(50)    
);

-- -- Cargar datos en la tabla Mercado
DELIMITER //
CREATE PROCEDURE GenerarDatosMercadoAleatorio()
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE fecha_aleatoria DATE;
    DECLARE base_indice DECIMAL(10,2);
    DECLARE tipo_indice VARCHAR(20);
    
    WHILE i < 365 DO
        SET fecha_aleatoria = DATE_ADD('2010-01-01', INTERVAL FLOOR(RAND() * DATEDIFF('2025-03-03', '2010-01-01')) DAY);
        
        CASE 
            WHEN RAND() < 0.25 THEN 
                SET tipo_indice = 'S&P500';
                SET base_indice = 3000.00 + (YEAR(fecha_aleatoria) - 2010) * 200;
            WHEN RAND() < 0.50 THEN 
                SET tipo_indice = 'NASDAQ';
                SET base_indice = 8000.00 + (YEAR(fecha_aleatoria) - 2010) * 300;
            WHEN RAND() < 0.75 THEN 
                SET tipo_indice = 'IBEX35';
                SET base_indice = 8000.00 + (YEAR(fecha_aleatoria) - 2010) * 100;
            ELSE 
                SET tipo_indice = 'FTSE100';
                SET base_indice = 6000.00 + (YEAR(fecha_aleatoria) - 2010) * 150;
        END CASE;
        
        IF YEAR(fecha_aleatoria) BETWEEN 2020 AND 2025 THEN
            SET base_indice = base_indice * 1.3;
        END IF;
        
        INSERT INTO Mercado (Fecha, Indice_Mercado, Volatilidad, Tipo_Indice)
        VALUES (
            fecha_aleatoria,
            ROUND(base_indice * (0.95 + RAND() * 0.1), 2),
            ROUND(10 + RAND() * 20, 2),
            tipo_indice
        );
        
        SET i = i + 1;
    END WHILE;
END //
DELIMITER;

CALL GenerarDatosMercadoAleatorio();

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

-- -- Cargar datos en la tabla Gastos_Inversion
LOAD DATA INFILE '/data/gastos_inversion.csv'
INTO TABLE Gastos_Inversion
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Inversion_ID, Tipo_Gasto_ID, Monto, Fecha);

-- Tabla: Diversificacion
CREATE TABLE Diversificacion (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Portafolio_ID INT NOT NULL,
    Inversion_ID INT NOT NULL,
    Porcentaje_Asignado DECIMAL(5, 2) NOT NULL CHECK (Porcentaje_Asignado BETWEEN 0 AND 100),
    FOREIGN KEY (Portafolio_ID) REFERENCES Portafolios(ID),
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID)
);
-- -- Cargar datos en la tabla Diversificacion
LOAD DATA INFILE '/data/diversificacion.csv'
INTO TABLE Diversificacion
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Portafolio_ID, Inversion_ID, Porcentaje_Asignado);

-- Tabla: Portafolio_Inversion
CREATE TABLE Portafolio_Inversion (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Portafolio_ID INT NOT NULL,
    Inversion_ID INT NOT NULL,
    FOREIGN KEY (Portafolio_ID) REFERENCES Portafolios(ID),
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID)
);

-- -- Cargar datos en la tabla Portafolio_Inversion
LOAD DATA INFILE '/data/portafolio_inversion.csv'
INTO TABLE Portafolio_Inversion
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Portafolio_ID, Inversion_ID);

-- Tabla: Inversion_Categoria
CREATE TABLE Inversion_Categoria (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Categoria_ID INT NOT NULL,
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID),
    FOREIGN KEY (Categoria_ID) REFERENCES Categorias_Activos(ID)
);

-- -- Cargar datos en la tabla Inversion_Categoria
LOAD DATA INFILE '/data/inversion_categoria.csv'
INTO TABLE Inversion_Categoria
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Inversion_ID, Categoria_ID);

-- Tabla: Inversion_Moneda
CREATE TABLE Inversion_Moneda (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Moneda_ID INT NOT NULL,
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID),
    FOREIGN KEY (Moneda_ID) REFERENCES Monedas(ID)
);

-- -- Cargar datos en la tabla Inversion_Moneda
LOAD DATA INFILE '/data/inversion_moneda.csv'
INTO TABLE Inversion_Moneda
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Inversion_ID, Moneda_ID);

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

-- -- Cargar datos en la tabla Analisis_Portafolio
LOAD DATA INFILE '/data/analisis_portafolio.csv'
INTO TABLE Analisis_Portafolio
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Portafolio_ID, Fecha, ROI, Rentabilidad_Anualizada, Ratio_Sharpe);

-- Tabla: Reportes_Riesgo
CREATE TABLE Reportes_Riesgo (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Portafolio_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Volatilidad DECIMAL(5, 2) NOT NULL,
    Riesgo_Total DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (Portafolio_ID) REFERENCES Portafolios(ID)
);

-- -- Cargar datos en la tabla Reportes_Riesgo
LOAD DATA INFILE '/data/reportes_riesgo.csv'
INTO TABLE Reportes_Riesgo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Portafolio_ID, Fecha, Volatilidad, Riesgo_Total);

-- Tabla: Historico_Rendimientos
CREATE TABLE Historico_Rendimientos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Inversion_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    Rendimiento_Porcentual DECIMAL(5, 2) NOT NULL,
    Rendimiento_Monetario DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (Inversion_ID) REFERENCES Inversiones(ID)
);

-- -- Cargar datos en la tabla Historico_Rendimientos
LOAD DATA INFILE '/data/historico_rendimientos.csv'
INTO TABLE Historico_Rendimientos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Inversion_ID, Fecha, Rendimiento_Porcentual, Rendimiento_Monetario);

-- Tabla: Historico_Mercado
CREATE TABLE Historico_Mercado (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    Indice_Mercado DECIMAL(10, 2) NOT NULL,
    Volatilidad DECIMAL(5, 2) NOT NULL CHECK (Volatilidad >= 0)
);

-- -- Cargar datos en la tabla Historico_Mercado
LOAD DATA INFILE '/data/historico_mercado.csv'
INTO TABLE Historico_Mercado
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Fecha, Indice_Mercado, Volatilidad);

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

-- -- Cargar datos en la tabla Historico_Gastos
LOAD DATA INFILE '/data/historico_gastos.csv'
INTO TABLE Historico_Gastos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Inversion_ID, Fecha, Tipo_Gasto_ID, Monto);

-- Tabla: Estrategias
CREATE TABLE Estrategias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL UNIQUE
);

-- -- Cargar datos en la tabla Estrategias
LOAD DATA INFILE '/data/estrategias.csv'
INTO TABLE Estrategias
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre);

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

-- -- Cargar datos en la tabla Rebalanceo
LOAD DATA INFILE '/data/rebalanceo.csv'
INTO TABLE Rebalanceo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Portafolio_ID, Fecha, Inversion_ID, Porcentaje_Anterior, Porcentaje_Nuevo);

-- Tabla: Optimizacion
CREATE TABLE Optimizacion (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Portafolio_ID INT NOT NULL,
    Fecha DATE NOT NULL,
    ROI_Objetivo DECIMAL(5, 2) NOT NULL,
    Riesgo_Maximo DECIMAL(5, 2) NOT NULL,
    FOREIGN KEY (Portafolio_ID) REFERENCES Portafolios(ID)
);

-- -- Cargar datos en la tabla Optimizacion
LOAD DATA INFILE '/data/optimizacion.csv'
INTO TABLE Optimizacion
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Portafolio_ID, Fecha, ROI_Objetivo, Riesgo_Maximo);

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

-- -- Cargar datos en la tabla Log_Cambios
LOAD DATA INFILE '/data/log_cambios.csv'
INTO TABLE Log_Cambios
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Tabla_Afectada, Registro_ID, Usuario_ID, Fecha, Accion);

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

