-- Cargar datos en la tabla Usuarios
LOAD DATA INFILE '../data/usuarios.csv'
INTO TABLE Usuarios
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Cargar datos en la tabla Tipos_Inversion
LOAD DATA INFILE '../data/tipos_inversion.csv'
INTO TABLE Tipos_Inversion
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Cargar datos en la tabla Tipos_Riesgo
LOAD DATA INFILE '../data/tipos_riesgo.csv'
INTO TABLE Tipos_Riesgo
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Cargar datos en la tabla Tipos_Gasto
LOAD DATA INFILE '../data/tipos_gasto.csv'
INTO TABLE Tipos_Gasto
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Cargar datos en la tabla Categorias_Activos
LOAD DATA INFILE '../data/categorias_activos.csv'
INTO TABLE Categorias_Activos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Cargar datos en la tabla Monedas
LOAD DATA INFILE './data/monedas.csv'
INTO TABLE Monedas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Cargar datos en la tabla Portafolios
LOAD DATA INFILE './data/portafolios.csv'
INTO TABLE Portafolios
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Cargar datos en la tabla Inversiones
LOAD DATA INFILE './data/inversiones.csv'
INTO TABLE Inversiones
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- -- Cargar datos en la tabla Rendimientos
-- LOAD DATA INFILE './data/rendimientos.csv'
-- INTO TABLE Rendimientos
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Gastos_Inversion
-- LOAD DATA INFILE './data/gastos_inversion.csv'
-- INTO TABLE Gastos_Inversion
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Diversificacion
-- LOAD DATA INFILE './data/diversificacion.csv'
-- INTO TABLE Diversificacion
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Portafolio_Inversion
-- LOAD DATA INFILE './data/portafolio_inversion.csv'
-- INTO TABLE Portafolio_Inversion
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Inversion_Categoria
-- LOAD DATA INFILE './data/inversion_categoria.csv'
-- INTO TABLE Inversion_Categoria
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Inversion_Moneda
-- LOAD DATA INFILE './data/inversion_moneda.csv'
-- INTO TABLE Inversion_Moneda
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Analisis_Portafolio
-- LOAD DATA INFILE './data/analisis_portafolio.csv'
-- INTO TABLE Analisis_Portafolio
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Reportes_Riesgo
-- LOAD DATA INFILE './data/reportes_riesgo.csv'
-- INTO TABLE Reportes_Riesgo
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Historico_Rendimientos
-- LOAD DATA INFILE './data/historico_rendimientos.csv'
-- INTO TABLE Historico_Rendimientos
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Historico_Mercado
-- LOAD DATA INFILE './data/historico_mercado.csv'
-- INTO TABLE Historico_Mercado
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Historico_Gastos
-- LOAD DATA INFILE './data/historico_gastos.csv'
-- INTO TABLE Historico_Gastos
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Estrategias
-- LOAD DATA INFILE './data/estrategias.csv'
-- INTO TABLE Estrategias
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Rebalanceo
-- LOAD DATA INFILE './data/rebalanceo.csv'
-- INTO TABLE Rebalanceo
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Optimizacion
-- LOAD DATA INFILE './data/optimizacion.csv'
-- INTO TABLE Optimizacion
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Log_Cambios
-- LOAD DATA INFILE './data/log_cambios.csv'
-- INTO TABLE Log_Cambios
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Backup_Inversiones
-- LOAD DATA INFILE './data/backup_inversiones.csv'
-- INTO TABLE Backup_Inversiones
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- -- Cargar datos en la tabla Backup_Rendimientos
-- LOAD DATA INFILE './data/backup_rendimientos.csv'
-- INTO TABLE Backup_Rendimientos
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;