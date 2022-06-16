-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: nvconsultingproyect

CREATE DATABASE nvconsultingproyect;
USE nvconsultingproyect;
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno_cursos`
--

DROP TABLE IF EXISTS `alumno_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno_cursos` (
  `ID_ALUMNO_CURSOS` int NOT NULL AUTO_INCREMENT,
  `ID_CURSOS` int NOT NULL,
  `ID_ALUMNO` int NOT NULL,
  `ESTADO` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_ALUMNO_CURSOS`),
  UNIQUE KEY `XPKALUMNO_CURSOS` (`ID_ALUMNO_CURSOS`),
  KEY `XIF1ALUMNO_CURSOS` (`ID_CURSOS`),
  KEY `XIF2ALUMNO_CURSOS` (`ID_ALUMNO`),
  CONSTRAINT `alumno_cursos_ibfk_1` FOREIGN KEY (`ID_CURSOS`) REFERENCES `cursos` (`ID_CURSOS`),
  CONSTRAINT `alumno_cursos_ibfk_2` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `alumnos` (`ID_ALUMNO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_cursos`
--

LOCK TABLES `alumno_cursos` WRITE;
/*!40000 ALTER TABLE `alumno_cursos` DISABLE KEYS */;
INSERT INTO `alumno_cursos` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `alumno_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `ID_ALUMNO` int NOT NULL AUTO_INCREMENT,
  `NOMBRES` varchar(50) DEFAULT NULL,
  `APELLIDOS` varchar(50) DEFAULT NULL,
  `DNI` char(8) DEFAULT NULL,
  `CORREO` varchar(50) DEFAULT NULL,
  `TELEFONO` char(9) DEFAULT NULL,
  `DIRECCION` varchar(50) DEFAULT NULL,
  `ESTADO` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_ALUMNO`),
  UNIQUE KEY `XPKALUMNOS` (`ID_ALUMNO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Josue','Perez','12354896','j@gmail.com','986594123','calle m 120',1),(2,'Juan','Trigozo','78564912','juan@gmail.com','986547123','calle la lomas 123',1);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `ID_CARGO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `ESTADO` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID_CARGO`),
  UNIQUE KEY `XPKCARGO` (`ID_CARGO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Profesor',1),(2,'Administrador',1);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `ID_CURSOS` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `NRO_HORAS` int DEFAULT NULL,
  `FECHA_INICIO` datetime DEFAULT NULL,
  `PRECIO_CURSO` decimal(10,2) DEFAULT NULL,
  `FECHA_FIN` datetime DEFAULT NULL,
  `ESTADO` tinyint(1) NOT NULL,
  `ID_EMPLEADOS` int NOT NULL,
  PRIMARY KEY (`ID_CURSOS`),
  UNIQUE KEY `XPKCURSOS` (`ID_CURSOS`),
  KEY `XIF1CURSOS` (`ID_EMPLEADOS`),
  CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`ID_EMPLEADOS`) REFERENCES `empleados` (`ID_EMPLEADOS`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'GESTIÓN DE LA MEJORA CONTINUA',7,'2021-11-23 00:00:00',450.00,'2021-11-24 00:00:00',1,1),(2,'VALIDACIÓN DE MÉTODOS DE ENSAYO CUALITATIVOS',12,'2021-11-18 00:00:00',350.00,'2021-11-23 00:00:00',1,1),(3,'GESTIÓN DE LA MEJORA CONTINUA',6,'2021-12-22 00:00:00',450.00,'2021-12-21 00:00:00',1,1);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `ID_EMPLEADOS` int NOT NULL AUTO_INCREMENT,
  `NOMBRES` varchar(50) DEFAULT NULL,
  `APELLIDOS` varchar(50) DEFAULT NULL,
  `DNI` char(8) DEFAULT NULL,
  `CORREO` varchar(50) DEFAULT NULL,
  `TELEFONO` char(9) DEFAULT NULL,
  `DIRECCION` varchar(50) DEFAULT NULL,
  `ESTADO` tinyint(1) NOT NULL,
  `ID_CARGO` int NOT NULL,
  PRIMARY KEY (`ID_EMPLEADOS`),
  UNIQUE KEY `XPKPROFESORES` (`ID_EMPLEADOS`),
  KEY `XIF1PROFESORES` (`ID_CARGO`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`ID_CARGO`) REFERENCES `cargo` (`ID_CARGO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'CarloS','Vargas','72784563','car@gmail.com','963852147','Los olivos',1,1),(2,'Juan','Pinedo','72784563','juan@gmail.com','963852147','Los olivos',1,1);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (48),(48),(48);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `existencia` float NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (2,'1',21,'ISO9000',250),(6,'2',23,'ISO 1025',250),(9,'3',25,'ENSAYOS QUIMICOS',550),(14,'4',27,'GESTIÓN DE LA MEJORA CONTINUA',350),(15,'5',27,'VALIDACIÓN DE MÉTODOS DE ENSAYO CUALITATIVOs',450);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_vendido`
--

DROP TABLE IF EXISTS `producto_vendido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_vendido` (
  `id` int NOT NULL,
  `cantidad` float DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `venta_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKssaaq1yqijvn9q87l4y6xdcoi` (`venta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_vendido`
--

LOCK TABLES `producto_vendido` WRITE;
/*!40000 ALTER TABLE `producto_vendido` DISABLE KEYS */;
INSERT INTO `producto_vendido` VALUES (8,1,'2','ISO 1025',250,7),(11,1,'1','ISO9000',250,10),(12,1,'2','ISO 1025',250,10),(13,1,'3','Ensayos quimicos',550,10),(17,1,'1','ISO9000',250,16),(19,1,'1','ISO9000',250,18),(20,1,'2','ISO 1025',250,18),(21,1,'3','Ensayos quimicos',550,18),(22,1,'4','GESTIÓN DE LA MEJORA CONTINUA',350,18),(24,1,'1','ISO9000',250,23),(25,1,'2','ISO 1025',250,23),(26,1,'3','Ensayos quimicos',550,23),(27,1,'4','GESTIÓN DE LA MEJORA CONTINUA',350,23),(28,2,'5','VALIDACIÓN DE MÉTODOS DE ENSAYO CUALITATIVOS',450,23),(31,1,'1','ISO9000',250,30),(33,1,'1','ISO9000',250,32),(34,1,'2','ISO 1025',250,32),(36,1,'1','ISO9000',250,35),(37,1,'2','ISO 1025',250,35),(38,1,'3','ENSAYOS QUIMICOS',550,35),(41,1,'1','ISO9000',250,40),(43,1,'1','ISO9000',250,42),(44,1,'2','ISO 1025',250,42),(45,1,'3','ENSAYOS QUIMICOS',550,42),(46,1,'4','GESTIÓN DE LA MEJORA CONTINUA',350,42),(47,1,'5','VALIDACIÓN DE MÉTODOS DE ENSAYO CUALITATIVOs',450,42);
/*!40000 ALTER TABLE `producto_vendido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN','ADMIN'),(4,'ROLE_USER','USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'josue@gmail.com','Josue','Perez','$2a$04$n6WIRDQlIByVFi.5rtQwEOTAzpzLPzIIG/O6quaxRKY2LlIHG8uty','josue98',NULL,NULL),(2,'jos22@gmail.com','Josue','Perez','$2a$04$JjlnWWBK1hOksDifcgMXCOMuRTZZS1MyUTe5v6a0x3s3B8TAmNYYW','josue22',NULL,NULL),(3,'jdiego@gmail.com','juanito','trigoso','$2a$04$rr8nRer2Nyt.EovSxgnRt.uhtwn0yLJU4yJGCmUq5libOVPjZWEhS','jdiego',NULL,NULL),(5,'mceli@gmail.com','Maria','Celi','$2a$04$xo2ucpVSpHu4lm40vuG7xeWL/zLs9a5AUk3RAHYD1H719IqrTYOCe','maria',NULL,NULL),(6,'js@gmail.com','Jorge','Salinas','$2a$04$d8An9KliPqyW9vDwUpmIJuqlM4HFxIQY74jPyGVN4IFUDMSPi8kgG','jorge',NULL,NULL),(12,'edu@gmail.com','Edu','Salinas','$2a$04$FrJZ6bFiWB592/5vqgA48uNmyQ2dlGq/MP67g5qc8eO3weJoX7jOq','edu',NULL,NULL),(8,'leo@gmail.com','LeoRen','Pinedo','$2a$04$1IG32aZQD1VtZIfLDP9cieSHfc9YMkqu3cr.KWMw/1bnlJH31X7Cu','leo',NULL,NULL),(9,'leo@gmail.com','Leo','Pinedo','$2a$04$7vDJKnelpJdmaB1ecpAQaecyp3evPD5zQI.i3iFvnckNyKRQsnVle','leo',NULL,NULL),(10,'gil@hotmail.com','Gilberto','SantaRosa','$2a$04$ASuIIo/i3UX2i0zoVWvOOOP4KeFNkJfX/sfOwAnkursIIr5cgsB1q','gil',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKrhfovtciq1l558cw6udg0h0d3` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(2,4),(3,4),(5,4),(6,4),(8,4),(9,4),(10,4),(12,4);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id` int NOT NULL,
  `fechayhora` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (3,'2021-12-20 11:38:43'),(5,'2021-12-20 11:40:10'),(7,'2021-12-20 11:47:53'),(10,'2021-12-20 12:20:42'),(16,'2021-12-20 15:18:17'),(18,'2021-12-20 15:22:37'),(23,'2021-12-20 16:15:29'),(30,'2021-12-20 16:31:35'),(32,'2021-12-20 16:53:40'),(35,'2021-12-20 17:22:41'),(40,'2021-12-20 18:58:20'),(42,'2022-02-23 19:56:19');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-23 20:00:37
