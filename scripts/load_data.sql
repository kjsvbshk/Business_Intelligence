USE inversiones_db;

-- tabla de productos
LOAD DATA INFILE '/var/lib/mysql-files/Productos.csv'
INTO TABLE Productos
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- tabla de ventas
LOAD DATA INFILE '/var/lib/mysql-files/Ventas.csv'
INTO TABLE Ventas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- tabla de detalle_ventas
LOAD DATA INFILE '/var/lib/mysql-files/Detalle_Ventas.csv'
INTO TABLE Detalle_Ventas
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- tabla de metodos_pago
LOAD DATA INFILE '/var/lib/mysql-files/Metodos_Pago.csv'
INTO TABLE Metodos_Pago
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- tabla de inventario
LOAD DATA INFILE '/var/lib/mysql-files/Inventario.csv'
INTO TABLE Inventario
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- tabla de proveedores
LOAD DATA INFILE '/var/lib/mysql-files/Proveedores.csv'
INTO TABLE Proveedores
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- tabla de detalle_compras
LOAD DATA INFILE '/var/lib/mysql-files/Detalle_Compras.csv'
INTO TABLE Detalle_Compras
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- tabla de movimientos_inventario
LOAD DATA INFILE '/var/lib/mysql-files/Movimientos_Inventario.csv'
INTO TABLE Movimientos_Inventario
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- tabla de compras
LOAD DATA INFILE '/var/lib/mysql-files/Compras.csv'
INTO TABLE Compras
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

