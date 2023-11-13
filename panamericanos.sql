-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: panamericanos
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `medallas`
--

DROP TABLE IF EXISTS `medallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medallas` (
  `pais` varchar(80) NOT NULL,
  `medallas_oro` int DEFAULT NULL,
  `medallas_plata` int DEFAULT NULL,
  `medallas_bronce` int DEFAULT NULL,
  `TOTAL` int DEFAULT NULL,
  PRIMARY KEY (`pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medallas`
--

LOCK TABLES `medallas` WRITE;
/*!40000 ALTER TABLE `medallas` DISABLE KEYS */;
INSERT INTO `medallas` VALUES ('Antigua & Barbuda',NULL,NULL,NULL,NULL),('Argentina',NULL,NULL,NULL,NULL),('Aruba',NULL,NULL,NULL,NULL),('Bahamas',NULL,NULL,NULL,NULL),('Barbados',NULL,NULL,NULL,NULL),('Belzie',NULL,NULL,NULL,NULL),('Bermuda',NULL,NULL,NULL,NULL),('Bolivia',NULL,NULL,NULL,NULL),('Brazil',NULL,NULL,NULL,NULL),('Canada',NULL,NULL,NULL,NULL),('Chile',NULL,NULL,NULL,NULL),('Colombia',NULL,NULL,NULL,NULL),('Costa Rica',NULL,NULL,NULL,NULL),('Cuba',NULL,NULL,NULL,NULL),('Dominica',NULL,NULL,NULL,NULL),('Ecuador',NULL,NULL,NULL,NULL),('El Salvador',NULL,NULL,NULL,NULL),('Equipo de atletas independiente',NULL,NULL,NULL,NULL),('Estados Unidos',NULL,NULL,NULL,NULL),('Grenada',NULL,NULL,NULL,NULL),('Guyana',NULL,NULL,NULL,NULL),('Haiti',NULL,NULL,NULL,NULL),('Honduras',NULL,NULL,NULL,NULL),('Islas Caiman',NULL,NULL,NULL,NULL),('Islas Virgenes Britanicas',NULL,NULL,NULL,NULL),('Islas Virgenes EEUU',NULL,NULL,NULL,NULL),('Jamaica',NULL,NULL,NULL,NULL),('Mexico',NULL,NULL,NULL,NULL),('Nicaragua',NULL,NULL,NULL,NULL),('Panama',NULL,NULL,NULL,NULL),('Paraguay',NULL,NULL,NULL,NULL),('Peru',NULL,NULL,NULL,NULL),('Puerto Rico',NULL,NULL,NULL,NULL),('Republica Dominicana',NULL,NULL,NULL,NULL),('Saint Kitts & Nevis',NULL,NULL,NULL,NULL),('San Vicente & las Granadinas',NULL,NULL,NULL,NULL),('Santa Lucia',NULL,NULL,NULL,NULL),('Trinidad & Trobago',NULL,NULL,NULL,NULL),('Uruguay',NULL,NULL,NULL,NULL),('Venezuela',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `medallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `nombre` varchar(80) NOT NULL,
  `pais` varchar(80) NOT NULL,
  `nota_1` float DEFAULT NULL,
  `nota_2` float DEFAULT NULL,
  `nota_3` float DEFAULT NULL,
  `nota_4` float DEFAULT NULL,
  `nota_5` float DEFAULT NULL,
  `nota_6` float DEFAULT NULL,
  `nota_7` float DEFAULT NULL,
  `nota_8` float DEFAULT NULL,
  `FACTOR` float DEFAULT NULL,
  `NOTA` float DEFAULT NULL,
  PRIMARY KEY (`nombre`),
  KEY `pais` (`pais`),
  CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`pais`) REFERENCES `medallas` (`pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vueltas`
--

DROP TABLE IF EXISTS `vueltas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vueltas` (
  `nombre` varchar(80) NOT NULL,
  `pais` varchar(80) NOT NULL,
  `vuelta_1` float DEFAULT NULL,
  `vuelta_2` float DEFAULT NULL,
  `vuelta_3` float DEFAULT NULL,
  `vuelta_4` float DEFAULT NULL,
  `vuelta_5` float DEFAULT NULL,
  `TOTAL` float DEFAULT NULL,
  KEY `nombre` (`nombre`),
  KEY `pais` (`pais`),
  CONSTRAINT `vueltas_ibfk_1` FOREIGN KEY (`nombre`) REFERENCES `notas` (`nombre`),
  CONSTRAINT `vueltas_ibfk_2` FOREIGN KEY (`pais`) REFERENCES `medallas` (`pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vueltas`
--

LOCK TABLES `vueltas` WRITE;
/*!40000 ALTER TABLE `vueltas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vueltas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 21:27:13
