CREATE DATABASE  IF NOT EXISTS `sgsbd` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sgsbd`;
-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: sgsbd
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sgs_distribucion`
--

DROP TABLE IF EXISTS `sgs_distribucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sgs_distribucion` (
  `sgs_parcela_n_parcela_id` int(11) NOT NULL,
  `sgs_distribucion_produccion` varchar(45) DEFAULT NULL,
  `sgs_distribucion_utilidad` varchar(45) DEFAULT NULL,
  `sgs_distribucion_costo` varchar(45) DEFAULT NULL,
  `sgs_demanda_sgs_demanda_n_id` int(11) NOT NULL,
  `sgs_producto_n_producto_id` int(11) NOT NULL,
  `sgs_temporada_n_temporada_id1` int(11) NOT NULL,
  PRIMARY KEY (`sgs_parcela_n_parcela_id`,`sgs_demanda_sgs_demanda_n_id`,`sgs_producto_n_producto_id`,`sgs_temporada_n_temporada_id1`),
  KEY `fk_sgs_producto_has_sgs_parcela_sgs_parcela1` (`sgs_parcela_n_parcela_id`),
  KEY `fk_sgs_distribucion_sgs_demanda1` (`sgs_demanda_sgs_demanda_n_id`,`sgs_producto_n_producto_id`),
  KEY `fk_sgs_distribucion_sgs_temporada1` (`sgs_temporada_n_temporada_id1`),
  CONSTRAINT `fk_sgs_distribucion_sgs_demanda1` FOREIGN KEY (`sgs_demanda_sgs_demanda_n_id`, `sgs_producto_n_producto_id`) REFERENCES `sgs_demanda` (`sgs_demanda_n_id`, `sgs_producto_n_producto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sgs_distribucion_sgs_temporada1` FOREIGN KEY (`sgs_temporada_n_temporada_id1`) REFERENCES `sgs_temporada` (`n_temporada_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sgs_producto_has_sgs_parcela_sgs_parcela1` FOREIGN KEY (`sgs_parcela_n_parcela_id`) REFERENCES `sgs_parcela` (`n_parcela_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sgs_distribucion`
--

LOCK TABLES `sgs_distribucion` WRITE;
/*!40000 ALTER TABLE `sgs_distribucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `sgs_distribucion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-16  0:14:24
