-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: inversiones_db
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
-- Table structure for table `Asistencias`
--

DROP TABLE IF EXISTS `Asistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asistencias` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Empleado_ID` int NOT NULL,
  `Fecha` date NOT NULL,
  `Hora_Entrada` time NOT NULL,
  `Hora_Salida` time NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Empleado_ID` (`Empleado_ID`),
  CONSTRAINT `Asistencias_ibfk_1` FOREIGN KEY (`Empleado_ID`) REFERENCES `Empleados` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asistencias`
--

LOCK TABLES `Asistencias` WRITE;
/*!40000 ALTER TABLE `Asistencias` DISABLE KEYS */;
INSERT INTO `Asistencias` VALUES (1,39,'2021-06-25','22:44:39','13:16:09'),(2,39,'2021-03-10','22:26:02','10:04:56'),(3,24,'2022-04-15','15:38:36','00:16:28'),(4,2,'2021-12-12','11:57:40','17:20:35'),(5,4,'2021-10-07','12:33:56','08:16:36'),(6,27,'2020-01-13','00:43:25','08:55:54'),(7,11,'2022-05-15','19:11:36','00:01:47'),(8,33,'2021-12-17','06:07:59','14:33:41'),(9,40,'2024-11-29','02:31:09','06:26:46'),(10,23,'2021-05-06','00:48:14','12:15:30'),(11,25,'2021-10-03','22:26:04','16:04:04'),(12,31,'2020-07-27','14:34:25','16:37:40'),(13,31,'2023-04-15','12:02:49','04:41:54'),(14,8,'2022-01-27','21:24:07','10:58:30'),(15,10,'2023-02-17','15:06:17','20:23:15'),(16,6,'2023-02-28','19:52:02','14:27:36'),(17,13,'2022-11-18','15:55:40','18:53:42'),(18,3,'2023-03-18','18:05:43','12:25:39'),(19,28,'2022-02-14','20:24:51','03:07:41'),(20,17,'2023-03-27','14:01:52','07:10:12'),(21,43,'2022-03-25','00:16:50','01:43:29'),(22,44,'2024-12-20','05:41:16','18:13:54'),(23,15,'2020-08-23','07:13:25','17:49:43'),(24,34,'2024-03-15','19:26:54','13:35:11'),(25,37,'2021-04-14','12:34:43','01:45:55'),(26,23,'2023-11-12','15:08:32','21:43:35'),(27,24,'2020-10-18','14:16:28','14:43:38'),(28,44,'2021-07-17','18:38:40','14:57:21'),(29,41,'2024-08-28','23:51:37','05:21:33'),(30,7,'2022-02-06','06:05:13','19:07:13'),(31,10,'2024-07-14','13:37:03','14:57:16'),(32,19,'2021-07-26','23:39:08','00:02:41'),(33,13,'2021-03-24','00:45:09','08:01:16'),(34,29,'2024-11-20','18:32:41','20:40:04'),(35,46,'2022-05-06','06:44:57','20:19:48'),(36,19,'2022-09-23','01:23:04','07:20:18'),(37,14,'2020-01-28','21:06:14','21:14:06'),(38,8,'2023-11-25','13:44:12','02:42:11'),(39,13,'2020-08-16','21:22:04','18:37:41'),(40,16,'2021-12-13','02:49:17','01:45:26'),(41,2,'2024-10-02','08:16:46','03:23:29'),(42,10,'2024-12-30','20:28:23','13:40:27'),(43,25,'2024-07-30','23:40:24','12:47:16'),(44,30,'2023-04-11','10:49:04','00:44:40'),(45,26,'2020-07-31','13:29:35','16:28:19'),(46,32,'2022-06-28','16:13:27','08:31:34'),(47,42,'2020-09-30','22:58:53','01:54:37'),(48,8,'2024-11-13','03:52:52','12:47:07'),(49,12,'2022-12-10','00:18:39','14:55:38'),(50,33,'2022-01-23','23:40:46','18:25:52');
/*!40000 ALTER TABLE `Asistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Balance_General`
--

DROP TABLE IF EXISTS `Balance_General`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Balance_General` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Activos` decimal(15,2) NOT NULL,
  `Pasivos` decimal(15,2) NOT NULL,
  `Patrimonio` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Balance_General`
--

