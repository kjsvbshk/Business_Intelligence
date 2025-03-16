-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: rentabilidad
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Analisis_Portafolio`
--

DROP TABLE IF EXISTS `Analisis_Portafolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Analisis_Portafolio` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Portafolio_ID` int NOT NULL,
  `Fecha` date NOT NULL,
  `ROI` decimal(5,2) NOT NULL,
  `Rentabilidad_Anualizada` decimal(5,2) NOT NULL,
  `Ratio_Sharpe` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Portafolio_ID` (`Portafolio_ID`),
  CONSTRAINT `Analisis_Portafolio_ibfk_1` FOREIGN KEY (`Portafolio_ID`) REFERENCES `Portafolios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Analisis_Portafolio`
--

LOCK TABLES `Analisis_Portafolio` WRITE;
/*!40000 ALTER TABLE `Analisis_Portafolio` DISABLE KEYS */;
/*!40000 ALTER TABLE `Analisis_Portafolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Backup_Inversiones`
--

DROP TABLE IF EXISTS `Backup_Inversiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Backup_Inversiones` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Inversion_ID` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Tipo_ID` int NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Monto_Inicial` decimal(15,2) NOT NULL,
  `Riesgo_ID` int NOT NULL,
  `Usuario_ID` int NOT NULL,
  `Fecha_Backup` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Backup_Inversiones_chk_1` CHECK ((`Monto_Inicial` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Backup_Inversiones`
--

LOCK TABLES `Backup_Inversiones` WRITE;
/*!40000 ALTER TABLE `Backup_Inversiones` DISABLE KEYS */;
/*!40000 ALTER TABLE `Backup_Inversiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Backup_Rendimientos`
--

DROP TABLE IF EXISTS `Backup_Rendimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Backup_Rendimientos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Rendimiento_ID` int NOT NULL,
  `Inversion_ID` int NOT NULL,
  `Fecha` date NOT NULL,
  `Rendimiento_Porcentual` decimal(5,2) NOT NULL,
  `Rendimiento_Monetario` decimal(15,2) NOT NULL,
  `Fecha_Backup` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Backup_Rendimientos`
--

LOCK TABLES `Backup_Rendimientos` WRITE;
/*!40000 ALTER TABLE `Backup_Rendimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Backup_Rendimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categorias_Activos`
--

DROP TABLE IF EXISTS `Categorias_Activos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categorias_Activos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorias_Activos`
--

LOCK TABLES `Categorias_Activos` WRITE;
/*!40000 ALTER TABLE `Categorias_Activos` DISABLE KEYS */;
INSERT INTO `Categorias_Activos` VALUES (21,'Agricultura'),(11,'Bienes de Consumo'),(6,'Bienes Raices'),(2,'Bonos'),(7,'Criptomonedas'),(8,'Energia'),(24,'Energias Renovables'),(15,'Finanzas'),(27,'Impact Investing'),(16,'Industria'),(12,'Infraestructura'),(20,'Inmobiliario Comercial'),(19,'Inmobiliario Residencial'),(31,'Inversion en Bienes de Consumo'),(32,'Inversion en Energia'),(30,'Inversion en Salud'),(29,'Inversion en Tecnologia'),(33,'Inversion en Transporte'),(26,'Inversion Socialmente Responsable'),(28,'Inversion Tematica'),(17,'Materiales'),(5,'Materias Primas'),(9,'Mercados Emergentes'),(22,'Metales Preciosos'),(23,'Petroleo y Gas'),(4,'Renta Fija'),(3,'Renta Variable'),(10,'Salud'),(25,'Startups'),(1,'Tecnologia'),(13,'Telecomunicaciones'),(14,'Transporte'),(18,'Utilities');
/*!40000 ALTER TABLE `Categorias_Activos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Diversificacion`
--

DROP TABLE IF EXISTS `Diversificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Diversificacion` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Portafolio_ID` int NOT NULL,
  `Inversion_ID` int NOT NULL,
  `Porcentaje_Asignado` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_diversificacion_portafolio` (`Portafolio_ID`),
  KEY `idx_diversificacion_inversion` (`Inversion_ID`),
  CONSTRAINT `Diversificacion_ibfk_1` FOREIGN KEY (`Portafolio_ID`) REFERENCES `Portafolios` (`ID`),
  CONSTRAINT `Diversificacion_ibfk_2` FOREIGN KEY (`Inversion_ID`) REFERENCES `Inversiones` (`ID`),
  CONSTRAINT `Diversificacion_chk_1` CHECK ((`Porcentaje_Asignado` between 0 and 100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Diversificacion`
--

LOCK TABLES `Diversificacion` WRITE;
/*!40000 ALTER TABLE `Diversificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Diversificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Estrategias`
--

DROP TABLE IF EXISTS `Estrategias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estrategias` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estrategias`
--

LOCK TABLES `Estrategias` WRITE;
/*!40000 ALTER TABLE `Estrategias` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estrategias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gastos_Inversion`
--

DROP TABLE IF EXISTS `Gastos_Inversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gastos_Inversion` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Inversion_ID` int NOT NULL,
  `Tipo_Gasto_ID` int NOT NULL,
  `Monto` decimal(15,2) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_gastos_inversion` (`Inversion_ID`),
  KEY `idx_gastos_tipo` (`Tipo_Gasto_ID`),
  CONSTRAINT `Gastos_Inversion_ibfk_1` FOREIGN KEY (`Inversion_ID`) REFERENCES `Inversiones` (`ID`),
  CONSTRAINT `Gastos_Inversion_ibfk_2` FOREIGN KEY (`Tipo_Gasto_ID`) REFERENCES `Tipos_Gasto` (`ID`),
  CONSTRAINT `Gastos_Inversion_chk_1` CHECK ((`Monto` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gastos_Inversion`
--

LOCK TABLES `Gastos_Inversion` WRITE;
/*!40000 ALTER TABLE `Gastos_Inversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gastos_Inversion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `valida_fecha_gasto` BEFORE INSERT ON `Gastos_Inversion` FOR EACH ROW BEGIN
    DECLARE fecha_inicio DATE;
    SELECT Fecha_Inicio INTO fecha_inicio FROM Inversiones WHERE ID = NEW.Inversion_ID;
    IF NEW.Fecha < fecha_inicio THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La fecha del gasto no puede ser anterior a la fecha de inicio de la inversion.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Historico_Gastos`
--

DROP TABLE IF EXISTS `Historico_Gastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Historico_Gastos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Inversion_ID` int NOT NULL,
  `Fecha` date NOT NULL,
  `Tipo_Gasto_ID` int NOT NULL,
  `Monto` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Inversion_ID` (`Inversion_ID`),
  KEY `Tipo_Gasto_ID` (`Tipo_Gasto_ID`),
  CONSTRAINT `Historico_Gastos_ibfk_1` FOREIGN KEY (`Inversion_ID`) REFERENCES `Inversiones` (`ID`),
  CONSTRAINT `Historico_Gastos_ibfk_2` FOREIGN KEY (`Tipo_Gasto_ID`) REFERENCES `Tipos_Gasto` (`ID`),
  CONSTRAINT `Historico_Gastos_chk_1` CHECK ((`Monto` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historico_Gastos`
--

LOCK TABLES `Historico_Gastos` WRITE;
/*!40000 ALTER TABLE `Historico_Gastos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Historico_Gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Historico_Mercado`
--

DROP TABLE IF EXISTS `Historico_Mercado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Historico_Mercado` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Indice_Mercado` decimal(10,2) NOT NULL,
  `Volatilidad` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Historico_Mercado_chk_1` CHECK ((`Volatilidad` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historico_Mercado`
--

LOCK TABLES `Historico_Mercado` WRITE;
/*!40000 ALTER TABLE `Historico_Mercado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Historico_Mercado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Historico_Rendimientos`
--

DROP TABLE IF EXISTS `Historico_Rendimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Historico_Rendimientos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Inversion_ID` int NOT NULL,
  `Fecha` date NOT NULL,
  `Rendimiento_Porcentual` decimal(5,2) NOT NULL,
  `Rendimiento_Monetario` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Inversion_ID` (`Inversion_ID`),
  CONSTRAINT `Historico_Rendimientos_ibfk_1` FOREIGN KEY (`Inversion_ID`) REFERENCES `Inversiones` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historico_Rendimientos`
--

LOCK TABLES `Historico_Rendimientos` WRITE;
/*!40000 ALTER TABLE `Historico_Rendimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Historico_Rendimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inversion_Categoria`
--

DROP TABLE IF EXISTS `Inversion_Categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inversion_Categoria` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Inversion_ID` int NOT NULL,
  `Categoria_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Inversion_ID` (`Inversion_ID`),
  KEY `Categoria_ID` (`Categoria_ID`),
  CONSTRAINT `Inversion_Categoria_ibfk_1` FOREIGN KEY (`Inversion_ID`) REFERENCES `Inversiones` (`ID`),
  CONSTRAINT `Inversion_Categoria_ibfk_2` FOREIGN KEY (`Categoria_ID`) REFERENCES `Categorias_Activos` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inversion_Categoria`
--

LOCK TABLES `Inversion_Categoria` WRITE;
/*!40000 ALTER TABLE `Inversion_Categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inversion_Categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inversion_Moneda`
--

DROP TABLE IF EXISTS `Inversion_Moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inversion_Moneda` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Inversion_ID` int NOT NULL,
  `Moneda_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Inversion_ID` (`Inversion_ID`),
  KEY `Moneda_ID` (`Moneda_ID`),
  CONSTRAINT `Inversion_Moneda_ibfk_1` FOREIGN KEY (`Inversion_ID`) REFERENCES `Inversiones` (`ID`),
  CONSTRAINT `Inversion_Moneda_ibfk_2` FOREIGN KEY (`Moneda_ID`) REFERENCES `Monedas` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inversion_Moneda`
--

LOCK TABLES `Inversion_Moneda` WRITE;
/*!40000 ALTER TABLE `Inversion_Moneda` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inversion_Moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inversiones`
--

DROP TABLE IF EXISTS `Inversiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inversiones` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Tipo_ID` int NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Monto_Inicial` decimal(15,2) NOT NULL,
  `Riesgo_ID` int NOT NULL,
  `Usuario_ID` int NOT NULL,
  `Descripcion` text,
  `Moneda_ID` int DEFAULT NULL,
  `Categoria_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Moneda_ID` (`Moneda_ID`),
  KEY `Categoria_ID` (`Categoria_ID`),
  KEY `idx_inversiones_tipo` (`Tipo_ID`),
  KEY `idx_inversiones_riesgo` (`Riesgo_ID`),
  KEY `idx_inversiones_usuario` (`Usuario_ID`),
  CONSTRAINT `Inversiones_ibfk_1` FOREIGN KEY (`Tipo_ID`) REFERENCES `Tipos_Inversion` (`ID`),
  CONSTRAINT `Inversiones_ibfk_2` FOREIGN KEY (`Riesgo_ID`) REFERENCES `Tipos_Riesgo` (`ID`),
  CONSTRAINT `Inversiones_ibfk_3` FOREIGN KEY (`Usuario_ID`) REFERENCES `Usuarios` (`ID`),
  CONSTRAINT `Inversiones_ibfk_4` FOREIGN KEY (`Moneda_ID`) REFERENCES `Monedas` (`ID`),
  CONSTRAINT `Inversiones_ibfk_5` FOREIGN KEY (`Categoria_ID`) REFERENCES `Categorias_Activos` (`ID`),
  CONSTRAINT `Inversiones_chk_1` CHECK ((`Monto_Inicial` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inversiones`
--

LOCK TABLES `Inversiones` WRITE;
/*!40000 ALTER TABLE `Inversiones` DISABLE KEYS */;
INSERT INTO `Inversiones` VALUES (8,'Acciones de Apple',1,'2023-01-15',10000.00,3,1,'Inversion en acciones de Apple Inc.',1,1),(9,'Acciones de Tesla',1,'2023-02-10',5000.00,3,1,'Inversion en acciones de Tesla Inc.',1,1),(10,'Bonos del Tesoro de EE.UU.',2,'2023-03-01',20000.00,1,1,'Bonos del Tesoro a 10 anos',1,2),(11,'Bonos Corporativos de Microsoft',2,'2023-04-05',15000.00,2,1,'Bonos corporativos de Microsoft con vencimiento a 5 anos',1,2),(12,'Apartamento en Miami',4,'2023-05-20',300000.00,2,1,'Inversion en un apartamento en Miami Florida',1,3),(13,'Oficina en Madrid',4,'2023-06-15',250000.00,2,1,'Inversion en una oficina en el centro de Madrid',2,3),(14,'Bitcoin',11,'2023-07-01',5000.00,3,1,'Inversion en Bitcoin',1,4),(15,'Ethereum',11,'2023-08-10',3000.00,3,1,'Inversion en Ethereum',1,4),(16,'Fondo de Tecnologia Vanguard',21,'2023-09-05',10000.00,2,1,'Fondo mutuo enfocado en empresas de tecnologia',1,1),(17,'Fondo de Energias Renovables BlackRock',21,'2023-10-01',8000.00,2,1,'Fondo mutuo enfocado en energias renovables',1,5),(18,'ETF SPDR S&P 500',22,'2023-11-15',12000.00,2,1,'ETF que replica el indice S&P 500',1,1),(19,'ETF iShares MSCI Emerging Markets',22,'2023-12-01',7000.00,3,1,'ETF enfocado en mercados emergentes',1,6),(20,'Acciones de Amazon',1,'2023-01-20',8000.00,3,1,'Inversion en acciones de Amazon.com Inc.',1,1),(21,'Acciones de Google',1,'2023-02-15',7000.00,3,1,'Inversion en acciones de Alphabet Inc. (Google)',1,1),(22,'Bonos del Gobierno de Alemania',2,'2023-03-10',18000.00,1,1,'Bonos del gobierno aleman a 5 anos',2,2),(23,'Bonos Corporativos de Apple',2,'2023-04-12',12000.00,2,1,'Bonos corporativos de Apple con vencimiento a 3 anos',1,2),(24,'Casa en Buenos Aires',4,'2023-05-25',200000.00,2,1,'Inversion en una casa en Buenos Aires Argentina',3,3),(25,'Local Comercial en Barcelona',4,'2023-06-20',180000.00,2,1,'Inversion en un local comercial en Barcelona Espana',2,3),(26,'Litecoin',11,'2023-07-05',2000.00,3,1,'Inversion en Litecoin',1,4),(27,'Ripple',11,'2023-08-15',1500.00,3,1,'Inversion en Ripple (XRP)',1,4),(28,'Fondo de Salud Fidelity',21,'2023-09-10',9000.00,2,1,'Fondo mutuo enfocado en empresas de salud',1,7),(29,'Fondo de Bienes de Consumo T. Rowe Price',21,'2023-10-05',7500.00,2,1,'Fondo mutuo enfocado en bienes de consumo',1,8),(30,'ETF Vanguard Total Stock Market',22,'2023-11-20',11000.00,2,1,'ETF que replica el mercado total de acciones de EE.UU.',1,1),(31,'ETF iShares Global Clean Energy',22,'2023-12-05',6000.00,3,1,'ETF enfocado en energias limpias a nivel global',1,5),(32,'Acciones de Netflix',1,'2023-01-25',6000.00,3,1,'Inversion en acciones de Netflix Inc.',1,1),(33,'Acciones de Meta (Facebook)',1,'2023-02-20',5500.00,3,1,'Inversion en acciones de Meta Platforms Inc.',1,1),(34,'Bonos del Gobierno de Japon',2,'2023-03-15',22000.00,1,1,'Bonos del gobierno japones a 7 anos',4,2),(35,'Bonos Corporativos de Tesla',2,'2023-04-18',10000.00,2,1,'Bonos corporativos de Tesla con vencimiento a 4 anos',1,2),(36,'Terreno en Cancun',4,'2023-05-30',150000.00,2,1,'Inversion en un terreno en Cancun Mexico',1,3),(37,'Edificio en Lima',4,'2023-06-25',280000.00,2,1,'Inversion en un edificio en Lima Peru',3,3),(38,'Cardano',11,'2023-07-10',2500.00,3,1,'Inversion en Cardano (ADA)',1,4),(39,'Polkadot',11,'2023-08-20',1800.00,3,1,'Inversion en Polkadot (DOT)',1,4),(40,'Fondo de Tecnologia T. Rowe Price',21,'2023-09-15',8500.00,2,1,'Fondo mutuo enfocado en empresas de tecnologia',1,1),(41,'Fondo de Infraestructura BlackRock',21,'2023-10-10',7000.00,2,1,'Fondo mutuo enfocado en infraestructura',1,9),(42,'ETF Invesco QQQ',22,'2023-11-25',13000.00,2,1,'ETF que replica el indice NASDAQ-100',1,1),(43,'ETF iShares Global Tech',22,'2023-12-10',6500.00,3,1,'ETF enfocado en empresas de tecnologia a nivel global',1,1),(44,'Acciones de NVIDIA',1,'2023-01-30',9000.00,3,1,'Inversion en acciones de NVIDIA Corporation',1,1),(45,'Acciones de Intel',1,'2023-02-25',4500.00,3,1,'Inversion en acciones de Intel Corporation',1,1),(46,'Bonos del Gobierno de Canada',2,'2023-03-20',19000.00,1,1,'Bonos del gobierno canadiense a 10 anos',5,2),(47,'Bonos Corporativos de Amazon',2,'2023-04-22',11000.00,2,1,'Bonos corporativos de Amazon con vencimiento a 5 anos',1,2),(48,'Casa en Santiago',4,'2023-06-01',220000.00,2,1,'Inversion en una casa en Santiago Chile',3,3),(49,'Oficina en Bogota',4,'2023-06-30',260000.00,2,1,'Inversion en una oficina en Bogota Colombia',3,3),(50,'Solana',11,'2023-07-15',3000.00,3,1,'Inversion en Solana (SOL)',1,4),(51,'Avalanche',11,'2023-08-25',2000.00,3,1,'Inversion en Avalanche (AVAX)',1,4),(52,'Fondo de Energia Fidelity',21,'2023-09-20',9500.00,2,1,'Fondo mutuo enfocado en empresas de energia',1,5),(53,'Fondo de Telecomunicaciones Vanguard',21,'2023-10-15',8000.00,2,1,'Fondo mutuo enfocado en telecomunicaciones',1,10),(54,'ETF Schwab US Broad Market',22,'2023-11-30',14000.00,2,1,'ETF que replica el mercado amplio de EE.UU.',1,1),(55,'ETF iShares Global Healthcare',22,'2023-12-15',7000.00,3,1,'ETF enfocado en empresas de salud a nivel global',1,7),(56,'Acciones de AMD',1,'2023-02-05',5000.00,3,1,'Inversion en acciones de Advanced Micro Devices Inc.',1,1),(57,'Acciones de IBM',1,'2023-03-01',4000.00,3,1,'Inversion en acciones de International Business Machines Corp.',1,1),(58,'Bonos del Gobierno de Francia',2,'2023-03-25',21000.00,1,1,'Bonos del gobierno frances a 5 anos',2,2),(59,'Bonos Corporativos de Google',2,'2023-04-28',13000.00,2,1,'Bonos corporativos de Alphabet Inc. (Google) con vencimiento a 4 anos',1,2),(60,'Terreno en Medellin',4,'2023-06-05',170000.00,2,1,'Inversion en un terreno en Medellin Colombia',3,3),(61,'Edificio en Quito',4,'2023-07-01',240000.00,2,1,'Inversion en un edificio en Quito Ecuador',3,3),(62,'Chainlink',11,'2023-07-20',2200.00,3,1,'Inversion en Chainlink (LINK)',1,4),(63,'Uniswap',11,'2023-08-30',1800.00,3,1,'Inversion en Uniswap (UNI)',1,4),(64,'Fondo de Transporte BlackRock',21,'2023-09-25',9000.00,2,1,'Fondo mutuo enfocado en empresas de transporte',1,11),(65,'Fondo de Bienes Raices Vanguard',21,'2023-10-20',8500.00,2,1,'Fondo mutuo enfocado en bienes raices',1,3),(66,'ETF Vanguard FTSE All-World',22,'2023-12-01',15000.00,2,1,'ETF que replica el indice FTSE All-World',1,1),(67,'ETF iShares Global Financials',22,'2023-12-20',7500.00,3,1,'ETF enfocado en empresas financieras a nivel global',1,12),(68,'Acciones de Oracle',1,'2023-02-10',6000.00,3,1,'Inversion en acciones de Oracle Corporation',1,1),(69,'Acciones de Cisco',1,'2023-03-05',5500.00,3,1,'Inversion en acciones de Cisco Systems Inc.',1,1),(70,'Bonos del Gobierno de Reino Unido',2,'2023-03-30',20000.00,1,1,'Bonos del gobierno britanico a 10 anos',6,2),(71,'Bonos Corporativos de NVIDIA',2,'2023-04-30',12000.00,2,1,'Bonos corporativos de NVIDIA con vencimiento a 5 anos',1,2),(72,'Casa en Montevideo',4,'2023-06-10',210000.00,2,1,'Inversion en una casa en Montevideo Uruguay',3,3),(73,'Oficina en Caracas',4,'2023-07-05',230000.00,2,1,'Inversion en una oficina en Caracas Venezuela',3,3),(74,'Polygon',11,'2023-07-25',2500.00,3,1,'Inversion en Polygon (MATIC)',1,4),(75,'Algorand',11,'2023-09-01',2000.00,3,1,'Inversion en Algorand (ALGO)',1,4),(76,'Fondo de Tecnologia BlackRock',21,'2023-09-30',10000.00,2,1,'Fondo mutuo enfocado en empresas de tecnologia',1,1),(77,'Fondo de Energia Vanguard',21,'2023-10-25',9000.00,2,1,'Fondo mutuo enfocado en empresas de energia',1,5),(78,'ETF iShares Core S&P 500',22,'2023-12-05',16000.00,2,1,'ETF que replica el indice S&P 500',1,1),(79,'ETF Vanguard FTSE Emerging Markets',22,'2023-12-25',8000.00,3,1,'ETF enfocado en mercados emergentes',1,6),(80,'Acciones de Adobe',1,'2023-02-15',7000.00,3,1,'Inversion en acciones de Adobe Inc.',1,1),(81,'Acciones de Salesforce',1,'2023-03-10',6500.00,3,1,'Inversion en acciones de Salesforce.com Inc.',1,1),(82,'Bonos del Gobierno de Italia',2,'2023-04-05',19000.00,1,1,'Bonos del gobierno italiano a 7 anos',2,2),(83,'Bonos Corporativos de Intel',2,'2023-05-01',11000.00,2,1,'Bonos corporativos de Intel con vencimiento a 4 anos',1,2),(84,'Terreno en Guayaquil',4,'2023-06-15',180000.00,2,1,'Inversion en un terreno en Guayaquil Ecuador',3,3),(85,'Edificio en Asuncion',4,'2023-07-10',220000.00,2,1,'Inversion en un edificio en Asuncion Paraguay',3,3),(86,'Stellar',11,'2023-07-30',2300.00,3,1,'Inversion en Stellar (XLM)',1,4),(87,'VeChain',11,'2023-09-05',1700.00,3,1,'Inversion en VeChain (VET)',1,4),(88,'Fondo de Salud BlackRock',21,'2023-10-01',9500.00,2,1,'Fondo mutuo enfocado en empresas de salud',1,7),(89,'Fondo de Bienes de Consumo Fidelity',21,'2023-10-30',8500.00,2,1,'Fondo mutuo enfocado en bienes de consumo',1,8),(90,'ETF Schwab International Equity',22,'2023-12-10',17000.00,2,1,'ETF que replica el mercado internacional de acciones',1,1),(91,'ETF iShares Global Real Estate',22,'2023-12-30',9000.00,3,1,'ETF enfocado en bienes raices a nivel global',1,3),(92,'Acciones de PayPal',1,'2023-02-20',8000.00,3,1,'Inversion en acciones de PayPal Holdings Inc.',1,1),(93,'Acciones de Shopify',1,'2023-03-15',7500.00,3,1,'Inversion en acciones de Shopify Inc.',1,1),(94,'Bonos del Gobierno de Espana',2,'2023-04-10',20000.00,1,1,'Bonos del gobierno espanol a 10 anos',2,2),(95,'Bonos Corporativos de AMD',2,'2023-05-05',12000.00,2,1,'Bonos corporativos de AMD con vencimiento a 5 anos',1,2),(96,'Casa en San Jose',4,'2023-06-20',230000.00,2,1,'Inversion en una casa en San Jose Costa Rica',3,3),(97,'Oficina en Panama',4,'2023-07-15',250000.00,2,1,'Inversion en una oficina en Ciudad de Panama Panama',3,3),(98,'Tezos',11,'2023-08-01',2400.00,3,1,'Inversion en Tezos (XTZ)',1,4),(99,'Filecoin',11,'2023-09-10',1900.00,3,1,'Inversion en Filecoin (FIL)',1,4),(100,'Fondo de Infraestructura Fidelity',21,'2023-10-05',10000.00,2,1,'Fondo mutuo enfocado en infraestructura',1,9),(101,'Fondo de Telecomunicaciones BlackRock',21,'2023-11-01',9000.00,2,1,'Fondo mutuo enfocado en telecomunicaciones',1,10),(102,'ETF Vanguard Total International Stock',22,'2023-12-15',18000.00,2,1,'ETF que replica el mercado internacional de acciones',1,1),(103,'ETF iShares Global Consumer Discretionary',22,'2024-01-01',9500.00,3,1,'ETF enfocado en bienes de consumo discrecional a nivel global',1,8),(104,'Acciones de Square',1,'2023-02-25',8500.00,3,1,'Inversion en acciones de Square Inc.',1,1),(105,'Acciones de Zoom',1,'2023-03-20',8000.00,3,1,'Inversion en acciones de Zoom Video Communications Inc.',1,1),(106,'Bonos del Gobierno de Australia',2,'2023-04-15',21000.00,1,1,'Bonos del gobierno australiano a 10 anos',7,2),(107,'Bonos Corporativos de PayPal',2,'2023-05-10',13000.00,2,1,'Bonos corporativos de PayPal con vencimiento a 5 anos',1,2);
/*!40000 ALTER TABLE `Inversiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Log_Cambios`
--

DROP TABLE IF EXISTS `Log_Cambios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Log_Cambios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tabla_Afectada` varchar(50) NOT NULL,
  `Registro_ID` int NOT NULL,
  `Usuario_ID` int NOT NULL,
  `Fecha` datetime NOT NULL,
  `Accion` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Usuario_ID` (`Usuario_ID`),
  CONSTRAINT `Log_Cambios_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `Usuarios` (`ID`),
  CONSTRAINT `Log_Cambios_chk_1` CHECK ((`Accion` in (_latin1'INSERT',_latin1'UPDATE',_latin1'DELETE')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Log_Cambios`
--

LOCK TABLES `Log_Cambios` WRITE;
/*!40000 ALTER TABLE `Log_Cambios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Log_Cambios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mercado`
--

DROP TABLE IF EXISTS `Mercado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mercado` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Indice_Mercado` decimal(10,2) NOT NULL,
  `Volatilidad` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `Mercado_chk_1` CHECK ((`Volatilidad` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mercado`
--

LOCK TABLES `Mercado` WRITE;
/*!40000 ALTER TABLE `Mercado` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mercado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Monedas`
--

DROP TABLE IF EXISTS `Monedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Monedas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Codigo` char(3) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Codigo` (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Monedas`
--

LOCK TABLES `Monedas` WRITE;
/*!40000 ALTER TABLE `Monedas` DISABLE KEYS */;
INSERT INTO `Monedas` VALUES (1,'USD','Dolar Estadounidense'),(2,'EUR','Euro'),(3,'GBP','Libra Esterlina'),(4,'JPY','Yen Japones'),(5,'CHF','Franco Suizo'),(6,'CAD','Dolar Canadiense'),(7,'AUD','Dolar Australiano'),(8,'NZD','Dolar Neozelandes'),(9,'CNY','Yuan Chino'),(10,'HKD','Dolar de Hong Kong'),(11,'SEK','Corona Sueca'),(12,'NOK','Corona Noruega'),(13,'DKK','Corona Danesa'),(14,'SGD','Dolar de Singapur'),(15,'KRW','Won Surcoreano'),(16,'INR','Rupia India'),(17,'BRL','Real Brasileno'),(18,'MXN','Peso Mexicano'),(19,'ZAR','Rand Sudafricano'),(20,'RUB','Rublo Ruso'),(21,'TRY','Lira Turca'),(22,'PLN','Zloty Polaco'),(23,'THB','Baht Tailandes'),(24,'IDR','Rupia Indonesia'),(25,'MYR','Ringgit Malayo'),(26,'ARS','Peso Argentino'),(27,'CLP','Peso Chileno'),(28,'COP','Peso Colombiano'),(29,'PEN','Sol Peruano'),(30,'EGP','Libra Egipcia');
/*!40000 ALTER TABLE `Monedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Optimizacion`
--

DROP TABLE IF EXISTS `Optimizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Optimizacion` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Portafolio_ID` int NOT NULL,
  `Fecha` date NOT NULL,
  `ROI_Objetivo` decimal(5,2) NOT NULL,
  `Riesgo_Maximo` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Portafolio_ID` (`Portafolio_ID`),
  CONSTRAINT `Optimizacion_ibfk_1` FOREIGN KEY (`Portafolio_ID`) REFERENCES `Portafolios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Optimizacion`
--

LOCK TABLES `Optimizacion` WRITE;
/*!40000 ALTER TABLE `Optimizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Optimizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Portafolio_Inversion`
--

DROP TABLE IF EXISTS `Portafolio_Inversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Portafolio_Inversion` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Portafolio_ID` int NOT NULL,
  `Inversion_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Portafolio_ID` (`Portafolio_ID`),
  KEY `Inversion_ID` (`Inversion_ID`),
  CONSTRAINT `Portafolio_Inversion_ibfk_1` FOREIGN KEY (`Portafolio_ID`) REFERENCES `Portafolios` (`ID`),
  CONSTRAINT `Portafolio_Inversion_ibfk_2` FOREIGN KEY (`Inversion_ID`) REFERENCES `Inversiones` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Portafolio_Inversion`
--

LOCK TABLES `Portafolio_Inversion` WRITE;
/*!40000 ALTER TABLE `Portafolio_Inversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Portafolio_Inversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Portafolios`
--

DROP TABLE IF EXISTS `Portafolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Portafolios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Usuario_ID` int NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text,
  `Fecha_Creacion` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Usuario_ID` (`Usuario_ID`),
  CONSTRAINT `Portafolios_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `Usuarios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Portafolios`
--

LOCK TABLES `Portafolios` WRITE;
/*!40000 ALTER TABLE `Portafolios` DISABLE KEYS */;
/*!40000 ALTER TABLE `Portafolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rebalanceo`
--

DROP TABLE IF EXISTS `Rebalanceo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rebalanceo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Portafolio_ID` int NOT NULL,
  `Fecha` date NOT NULL,
  `Inversion_ID` int NOT NULL,
  `Porcentaje_Anterior` decimal(5,2) NOT NULL,
  `Porcentaje_Nuevo` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Portafolio_ID` (`Portafolio_ID`),
  KEY `Inversion_ID` (`Inversion_ID`),
  CONSTRAINT `Rebalanceo_ibfk_1` FOREIGN KEY (`Portafolio_ID`) REFERENCES `Portafolios` (`ID`),
  CONSTRAINT `Rebalanceo_ibfk_2` FOREIGN KEY (`Inversion_ID`) REFERENCES `Inversiones` (`ID`),
  CONSTRAINT `Rebalanceo_chk_1` CHECK ((`Porcentaje_Anterior` between 0 and 100)),
  CONSTRAINT `Rebalanceo_chk_2` CHECK ((`Porcentaje_Nuevo` between 0 and 100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rebalanceo`
--

LOCK TABLES `Rebalanceo` WRITE;
/*!40000 ALTER TABLE `Rebalanceo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rebalanceo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rendimientos`
--

DROP TABLE IF EXISTS `Rendimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rendimientos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Inversion_ID` int NOT NULL,
  `Fecha` date NOT NULL,
  `Rendimiento_Porcentual` decimal(5,2) NOT NULL,
  `Rendimiento_Monetario` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_rendimientos_inversion` (`Inversion_ID`),
  KEY `idx_rendimientos_fecha` (`Fecha`),
  CONSTRAINT `Rendimientos_ibfk_1` FOREIGN KEY (`Inversion_ID`) REFERENCES `Inversiones` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rendimientos`
--

LOCK TABLES `Rendimientos` WRITE;
/*!40000 ALTER TABLE `Rendimientos` DISABLE KEYS */;
INSERT INTO `Rendimientos` VALUES (1,8,'2023-02-15',5.00,250.00),(2,8,'2023-03-15',3.00,150.00),(3,8,'2023-04-15',-2.00,-100.00),(4,9,'2023-03-10',8.00,800.00),(5,9,'2023-04-10',6.00,600.00),(6,9,'2023-05-10',-4.00,-400.00),(7,20,'2023-04-01',1.50,450.00),(8,20,'2023-05-01',1.20,360.00),(9,20,'2023-06-01',1.00,300.00),(10,21,'2023-05-05',2.00,200.00),(11,21,'2023-06-05',1.80,180.00),(12,21,'2023-07-05',1.50,150.00),(13,32,'2023-06-20',0.50,100.00),(14,32,'2023-07-20',0.40,80.00),(15,32,'2023-08-20',0.30,60.00),(16,33,'2023-07-15',0.60,420.00),(17,33,'2023-08-15',0.50,350.00),(18,33,'2023-09-15',0.40,280.00),(19,44,'2023-08-01',10.00,200.00),(20,44,'2023-09-01',-5.00,-100.00),(21,44,'2023-10-01',8.00,160.00),(22,45,'2023-09-10',12.00,1080.00),(23,45,'2023-10-10',-3.00,-270.00),(24,45,'2023-11-10',7.00,630.00),(25,56,'2023-10-05',4.00,320.00),(26,56,'2023-11-05',3.50,280.00),(27,56,'2023-12-05',-2.00,-160.00),(28,57,'2023-11-01',5.00,150.00),(29,57,'2023-12-01',4.00,120.00),(30,57,'2024-01-01',-3.00,-90.00),(31,68,'2023-12-15',6.00,480.00),(32,68,'2024-01-15',5.00,400.00),(33,68,'2024-02-15',-4.00,-320.00),(34,69,'2024-01-01',7.00,560.00),(35,69,'2024-02-01',6.00,480.00),(36,69,'2024-03-01',-5.00,-400.00),(37,80,'2023-02-20',6.00,480.00),(38,80,'2023-03-20',5.00,400.00),(39,80,'2023-04-20',-3.00,-240.00),(40,81,'2023-03-15',7.00,490.00),(41,81,'2023-04-15',6.00,420.00),(42,81,'2023-05-15',-4.00,-280.00),(43,92,'2023-04-10',1.00,100.00),(44,92,'2023-05-10',0.80,80.00),(45,92,'2023-06-10',0.60,60.00),(46,93,'2023-05-12',2.50,250.00),(47,93,'2023-06-12',2.00,200.00),(48,93,'2023-07-12',1.50,150.00),(49,104,'2023-06-25',0.70,1400.00),(50,104,'2023-07-25',0.60,1200.00),(51,104,'2023-08-25',0.50,1000.00),(52,105,'2023-07-20',0.80,1600.00),(53,105,'2023-08-20',0.70,1400.00),(54,105,'2023-09-20',0.60,1200.00),(55,10,'2023-08-05',15.00,750.00),(56,10,'2023-09-05',-7.00,-350.00),(57,10,'2023-10-05',10.00,500.00),(58,11,'2023-09-15',18.00,2160.00),(59,11,'2023-10-15',-4.00,-480.00),(60,11,'2023-11-15',9.00,1080.00),(61,22,'2023-10-10',5.00,500.00),(62,22,'2023-11-10',4.00,400.00),(63,22,'2023-12-10',-3.00,-300.00),(64,23,'2023-11-05',6.00,360.00),(65,23,'2023-12-05',5.00,300.00),(66,23,'2024-01-05',-4.00,-240.00),(67,34,'2023-12-20',7.00,490.00),(68,34,'2024-01-20',6.00,420.00),(69,34,'2024-02-20',-5.00,-350.00),(70,35,'2024-01-05',8.00,640.00),(71,35,'2024-02-05',7.00,560.00),(72,35,'2024-03-05',-6.00,-480.00),(73,46,'2023-03-25',5.00,250.00),(74,46,'2023-04-25',4.00,200.00),(75,46,'2023-05-25',-3.00,-150.00),(76,47,'2023-04-20',6.00,360.00),(77,47,'2023-05-20',5.00,300.00),(78,47,'2023-06-20',-4.00,-240.00),(79,58,'2023-05-15',1.20,144.00),(80,58,'2023-06-15',1.00,120.00),(81,58,'2023-07-15',0.80,96.00),(82,59,'2023-06-18',2.80,336.00),(83,59,'2023-07-18',2.50,300.00),(84,59,'2023-08-18',2.00,240.00),(85,70,'2023-07-30',0.90,630.00),(86,70,'2023-08-30',0.80,560.00),(87,70,'2023-09-30',0.70,490.00),(88,71,'2023-08-25',1.00,1000.00),(89,71,'2023-09-25',0.90,900.00),(90,71,'2023-10-25',0.80,800.00),(91,82,'2023-09-10',20.00,400.00),(92,82,'2023-10-10',-10.00,-200.00),(93,82,'2023-11-10',15.00,300.00),(94,83,'2023-10-15',25.00,1250.00),(95,83,'2023-11-15',-5.00,-250.00),(96,83,'2023-12-15',12.00,600.00),(97,94,'2023-11-20',6.00,360.00),(98,94,'2024-01-20',-4.00,-240.00),(99,95,'2023-12-25',7.00,490.00),(100,95,'2024-01-25',6.00,420.00);
/*!40000 ALTER TABLE `Rendimientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `valida_fecha_rendimiento` BEFORE INSERT ON `Rendimientos` FOR EACH ROW BEGIN
    DECLARE fecha_inicio DATE;
    SELECT Fecha_Inicio INTO fecha_inicio FROM Inversiones WHERE ID = NEW.Inversion_ID;
    IF NEW.Fecha < fecha_inicio THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La fecha del rendimiento no puede ser anterior a la fecha de inicio de la inversion.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Reportes_Riesgo`
--

DROP TABLE IF EXISTS `Reportes_Riesgo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reportes_Riesgo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Portafolio_ID` int NOT NULL,
  `Fecha` date NOT NULL,
  `Volatilidad` decimal(5,2) NOT NULL,
  `Riesgo_Total` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Portafolio_ID` (`Portafolio_ID`),
  CONSTRAINT `Reportes_Riesgo_ibfk_1` FOREIGN KEY (`Portafolio_ID`) REFERENCES `Portafolios` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reportes_Riesgo`
--

LOCK TABLES `Reportes_Riesgo` WRITE;
/*!40000 ALTER TABLE `Reportes_Riesgo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Reportes_Riesgo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tipos_Gasto`
--

DROP TABLE IF EXISTS `Tipos_Gasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tipos_Gasto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` text,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tipos_Gasto`
--

LOCK TABLES `Tipos_Gasto` WRITE;
/*!40000 ALTER TABLE `Tipos_Gasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tipos_Gasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tipos_Inversion`
--

DROP TABLE IF EXISTS `Tipos_Inversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tipos_Inversion` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tipos_Inversion`
--

LOCK TABLES `Tipos_Inversion` WRITE;
/*!40000 ALTER TABLE `Tipos_Inversion` DISABLE KEYS */;
INSERT INTO `Tipos_Inversion` VALUES (1,'Acciones'),(30,'Acciones Preferentes'),(4,'Bienes Raices'),(2,'Bonos'),(28,'Bonos Corporativos'),(29,'Bonos del Tesoro'),(27,'Bonos Municipales'),(5,'Capital Privado'),(15,'Certificados de Capital de Desarrollo'),(34,'Commodities'),(9,'Creditos de Carbono'),(10,'Criptomonedas'),(25,'Cuentas de Ahorro'),(24,'Depositos a Plazo'),(12,'Derivados'),(3,'Efectivo'),(47,'Energias Renovables'),(21,'ETFs'),(38,'Factoring'),(11,'Fondos de Cobertura'),(18,'Fondos de Infraestructura'),(20,'Fondos Mutuos'),(40,'Franquicias'),(32,'Futuros'),(45,'Gas Natural'),(6,'Hipotecas'),(50,'Impact Investing'),(16,'Income Trusts'),(13,'Inversion Apalancada'),(54,'Inversion en Bienes de Consumo'),(55,'Inversion en Energia'),(58,'Inversion en Infraestructura'),(60,'Inversion en Inmobiliario Comercial'),(59,'Inversion en Inmobiliario Residencial'),(53,'Inversion en Salud'),(52,'Inversion en Tecnologia'),(57,'Inversion en Telecomunicaciones'),(56,'Inversion en Transporte'),(49,'Inversion Socialmente Responsable'),(51,'Inversion Tematica'),(39,'Leasing'),(7,'Materias Primas'),(43,'Metales Preciosos'),(36,'Microcreditos'),(8,'Objetos de Coleccion'),(26,'Obligaciones Convertibles'),(41,'Obras de Arte'),(31,'Opciones'),(37,'Peer-to-Peer Lending'),(46,'Petroleo'),(22,'Planes de Pensiones'),(44,'Productos Agricolas'),(35,'REITs'),(23,'Seguros de Vida'),(19,'SPACs'),(17,'Specialist Fund Market'),(48,'Startups'),(33,'Swaps'),(14,'Venta en Corto'),(42,'Vinos');
/*!40000 ALTER TABLE `Tipos_Inversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tipos_Riesgo`
--

DROP TABLE IF EXISTS `Tipos_Riesgo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tipos_Riesgo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nivel` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nivel` (`Nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tipos_Riesgo`
--

LOCK TABLES `Tipos_Riesgo` WRITE;
/*!40000 ALTER TABLE `Tipos_Riesgo` DISABLE KEYS */;
INSERT INTO `Tipos_Riesgo` VALUES (3,'Alto'),(1,'Bajo'),(2,'Moderado'),(4,'Muy Alto');
/*!40000 ALTER TABLE `Tipos_Riesgo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Fecha_Registro` date NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'James Smith','james.smith@mail.com','2025-01-15'),(2,'Michael Johnson','michael.johnson@earthlink.net','2025-01-16'),(3,'Robert Williams','robert.williams@peoplepc.com','2025-01-17'),(4,'David Brown','david.brown@usa.net','2025-01-18'),(5,'William Jones','william.jones@socal.rr.com','2025-01-19'),(6,'Richard Garcia','richard.garcia@cs.com','2025-01-20'),(7,'Joseph Martinez','joseph.martinez@yahoo.com','2025-01-21'),(8,'Charles Rodriguez','charles.rodriguez@lycos.com','2025-01-22'),(9,'Thomas Hernandez','thomas.hernandez@knology.net','2025-01-23'),(10,'Christopher Lopez','christopher.lopez@mac.com','2025-01-24'),(11,'Daniel Gonzalez','daniel.gonzalez@mail.com','2025-01-25'),(12,'Matthew Wilson','matthew.wilson@earthlink.net','2025-01-26'),(13,'Anthony Anderson','anthony.anderson@peoplepc.com','2025-01-27'),(14,'Mark Thomas','mark.thomas@usa.net','2025-01-28'),(15,'Donald Taylor','donald.taylor@socal.rr.com','2025-01-29'),(16,'Steven Moore','steven.moore@cs.com','2025-01-30'),(17,'Paul Jackson','paul.jackson@yahoo.com','2025-01-31'),(18,'Andrew Martin','andrew.martin@lycos.com','2025-02-01'),(19,'Joshua Lee','joshua.lee@knology.net','2025-02-02'),(20,'Kenneth Perez','kenneth.perez@mac.com','2025-02-03'),(21,'Kevin White','kevin.white@mail.com','2025-02-04'),(22,'Brian Harris','brian.harris@earthlink.net','2025-02-05'),(23,'George Clark','george.clark@peoplepc.com','2025-02-06'),(24,'Edward Lewis','edward.lewis@usa.net','2025-02-07'),(25,'Ronald Walker','ronald.walker@socal.rr.com','2025-02-08'),(26,'Timothy Hall','timothy.hall@cs.com','2025-02-09'),(27,'Jason Allen','jason.allen@yahoo.com','2025-02-10'),(28,'Jeffrey Young','jeffrey.young@lycos.com','2025-02-11'),(29,'Ryan King','ryan.king@knology.net','2025-02-12'),(30,'Gary Wright','gary.wright@mac.com','2025-02-13'),(31,'Jacob Scott','jacob.scott@mail.com','2025-02-14'),(32,'Nicholas Green','nicholas.green@earthlink.net','2025-02-15'),(33,'Eric Adams','eric.adams@peoplepc.com','2025-02-16'),(34,'Stephen Baker','stephen.baker@usa.net','2025-02-17'),(35,'Jonathan Nelson','jonathan.nelson@socal.rr.com','2025-02-18'),(36,'Larry Carter','larry.carter@cs.com','2025-02-19'),(37,'Justin Mitchell','justin.mitchell@yahoo.com','2025-02-20'),(38,'Scott Perez','scott.perez@lycos.com','2025-02-21'),(39,'Brandon Roberts','brandon.roberts@knology.net','2025-02-22'),(40,'Frank Turner','frank.turner@mac.com','2025-02-23'),(41,'Benjamin Phillips','benjamin.phillips@mail.com','2025-02-24'),(42,'Gregory Campbell','gregory.campbell@earthlink.net','2025-02-25'),(43,'Samuel Parker','samuel.parker@peoplepc.com','2025-02-26'),(44,'Patrick Evans','patrick.evans@usa.net','2025-02-27'),(45,'Alexander Edwards','alexander.edwards@socal.rr.com','2025-02-28'),(46,'Jack Collins','jack.collins@cs.com','2025-03-01'),(47,'Dennis Stewart','dennis.stewart@yahoo.com','2025-03-02'),(48,'Jerry Sanchez','jerry.sanchez@lycos.com','2025-03-03'),(49,'Tyler Morris','tyler.morris@knology.net','2025-03-04'),(50,'Aaron Rogers','aaron.rogers@mac.com','2025-03-05');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-16 15:59:40