LOCK TABLES `Balance_General` WRITE;
/*!40000 ALTER TABLE `Balance_General` DISABLE KEYS */;
INSERT INTO `Balance_General` VALUES (1,'2022-05-21',249290.54,13610.05,114993.74),(2,'2020-12-21',34092.84,77026.40,124833.66),(3,'2024-09-05',75247.00,129682.55,237539.74),(4,'2023-05-15',22015.73,129688.18,139006.68),(5,'2021-02-22',285344.88,187914.03,123377.22),(6,'2021-03-14',386857.77,125948.79,261650.15),(7,'2024-08-27',344468.05,58383.13,109604.00),(8,'2023-05-25',385737.52,100030.00,207938.82),(9,'2024-04-11',213243.06,161774.20,235522.25),(10,'2022-11-25',345700.99,6798.47,58955.08),(11,'2022-05-25',280689.22,195681.10,154816.84),(12,'2023-09-10',356084.35,93334.05,282274.15),(13,'2022-03-26',390015.41,49682.92,294533.87),(14,'2020-06-23',205328.69,59626.47,237740.76),(15,'2020-09-14',384870.62,121398.44,289395.23),(16,'2022-07-02',154399.67,190135.76,187351.01),(17,'2023-07-05',25834.12,65011.86,39724.98),(18,'2024-05-10',64153.03,166024.32,115910.02),(19,'2021-11-12',285109.66,136217.88,51653.01),(20,'2020-06-28',233768.66,38018.67,207005.53),(21,'2023-08-13',285423.51,54650.09,144408.66),(22,'2025-02-01',270954.35,154384.26,270936.27),(23,'2023-03-07',93441.11,115013.76,87336.76),(24,'2020-06-18',271142.35,110668.77,26295.26),(25,'2021-07-22',41855.32,186324.24,201348.44),(26,'2023-03-11',92562.12,55448.01,247622.20),(27,'2022-07-23',72927.84,87143.91,240770.96),(28,'2021-06-03',367943.59,165304.67,132031.04),(29,'2022-10-06',180316.96,190353.98,9002.27),(30,'2020-06-15',391571.54,76897.69,204828.88),(31,'2021-12-08',157630.13,135757.22,218509.14),(32,'2020-05-29',230721.64,19574.44,233655.99),(33,'2021-12-05',102873.80,113105.04,263384.60),(34,'2021-08-10',19584.53,128353.59,14470.21),(35,'2024-07-25',142606.43,72241.06,252229.78),(36,'2023-09-06',35529.97,151368.27,77042.84),(37,'2023-02-09',161552.29,64166.96,104430.07),(38,'2021-08-20',62553.63,187985.53,140135.15),(39,'2020-07-09',98648.35,67627.57,111509.98),(40,'2020-06-08',226030.21,84298.02,138460.94),(41,'2022-07-13',433800.74,98600.44,16635.89),(42,'2024-01-06',194553.04,197733.30,260018.99),(43,'2024-03-17',61401.58,24435.96,288557.32),(44,'2020-03-11',328120.13,168508.53,131903.06),(45,'2023-08-18',256048.35,31432.85,296892.31),(46,'2020-10-23',199478.84,152913.75,84098.18),(47,'2024-05-05',262261.59,61931.37,232809.91),(48,'2021-08-26',283769.59,189656.49,178293.15),(49,'2025-01-04',187725.58,57572.47,184155.05),(50,'2020-10-15',251267.46,122550.57,206053.52);
/*!40000 ALTER TABLE `Balance_General` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campanas`
--

DROP TABLE IF EXISTS `Campanas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Campanas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Fin` date NOT NULL,
  `Presupuesto` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campanas`
--

LOCK TABLES `Campanas` WRITE;
/*!40000 ALTER TABLE `Campanas` DISABLE KEYS */;
INSERT INTO `Campanas` VALUES (1,'Realigned mission-critical superstructure','2025-01-07','2020-02-17',1076.66),(2,'Triple-buffered contextually-based task-force','2020-01-20','2024-04-02',897.40),(3,'Grass-roots human-resource data-warehouse','2022-12-03','2024-08-02',9282.74),(4,'Inverse local functionalities','2022-08-19','2020-12-31',2333.68),(5,'Progressive directional portal','2022-01-29','2024-05-10',3353.48),(6,'Enterprise-wide intermediate array','2023-02-27','2023-05-30',584.71),(7,'Streamlined secondary encryption','2022-07-28','2020-09-12',7679.13),(8,'Re-engineered solution-oriented complexity','2022-10-15','2020-11-28',9682.37),(9,'Mandatory fresh-thinking access','2020-03-08','2023-02-13',9439.73),(10,'Synergistic maximized success','2021-03-28','2022-08-08',2955.18),(11,'Face-to-face fault-tolerant emulation','2020-09-05','2024-06-10',6396.79),(12,'Multi-tiered exuding intranet','2021-03-17','2020-12-28',2945.11),(13,'Extended web-enabled open system','2023-05-24','2023-05-22',4027.68),(14,'Enhanced context-sensitive project','2020-10-15','2022-12-24',2270.81),(15,'Customizable global application','2022-04-23','2021-01-20',5100.20),(16,'User-friendly global neural-net','2024-04-12','2023-11-29',3663.83),(17,'Reactive demand-driven task-force','2023-12-24','2021-08-17',8494.70),(18,'Organized needs-based policy','2023-12-17','2025-01-15',4596.86),(19,'Programmable upward-trending support','2021-05-30','2020-12-26',8330.84),(20,'Visionary hybrid Graphic Interface','2022-10-27','2022-10-21',2025.21),(21,'Down-sized full-range service-desk','2021-07-19','2023-03-11',8979.28),(22,'Self-enabling attitude-oriented array','2023-12-19','2022-09-16',7852.31),(23,'Exclusive incremental pricing structure','2023-09-25','2024-02-26',4512.22),(24,'Organic systemic approach','2022-10-19','2024-04-22',4803.87),(25,'Universal bottom-line interface','2022-05-10','2020-01-27',9695.25),(26,'Exclusive mission-critical access','2024-01-18','2021-05-21',6573.49),(27,'Adaptive logistical encryption','2023-02-13','2022-07-10',9488.69),(28,'Profound radical standardization','2022-03-05','2022-10-08',2277.18),(29,'Switchable attitude-oriented approach','2023-03-29','2024-11-04',4093.29),(30,'Re-engineered needs-based infrastructure','2023-07-04','2023-06-07',5620.63),(31,'Synchronized mission-critical concept','2024-11-24','2023-03-18',9844.48),(32,'Multi-lateral neutral firmware','2024-08-19','2021-01-11',5973.82),(33,'Persevering asynchronous success','2024-01-04','2021-04-23',4046.30),(34,'Fully-configurable hybrid implementation','2021-11-15','2023-09-10',4683.20),(35,'Open-source scalable capacity','2022-11-15','2024-09-26',7599.70),(36,'Realigned bandwidth-monitored flexibility','2023-11-13','2023-03-31',9626.21),(37,'Multi-channeled executive framework','2021-11-07','2020-09-19',6010.82),(38,'Open-architected multimedia model','2021-02-08','2022-06-14',6660.25),(39,'Re-engineered fault-tolerant extranet','2024-08-02','2022-05-14',9669.48),(40,'Right-sized 24hour capacity','2021-11-09','2020-11-14',5834.47),(41,'Enhanced neutral strategy','2020-10-03','2023-06-15',4516.50),(42,'Exclusive background instruction set','2022-11-08','2020-01-24',5681.31),(43,'Multi-lateral optimal Local Area Network','2022-12-17','2020-12-08',4435.64),(44,'Assimilated optimal software','2024-06-08','2024-07-01',6058.88),(45,'Progressive multi-tasking monitoring','2020-01-19','2024-11-24',6799.71),(46,'Triple-buffered systemic product','2024-03-05','2023-10-30',8597.70),(47,'Synergistic intangible function','2022-03-30','2022-08-24',7508.77),(48,'Mandatory global support','2022-04-12','2020-07-26',8160.51),(49,'Visionary uniform infrastructure','2023-08-07','2024-11-15',7783.24),(50,'Secured tertiary secured line','2022-12-09','2023-09-26',8573.26);
/*!40000 ALTER TABLE `Campanas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Canales_Marketing`
--

DROP TABLE IF EXISTS `Canales_Marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Canales_Marketing` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Canales_Marketing`
--

LOCK TABLES `Canales_Marketing` WRITE;
/*!40000 ALTER TABLE `Canales_Marketing` DISABLE KEYS */;
INSERT INTO `Canales_Marketing` VALUES (1,'If','Publicidad'),(2,'Own','TV'),(3,'Effect','Publicidad'),(4,'Per','Publicidad'),(5,'Size','TV'),(6,'Gun','SEO'),(7,'Light','Publicidad'),(8,'Upon','Redes Sociales'),(9,'Poor','Email');
/*!40000 ALTER TABLE `Canales_Marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Capacitaciones`
--

DROP TABLE IF EXISTS `Capacitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Capacitaciones` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Fecha` date NOT NULL,
  `Empleado_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Empleado_ID` (`Empleado_ID`),
  CONSTRAINT `Capacitaciones_ibfk_1` FOREIGN KEY (`Empleado_ID`) REFERENCES `Empleados` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Capacitaciones`
--

LOCK TABLES `Capacitaciones` WRITE;
/*!40000 ALTER TABLE `Capacitaciones` DISABLE KEYS */;
INSERT INTO `Capacitaciones` VALUES (1,'Yeah','2024-08-22',21),(2,'Appear','2022-11-01',42),(3,'Notice','2020-01-06',19),(4,'Information','2022-08-08',44),(5,'World','2020-06-24',14),(6,'Apply','2020-06-03',8),(7,'Him','2021-04-06',44),(8,'Learn','2022-06-09',31),(9,'Less','2023-12-20',31),(10,'Success','2024-05-30',6),(11,'Long','2020-08-31',5),(12,'Employee','2023-02-16',50),(13,'Reflect','2020-09-04',7),(14,'Computer','2021-11-25',48),(15,'Bit','2022-05-07',12),(16,'Natural','2020-04-11',45),(17,'Behind','2024-02-02',32),(18,'Room','2021-06-11',27),(19,'Air','2023-03-15',45),(20,'Decision','2021-04-06',13),(21,'Kid','2024-06-14',9),(22,'Serve','2024-10-19',23),(23,'Operation','2023-05-15',23),(24,'Move','2024-12-15',47),(25,'Young','2021-05-16',3),(26,'Throughout','2025-01-09',43),(27,'Particularly','2024-07-08',4),(28,'Energy','2022-02-10',21),(29,'Without','2021-03-16',45),(30,'Eye','2024-04-01',36),(31,'Against','2021-04-04',28),(32,'Center','2024-05-20',9),(33,'Dog','2021-11-13',4),(34,'The','2021-08-11',36),(35,'Who','2022-05-29',35),(36,'Ten','2020-11-18',14),(37,'Father','2021-02-26',5),(38,'Crime','2021-12-26',18),(39,'Yet','2021-11-14',37),(40,'Reduce','2020-12-23',38),(41,'Section','2021-01-02',26),(42,'Feeling','2024-02-18',16),(43,'Walk','2024-09-08',6),(44,'Return','2024-02-26',17),(45,'Gun','2023-02-08',24),(46,'Must','2021-12-29',42),(47,'Into','2024-01-18',33),(48,'Such','2021-01-29',29),(49,'Edge','2024-12-21',18),(50,'Hotel','2020-01-18',39);
/*!40000 ALTER TABLE `Capacitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (1,'Ana Torres','ana.torres@example.com','111111111','Calle Primavera 789'),(8,'Tracy Downs','robert96@johnson.com','(776)5058607','996 Moreno Terrace North Barbarastad, AK 58423'),(9,'Kimberly Montgomery','mccarthyjeremiah@gmail.com','6451199969','05566 Ruiz Ways Suite 659 Port Yolanda, OH 44915'),(10,'Charles Sloan','veronica62@bailey.com','0016776918041248','8876 Arellano Hollow Byrdmouth, MS 54651'),(11,'Jennifer Brooks','mariadavis@gmail.com','+1757201775245068','4777 Faulkner Etensions Suite 269 Deborahburgh, MN 35329'),(12,'Brian Patel','hallcorey@gmail.com','4323127620','Unit 8416 Bo 4865 DPO AE 80328'),(13,'Brenda Hunt','millerashley@yahoo.com','8222897035','185 King Well Apt. 339 West Christopher, NC 30441'),(14,'Cynthia Medina','chris18@hotmail.com','0010115184178432','32801 Wilson Estates Apt. 135 Seanfurt, OR 43225'),(15,'Andrew Diaz','gewing@petersonrasmussen.com','0013748926246704','62829 Gill Vista Wattshaven, MS 97731'),(16,'Tracey Espinoza','pjones@yahoo.com','0014464546189','415 Walls Trace Suite 591 North Williamburgh, NV 84648'),(17,'Michael Oliver','aarmstrong@gordonunderwood.biz','+12245306954','6055 Burns Trail Suite 216 Collinstown, CT 12704'),(18,'Shelby Jimenez','fomark@carter.org','+1203914885793025','01770 Jeffrey Island South Michelemouth, AZ 48575'),(19,'Doris Reyes','mmorgan@brown.com','220.861.42911723','3007 Montgomery Mission Suite 734 Garciamouth, NH 45401'),(20,'Linda Meyer','robertsanchez@gmail.com','00118872574664112','55646 Padilla Run Brownmouth, NM 92809'),(21,'Michael Olson','jasonfrye@hotmail.com','3369021013','06932 Wilkinson Junction Apt. 413 Michaelfort, SC 51157'),(22,'Don Jones','eandrews@hotmail.com','539.810.63453419','111 Anna Drive Holmesborough, DC 83722'),(23,'Keith Rivera','mathewsandrew@gmail.com','(009)2708001','82419 Camacho Bridge Spencerstad, PA 59625'),(24,'Donald Robinson','russomichael@gmail.com','834.134.350745944','62589 Turner Rest Lake Dustinville, NY 16735'),(25,'John King','tcummings@yahoo.com','6020224202645','796 Nicole Springs Jacobside, UT 89741'),(26,'Phillip Snyder','jennifer90@mcdonaldroberts.biz','6249662560','Unit 8213 Bo 7973 DPO AE 88895'),(27,'Carrie Castaneda','lisa00@hotmail.com','590.829.1435','6567 Matthew Canyon Tuckerstad, KY 12829'),(28,'Deborah Lopez','jennifer97@hotmail.com','719.073.123184691','895 Snyder Circle Lewisville, IA 57509'),(29,'Michael Thornton','lorraine29@kimkennedy.com','+12696749068','9926 Humphrey Estates Apt. 481 East Christy, MI 37218'),(30,'Emily Richards','elizabeth27@thomas.org','+181369836883038','51398 Karen Loop West Charlesview, UT 72467'),(31,'Anita Carpenter','brownrichard@hotmail.com','(420)6467913','114 Price Cape Suite 624 Roseville, AZ 88962'),(32,'Dominique Gonzales','bdelacruz@yahoo.com','029.456.528954119','116 Erin Stravenue Apt. 432 Sparksport, MI 68252'),(33,'Susan Bender','feliciamacias@gmail.com','(405)94082468655','14053 Ryan Viaduct Isabelberg, PA 75012'),(34,'Wesley Lopez','jonesrichard@wright.net','2399322486','4117 Julie Mission Apt. 603 North Erin, KY 89369'),(35,'Katherine Davis','dunderwood@johnsonhall.biz','001802605651422436','4628 Scott Field Davisland, T 18241'),(36,'Christine Medina','jennifer09@gmail.com','0113471475','68907 Stewart Streets Apt. 336 Lake Kathrynview, MI 84177'),(37,'Matthew Rogers','tranronald@gmail.com','077.244.3953','18523 Craig Valley East Austinview, IL 07423'),(38,'Warren Rivas','hollycardenas@gmail.com','592.319.0919','3954 Dawson Rapid Suite 607 Port Stephanieton, DC 34365'),(39,'Michael Castro','sjackson@yahoo.com','+1932931975082788','110 Jacob Crest Rhondaburgh, WY 29241'),(40,'Douglas Stokes','blackburn@yahoo.com','+199164748079837','PSC 8568, Bo 3463 APO AP 38016'),(41,'Tonya Buchanan','mspears@hoover.com','+17062232017','Unit 8937 Bo 5178 DPO AP 93814'),(42,'Jason Andrade','ywhite@webb.com','+117376533192716','623 Perez Fork Kaylaland, SC 55531'),(43,'Heather Gibson','vasquezclarence@sandovalhorn.com','+1908652220707576','236 Samuel Mill Apt. 908 Jillside, MN 27576'),(44,'Jamie Mcfarland','carlos09@fischer.com','+12842197091','PSC 4866, Bo 0359 APO AP 79430'),(45,'Sandra Brown','veronicajohnson@gmail.com','+10859961794270','4595 Gregory Place Ortizton, OH 26779'),(46,'Amy Hansen','gregory65@hernandezflores.com','(240)7030286204','9731 Steven Well Apt. 486 Tracyton, LA 61212'),(47,'Laura Morse','pollardmichael@frazier.com','001296887498640749','2586 James Row East Gary, FL 34384'),(48,'William Alvarez','matthewlopez@vasquez.org','+14285914590451','PSC 1983, Bo 5554 APO AE 25240'),(49,'Scott Wilkerson','iwilson@sanchez.info','+15995972441','USNS Long FPO AA 36805'),(50,'Kevin Carlson','ohenry@rivas.com','+18926203632','21441 Suzanne Well West Annette, KY 65261'),(51,'Lauren Carter','nicole05@nelson.com','0188623239','2540 David Viaduct Stonehaven, SD 28237'),(52,'Robert Roth','dawn66@hotmail.com','4225917889098','Unit 2185 Bo 6077 DPO AA 11172'),(53,'Jessica Wright','ramirezbilly@jenkins.com','8455977474','68921 Gross Unions Suite 144 East Amanda, ME 73650'),(54,'Joseph Kelly','ostrickland@gmail.com','291.975.9397145','51848 Middleton Mall Suite 628 Mclaughlinland, VA 28760'),(55,'Elizabeth Mccoy','raymondmiller@lewis.com','366.171.5505','21165 Karen Street Pamelatown, FL 82438'),(56,'Jennifer Carpenter','cherylwiley@hotmail.com','0015229367434435','216 Stephanie Branch Blanchardport, VT 10603'),(57,'Tina Russell','aspencer@brown.com','5968081361','578 Leach Mission Suite 503 New Gabrielle, OK 42736');
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Compras`
--

DROP TABLE IF EXISTS `Compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compras` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Proveedor_ID` int NOT NULL,
  `Total` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Proveedor_ID` (`Proveedor_ID`),
  CONSTRAINT `Compras_ibfk_1` FOREIGN KEY (`Proveedor_ID`) REFERENCES `Proveedores` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compras`
--

LOCK TABLES `Compras` WRITE;
/*!40000 ALTER TABLE `Compras` DISABLE KEYS */;
INSERT INTO `Compras` VALUES (32,'2021-04-01',1,1621.18),(33,'2023-07-16',15,3680.51),(34,'2024-07-03',9,4757.82),(35,'2024-01-04',10,3186.67),(36,'2021-09-16',16,951.26),(37,'2023-07-14',3,2969.13),(38,'2020-03-19',10,2587.63),(39,'2022-08-31',5,1252.36),(40,'2021-01-06',8,2397.97),(41,'2021-04-25',13,591.31),(42,'2022-10-13',13,1758.78),(43,'2020-10-19',11,533.76),(44,'2025-01-09',10,518.16),(45,'2024-03-12',17,1053.91),(46,'2021-07-05',18,3766.20),(47,'2024-03-06',3,1192.78),(48,'2021-03-11',11,1919.80),(49,'2023-09-15',5,270.77),(50,'2022-05-25',17,357.72),(51,'2022-06-07',18,1714.77),(52,'2022-06-17',12,2615.40),(53,'2024-01-13',4,2935.93),(54,'2024-07-14',18,1163.65),(55,'2022-04-09',1,317.82),(56,'2022-03-28',7,2736.61),(57,'2020-07-15',15,1675.85),(58,'2024-09-19',4,3860.82),(59,'2022-12-24',2,2743.51),(60,'2021-02-04',13,2263.19),(61,'2022-08-15',17,1681.54),(62,'2024-03-21',7,1706.58),(63,'2022-04-22',15,3896.34),(64,'2020-02-14',19,3985.98),(65,'2023-01-31',9,4192.62),(66,'2023-02-05',9,4801.92),(67,'2022-08-05',11,4852.70),(68,'2022-06-03',15,3209.66),(69,'2021-04-08',15,3716.97),(70,'2023-10-16',17,1576.52),(71,'2024-07-24',17,2945.89),(72,'2024-11-28',13,2346.33),(73,'2022-01-26',4,2354.60),(74,'2021-08-19',11,2557.42),(75,'2020-02-15',4,3807.36),(76,'2023-04-05',7,2641.17),(77,'2020-04-11',2,2568.59),(78,'2023-03-08',8,3227.47),(79,'2023-01-16',3,3861.61),(80,'2024-06-29',18,1951.59),(81,'2023-04-24',10,1981.97);
/*!40000 ALTER TABLE `Compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Conversiones`
--

DROP TABLE IF EXISTS `Conversiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Conversiones` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Lead_ID` int NOT NULL,
  `Fecha_Conversion` date NOT NULL,
  `Monto` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Lead_ID` (`Lead_ID`),
  CONSTRAINT `Conversiones_ibfk_1` FOREIGN KEY (`Lead_ID`) REFERENCES `Leads` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Conversiones`
--

LOCK TABLES `Conversiones` WRITE;
/*!40000 ALTER TABLE `Conversiones` DISABLE KEYS */;
INSERT INTO `Conversiones` VALUES (1,46,'2020-04-05',1855.31),(2,41,'2021-12-24',4268.36),(3,25,'2023-12-06',2640.10),(4,29,'2022-01-02',1053.63),(5,43,'2020-02-25',1637.04),(6,39,'2024-01-28',4648.54),(7,42,'2022-05-06',3711.68),(8,39,'2025-01-13',2934.79),(9,41,'2023-09-21',2994.78),(10,65,'2024-10-17',2129.99),(11,44,'2021-12-30',126.87),(12,27,'2021-06-30',408.22),(13,24,'2020-06-07',2879.83),(14,27,'2022-08-22',4470.75),(15,24,'2020-12-21',2180.79),(16,43,'2021-07-20',2701.45),(17,18,'2020-06-16',3692.13),(18,43,'2024-06-19',4321.43),(19,19,'2024-11-27',589.21),(20,27,'2023-03-04',3974.35),(21,38,'2024-09-25',1494.79),(22,36,'2022-10-16',337.81),(23,39,'2022-12-09',1254.84),(24,48,'2024-06-14',3562.27),(25,44,'2020-09-18',4539.73),(26,50,'2024-03-07',1161.92),(27,34,'2023-08-05',2067.59),(28,65,'2021-07-17',938.47),(29,22,'2022-08-30',3344.81),(30,39,'2023-02-14',3889.72),(31,47,'2023-05-20',4759.97),(32,29,'2022-05-30',581.20),(33,59,'2024-10-23',3794.60),(34,22,'2024-06-05',561.62),(35,44,'2020-11-15',2192.87),(36,45,'2024-11-17',1684.59),(37,49,'2023-06-11',3955.99),(38,24,'2023-06-30',3079.17),(39,39,'2020-09-03',2920.36),(40,35,'2021-02-16',367.93),(41,43,'2021-10-21',4059.83),(42,45,'2024-12-02',1999.05),(43,56,'2024-03-17',4712.59),(44,22,'2020-08-02',1516.29),(45,25,'2021-01-05',4965.34),(46,28,'2023-04-15',881.69),(47,40,'2020-04-18',3100.02),(48,28,'2023-07-29',3171.66),(49,34,'2021-12-31',4813.76),(50,64,'2023-06-24',2594.62);
/*!40000 ALTER TABLE `Conversiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Detalle_Compras`
--

DROP TABLE IF EXISTS `Detalle_Compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Detalle_Compras` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Compra_ID` int NOT NULL,
  `Producto_ID` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Precio_Unitario` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Compra_ID` (`Compra_ID`),
  KEY `Producto_ID` (`Producto_ID`),
  CONSTRAINT `Detalle_Compras_ibfk_1` FOREIGN KEY (`Compra_ID`) REFERENCES `Compras` (`ID`),
  CONSTRAINT `Detalle_Compras_ibfk_2` FOREIGN KEY (`Producto_ID`) REFERENCES `Productos` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Detalle_Compras`
--

LOCK TABLES `Detalle_Compras` WRITE;
/*!40000 ALTER TABLE `Detalle_Compras` DISABLE KEYS */;
INSERT INTO `Detalle_Compras` VALUES (94,45,1,10,104.49),(95,37,50,3,184.00),(96,35,33,10,32.72),(97,38,4,4,22.62),(98,38,14,8,181.18),(99,80,6,6,158.41),(100,78,37,7,152.05),(101,76,29,4,247.31),(102,33,1,1,135.37),(103,32,44,8,174.81),(104,50,39,4,199.32),(105,37,23,9,233.18),(106,47,31,2,41.45),(107,54,38,6,107.54),(108,50,21,1,240.42),(109,49,5,1,148.88),(110,40,13,2,271.44),(111,62,9,6,215.63),(112,65,24,3,237.70),(113,46,16,2,250.13),(114,76,38,5,286.22),(115,81,17,7,27.72),(116,50,35,3,298.93),(117,63,36,1,55.52),(118,72,13,1,183.45),(119,80,20,6,212.05),(120,42,5,7,251.71),(121,53,21,7,17.46),(122,62,30,10,75.01),(123,77,38,10,171.32),(124,68,15,9,282.27),(125,57,15,8,241.72),(126,62,1,10,197.75),(127,74,9,9,223.78),(128,73,29,1,228.75),(129,37,5,10,142.39),(130,46,29,9,262.95),(131,47,26,6,90.24),(132,43,12,5,198.03),(133,42,22,5,17.03),(134,46,16,6,244.53),(135,73,29,9,49.31),(136,69,19,3,218.33),(137,68,46,5,234.60),(138,72,30,2,272.89),(139,80,16,4,297.01),(140,34,34,10,240.57),(141,44,8,4,118.30),(142,36,4,5,234.88),(143,81,34,5,49.50);
/*!40000 ALTER TABLE `Detalle_Compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Detalle_Ventas`
--

DROP TABLE IF EXISTS `Detalle_Ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Detalle_Ventas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Venta_ID` int NOT NULL,
  `Producto_ID` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Precio_Unitario` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Venta_ID` (`Venta_ID`),
  KEY `Producto_ID` (`Producto_ID`),
  CONSTRAINT `Detalle_Ventas_ibfk_1` FOREIGN KEY (`Venta_ID`) REFERENCES `Ventas` (`ID`),
  CONSTRAINT `Detalle_Ventas_ibfk_2` FOREIGN KEY (`Producto_ID`) REFERENCES `Productos` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Detalle_Ventas`
--

LOCK TABLES `Detalle_Ventas` WRITE;
/*!40000 ALTER TABLE `Detalle_Ventas` DISABLE KEYS */;
INSERT INTO `Detalle_Ventas` VALUES (32,37,20,4,34.87),(33,42,5,2,83.28),(34,39,41,3,107.29),(35,50,20,1,435.71),(36,40,40,3,412.00),(37,45,44,2,271.09),(38,50,43,5,459.91),(39,71,8,3,339.86),(40,39,3,1,154.36),(41,80,30,5,471.43),(42,64,41,5,170.83),(43,41,43,4,88.69),(44,66,37,2,62.19),(45,79,12,5,60.77),(46,73,44,5,279.49),(47,42,3,3,50.93),(48,56,39,5,197.29),(49,71,49,2,420.67),(50,34,21,1,172.18),(51,37,15,1,232.58),(52,36,29,4,122.99),(53,32,18,2,113.06),(54,44,2,2,250.91),(55,54,10,4,148.22),(56,38,18,1,26.46),(57,42,44,4,87.41),(58,48,11,4,379.99),(59,45,17,5,156.04),(60,68,18,1,147.02),(61,33,46,2,300.12),(62,39,49,1,419.89),(63,40,26,3,162.61),(64,47,29,3,65.56),(65,63,17,2,333.50),(66,67,31,3,204.80),(67,69,1,4,357.83),(68,77,20,4,308.15),(69,75,29,3,361.76),(70,45,6,5,122.14),(71,73,16,5,238.73),(72,71,5,4,186.88),(73,49,47,4,478.28),(74,72,31,2,258.14),(75,31,50,1,468.66),(76,35,44,4,300.32),(77,32,44,1,356.35),(78,75,20,1,432.97),(79,65,37,1,357.48),(80,49,43,2,232.32),(81,46,18,2,279.17);
/*!40000 ALTER TABLE `Detalle_Ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleados`
--

DROP TABLE IF EXISTS `Empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleados` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Puesto` varchar(100) NOT NULL,
  `Departamento` varchar(100) NOT NULL,
  `Salario` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleados`
--

LOCK TABLES `Empleados` WRITE;
/*!40000 ALTER TABLE `Empleados` DISABLE KEYS */;
INSERT INTO `Empleados` VALUES (1,'John Robinson','Soporte','IT',2841.41),(2,'Christopher Webb','Vendedor','Ventas',4213.47),(3,'Olivia Barajas','Desarrollador','Recursos Humanos',2553.69),(4,'Jessica Turner','Gerente','IT',1191.58),(5,'Katherine Reed','Soporte','IT',3547.15),(6,'Donna Beltran','Desarrollador','Marketing',3422.19),(7,'Carlos Rivers','Soporte','Marketing',4726.60),(8,'Tara Boyd','Gerente','Marketing',1618.39),(9,'Timothy Lopez','Gerente','Ventas',1436.68),(10,'Michael Martin','Analista','Recursos Humanos',3997.01),(11,'Cynthia Bailey','Soporte','Marketing',3155.44),(12,'Michael Griffin','Analista','Ventas',1148.26),(13,'Terry Best','Analista','IT',1225.81),(14,'Jessica Taylor','Gerente','Marketing',4321.26),(15,'Donald Davis','Soporte','IT',3243.87),(16,'George Armstrong','Soporte','Marketing',4117.01),(17,'Mary Jackson','Desarrollador','IT',3698.75),(18,'Patrick Clarke','Gerente','Ventas',2678.63),(19,'Mr. Gregory Simpson','Analista','Ventas',4063.15),(20,'Holly Neal','Soporte','Recursos Humanos',4413.87),(21,'Kari Sutton','Desarrollador','Ventas',4222.97),(22,'Tammy Barnes','Soporte','Recursos Humanos',4738.69),(23,'David Ward','Soporte','Marketing',2410.51),(24,'John Yates','Vendedor','Marketing',1332.92),(25,'Justin Coleman','Vendedor','Marketing',4967.33),(26,'Allison Williams','Gerente','Recursos Humanos',3177.83),(27,'Bryan Nelson','Analista','Ventas',1125.12),(28,'Erika Ruiz','Desarrollador','IT',2378.56),(29,'Deborah Schultz','Analista','Recursos Humanos',1964.47),(30,'Crystal Vang','Desarrollador','Marketing',4509.71),(31,'Kevin Moore','Soporte','IT',4927.46),(32,'Nathan Green','Analista','IT',3904.86),(33,'David Norris','Gerente','IT',4457.61),(34,'Andrew Fisher','Gerente','Recursos Humanos',4855.75),(35,'Hunter Johnson','Desarrollador','Marketing',3962.23),(36,'Brittany Pitts','Desarrollador','IT',3917.21),(37,'Mitchell Price','Gerente','IT',3201.42),(38,'Nicole Macias','Vendedor','Recursos Humanos',2852.52),(39,'Hannah Moore','Soporte','Recursos Humanos',4958.34),(40,'Robert Sharp','Desarrollador','Ventas',4009.27),(41,'Caroline Farmer DDS','Analista','Ventas',2052.83),(42,'Edward Fernandez','Analista','Marketing',1448.19),(43,'Marvin Stevens','Gerente','Marketing',4691.35),(44,'Richard Bennett','Vendedor','Marketing',1529.15),(45,'Willie Olsen','Soporte','IT',4211.29),(46,'Caitlin Williams','Vendedor','Recursos Humanos',3277.22),(47,'Kevin Miller','Vendedor','Marketing',4514.60),(48,'William Lara','Analista','Ventas',3182.81),(49,'Alex Barrera','Soporte','Recursos Humanos',3476.80),(50,'Matthew Holmes','Gerente','Ventas',1644.31);
/*!40000 ALTER TABLE `Empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Evaluaciones`
--

DROP TABLE IF EXISTS `Evaluaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Evaluaciones` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Empleado_ID` int NOT NULL,
  `Fecha` date NOT NULL,
  `Calificacion` decimal(5,2) NOT NULL,
  `Comentarios` text,
  PRIMARY KEY (`ID`),
  KEY `Empleado_ID` (`Empleado_ID`),
  CONSTRAINT `Evaluaciones_ibfk_1` FOREIGN KEY (`Empleado_ID`) REFERENCES `Empleados` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Evaluaciones`
--

LOCK TABLES `Evaluaciones` WRITE;
/*!40000 ALTER TABLE `Evaluaciones` DISABLE KEYS */;
INSERT INTO `Evaluaciones` VALUES (1,41,'2022-12-07',7.01,'Occur west director change stay support white name.'),(2,36,'2024-12-14',7.93,'Subject soon better first message physical none never.'),(3,5,'2020-12-27',9.72,'Coach meet join call listen chair interview.'),(4,14,'2022-09-28',4.30,'Buy rise major.'),(5,35,'2024-06-07',4.44,'Home cell develop describe own test age.'),(6,4,'2024-05-24',6.69,'Politics relationship time.'),(7,9,'2024-01-07',3.18,'Baby song effort without.'),(8,50,'2023-11-20',3.06,'Final key budget low.'),(9,22,'2020-07-02',9.49,'Physical social along either.'),(10,18,'2020-12-07',2.41,'Oil modern involve among agent.'),(11,31,'2020-01-17',5.87,'Window glass who air power suffer.'),(12,20,'2021-12-02',9.71,'Better wrong drop down as event color.'),(13,23,'2020-02-19',5.78,'Effort pass imagine lawyer reveal their never.'),(14,3,'2021-05-01',9.56,'Away show charge.'),(15,11,'2020-02-18',6.84,'Decide simple operation character consumer trade.'),(16,29,'2021-08-02',9.41,'Chair century allow decade our study interesting bit.'),(17,12,'2024-05-28',2.61,'Matter score maybe nation.'),(18,45,'2022-12-09',1.07,'Wrong environmental crime most.'),(19,7,'2024-04-25',2.39,'Face school require dinner sit.'),(20,45,'2024-07-02',4.36,'Huge right wear last cup.'),(21,50,'2022-05-28',1.09,'Boy discover measure eat unit.'),(22,7,'2020-01-03',2.83,'Least drug source single impact public.'),(23,19,'2024-11-06',1.81,'Color set put within.'),(24,27,'2021-12-25',6.86,'Story method hour agent throughout.'),(25,18,'2023-04-21',3.71,'Huge indicate west.'),(26,38,'2022-06-18',8.18,'Process carry movement high TV.'),(27,5,'2021-05-02',7.19,'Night require billion strategy.'),(28,15,'2020-12-13',3.40,'Worry among side.'),(29,2,'2024-01-06',7.36,'Mr pass edge early international trade.'),(30,35,'2021-03-24',6.22,'There care door within.'),(31,41,'2023-09-10',8.76,'White force two like finally finish those skill.'),(32,47,'2021-07-20',3.99,'Wrong employee identify leg affect measure toward.'),(33,28,'2021-01-24',7.54,'Free tough individual face.'),(34,21,'2021-04-11',4.66,'Daughter court group herself.'),(35,36,'2020-06-02',5.86,'Nation early ball off.'),(36,35,'2024-11-23',4.10,'Writer table could letter.'),(37,15,'2025-01-30',7.11,'Man send meet order condition.'),(38,15,'2022-01-19',6.39,'Apply medical today tax base.'),(39,39,'2024-02-19',6.63,'Have right ok natural rock nor hear.'),(40,47,'2022-02-19',3.85,'Set amount sometimes computer camera huge drive.'),(41,1,'2025-01-19',4.00,'Set smile answer PM also free.'),(42,15,'2021-06-24',2.63,'Major technology idea.'),(43,7,'2024-09-06',4.90,'Professional operation country three perform.'),(44,35,'2024-05-01',8.90,'Official choose compare detail customer ready race.'),(45,30,'2021-10-07',9.58,'Box real soon treatment culture voice like.'),(46,14,'2023-05-28',1.36,'Teach raise admit suggest image identify knowledge.'),(47,10,'2022-02-17',2.10,'American state shoulder this occur.'),(48,47,'2021-10-30',1.33,'Air staff else south condition realize end.'),(49,36,'2022-07-10',2.15,'Scientist when center.'),(50,40,'2024-02-15',4.87,'Character situation kind possible not respond watch.');
/*!40000 ALTER TABLE `Evaluaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Flujo_Caja`
--

DROP TABLE IF EXISTS `Flujo_Caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Flujo_Caja` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Nombre_Tabla` enum('Ingresos','Gastos','Ventas','Compras','Gastos_Nomina','Impuestos') NOT NULL,
  `Entradas` decimal(15,2) NOT NULL DEFAULT '0.00',
  `Salidas` decimal(15,2) NOT NULL DEFAULT '0.00',
  `Total` decimal(15,2) NOT NULL DEFAULT '0.00',
  `Ingreso_ID` int DEFAULT NULL,
  `Gasto_ID` int DEFAULT NULL,
  `Venta_ID` int DEFAULT NULL,
  `Compra_ID` int DEFAULT NULL,
  `Gastos_Nomina_ID` int DEFAULT NULL,
  `Impuesto_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Ingreso_ID` (`Ingreso_ID`),
  KEY `Gasto_ID` (`Gasto_ID`),
  KEY `Venta_ID` (`Venta_ID`),
  KEY `Compra_ID` (`Compra_ID`),
  KEY `Gastos_Nomina_ID` (`Gastos_Nomina_ID`),
  KEY `Impuesto_ID` (`Impuesto_ID`),
  CONSTRAINT `Flujo_Caja_ibfk_1` FOREIGN KEY (`Ingreso_ID`) REFERENCES `Ingresos` (`ID`) ON DELETE SET NULL,
  CONSTRAINT `Flujo_Caja_ibfk_2` FOREIGN KEY (`Gasto_ID`) REFERENCES `Gastos` (`ID`) ON DELETE SET NULL,
  CONSTRAINT `Flujo_Caja_ibfk_3` FOREIGN KEY (`Venta_ID`) REFERENCES `Ventas` (`ID`) ON DELETE SET NULL,
  CONSTRAINT `Flujo_Caja_ibfk_4` FOREIGN KEY (`Compra_ID`) REFERENCES `Compras` (`ID`) ON DELETE SET NULL,
  CONSTRAINT `Flujo_Caja_ibfk_5` FOREIGN KEY (`Gastos_Nomina_ID`) REFERENCES `Gastos_Nomina` (`ID`) ON DELETE SET NULL,
  CONSTRAINT `Flujo_Caja_ibfk_6` FOREIGN KEY (`Impuesto_ID`) REFERENCES `Impuestos` (`ID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flujo_Caja`
--

LOCK TABLES `Flujo_Caja` WRITE;
/*!40000 ALTER TABLE `Flujo_Caja` DISABLE KEYS */;
INSERT INTO `Flujo_Caja` VALUES (1,'2023-05-12','Ingresos',4474.85,0.00,4474.85,1,NULL,NULL,NULL,NULL,NULL),(2,'2024-11-06','Ingresos',37007.23,0.00,37007.23,2,NULL,NULL,NULL,NULL,NULL),(3,'2020-07-08','Ingresos',19509.52,0.00,19509.52,3,NULL,NULL,NULL,NULL,NULL),(4,'2024-01-04','Ingresos',1806.98,0.00,1806.98,4,NULL,NULL,NULL,NULL,NULL),(5,'2022-08-15','Ingresos',22040.17,0.00,22040.17,5,NULL,NULL,NULL,NULL,NULL),(6,'2024-04-23','Ingresos',43555.51,0.00,43555.51,6,NULL,NULL,NULL,NULL,NULL),(7,'2024-09-12','Ingresos',1987.92,0.00,1987.92,7,NULL,NULL,NULL,NULL,NULL),(8,'2021-03-03','Ingresos',27790.48,0.00,27790.48,8,NULL,NULL,NULL,NULL,NULL),(9,'2024-04-22','Ingresos',45452.64,0.00,45452.64,9,NULL,NULL,NULL,NULL,NULL),(10,'2020-06-29','Ingresos',47877.89,0.00,47877.89,10,NULL,NULL,NULL,NULL,NULL),(11,'2021-02-15','Ingresos',19254.62,0.00,19254.62,11,NULL,NULL,NULL,NULL,NULL),(12,'2021-12-17','Ingresos',3409.93,0.00,3409.93,12,NULL,NULL,NULL,NULL,NULL),(13,'2023-07-27','Ingresos',13414.00,0.00,13414.00,13,NULL,NULL,NULL,NULL,NULL),(14,'2023-08-27','Ingresos',41931.63,0.00,41931.63,14,NULL,NULL,NULL,NULL,NULL),(15,'2020-11-23','Ingresos',41626.68,0.00,41626.68,15,NULL,NULL,NULL,NULL,NULL),(16,'2021-03-14','Ingresos',35681.64,0.00,35681.64,16,NULL,NULL,NULL,NULL,NULL),(17,'2023-04-09','Ingresos',15183.05,0.00,15183.05,17,NULL,NULL,NULL,NULL,NULL),(18,'2024-04-15','Ingresos',12294.81,0.00,12294.81,18,NULL,NULL,NULL,NULL,NULL),(19,'2021-05-27','Ingresos',37996.54,0.00,37996.54,19,NULL,NULL,NULL,NULL,NULL),(20,'2022-08-22','Ingresos',42143.88,0.00,42143.88,20,NULL,NULL,NULL,NULL,NULL),(21,'2022-06-21','Ingresos',32329.55,0.00,32329.55,21,NULL,NULL,NULL,NULL,NULL),(22,'2020-12-12','Ingresos',3723.10,0.00,3723.10,22,NULL,NULL,NULL,NULL,NULL),(23,'2022-08-26','Ingresos',43508.96,0.00,43508.96,23,NULL,NULL,NULL,NULL,NULL),(24,'2020-07-18','Ingresos',27886.25,0.00,27886.25,24,NULL,NULL,NULL,NULL,NULL),(25,'2024-01-14','Ingresos',30461.24,0.00,30461.24,25,NULL,NULL,NULL,NULL,NULL),(26,'2023-07-20','Ingresos',19921.48,0.00,19921.48,26,NULL,NULL,NULL,NULL,NULL),(27,'2022-10-20','Ingresos',43670.95,0.00,43670.95,27,NULL,NULL,NULL,NULL,NULL),(28,'2020-07-17','Ingresos',634.52,0.00,634.52,28,NULL,NULL,NULL,NULL,NULL),(29,'2022-11-07','Ingresos',27591.49,0.00,27591.49,29,NULL,NULL,NULL,NULL,NULL),(30,'2023-11-14','Ingresos',4682.85,0.00,4682.85,30,NULL,NULL,NULL,NULL,NULL),(31,'2020-03-07','Ingresos',28892.17,0.00,28892.17,31,NULL,NULL,NULL,NULL,NULL),(32,'2022-10-12','Ingresos',48088.52,0.00,48088.52,32,NULL,NULL,NULL,NULL,NULL),(33,'2020-04-20','Ingresos',45630.30,0.00,45630.30,33,NULL,NULL,NULL,NULL,NULL),(34,'2023-03-05','Ingresos',19492.64,0.00,19492.64,34,NULL,NULL,NULL,NULL,NULL),(35,'2024-12-06','Ingresos',23894.29,0.00,23894.29,35,NULL,NULL,NULL,NULL,NULL),(36,'2024-08-31','Ingresos',27140.35,0.00,27140.35,36,NULL,NULL,NULL,NULL,NULL),(37,'2022-12-16','Ingresos',38983.65,0.00,38983.65,37,NULL,NULL,NULL,NULL,NULL),(38,'2020-04-21','Ingresos',22954.81,0.00,22954.81,38,NULL,NULL,NULL,NULL,NULL),(39,'2021-02-22','Ingresos',37458.25,0.00,37458.25,39,NULL,NULL,NULL,NULL,NULL),(40,'2023-06-04','Ingresos',40591.39,0.00,40591.39,40,NULL,NULL,NULL,NULL,NULL),(41,'2023-12-31','Ingresos',48769.49,0.00,48769.49,41,NULL,NULL,NULL,NULL,NULL),(42,'2021-11-11','Ingresos',39342.11,0.00,39342.11,42,NULL,NULL,NULL,NULL,NULL),(43,'2021-12-21','Ingresos',46648.46,0.00,46648.46,43,NULL,NULL,NULL,NULL,NULL),(44,'2021-11-28','Ingresos',13025.24,0.00,13025.24,44,NULL,NULL,NULL,NULL,NULL),(45,'2022-06-01','Ingresos',29976.16,0.00,29976.16,45,NULL,NULL,NULL,NULL,NULL),(46,'2023-02-11','Ingresos',10295.59,0.00,10295.59,46,NULL,NULL,NULL,NULL,NULL),(47,'2022-09-21','Ingresos',15318.17,0.00,15318.17,47,NULL,NULL,NULL,NULL,NULL),(48,'2022-05-28','Ingresos',28148.22,0.00,28148.22,48,NULL,NULL,NULL,NULL,NULL),(49,'2022-09-30','Ingresos',21287.89,0.00,21287.89,49,NULL,NULL,NULL,NULL,NULL),(50,'2022-07-04','Ingresos',1237.07,0.00,1237.07,50,NULL,NULL,NULL,NULL,NULL),(64,'2024-04-09','Gastos',0.00,6296.12,-6296.12,NULL,1,NULL,NULL,NULL,NULL),(65,'2021-05-26','Gastos',0.00,3306.38,-3306.38,NULL,2,NULL,NULL,NULL,NULL),(66,'2024-08-23','Gastos',0.00,5551.48,-5551.48,NULL,3,NULL,NULL,NULL,NULL),(67,'2020-05-18','Gastos',0.00,6677.53,-6677.53,NULL,4,NULL,NULL,NULL,NULL),(68,'2022-02-22','Gastos',0.00,5416.66,-5416.66,NULL,5,NULL,NULL,NULL,NULL),(69,'2023-06-14','Gastos',0.00,6614.50,-6614.50,NULL,6,NULL,NULL,NULL,NULL),(70,'2023-05-02','Gastos',0.00,5856.51,-5856.51,NULL,7,NULL,NULL,NULL,NULL),(71,'2023-08-07','Gastos',0.00,6852.73,-6852.73,NULL,8,NULL,NULL,NULL,NULL),(72,'2023-10-07','Gastos',0.00,5304.52,-5304.52,NULL,9,NULL,NULL,NULL,NULL),(73,'2024-01-10','Gastos',0.00,6426.60,-6426.60,NULL,10,NULL,NULL,NULL,NULL),(74,'2020-11-25','Gastos',0.00,8595.89,-8595.89,NULL,11,NULL,NULL,NULL,NULL),(75,'2021-08-26','Gastos',0.00,726.07,-726.07,NULL,12,NULL,NULL,NULL,NULL),(76,'2021-11-11','Gastos',0.00,1820.59,-1820.59,NULL,13,NULL,NULL,NULL,NULL),(77,'2023-11-30','Gastos',0.00,3153.09,-3153.09,NULL,14,NULL,NULL,NULL,NULL),(78,'2024-11-08','Gastos',0.00,5913.19,-5913.19,NULL,15,NULL,NULL,NULL,NULL),(79,'2022-02-15','Gastos',0.00,4828.62,-4828.62,NULL,16,NULL,NULL,NULL,NULL),(80,'2020-02-27','Gastos',0.00,3377.54,-3377.54,NULL,17,NULL,NULL,NULL,NULL),(81,'2021-07-11','Gastos',0.00,2413.94,-2413.94,NULL,18,NULL,NULL,NULL,NULL),(82,'2024-11-27','Gastos',0.00,5521.83,-5521.83,NULL,19,NULL,NULL,NULL,NULL),(83,'2022-03-06','Gastos',0.00,9351.53,-9351.53,NULL,20,NULL,NULL,NULL,NULL),(84,'2023-04-20','Gastos',0.00,3165.58,-3165.58,NULL,21,NULL,NULL,NULL,NULL),(85,'2020-01-20','Gastos',0.00,1276.68,-1276.68,NULL,22,NULL,NULL,NULL,NULL),(86,'2024-12-22','Gastos',0.00,8281.10,-8281.10,NULL,23,NULL,NULL,NULL,NULL),(87,'2020-10-15','Gastos',0.00,5514.30,-5514.30,NULL,24,NULL,NULL,NULL,NULL),(88,'2025-01-24','Gastos',0.00,5134.89,-5134.89,NULL,25,NULL,NULL,NULL,NULL),(89,'2020-11-03','Gastos',0.00,8992.33,-8992.33,NULL,26,NULL,NULL,NULL,NULL),(90,'2022-08-18','Gastos',0.00,1308.84,-1308.84,NULL,27,NULL,NULL,NULL,NULL),(91,'2024-09-14','Gastos',0.00,6916.18,-6916.18,NULL,28,NULL,NULL,NULL,NULL),(92,'2020-07-15','Gastos',0.00,4107.20,-4107.20,NULL,29,NULL,NULL,NULL,NULL),(93,'2022-12-13','Gastos',0.00,1496.30,-1496.30,NULL,30,NULL,NULL,NULL,NULL),(94,'2020-10-14','Gastos',0.00,2872.33,-2872.33,NULL,31,NULL,NULL,NULL,NULL),(95,'2024-11-11','Gastos',0.00,5088.91,-5088.91,NULL,32,NULL,NULL,NULL,NULL),(96,'2022-06-10','Gastos',0.00,1188.28,-1188.28,NULL,33,NULL,NULL,NULL,NULL),(97,'2024-01-20','Gastos',0.00,506.55,-506.55,NULL,34,NULL,NULL,NULL,NULL),(98,'2024-05-04','Gastos',0.00,6455.54,-6455.54,NULL,35,NULL,NULL,NULL,NULL),(99,'2023-11-16','Gastos',0.00,1622.85,-1622.85,NULL,36,NULL,NULL,NULL,NULL),(100,'2022-12-07','Gastos',0.00,3633.90,-3633.90,NULL,37,NULL,NULL,NULL,NULL),(101,'2023-05-09','Gastos',0.00,636.99,-636.99,NULL,38,NULL,NULL,NULL,NULL),(102,'2021-03-28','Gastos',0.00,6836.32,-6836.32,NULL,39,NULL,NULL,NULL,NULL),(103,'2023-04-17','Gastos',0.00,486.43,-486.43,NULL,40,NULL,NULL,NULL,NULL),(104,'2021-12-09','Gastos',0.00,9541.52,-9541.52,NULL,41,NULL,NULL,NULL,NULL),(105,'2022-05-30','Gastos',0.00,534.58,-534.58,NULL,42,NULL,NULL,NULL,NULL),(106,'2022-08-06','Gastos',0.00,8845.95,-8845.95,NULL,43,NULL,NULL,NULL,NULL),(107,'2020-05-05','Gastos',0.00,4771.01,-4771.01,NULL,44,NULL,NULL,NULL,NULL),(108,'2020-12-07','Gastos',0.00,6504.18,-6504.18,NULL,45,NULL,NULL,NULL,NULL),(109,'2024-06-05','Gastos',0.00,2825.37,-2825.37,NULL,46,NULL,NULL,NULL,NULL),(110,'2021-02-01','Gastos',0.00,8894.03,-8894.03,NULL,47,NULL,NULL,NULL,NULL),(111,'2021-02-11','Gastos',0.00,3821.48,-3821.48,NULL,48,NULL,NULL,NULL,NULL),(112,'2025-01-18','Gastos',0.00,1238.71,-1238.71,NULL,49,NULL,NULL,NULL,NULL),(113,'2020-02-28','Gastos',0.00,998.10,-998.10,NULL,50,NULL,NULL,NULL,NULL),(127,'2021-10-18','Ventas',541.96,0.00,541.96,NULL,NULL,31,NULL,NULL,NULL),(128,'2023-12-24','Ventas',753.91,0.00,753.91,NULL,NULL,32,NULL,NULL,NULL),(129,'2022-07-13','Ventas',540.01,0.00,540.01,NULL,NULL,33,NULL,NULL,NULL),(130,'2020-10-08','Ventas',673.00,0.00,673.00,NULL,NULL,34,NULL,NULL,NULL),(131,'2021-10-17','Ventas',833.98,0.00,833.98,NULL,NULL,35,NULL,NULL,NULL),(132,'2020-12-24','Ventas',418.48,0.00,418.48,NULL,NULL,36,NULL,NULL,NULL),(133,'2022-06-28','Ventas',148.32,0.00,148.32,NULL,NULL,37,NULL,NULL,NULL),(134,'2020-02-10','Ventas',173.87,0.00,173.87,NULL,NULL,38,NULL,NULL,NULL),(135,'2022-03-03','Ventas',510.14,0.00,510.14,NULL,NULL,39,NULL,NULL,NULL),(136,'2022-03-06','Ventas',696.42,0.00,696.42,NULL,NULL,40,NULL,NULL,NULL),(137,'2022-08-30','Ventas',863.30,0.00,863.30,NULL,NULL,41,NULL,NULL,NULL),(138,'2024-12-24','Ventas',640.95,0.00,640.95,NULL,NULL,42,NULL,NULL,NULL),(139,'2023-06-20','Ventas',131.89,0.00,131.89,NULL,NULL,43,NULL,NULL,NULL),(140,'2020-03-19','Ventas',277.47,0.00,277.47,NULL,NULL,44,NULL,NULL,NULL),(141,'2023-03-19','Ventas',759.41,0.00,759.41,NULL,NULL,45,NULL,NULL,NULL),(142,'2020-08-06','Ventas',644.08,0.00,644.08,NULL,NULL,46,NULL,NULL,NULL),(143,'2022-11-16','Ventas',823.87,0.00,823.87,NULL,NULL,47,NULL,NULL,NULL),(144,'2020-12-02','Ventas',215.09,0.00,215.09,NULL,NULL,48,NULL,NULL,NULL),(145,'2023-03-27','Ventas',576.68,0.00,576.68,NULL,NULL,49,NULL,NULL,NULL),(146,'2021-04-02','Ventas',845.71,0.00,845.71,NULL,NULL,50,NULL,NULL,NULL),(147,'2021-08-10','Ventas',629.09,0.00,629.09,NULL,NULL,51,NULL,NULL,NULL),(148,'2021-10-23','Ventas',990.19,0.00,990.19,NULL,NULL,52,NULL,NULL,NULL),(149,'2022-05-27','Ventas',61.30,0.00,61.30,NULL,NULL,53,NULL,NULL,NULL),(150,'2021-07-23','Ventas',884.25,0.00,884.25,NULL,NULL,54,NULL,NULL,NULL),(151,'2020-12-12','Ventas',514.09,0.00,514.09,NULL,NULL,55,NULL,NULL,NULL),(152,'2020-02-05','Ventas',684.03,0.00,684.03,NULL,NULL,56,NULL,NULL,NULL),(153,'2021-11-25','Ventas',332.04,0.00,332.04,NULL,NULL,57,NULL,NULL,NULL),(154,'2020-08-23','Ventas',587.79,0.00,587.79,NULL,NULL,58,NULL,NULL,NULL),(155,'2020-12-01','Ventas',237.68,0.00,237.68,NULL,NULL,59,NULL,NULL,NULL),(156,'2020-09-25','Ventas',970.49,0.00,970.49,NULL,NULL,60,NULL,NULL,NULL),(157,'2023-09-04','Ventas',279.53,0.00,279.53,NULL,NULL,61,NULL,NULL,NULL),(158,'2021-05-16','Ventas',498.06,0.00,498.06,NULL,NULL,62,NULL,NULL,NULL),(159,'2023-11-08','Ventas',80.59,0.00,80.59,NULL,NULL,63,NULL,NULL,NULL),(160,'2022-11-19','Ventas',143.58,0.00,143.58,NULL,NULL,64,NULL,NULL,NULL),(161,'2022-04-11','Ventas',469.83,0.00,469.83,NULL,NULL,65,NULL,NULL,NULL),(162,'2024-07-02','Ventas',224.03,0.00,224.03,NULL,NULL,66,NULL,NULL,NULL),(163,'2023-02-06','Ventas',655.17,0.00,655.17,NULL,NULL,67,NULL,NULL,NULL),(164,'2022-09-26','Ventas',665.03,0.00,665.03,NULL,NULL,68,NULL,NULL,NULL),(165,'2023-12-28','Ventas',873.85,0.00,873.85,NULL,NULL,69,NULL,NULL,NULL),(166,'2020-10-17','Ventas',751.32,0.00,751.32,NULL,NULL,70,NULL,NULL,NULL),(167,'2020-08-18','Ventas',685.12,0.00,685.12,NULL,NULL,71,NULL,NULL,NULL),(168,'2020-10-22','Ventas',920.25,0.00,920.25,NULL,NULL,72,NULL,NULL,NULL),(169,'2021-07-27','Ventas',400.16,0.00,400.16,NULL,NULL,73,NULL,NULL,NULL),(170,'2023-04-29','Ventas',258.73,0.00,258.73,NULL,NULL,74,NULL,NULL,NULL),(171,'2020-12-11','Ventas',315.42,0.00,315.42,NULL,NULL,75,NULL,NULL,NULL),(172,'2020-03-18','Ventas',986.96,0.00,986.96,NULL,NULL,76,NULL,NULL,NULL),(173,'2024-06-21','Ventas',103.72,0.00,103.72,NULL,NULL,77,NULL,NULL,NULL),(174,'2020-07-14','Ventas',339.56,0.00,339.56,NULL,NULL,78,NULL,NULL,NULL),(175,'2025-01-03','Ventas',620.99,0.00,620.99,NULL,NULL,79,NULL,NULL,NULL),(176,'2021-02-10','Ventas',282.49,0.00,282.49,NULL,NULL,80,NULL,NULL,NULL),(190,'2021-04-01','Compras',0.00,1621.18,-1621.18,NULL,NULL,NULL,32,NULL,NULL),(191,'2023-07-16','Compras',0.00,3680.51,-3680.51,NULL,NULL,NULL,33,NULL,NULL),(192,'2024-07-03','Compras',0.00,4757.82,-4757.82,NULL,NULL,NULL,34,NULL,NULL),(193,'2024-01-04','Compras',0.00,3186.67,-3186.67,NULL,NULL,NULL,35,NULL,NULL),(194,'2021-09-16','Compras',0.00,951.26,-951.26,NULL,NULL,NULL,36,NULL,NULL),(195,'2023-07-14','Compras',0.00,2969.13,-2969.13,NULL,NULL,NULL,37,NULL,NULL),(196,'2020-03-19','Compras',0.00,2587.63,-2587.63,NULL,NULL,NULL,38,NULL,NULL),(197,'2022-08-31','Compras',0.00,1252.36,-1252.36,NULL,NULL,NULL,39,NULL,NULL),(198,'2021-01-06','Compras',0.00,2397.97,-2397.97,NULL,NULL,NULL,40,NULL,NULL),(199,'2021-04-25','Compras',0.00,591.31,-591.31,NULL,NULL,NULL,41,NULL,NULL),(200,'2022-10-13','Compras',0.00,1758.78,-1758.78,NULL,NULL,NULL,42,NULL,NULL),(201,'2020-10-19','Compras',0.00,533.76,-533.76,NULL,NULL,NULL,43,NULL,NULL),(202,'2025-01-09','Compras',0.00,518.16,-518.16,NULL,NULL,NULL,44,NULL,NULL),(203,'2024-03-12','Compras',0.00,1053.91,-1053.91,NULL,NULL,NULL,45,NULL,NULL),(204,'2021-07-05','Compras',0.00,3766.20,-3766.20,NULL,NULL,NULL,46,NULL,NULL),(205,'2024-03-06','Compras',0.00,1192.78,-1192.78,NULL,NULL,NULL,47,NULL,NULL),(206,'2021-03-11','Compras',0.00,1919.80,-1919.80,NULL,NULL,NULL,48,NULL,NULL),(207,'2023-09-15','Compras',0.00,270.77,-270.77,NULL,NULL,NULL,49,NULL,NULL),(208,'2022-05-25','Compras',0.00,357.72,-357.72,NULL,NULL,NULL,50,NULL,NULL),(209,'2022-06-07','Compras',0.00,1714.77,-1714.77,NULL,NULL,NULL,51,NULL,NULL),(210,'2022-06-17','Compras',0.00,2615.40,-2615.40,NULL,NULL,NULL,52,NULL,NULL),(211,'2024-01-13','Compras',0.00,2935.93,-2935.93,NULL,NULL,NULL,53,NULL,NULL),(212,'2024-07-14','Compras',0.00,1163.65,-1163.65,NULL,NULL,NULL,54,NULL,NULL),(213,'2022-04-09','Compras',0.00,317.82,-317.82,NULL,NULL,NULL,55,NULL,NULL),(214,'2022-03-28','Compras',0.00,2736.61,-2736.61,NULL,NULL,NULL,56,NULL,NULL),(215,'2020-07-15','Compras',0.00,1675.85,-1675.85,NULL,NULL,NULL,57,NULL,NULL),(216,'2024-09-19','Compras',0.00,3860.82,-3860.82,NULL,NULL,NULL,58,NULL,NULL),(217,'2022-12-24','Compras',0.00,2743.51,-2743.51,NULL,NULL,NULL,59,NULL,NULL),(218,'2021-02-04','Compras',0.00,2263.19,-2263.19,NULL,NULL,NULL,60,NULL,NULL),(219,'2022-08-15','Compras',0.00,1681.54,-1681.54,NULL,NULL,NULL,61,NULL,NULL),(220,'2024-03-21','Compras',0.00,1706.58,-1706.58,NULL,NULL,NULL,62,NULL,NULL),(221,'2022-04-22','Compras',0.00,3896.34,-3896.34,NULL,NULL,NULL,63,NULL,NULL),(222,'2020-02-14','Compras',0.00,3985.98,-3985.98,NULL,NULL,NULL,64,NULL,NULL),(223,'2023-01-31','Compras',0.00,4192.62,-4192.62,NULL,NULL,NULL,65,NULL,NULL),(224,'2023-02-05','Compras',0.00,4801.92,-4801.92,NULL,NULL,NULL,66,NULL,NULL),(225,'2022-08-05','Compras',0.00,4852.70,-4852.70,NULL,NULL,NULL,67,NULL,NULL),(226,'2022-06-03','Compras',0.00,3209.66,-3209.66,NULL,NULL,NULL,68,NULL,NULL),(227,'2021-04-08','Compras',0.00,3716.97,-3716.97,NULL,NULL,NULL,69,NULL,NULL),(228,'2023-10-16','Compras',0.00,1576.52,-1576.52,NULL,NULL,NULL,70,NULL,NULL),(229,'2024-07-24','Compras',0.00,2945.89,-2945.89,NULL,NULL,NULL,71,NULL,NULL),(230,'2024-11-28','Compras',0.00,2346.33,-2346.33,NULL,NULL,NULL,72,NULL,NULL),(231,'2022-01-26','Compras',0.00,2354.60,-2354.60,NULL,NULL,NULL,73,NULL,NULL),(232,'2021-08-19','Compras',0.00,2557.42,-2557.42,NULL,NULL,NULL,74,NULL,NULL),(233,'2020-02-15','Compras',0.00,3807.36,-3807.36,NULL,NULL,NULL,75,NULL,NULL),(234,'2023-04-05','Compras',0.00,2641.17,-2641.17,NULL,NULL,NULL,76,NULL,NULL),(235,'2020-04-11','Compras',0.00,2568.59,-2568.59,NULL,NULL,NULL,77,NULL,NULL),(236,'2023-03-08','Compras',0.00,3227.47,-3227.47,NULL,NULL,NULL,78,NULL,NULL),(237,'2023-01-16','Compras',0.00,3861.61,-3861.61,NULL,NULL,NULL,79,NULL,NULL),(238,'2024-06-29','Compras',0.00,1951.59,-1951.59,NULL,NULL,NULL,80,NULL,NULL),(239,'2023-04-24','Compras',0.00,1981.97,-1981.97,NULL,NULL,NULL,81,NULL,NULL),(253,'2024-12-08','Gastos_Nomina',0.00,3730.06,-3730.06,NULL,NULL,NULL,NULL,1,NULL),(254,'2020-01-07','Gastos_Nomina',0.00,2557.75,-2557.75,NULL,NULL,NULL,NULL,2,NULL),(255,'2023-11-01','Gastos_Nomina',0.00,2709.66,-2709.66,NULL,NULL,NULL,NULL,3,NULL),(256,'2023-01-07','Gastos_Nomina',0.00,4268.52,-4268.52,NULL,NULL,NULL,NULL,4,NULL),(257,'2023-09-28','Gastos_Nomina',0.00,4091.11,-4091.11,NULL,NULL,NULL,NULL,5,NULL),(258,'2020-06-12','Gastos_Nomina',0.00,3757.03,-3757.03,NULL,NULL,NULL,NULL,6,NULL),(259,'2022-07-15','Gastos_Nomina',0.00,4254.75,-4254.75,NULL,NULL,NULL,NULL,7,NULL),(260,'2024-08-04','Gastos_Nomina',0.00,2058.80,-2058.80,NULL,NULL,NULL,NULL,8,NULL),(261,'2021-05-12','Gastos_Nomina',0.00,3710.96,-3710.96,NULL,NULL,NULL,NULL,9,NULL),(262,'2021-09-28','Gastos_Nomina',0.00,2365.50,-2365.50,NULL,NULL,NULL,NULL,10,NULL),(263,'2020-12-19','Gastos_Nomina',0.00,2220.87,-2220.87,NULL,NULL,NULL,NULL,11,NULL),(264,'2020-07-02','Gastos_Nomina',0.00,1406.87,-1406.87,NULL,NULL,NULL,NULL,12,NULL),(265,'2024-05-19','Gastos_Nomina',0.00,3365.83,-3365.83,NULL,NULL,NULL,NULL,13,NULL),(266,'2021-09-15','Gastos_Nomina',0.00,3093.19,-3093.19,NULL,NULL,NULL,NULL,14,NULL),(267,'2020-01-16','Gastos_Nomina',0.00,2889.02,-2889.02,NULL,NULL,NULL,NULL,15,NULL),(268,'2021-11-26','Gastos_Nomina',0.00,1247.16,-1247.16,NULL,NULL,NULL,NULL,16,NULL),(269,'2020-04-08','Gastos_Nomina',0.00,2330.50,-2330.50,NULL,NULL,NULL,NULL,17,NULL),(270,'2024-07-20','Gastos_Nomina',0.00,1673.27,-1673.27,NULL,NULL,NULL,NULL,18,NULL),(271,'2024-10-29','Gastos_Nomina',0.00,4102.12,-4102.12,NULL,NULL,NULL,NULL,19,NULL),(272,'2021-07-20','Gastos_Nomina',0.00,3446.36,-3446.36,NULL,NULL,NULL,NULL,20,NULL),(273,'2023-08-27','Gastos_Nomina',0.00,3942.63,-3942.63,NULL,NULL,NULL,NULL,21,NULL),(274,'2021-01-29','Gastos_Nomina',0.00,2466.06,-2466.06,NULL,NULL,NULL,NULL,22,NULL),(275,'2025-01-15','Gastos_Nomina',0.00,4532.38,-4532.38,NULL,NULL,NULL,NULL,23,NULL),(276,'2022-11-23','Gastos_Nomina',0.00,2295.88,-2295.88,NULL,NULL,NULL,NULL,24,NULL),(277,'2020-05-08','Gastos_Nomina',0.00,3019.36,-3019.36,NULL,NULL,NULL,NULL,25,NULL),(278,'2021-09-13','Gastos_Nomina',0.00,3224.79,-3224.79,NULL,NULL,NULL,NULL,26,NULL),(279,'2023-07-03','Gastos_Nomina',0.00,3749.16,-3749.16,NULL,NULL,NULL,NULL,27,NULL),(280,'2022-10-26','Gastos_Nomina',0.00,4855.55,-4855.55,NULL,NULL,NULL,NULL,28,NULL),(281,'2022-07-30','Gastos_Nomina',0.00,4388.07,-4388.07,NULL,NULL,NULL,NULL,29,NULL),(282,'2020-06-11','Gastos_Nomina',0.00,1635.82,-1635.82,NULL,NULL,NULL,NULL,30,NULL),(283,'2024-02-13','Gastos_Nomina',0.00,2152.26,-2152.26,NULL,NULL,NULL,NULL,31,NULL),(284,'2024-03-03','Gastos_Nomina',0.00,4148.44,-4148.44,NULL,NULL,NULL,NULL,32,NULL),(285,'2021-12-16','Gastos_Nomina',0.00,1101.19,-1101.19,NULL,NULL,NULL,NULL,33,NULL),(286,'2021-10-31','Gastos_Nomina',0.00,2292.93,-2292.93,NULL,NULL,NULL,NULL,34,NULL),(287,'2022-09-16','Gastos_Nomina',0.00,4069.90,-4069.90,NULL,NULL,NULL,NULL,35,NULL),(288,'2024-08-24','Gastos_Nomina',0.00,4411.35,-4411.35,NULL,NULL,NULL,NULL,36,NULL),(289,'2023-01-02','Gastos_Nomina',0.00,2123.74,-2123.74,NULL,NULL,NULL,NULL,37,NULL),(290,'2020-11-08','Gastos_Nomina',0.00,4492.42,-4492.42,NULL,NULL,NULL,NULL,38,NULL),(291,'2024-09-13','Gastos_Nomina',0.00,2261.43,-2261.43,NULL,NULL,NULL,NULL,39,NULL),(292,'2020-08-08','Gastos_Nomina',0.00,2517.61,-2517.61,NULL,NULL,NULL,NULL,40,NULL),(293,'2022-05-11','Gastos_Nomina',0.00,4667.27,-4667.27,NULL,NULL,NULL,NULL,41,NULL),(294,'2020-01-04','Gastos_Nomina',0.00,4565.24,-4565.24,NULL,NULL,NULL,NULL,42,NULL),(295,'2021-03-03','Gastos_Nomina',0.00,4824.45,-4824.45,NULL,NULL,NULL,NULL,43,NULL),(296,'2020-03-14','Gastos_Nomina',0.00,4492.16,-4492.16,NULL,NULL,NULL,NULL,44,NULL),(297,'2024-12-23','Gastos_Nomina',0.00,1477.22,-1477.22,NULL,NULL,NULL,NULL,45,NULL),(298,'2021-02-15','Gastos_Nomina',0.00,2340.99,-2340.99,NULL,NULL,NULL,NULL,46,NULL),(299,'2021-06-20','Gastos_Nomina',0.00,1157.26,-1157.26,NULL,NULL,NULL,NULL,47,NULL),(300,'2020-10-14','Gastos_Nomina',0.00,4948.71,-4948.71,NULL,NULL,NULL,NULL,48,NULL),(301,'2024-06-14','Gastos_Nomina',0.00,4180.65,-4180.65,NULL,NULL,NULL,NULL,49,NULL),(302,'2023-05-12','Gastos_Nomina',0.00,1965.72,-1965.72,NULL,NULL,NULL,NULL,50,NULL),(316,'2021-05-12','Impuestos',0.00,1248.99,-1248.99,NULL,NULL,NULL,NULL,NULL,1),(317,'2023-10-02','Impuestos',0.00,3539.96,-3539.96,NULL,NULL,NULL,NULL,NULL,2),(318,'2020-09-24','Impuestos',0.00,1977.72,-1977.72,NULL,NULL,NULL,NULL,NULL,3),(319,'2024-03-04','Impuestos',0.00,3208.74,-3208.74,NULL,NULL,NULL,NULL,NULL,4),(320,'2021-05-13','Impuestos',0.00,3766.65,-3766.65,NULL,NULL,NULL,NULL,NULL,5),(321,'2022-05-04','Impuestos',0.00,3546.40,-3546.40,NULL,NULL,NULL,NULL,NULL,6),(322,'2022-05-29','Impuestos',0.00,2276.03,-2276.03,NULL,NULL,NULL,NULL,NULL,7),(323,'2022-05-06','Impuestos',0.00,1975.20,-1975.20,NULL,NULL,NULL,NULL,NULL,8),(324,'2022-07-30','Impuestos',0.00,1935.68,-1935.68,NULL,NULL,NULL,NULL,NULL,9),(325,'2020-05-25','Impuestos',0.00,2597.51,-2597.51,NULL,NULL,NULL,NULL,NULL,10),(326,'2021-09-12','Impuestos',0.00,1535.78,-1535.78,NULL,NULL,NULL,NULL,NULL,11),(327,'2023-07-22','Impuestos',0.00,2943.23,-2943.23,NULL,NULL,NULL,NULL,NULL,12),(328,'2020-10-08','Impuestos',0.00,728.29,-728.29,NULL,NULL,NULL,NULL,NULL,13),(329,'2025-01-08','Impuestos',0.00,2036.92,-2036.92,NULL,NULL,NULL,NULL,NULL,14),(330,'2022-04-26','Impuestos',0.00,4909.72,-4909.72,NULL,NULL,NULL,NULL,NULL,15),(331,'2020-07-26','Impuestos',0.00,1578.71,-1578.71,NULL,NULL,NULL,NULL,NULL,16),(332,'2020-04-07','Impuestos',0.00,2610.15,-2610.15,NULL,NULL,NULL,NULL,NULL,17),(333,'2025-01-07','Impuestos',0.00,2197.38,-2197.38,NULL,NULL,NULL,NULL,NULL,18),(334,'2023-03-04','Impuestos',0.00,1621.34,-1621.34,NULL,NULL,NULL,NULL,NULL,19),(335,'2022-10-12','Impuestos',0.00,916.89,-916.89,NULL,NULL,NULL,NULL,NULL,20),(336,'2022-06-02','Impuestos',0.00,3328.17,-3328.17,NULL,NULL,NULL,NULL,NULL,21),(337,'2022-09-29','Impuestos',0.00,4669.11,-4669.11,NULL,NULL,NULL,NULL,NULL,22),(338,'2022-02-06','Impuestos',0.00,166.76,-166.76,NULL,NULL,NULL,NULL,NULL,23),(339,'2021-07-15','Impuestos',0.00,2489.94,-2489.94,NULL,NULL,NULL,NULL,NULL,24),(340,'2024-08-31','Impuestos',0.00,3320.02,-3320.02,NULL,NULL,NULL,NULL,NULL,25),(341,'2022-09-06','Impuestos',0.00,1021.40,-1021.40,NULL,NULL,NULL,NULL,NULL,26),(342,'2020-10-19','Impuestos',0.00,1648.02,-1648.02,NULL,NULL,NULL,NULL,NULL,27),(343,'2021-03-30','Impuestos',0.00,4622.54,-4622.54,NULL,NULL,NULL,NULL,NULL,28),(344,'2020-08-04','Impuestos',0.00,3685.51,-3685.51,NULL,NULL,NULL,NULL,NULL,29),(345,'2024-08-04','Impuestos',0.00,3756.82,-3756.82,NULL,NULL,NULL,NULL,NULL,30),(346,'2024-03-19','Impuestos',0.00,525.74,-525.74,NULL,NULL,NULL,NULL,NULL,31),(347,'2022-01-17','Impuestos',0.00,2000.10,-2000.10,NULL,NULL,NULL,NULL,NULL,32),(348,'2024-06-13','Impuestos',0.00,4448.56,-4448.56,NULL,NULL,NULL,NULL,NULL,33),(349,'2022-09-09','Impuestos',0.00,2355.06,-2355.06,NULL,NULL,NULL,NULL,NULL,34),(350,'2024-07-16','Impuestos',0.00,4564.69,-4564.69,NULL,NULL,NULL,NULL,NULL,35),(351,'2024-08-31','Impuestos',0.00,2130.31,-2130.31,NULL,NULL,NULL,NULL,NULL,36),(352,'2021-02-08','Impuestos',0.00,2278.31,-2278.31,NULL,NULL,NULL,NULL,NULL,37),(353,'2020-10-26','Impuestos',0.00,4358.62,-4358.62,NULL,NULL,NULL,NULL,NULL,38),(354,'2020-01-19','Impuestos',0.00,2256.39,-2256.39,NULL,NULL,NULL,NULL,NULL,39),(355,'2024-06-07','Impuestos',0.00,3237.74,-3237.74,NULL,NULL,NULL,NULL,NULL,40),(356,'2020-12-31','Impuestos',0.00,2252.02,-2252.02,NULL,NULL,NULL,NULL,NULL,41),(357,'2022-11-08','Impuestos',0.00,268.93,-268.93,NULL,NULL,NULL,NULL,NULL,42),(358,'2023-08-12','Impuestos',0.00,3539.68,-3539.68,NULL,NULL,NULL,NULL,NULL,43),(359,'2022-10-01','Impuestos',0.00,3925.97,-3925.97,NULL,NULL,NULL,NULL,NULL,44),(360,'2021-04-19','Impuestos',0.00,4382.26,-4382.26,NULL,NULL,NULL,NULL,NULL,45),(361,'2020-03-27','Impuestos',0.00,3260.65,-3260.65,NULL,NULL,NULL,NULL,NULL,46),(362,'2023-03-11','Impuestos',0.00,2934.16,-2934.16,NULL,NULL,NULL,NULL,NULL,47),(363,'2021-03-19','Impuestos',0.00,2282.81,-2282.81,NULL,NULL,NULL,NULL,NULL,48),(364,'2020-05-13','Impuestos',0.00,4499.38,-4499.38,NULL,NULL,NULL,NULL,NULL,49),(365,'2020-10-19','Impuestos',0.00,2870.72,-2870.72,NULL,NULL,NULL,NULL,NULL,50);
/*!40000 ALTER TABLE `Flujo_Caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gastos`
--

DROP TABLE IF EXISTS `Gastos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gastos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(100) NOT NULL,
  `Monto` decimal(15,2) NOT NULL,
  `Fecha` date NOT NULL,
  `Descripcion` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gastos`
--

LOCK TABLES `Gastos` WRITE;
/*!40000 ALTER TABLE `Gastos` DISABLE KEYS */;
INSERT INTO `Gastos` VALUES (1,'Marketing',6296.12,'2024-04-09','Require almost development different.'),(2,'Operativos',3306.38,'2021-05-26','Enjoy window example color.'),(3,'Impuestos',5551.48,'2024-08-23','View seven test general star yeah.'),(4,'Operativos',6677.53,'2020-05-18','Development better cup same require.'),(5,'Servicios',5416.66,'2022-02-22','Let speech always toward wonder.'),(6,'Impuestos',6614.50,'2023-06-14','Arrive difficult social pass.'),(7,'Impuestos',5856.51,'2023-05-02','Fear which ever yes amount.'),(8,'Impuestos',6852.73,'2023-08-07','Reflect weight most character.'),(9,'Marketing',5304.52,'2023-10-07','Cold mission music suffer source home wide.'),(10,'Servicios',6426.60,'2024-01-10','Account site need subject stop lot including.'),(11,'Impuestos',8595.89,'2020-11-25','American five responsibility whether could customer today.'),(12,'Servicios',726.07,'2021-08-26','Exist simple hot southern.'),(13,'Impuestos',1820.59,'2021-11-11','Manager job risk test.'),(14,'Impuestos',3153.09,'2023-11-30','Quality plan our he lead dark recognize scientist.'),(15,'Servicios',5913.19,'2024-11-08','Citizen answer anything after land identify task.'),(16,'Operativos',4828.62,'2022-02-15','Traditional article collection event husband every company some.'),(17,'Impuestos',3377.54,'2020-02-27','Safe know well more decade artist.'),(18,'Marketing',2413.94,'2021-07-11','Fact fund month wide career your southern.'),(19,'Impuestos',5521.83,'2024-11-27','Growth by however discover form amount.'),(20,'Operativos',9351.53,'2022-03-06','Condition child however former.'),(21,'Impuestos',3165.58,'2023-04-20','Place politics first television.'),(22,'Operativos',1276.68,'2020-01-20','Design recent season admit may.'),(23,'Marketing',8281.10,'2024-12-22','Doctor life manage guy.'),(24,'Operativos',5514.30,'2020-10-15','Per wife discussion of customer road.'),(25,'Marketing',5134.89,'2025-01-24','Movement admit particular but many local set candidate.'),(26,'Impuestos',8992.33,'2020-11-03','Agent across I must win couple can look.'),(27,'Operativos',1308.84,'2022-08-18','Difficult hit police either two.'),(28,'Servicios',6916.18,'2024-09-14','Minute itself enjoy fill.'),(29,'Servicios',4107.20,'2020-07-15','Amount especially that sign.'),(30,'Operativos',1496.30,'2022-12-13','Party year major fly how show.'),(31,'Servicios',2872.33,'2020-10-14','Base goal let wall control.'),(32,'Operativos',5088.91,'2024-11-11','Live thought usually carry defense society throw.'),(33,'Servicios',1188.28,'2022-06-10','Hundred bed lot every must leg Congress.'),(34,'Impuestos',506.55,'2024-01-20','Sit present throughout skill measure already.'),(35,'Marketing',6455.54,'2024-05-04','Near push which.'),(36,'Operativos',1622.85,'2023-11-16','Her consumer piece institution body away continue foreign.'),(37,'Servicios',3633.90,'2022-12-07','Main election whole realize but pressure shoulder.'),(38,'Operativos',636.99,'2023-05-09','Small they perform theory.'),(39,'Impuestos',6836.32,'2021-03-28','Walk mean newspaper building ask question.'),(40,'Servicios',486.43,'2023-04-17','Study reduce believe eight heart.'),(41,'Servicios',9541.52,'2021-12-09','Building three security cause off enjoy.'),(42,'Impuestos',534.58,'2022-05-30','Market modern officer area international base.'),(43,'Impuestos',8845.95,'2022-08-06','About get the pick his produce toward stop.'),(44,'Servicios',4771.01,'2020-05-05','Shake read on however country picture.'),(45,'Marketing',6504.18,'2020-12-07','Pick together order model condition marriage.'),(46,'Operativos',2825.37,'2024-06-05','Computer though not would not speech bank.'),(47,'Servicios',8894.03,'2021-02-01','Five catch type indeed.'),(48,'Servicios',3821.48,'2021-02-11','Her successful industry example blood call medical.'),(49,'Servicios',1238.71,'2025-01-18','Wrong evening direction expert think make.'),(50,'Operativos',998.10,'2020-02-28','Though yourself over price off.');
/*!40000 ALTER TABLE `Gastos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gastos_Marketing`
--

DROP TABLE IF EXISTS `Gastos_Marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gastos_Marketing` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Campana_ID` int NOT NULL,
  `Monto` decimal(15,2) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Campana_ID` (`Campana_ID`),
  CONSTRAINT `Gastos_Marketing_ibfk_1` FOREIGN KEY (`Campana_ID`) REFERENCES `Campanas` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gastos_Marketing`
--

LOCK TABLES `Gastos_Marketing` WRITE;
/*!40000 ALTER TABLE `Gastos_Marketing` DISABLE KEYS */;
INSERT INTO `Gastos_Marketing` VALUES (1,17,6427.82,'2021-07-03'),(2,25,7544.56,'2022-05-08'),(3,23,3321.12,'2020-09-04'),(4,20,835.76,'2023-05-15'),(5,22,6572.66,'2020-03-20'),(6,48,2251.65,'2020-03-12'),(7,35,2683.32,'2023-05-16'),(8,24,6050.12,'2020-03-25'),(9,41,7471.57,'2021-08-16'),(10,32,966.57,'2021-10-16'),(11,31,6087.26,'2024-06-16'),(12,39,9981.24,'2020-03-16'),(13,30,7562.82,'2024-04-16'),(14,31,5711.64,'2023-10-05'),(15,6,2849.14,'2024-03-06'),(16,31,6688.16,'2021-10-11'),(17,50,5680.32,'2022-02-13'),(18,1,5482.41,'2020-05-26'),(19,49,2232.39,'2021-08-21'),(20,6,8637.06,'2020-06-06'),(21,2,4935.91,'2023-12-19'),(22,3,8973.74,'2024-05-29'),(23,37,737.46,'2023-12-26'),(24,15,4736.81,'2022-10-11'),(25,15,7720.48,'2023-02-26'),(26,49,7893.78,'2020-08-07'),(27,38,2377.75,'2021-05-21'),(28,37,8461.22,'2021-07-03'),(29,17,2318.05,'2020-07-24'),(30,27,9179.83,'2023-09-13'),(31,2,7828.12,'2021-12-22'),(32,21,5197.03,'2023-07-27'),(33,9,1081.11,'2021-11-06'),(34,20,8132.45,'2023-07-22'),(35,15,3968.37,'2021-03-31'),(36,50,3307.86,'2020-06-04'),(37,33,4084.07,'2020-05-03'),(38,41,3695.97,'2022-02-24'),(39,39,2663.56,'2023-05-25'),(40,41,491.94,'2024-02-09'),(41,23,4146.88,'2024-05-17'),(42,23,4088.44,'2021-08-01'),(43,2,8584.41,'2024-01-19'),(44,11,3284.60,'2022-05-30'),(45,6,2849.15,'2022-06-19'),(46,10,1319.42,'2022-10-01'),(47,27,9196.18,'2022-08-21'),(48,30,4017.03,'2021-05-08'),(49,4,9607.38,'2024-06-23'),(50,23,5977.73,'2022-01-20');
/*!40000 ALTER TABLE `Gastos_Marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gastos_Nomina`
--

DROP TABLE IF EXISTS `Gastos_Nomina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gastos_Nomina` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Empleado_ID` int NOT NULL,
  `Monto` decimal(15,2) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Empleado_ID` (`Empleado_ID`),
  CONSTRAINT `Gastos_Nomina_ibfk_1` FOREIGN KEY (`Empleado_ID`) REFERENCES `Empleados` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gastos_Nomina`
--

LOCK TABLES `Gastos_Nomina` WRITE;
/*!40000 ALTER TABLE `Gastos_Nomina` DISABLE KEYS */;
INSERT INTO `Gastos_Nomina` VALUES (1,44,3730.06,'2024-12-08'),(2,13,2557.75,'2020-01-07'),(3,29,2709.66,'2023-11-01'),(4,38,4268.52,'2023-01-07'),(5,30,4091.11,'2023-09-28'),(6,50,3757.03,'2020-06-12'),(7,31,4254.75,'2022-07-15'),(8,43,2058.80,'2024-08-04'),(9,41,3710.96,'2021-05-12'),(10,5,2365.50,'2021-09-28'),(11,46,2220.87,'2020-12-19'),(12,15,1406.87,'2020-07-02'),(13,23,3365.83,'2024-05-19'),(14,33,3093.19,'2021-09-15'),(15,5,2889.02,'2020-01-16'),(16,35,1247.16,'2021-11-26'),(17,19,2330.50,'2020-04-08'),(18,35,1673.27,'2024-07-20'),(19,15,4102.12,'2024-10-29'),(20,26,3446.36,'2021-07-20'),(21,3,3942.63,'2023-08-27'),(22,3,2466.06,'2021-01-29'),(23,21,4532.38,'2025-01-15'),(24,28,2295.88,'2022-11-23'),(25,37,3019.36,'2020-05-08'),(26,29,3224.79,'2021-09-13'),(27,18,3749.16,'2023-07-03'),(28,48,4855.55,'2022-10-26'),(29,41,4388.07,'2022-07-30'),(30,1,1635.82,'2020-06-11'),(31,2,2152.26,'2024-02-13'),(32,34,4148.44,'2024-03-03'),(33,5,1101.19,'2021-12-16'),(34,44,2292.93,'2021-10-31'),(35,36,4069.90,'2022-09-16'),(36,12,4411.35,'2024-08-24'),(37,3,2123.74,'2023-01-02'),(38,39,4492.42,'2020-11-08'),(39,29,2261.43,'2024-09-13'),(40,49,2517.61,'2020-08-08'),(41,3,4667.27,'2022-05-11'),(42,30,4565.24,'2020-01-04'),(43,22,4824.45,'2021-03-03'),(44,20,4492.16,'2020-03-14'),(45,35,1477.22,'2024-12-23'),(46,3,2340.99,'2021-02-15'),(47,32,1157.26,'2021-06-20'),(48,21,4948.71,'2020-10-14'),(49,10,4180.65,'2024-06-14'),(50,29,1965.72,'2023-05-12');
/*!40000 ALTER TABLE `Gastos_Nomina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Impuestos`
--

DROP TABLE IF EXISTS `Impuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Impuestos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(100) NOT NULL,
  `Monto` decimal(15,2) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Impuestos`
--

LOCK TABLES `Impuestos` WRITE;
/*!40000 ALTER TABLE `Impuestos` DISABLE KEYS */;
INSERT INTO `Impuestos` VALUES (1,'Retencion',1248.99,'2021-05-12'),(2,'ISR',3539.96,'2023-10-02'),(3,'ISR',1977.72,'2020-09-24'),(4,'ISR',3208.74,'2024-03-04'),(5,'ISR',3766.65,'2021-05-13'),(6,'IVA',3546.40,'2022-05-04'),(7,'Retencion',2276.03,'2022-05-29'),(8,'Retencion',1975.20,'2022-05-06'),(9,'ISR',1935.68,'2022-07-30'),(10,'Retencion',2597.51,'2020-05-25'),(11,'Retencion',1535.78,'2021-09-12'),(12,'Retencion',2943.23,'2023-07-22'),(13,'IVA',728.29,'2020-10-08'),(14,'ISR',2036.92,'2025-01-08'),(15,'Retencion',4909.72,'2022-04-26'),(16,'Retencion',1578.71,'2020-07-26'),(17,'Retencion',2610.15,'2020-04-07'),(18,'Retencion',2197.38,'2025-01-07'),(19,'ISR',1621.34,'2023-03-04'),(20,'Retencion',916.89,'2022-10-12'),(21,'ISR',3328.17,'2022-06-02'),(22,'Retencion',4669.11,'2022-09-29'),(23,'IVA',166.76,'2022-02-06'),(24,'ISR',2489.94,'2021-07-15'),(25,'Retencion',3320.02,'2024-08-31'),(26,'ISR',1021.40,'2022-09-06'),(27,'ISR',1648.02,'2020-10-19'),(28,'ISR',4622.54,'2021-03-30'),(29,'Retencion',3685.51,'2020-08-04'),(30,'IVA',3756.82,'2024-08-04'),(31,'IVA',525.74,'2024-03-19'),(32,'Retencion',2000.10,'2022-01-17'),(33,'IVA',4448.56,'2024-06-13'),(34,'ISR',2355.06,'2022-09-09'),(35,'ISR',4564.69,'2024-07-16'),(36,'Retencion',2130.31,'2024-08-31'),(37,'Retencion',2278.31,'2021-02-08'),(38,'Retencion',4358.62,'2020-10-26'),(39,'Retencion',2256.39,'2020-01-19'),(40,'IVA',3237.74,'2024-06-07'),(41,'ISR',2252.02,'2020-12-31'),(42,'ISR',268.93,'2022-11-08'),(43,'Retencion',3539.68,'2023-08-12'),(44,'Retencion',3925.97,'2022-10-01'),(45,'ISR',4382.26,'2021-04-19'),(46,'Retencion',3260.65,'2020-03-27'),(47,'IVA',2934.16,'2023-03-11'),(48,'IVA',2282.81,'2021-03-19'),(49,'IVA',4499.38,'2020-05-13'),(50,'ISR',2870.72,'2020-10-19');
/*!40000 ALTER TABLE `Impuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingresos`
--

DROP TABLE IF EXISTS `Ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingresos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(100) NOT NULL,
  `Monto` decimal(15,2) NOT NULL,
  `Fecha` date NOT NULL,
  `Descripcion` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingresos`
--

LOCK TABLES `Ingresos` WRITE;
/*!40000 ALTER TABLE `Ingresos` DISABLE KEYS */;
INSERT INTO `Ingresos` VALUES (1,'Publicidad',4474.85,'2023-05-12','Most artist member from million include appear.'),(2,'Publicidad',37007.23,'2024-11-06','Face sell hair agency and.'),(3,'Servicios',19509.52,'2020-07-08','Office thought strategy call as.'),(4,'Publicidad',1806.98,'2024-01-04','Throughout should sit.'),(5,'Inversiones',22040.17,'2022-08-15','Edge memory discuss most letter say.'),(6,'Publicidad',43555.51,'2024-04-23','Republican along letter want.'),(7,'Ventas',1987.92,'2024-09-12','Change fund campaign growth challenge drug available.'),(8,'Inversiones',27790.48,'2021-03-03','Quite unit sister later war stand be.'),(9,'Inversiones',45452.64,'2024-04-22','Task step special contain none rate home.'),(10,'Publicidad',47877.89,'2020-06-29','Success shake husband future sea.'),(11,'Publicidad',19254.62,'2021-02-15','Traditional there area.'),(12,'Inversiones',3409.93,'2021-12-17','Put important police prevent late yeah.'),(13,'Inversiones',13414.00,'2023-07-27','Member successful prove prove truth occur.'),(14,'Servicios',41931.63,'2023-08-27','Buy add world school.'),(15,'Ventas',41626.68,'2020-11-23','Join popular environment standard.'),(16,'Inversiones',35681.64,'2021-03-14','Should area condition sort personal.'),(17,'Ventas',15183.05,'2023-04-09','Something half foot hit.'),(18,'Ventas',12294.81,'2024-04-15','Energy laugh manage identify course really series any.'),(19,'Inversiones',37996.54,'2021-05-27','Front effort which senior.'),(20,'Publicidad',42143.88,'2022-08-22','Water owner everybody thought call wish executive various.'),(21,'Inversiones',32329.55,'2022-06-21','Far professional hot draw.'),(22,'Ventas',3723.10,'2020-12-12','Well open behind audience down especially.'),(23,'Inversiones',43508.96,'2022-08-26','Represent after admit.'),(24,'Publicidad',27886.25,'2020-07-18','Body indicate company have current describe.'),(25,'Inversiones',30461.24,'2024-01-14','Just yeah ever organization bit.'),(26,'Inversiones',19921.48,'2023-07-20','Whether star cell give when key how walk.'),(27,'Publicidad',43670.95,'2022-10-20','Including message level either if leader dream.'),(28,'Inversiones',634.52,'2020-07-17','Large life authority.'),(29,'Ventas',27591.49,'2022-11-07','Strong actually organization.'),(30,'Inversiones',4682.85,'2023-11-14','Evidence draw energy child.'),(31,'Publicidad',28892.17,'2020-03-07','Move hear fish.'),(32,'Ventas',48088.52,'2022-10-12','Evidence hotel national ago because.'),(33,'Publicidad',45630.30,'2020-04-20','Eight enough stand suddenly simply hundred training simply.'),(34,'Inversiones',19492.64,'2023-03-05','Half some common end.'),(35,'Publicidad',23894.29,'2024-12-06','Audience surface ten exist leader leave.'),(36,'Inversiones',27140.35,'2024-08-31','Recent help various item.'),(37,'Inversiones',38983.65,'2022-12-16','Class chair last main rich particularly.'),(38,'Servicios',22954.81,'2020-04-21','Building top room your.'),(39,'Inversiones',37458.25,'2021-02-22','Whole behavior agency likely realize thus memory article.'),(40,'Inversiones',40591.39,'2023-06-04','Leg appear get work she like hold.'),(41,'Servicios',48769.49,'2023-12-31','Future within ahead itself what form protect.'),(42,'Inversiones',39342.11,'2021-11-11','Resource fear wide help nearly become amount international.'),(43,'Servicios',46648.46,'2021-12-21','General relationship these position green matter.'),(44,'Servicios',13025.24,'2021-11-28','Police role surface president thousand his seem.'),(45,'Ventas',29976.16,'2022-06-01','Of very trial season out those.'),(46,'Inversiones',10295.59,'2023-02-11','Address city second modern feeling.'),(47,'Publicidad',15318.17,'2022-09-21','Produce catch like cultural tree ground.'),(48,'Publicidad',28148.22,'2022-05-28','Lose hard yeah perform evidence mention.'),(49,'Ventas',21287.89,'2022-09-30','Past stand add newspaper wrong site.'),(50,'Publicidad',1237.07,'2022-07-04','Always country reality thought city.');
/*!40000 ALTER TABLE `Ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventario`
--

DROP TABLE IF EXISTS `Inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventario` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Producto_ID` int NOT NULL,
  `Cantidad_Disponible` int NOT NULL,
  `Ubicacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Producto_ID` (`Producto_ID`),
  CONSTRAINT `Inventario_ibfk_1` FOREIGN KEY (`Producto_ID`) REFERENCES `Productos` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventario`
--

LOCK TABLES `Inventario` WRITE;
/*!40000 ALTER TABLE `Inventario` DISABLE KEYS */;
INSERT INTO `Inventario` VALUES (1,17,39,'South Heatherchester'),(2,27,47,'Mejiafort'),(3,27,77,'New Rodneyburgh'),(4,6,76,'Jeffersonburgh'),(5,6,46,'Port Andre'),(6,33,71,'West Jose'),(7,3,92,'Timothybury'),(8,45,99,'Johnsonberg'),(9,24,48,'New Desireemouth'),(10,16,15,'Andrewville'),(11,40,74,'West Rickey'),(12,14,22,'West Clinton'),(13,9,15,'South Karen'),(14,2,74,'Kellyport'),(15,47,49,'Whitneytown'),(16,49,55,'Rodriguezside'),(17,50,1,'Longside'),(18,42,91,'North Valerie'),(19,36,16,'New Christineland'),(20,50,67,'South William'),(21,28,16,'Port Ashley'),(22,30,100,'New Raymond'),(23,50,21,'Tammiemouth'),(24,43,60,'New Lauren'),(25,4,73,'North Jerryhaven'),(26,7,43,'Thompsonview'),(27,35,89,'West Mariaside'),(28,32,88,'Dannymouth'),(29,5,81,'Manningstad'),(30,23,31,'Hernandezport'),(31,17,10,'Jonathanburgh'),(32,47,14,'Ellisburgh'),(33,17,87,'Shepherdshire'),(34,10,17,'Richardsonbury'),(35,34,73,'Ericaburgh'),(36,46,53,'Carolfort'),(37,16,8,'Myersland'),(38,13,17,'Youngside'),(39,13,71,'Lake Judith'),(40,17,64,'West Michael'),(41,23,1,'Port Nicholas'),(42,43,87,'Port Shane'),(43,17,94,'Michelleport'),(44,27,89,'Port Wesleychester'),(45,30,58,'West Andrea'),(46,36,64,'Maryview'),(47,40,61,'Port Ryan'),(48,50,37,'West Ashleychester'),(49,26,1,'North Omar'),(50,29,43,'Lawsonchester');
/*!40000 ALTER TABLE `Inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Leads`
--

DROP TABLE IF EXISTS `Leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Leads` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Canal_ID` int NOT NULL,
  `Fecha_Registro` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Canal_ID` (`Canal_ID`),
  CONSTRAINT `Leads_ibfk_1` FOREIGN KEY (`Canal_ID`) REFERENCES `Canales_Marketing` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Leads`
--

LOCK TABLES `Leads` WRITE;
/*!40000 ALTER TABLE `Leads` DISABLE KEYS */;
INSERT INTO `Leads` VALUES (16,'Shannon Farley','kpatel@yahoo.com',1,'2022-01-19'),(17,'James Watts','jbaker@hotmail.com',1,'2022-01-23'),(18,'Ryan Martinez','mileschristine@robinson.biz',8,'2022-04-07'),(19,'Luke Frederick','krodriguez@bennett.com',2,'2023-10-25'),(20,'Tami Bowers','charlesthompson@allison.com',2,'2022-02-28'),(21,'Christopher Thompson','nicholas93@gmail.com',4,'2024-08-18'),(22,'Matthew Sanford','sheila20@gallagher.info',3,'2020-01-05'),(23,'Christopher Montgomery','suttonjeremy@melendez.org',3,'2021-04-28'),(24,'Lori Odonnell','robin97@yahoo.com',2,'2022-02-21'),(25,'Edward Mitchell','jstewart@hotmail.com',2,'2024-10-26'),(26,'Craig Jones','wilsonashley@hotmail.com',7,'2023-09-24'),(27,'Daisy Mcdonald','weavertimothy@higgins.com',2,'2024-07-01'),(28,'Justin Greene','stephanie39@gmail.com',3,'2023-03-11'),(29,'Kristy Johnston','stewartheather@gmail.com',4,'2020-01-31'),(30,'William Jackson','acostajeffrey@rodriguez.com',9,'2023-07-04'),(31,'Travis Morgan','adamsjose@rhodes.com',8,'2024-07-13'),(32,'Alexander Franco','pamela99@yahoo.com',2,'2021-12-10'),(33,'Marie Chase','lindabennett@hotmail.com',5,'2020-07-05'),(34,'Joanna Henry','adamsrachel@yahoo.com',4,'2021-06-16'),(35,'Nancy Deleon','adam23@yahoo.com',3,'2021-05-10'),(36,'Robert Smith','mjohnson@gmail.com',2,'2020-11-03'),(37,'Olivia Johnson','davidtaylor@jackson.com',2,'2023-08-30'),(38,'James Adkins','jhodges@yahoo.com',7,'2023-08-23'),(39,'Mark Carlson','wvillanueva@smith.com',8,'2020-12-27'),(40,'Paul Collins','brandonthompson@hotmail.com',2,'2023-11-04'),(41,'Aaron Riley','fmills@cummings.com',8,'2021-12-13'),(42,'Ariel Hernandez DDS','patrickramos@hotmail.com',4,'2024-01-12'),(43,'David Bennett','zburton@patel-green.com',9,'2023-12-17'),(44,'Katherine Kim','jessica10@perez.com',5,'2024-09-10'),(45,'Jessica Gallegos DDS','shannongonzalez@clayton-butler.org',9,'2024-08-12'),(46,'Jessica Good PhD','cunninghamaaron@swanson-simmons.com',8,'2020-01-29'),(47,'Donald Burke','thomas35@gmail.com',6,'2021-10-28'),(48,'Yvonne Hurley','montoyastacy@gmail.com',8,'2022-07-07'),(49,'Matthew Baird','gardnerjake@williams.biz',3,'2021-06-02'),(50,'Jessica Gill','dcastro@hotmail.com',1,'2023-07-03'),(51,'Denise Miller','johnsonangela@gmail.com',9,'2024-07-16'),(52,'Kristen Phillips','carlos96@hester.com',6,'2023-04-19'),(53,'Matthew Reed','deniseburns@gmail.com',4,'2024-12-24'),(54,'Charles Griffin','caroline48@gmail.com',9,'2023-11-09'),(55,'Johnathan Jones','wbrown@gmail.com',4,'2022-07-25'),(56,'Elizabeth Mckenzie','nancyhernandez@moore.com',5,'2021-04-03'),(57,'James Lee','juliapatrick@mitchell-mcdonald.com',6,'2024-09-27'),(58,'Deborah Kelly','richardsonmichelle@warner-graves.org',4,'2023-12-14'),(59,'Mary Wyatt','dixonteresa@smith.com',1,'2022-07-09'),(60,'Daniel Wells','moodyduane@hotmail.com',1,'2022-07-04'),(61,'Joyce Trujillo','jeremy26@mccoy.org',4,'2021-10-26'),(62,'Michael Lopez','jarvisalexander@garcia.com',7,'2021-03-26'),(63,'Alexandria Christensen','pgarcia@bryan-jones.com',9,'2024-10-04'),(64,'Adrian Harris','gregory56@hernandez-stephens.biz',8,'2023-02-11'),(65,'Kelsey Williams','courtney37@henderson.com',7,'2020-08-30');
/*!40000 ALTER TABLE `Leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Metodos_Pago`
--

DROP TABLE IF EXISTS `Metodos_Pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Metodos_Pago` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Metodo` varchar(50) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Codigos` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Metodos_Pago`
--

LOCK TABLES `Metodos_Pago` WRITE;
/*!40000 ALTER TABLE `Metodos_Pago` DISABLE KEYS */;
INSERT INTO `Metodos_Pago` VALUES (1,'Tarjeta de Credito','Pago con tarjeta de credito Visa/MasterCard','TDC'),(2,'Tarjeta de Debito','Pago con tarjeta de debito','TDD'),(3,'Efectivo','Pago en efectivo','EFEC'),(4,'Transferencia Bancaria','Transferencia desde una cuenta bancaria','TRANSF'),(5,'PayPal','Pago a traves de PayPal','PAYP'),(6,'Bitcoin','Pago con criptomoneda Bitcoin','BTC');
/*!40000 ALTER TABLE `Metodos_Pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movimientos_Inventario`
--

DROP TABLE IF EXISTS `Movimientos_Inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movimientos_Inventario` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Producto_ID` int NOT NULL,
  `Tipo_Movimiento` enum('Entrada','Salida') NOT NULL,
  `Cantidad` int NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Producto_ID` (`Producto_ID`),
  CONSTRAINT `Movimientos_Inventario_ibfk_1` FOREIGN KEY (`Producto_ID`) REFERENCES `Productos` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movimientos_Inventario`
--

LOCK TABLES `Movimientos_Inventario` WRITE;
/*!40000 ALTER TABLE `Movimientos_Inventario` DISABLE KEYS */;
INSERT INTO `Movimientos_Inventario` VALUES (1,26,'Entrada',20,'2021-12-16'),(2,17,'Salida',11,'2023-06-23'),(3,24,'Entrada',39,'2023-01-25'),(4,47,'Salida',14,'2023-10-21'),(5,25,'Salida',17,'2022-01-09'),(6,33,'Entrada',30,'2020-08-25'),(7,17,'Entrada',47,'2024-11-08'),(8,27,'Salida',27,'2020-09-17'),(9,22,'Salida',10,'2022-09-29'),(10,21,'Salida',29,'2022-06-21'),(11,39,'Entrada',6,'2021-02-15'),(12,30,'Salida',2,'2020-04-02'),(13,39,'Salida',24,'2020-06-24'),(14,8,'Salida',9,'2023-06-02'),(15,50,'Entrada',47,'2021-06-24'),(16,30,'Entrada',32,'2022-12-23'),(17,3,'Salida',6,'2024-11-23'),(18,19,'Salida',14,'2024-01-12'),(19,23,'Entrada',17,'2021-12-11'),(20,11,'Entrada',30,'2020-07-03'),(21,29,'Entrada',15,'2021-12-29'),(22,41,'Salida',29,'2022-04-02'),(23,32,'Entrada',38,'2024-12-23'),(24,46,'Salida',24,'2021-10-13'),(25,20,'Entrada',42,'2021-03-24'),(26,31,'Entrada',48,'2022-09-28'),(27,26,'Entrada',36,'2023-09-17'),(28,49,'Entrada',28,'2022-07-10'),(29,26,'Salida',42,'2020-05-28'),(30,42,'Salida',26,'2024-11-26'),(31,47,'Salida',33,'2020-07-08'),(32,7,'Entrada',26,'2021-04-20'),(33,30,'Entrada',49,'2022-01-07'),(34,48,'Entrada',19,'2024-02-14'),(35,8,'Entrada',26,'2021-07-05'),(36,7,'Salida',42,'2024-10-03'),(37,20,'Entrada',49,'2021-09-21'),(38,21,'Salida',13,'2021-01-11'),(39,3,'Entrada',5,'2023-05-07'),(40,37,'Entrada',11,'2021-10-24'),(41,36,'Entrada',9,'2022-09-05'),(42,10,'Salida',11,'2021-01-02'),(43,37,'Entrada',12,'2022-04-13'),(44,38,'Entrada',33,'2023-09-22'),(45,32,'Entrada',35,'2020-11-20'),(46,10,'Salida',26,'2021-08-07'),(47,44,'Entrada',1,'2022-11-22'),(48,24,'Entrada',7,'2021-09-04'),(49,20,'Salida',12,'2023-10-18'),(50,40,'Salida',15,'2023-12-01');
/*!40000 ALTER TABLE `Movimientos_Inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Categoria` varchar(100) NOT NULL,
  `Precio` decimal(15,2) NOT NULL,
  `Costo` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES (1,'Discuss','Ropa',416.03,15.51),(2,'Cause','Hogar',135.21,212.60),(3,'Drive','Ropa',57.46,154.15),(4,'Likely','Juguetes',113.16,128.40),(5,'Hospital','Hogar',418.18,179.21),(6,'Follow','Ropa',19.81,43.55),(7,'Decade','Juguetes',100.84,25.08),(8,'Arm','Electronica',36.83,48.54),(9,'Side','Hogar',186.95,128.65),(10,'Soldier','Alimentos',15.95,215.94),(11,'Every','Electronica',84.91,8.26),(12,'Decide','Hogar',400.49,214.92),(13,'Against','Ropa',276.60,225.35),(14,'Major','Hogar',114.47,168.14),(15,'Road','Alimentos',195.57,170.20),(16,'Season','Ropa',136.82,17.43),(17,'Consider','Hogar',65.11,153.72),(18,'Pm','Juguetes',36.07,202.89),(19,'High','Juguetes',247.33,231.36),(20,'Indeed','Electronica',406.83,217.71),(21,'Choose','Electronica',39.75,221.59),(22,'Forward','Ropa',376.31,87.28),(23,'Eight','Hogar',250.88,48.01),(24,'Media','Alimentos',275.67,123.70),(25,'Test','Ropa',471.66,14.30),(26,'Manager','Alimentos',478.71,121.32),(27,'With','Electronica',319.26,91.05),(28,'Future','Electronica',368.48,152.55),(29,'Laugh','Ropa',497.48,89.08),(30,'Culture','Ropa',197.35,66.95),(31,'Out','Alimentos',313.31,134.98),(32,'Data','Alimentos',317.10,241.60),(33,'Entire','Alimentos',72.36,45.78),(34,'Use','Hogar',71.14,13.03),(35,'Seven','Hogar',447.67,186.89),(36,'Whether','Alimentos',82.54,53.50),(37,'Sort','Ropa',105.93,76.05),(38,'Military','Ropa',96.15,123.41),(39,'Truth','Electronica',88.35,62.89),(40,'Interesting','Hogar',272.49,30.52),(41,'Fire','Electronica',110.57,117.86),(42,'Carry','Electronica',267.31,115.59),(43,'Former','Hogar',438.89,51.82),(44,'Easy','Alimentos',95.46,240.28),(45,'Nice','Alimentos',227.74,177.92),(46,'Parent','Alimentos',117.32,122.90),(47,'Television','Electronica',468.81,45.87),(48,'Fill','Alimentos',242.74,13.08),(49,'Blue','Hogar',370.94,200.55),(50,'Interesting','Juguetes',242.76,167.68);
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedores` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Contacto` varchar(100) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedores`
--

LOCK TABLES `Proveedores` WRITE;
/*!40000 ALTER TABLE `Proveedores` DISABLE KEYS */;
INSERT INTO `Proveedores` VALUES (1,'Scott-Fry','034-299-9403-62250','3075 Martinez Highway East Christinaton, VA 60370'),(2,'Turner-Bates','869-172-8005-5236','4818 Sanders Mews Brittanyburgh, IN 98136'),(3,'Hunter, Munoz and Buchanan','001-973-648-8044-8760','695 Angela Square Coreybury, TN 53793'),(4,'Le, Roberts and Crane','344-005-6409-882','3642 Colon Dam Donnaside, MN 44913'),(5,'Duncan, Simpson and Ortiz','5010745804','765 Zuniga Causeway Apt 263 West Evelynshire, OK 18066'),(6,'Price, Morales and Bryant','001-926-120-3952','21583 Ashley Mountain Port Sandraberg, WI 43473'),(7,'Rodriguez-Campbell','001-369-484-4904-1718','85945 Donald Terrace Dicksonchester, OR 48872'),(8,'Flowers, Johnson and Smith','557-770-2026-4920','9299 Swanson Crest Apt 609 Lake Nancy, WV 56869'),(9,'Moore, Reed and Allison','+1-656-808-5634-9801','75267 Potter Fort Apt 861 Hansenshire, CA 15131'),(10,'Horne, Johnson and Sandoval','+1-384-198-2461-002','272 Ayala Stravenue Suite 503 West Adamburgh, DE 13375'),(11,'Wright-Robinson','001-969-778-1624-770','33850 Ryan Rue North Mark, WI 98682'),(12,'Mason-Hernandez','+1-468-653-2522-0009','9849 Dalton Cliffs Apt 294 West Reginaldborough, MA 79027'),(13,'Espinoza LLC','(725)884-3249-70202','Unit 9625 Box 3815 DPO AA 96187'),(14,'Silva Group','(781)971-9959-05618','PSC 9136, Box 0956 APO AA 56114'),(15,'Sanchez, Rose and Edwards','067-193-0120','95560 Singh Plaza Suite 056 Williamsberg, MD 48006'),(16,'Myers Inc','+1-915-552-8872-955','475 Hunt Wells Apt 854 Lake Steven, MT 83775'),(17,'Foley, Hammond and Small','813-705-3664','72419 Stout River Suite 537 Rhondaton, ME 52691'),(18,'Graves-Ferguson','(890)800-7624','05227 William Coves Port Josephmouth, NH 64071'),(19,'Smith PLC','447-745-7077-469','271 Thomas Islands Suite 216 Barbarastad, WV 52935');
/*!40000 ALTER TABLE `Proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ventas`
--

DROP TABLE IF EXISTS `Ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ventas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Cliente_ID` int NOT NULL,
  `Total` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Cliente_ID` (`Cliente_ID`),
  CONSTRAINT `Ventas_ibfk_1` FOREIGN KEY (`Cliente_ID`) REFERENCES `Clientes` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ventas`
--

LOCK TABLES `Ventas` WRITE;
/*!40000 ALTER TABLE `Ventas` DISABLE KEYS */;
INSERT INTO `Ventas` VALUES (31,'2021-10-18',36,541.96),(32,'2023-12-24',9,753.91),(33,'2022-07-13',14,540.01),(34,'2020-10-08',27,673.00),(35,'2021-10-17',17,833.98),(36,'2020-12-24',49,418.48),(37,'2022-06-28',15,148.32),(38,'2020-02-10',36,173.87),(39,'2022-03-03',13,510.14),(40,'2022-03-06',46,696.42),(41,'2022-08-30',1,863.30),(42,'2024-12-24',13,640.95),(43,'2023-06-20',31,131.89),(44,'2020-03-19',21,277.47),(45,'2023-03-19',8,759.41),(46,'2020-08-06',32,644.08),(47,'2022-11-16',57,823.87),(48,'2020-12-02',47,215.09),(49,'2023-03-27',33,576.68),(50,'2021-04-02',14,845.71),(51,'2021-08-10',26,629.09),(52,'2021-10-23',27,990.19),(53,'2022-05-27',14,61.30),(54,'2021-07-23',39,884.25),(55,'2020-12-12',42,514.09),(56,'2020-02-05',37,684.03),(57,'2021-11-25',28,332.04),(58,'2020-08-23',43,587.79),(59,'2020-12-01',14,237.68),(60,'2020-09-25',28,970.49),(61,'2023-09-04',50,279.53),(62,'2021-05-16',23,498.06),(63,'2023-11-08',15,80.59),(64,'2022-11-19',18,143.58),(65,'2022-04-11',9,469.83),(66,'2024-07-02',40,224.03),(67,'2023-02-06',31,655.17),(68,'2022-09-26',29,665.03),(69,'2023-12-28',37,873.85),(70,'2020-10-17',26,751.32),(71,'2020-08-18',24,685.12),(72,'2020-10-22',10,920.25),(73,'2021-07-27',25,400.16),(74,'2023-04-29',38,258.73),(75,'2020-12-11',39,315.42),(76,'2020-03-18',9,986.96),(77,'2024-06-21',16,103.72),(78,'2020-07-14',53,339.56),(79,'2025-01-03',41,620.99),(80,'2021-02-10',22,282.49);
/*!40000 ALTER TABLE `Ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-09  2:20:25
