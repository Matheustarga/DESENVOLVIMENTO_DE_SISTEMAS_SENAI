CREATE DATABASE  IF NOT EXISTS `locadora` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `locadora`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: locadora
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Temporary view structure for view `filme_diretor`
--

DROP TABLE IF EXISTS `filme_diretor`;
/*!50001 DROP VIEW IF EXISTS `filme_diretor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `filme_diretor` AS SELECT 
 1 AS `titulo`,
 1 AS `nome_diretor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lista_loc`
--

DROP TABLE IF EXISTS `lista_loc`;
/*!50001 DROP VIEW IF EXISTS `lista_loc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_loc` AS SELECT 
 1 AS `nome_cliente`,
 1 AS `titulo`,
 1 AS `dt_emprestimo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tabela_cliente`
--

DROP TABLE IF EXISTS `tabela_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `sexo` char(1) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_cliente`
--

LOCK TABLES `tabela_cliente` WRITE;
/*!40000 ALTER TABLE `tabela_cliente` DISABLE KEYS */;
INSERT INTO `tabela_cliente` VALUES (1,'Ana Silva','ana.silva@locadora.com','0000-00-00','12345678900','F'),(2,'Bruno Oliveira','bruno.oliveira@locadora.com','0000-00-00','23456789011','M'),(3,'Carla Pereira','carla.pereira@locadora.com','0000-00-00','34567890122','F'),(4,'Daniel Costa','daniel.costa@locadora.com','0000-00-00','45678901233','M'),(5,'Eduardo Almeida','eduardo.almeida@locadora.com','0000-00-00','56789012344','M'),(6,'Fernanda Lima','fernanda.lima@locadora.com','0000-00-00','67890123455','F'),(7,'Guilherme Rocha','guilherme.rocha@locadora.com','0000-00-00','78901234566','M'),(8,'Helena Fernandes','helena.fernandes@locadora.com','0000-00-00','89012345677','F'),(9,'Igor Santos','igor.santos@locadora.com','0000-00-00','90123456788','M'),(10,'Juliana Mendes','juliana.mendes@locadora.com','0000-00-00','51234567899','F'),(11,'Leonardo Martins','leonardo.martins@locadora.com','0000-00-00','12345678901','M'),(12,'Mariana Souza','mariana.souza@locadora.com','0000-00-00','23456789012','F'),(13,'Nelson Ribeiro','nelson.ribeiro@locadora.com','0000-00-00','34567890123','M'),(14,'Olivia Azevedo','olivia.azevedo@locadora.com','0000-00-00','45678901234','F'),(15,'Paulo Batista','paulo.batista@locadora.com','0000-00-00','56789012345','M'),(16,'Carlos O LOUCO','carloslouco@hotmail.com','1800-02-02','15915915959','M'),(17,'Carlos O doido','carlosdoido@hotmail.com','1850-07-01','15915915979','M'),(18,'Carlos O biruta','carlosbiruta@hotmail.com','1870-09-07','15915913959','M'),(19,'Carlos O maluco','carlosmaluco@hotmail.com','1990-07-07','15915914959','M');
/*!40000 ALTER TABLE `tabela_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_diretor`
--

DROP TABLE IF EXISTS `tabela_diretor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_diretor` (
  `id_diretor` int(11) NOT NULL AUTO_INCREMENT,
  `nome_diretor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_diretor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_diretor`
--

LOCK TABLES `tabela_diretor` WRITE;
/*!40000 ALTER TABLE `tabela_diretor` DISABLE KEYS */;
INSERT INTO `tabela_diretor` VALUES (1,'Steven Spielberg'),(2,'Martin Scorsese'),(3,'Quentin Tarantino'),(4,'Christopher Nolan'),(5,'James Cameron'),(6,'Ridley Scott'),(7,'Alfred Hitchcock'),(8,'Stanley Kubrick'),(9,'Peter Jackson'),(10,'Francis Ford Coppola');
/*!40000 ALTER TABLE `tabela_diretor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_filme`
--

DROP TABLE IF EXISTS `tabela_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_filme` (
  `id_filme` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `ano_lancamento` int(11) NOT NULL,
  `class_indicativa` int(11) DEFAULT NULL,
  `id_diretor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_filme`),
  KEY `id_diretor` (`id_diretor`),
  CONSTRAINT `tabela_filme_ibfk_1` FOREIGN KEY (`id_diretor`) REFERENCES `tabela_diretor` (`id_diretor`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_filme`
--

LOCK TABLES `tabela_filme` WRITE;
/*!40000 ALTER TABLE `tabela_filme` DISABLE KEYS */;
INSERT INTO `tabela_filme` VALUES (1,'Jurassic Park','Aventura',1993,13,1),(2,'E.T. the Extra-Terrestrial','Ficção Científica',1982,10,1),(3,'Taxi Driver','Drama',1976,16,2),(4,'Goodfellas','Crime',1990,18,2),(5,'Pulp Fiction','Crime',1994,18,3),(6,'Django Unchained','Western',2012,18,3),(7,'Inception','Ficção Científica',2010,13,4),(8,'The Dark Knight','Ação',2008,13,4),(9,'Titanic','Romance',1997,13,5),(10,'Avatar','Ficção Científica',2009,13,5),(11,'Gladiator','Ação',2000,16,6),(12,'Blade Runner','Ficção Científica',1982,15,6),(13,'Psycho','Terror',1960,18,7),(14,'Vertigo','Suspense',1958,13,7),(15,'2001: A Space Odyssey','Ficção Científica',1968,12,8),(16,'The Shining','Terror',1980,18,8),(17,'The Lord of the Rings: The Fellowship of the Ring','Fantasia',2001,12,9),(18,'The Lord of the Rings: The Return of the King','Fantasia',2003,12,9),(19,'The Godfather','Crime',1972,18,10),(20,'Apocalypse Now','Guerra',1979,18,10),(21,'Schindler\'s List','Drama',1993,16,1),(22,'Jaws','Terror',1975,13,1),(23,'Raging Bull','Drama',1980,16,2),(24,'The Departed','Crime',2006,18,2),(25,'Kill Bill: Vol. 1','Ação',2003,18,3),(26,'Inglourious Basterds','Guerra',2009,18,3),(27,'Interstellar','Ficção Científica',2014,10,4),(28,'Memento','Mistério',2000,16,4),(29,'Aliens','Ficção Científica',1986,15,5),(30,'True Lies','Ação',1994,15,5),(31,'Certeza','Romance',2020,14,1),(32,'Talvez','Futurista',3000,16,1),(33,'Nenhum','Drama',2010,18,1),(34,'Todos','Terror',2000,18,1);
/*!40000 ALTER TABLE `tabela_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabela_locacao`
--

DROP TABLE IF EXISTS `tabela_locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabela_locacao` (
  `id_locacao` int(11) NOT NULL AUTO_INCREMENT,
  `dt_emprestimo` date NOT NULL,
  `dt_dev_prev` date NOT NULL,
  `dt_baixa` date NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_filme` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_locacao`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_filme` (`id_filme`),
  CONSTRAINT `tabela_locacao_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `tabela_cliente` (`id_cliente`),
  CONSTRAINT `tabela_locacao_ibfk_2` FOREIGN KEY (`id_filme`) REFERENCES `tabela_filme` (`id_filme`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabela_locacao`
--

LOCK TABLES `tabela_locacao` WRITE;
/*!40000 ALTER TABLE `tabela_locacao` DISABLE KEYS */;
INSERT INTO `tabela_locacao` VALUES (1,'2024-01-01','2024-01-08','2024-01-08',1,1),(2,'2024-01-02','2024-01-09','2024-01-09',2,2),(3,'2024-01-03','2024-01-10','2024-01-11',3,3),(4,'2024-01-04','2024-01-11','2024-01-11',4,4),(5,'2024-01-05','2024-01-12','2024-01-12',5,5),(6,'2024-01-06','2024-01-13','2024-01-13',6,6),(7,'2024-01-07','2024-01-14','2024-01-15',7,7),(8,'2024-01-08','2024-01-15','2024-01-15',8,8),(9,'2024-01-09','2024-01-16','2024-01-17',9,9),(10,'2024-01-10','2024-01-17','2024-01-17',10,10),(11,'2024-01-11','2024-01-18','2024-01-18',11,11),(12,'2024-01-12','2024-01-19','2024-01-19',12,12),(13,'2024-01-13','2024-01-20','2024-01-21',13,13),(14,'2024-01-14','2024-01-21','2024-01-21',14,14),(15,'2024-01-15','2024-01-22','2024-01-22',15,15),(16,'2024-01-16','2024-01-23','2024-01-24',1,16),(17,'2024-01-17','2024-01-24','2024-01-24',2,17),(18,'2024-01-18','2024-01-25','2024-01-26',3,18),(19,'2024-01-19','2024-01-26','2024-01-26',4,19),(20,'2024-01-20','2024-01-27','2024-01-27',5,20),(21,'2024-01-21','2024-01-28','2024-01-28',6,21),(22,'2024-01-22','2024-01-29','2024-01-30',7,22),(23,'2024-01-23','2024-01-30','2024-01-30',8,23),(24,'2024-01-24','2024-01-31','2024-02-01',9,24),(25,'2024-01-25','2024-02-01','2024-02-01',10,25),(26,'2024-01-26','2024-02-02','2024-02-02',11,26),(27,'2024-01-27','2024-02-03','2024-02-03',12,27),(28,'2024-01-28','2024-02-04','2024-02-05',13,28),(29,'2024-01-29','2024-02-05','2024-02-05',14,29),(30,'2024-01-30','2024-02-06','2024-02-06',15,30),(31,'2024-01-31','2024-02-07','2024-02-08',1,1),(32,'2024-02-01','2024-02-08','2024-02-08',2,2),(33,'2024-02-02','2024-02-09','2024-02-10',3,3),(34,'2024-02-03','2024-02-10','2024-02-10',4,4),(35,'2024-02-04','2024-02-11','2024-02-11',5,5),(36,'2024-02-05','2024-02-12','2024-02-12',6,6),(37,'2024-02-06','2024-02-13','2024-02-14',7,7),(38,'2024-02-07','2024-02-14','2024-02-14',8,8),(39,'2024-02-08','2024-02-15','2024-02-16',9,9),(40,'2024-02-09','2024-02-16','2024-02-16',10,10),(41,'2024-02-10','2024-02-17','2024-02-17',11,11),(42,'2024-02-11','2024-02-18','2024-02-18',12,12),(43,'2024-02-12','2024-02-19','2024-02-20',13,13),(44,'2024-02-13','2024-02-20','2024-02-20',14,14),(45,'2024-02-14','2024-02-21','2024-02-21',15,15),(46,'2024-02-15','2024-02-22','2024-02-23',1,16),(47,'2024-02-16','2024-02-23','2024-02-23',2,17),(48,'2024-02-17','2024-02-24','2024-02-25',3,18),(49,'2024-02-18','2024-02-25','2024-02-25',4,19),(50,'2024-02-19','2024-02-26','2024-02-26',5,20),(51,'2024-02-20','2024-02-27','2024-02-27',6,21),(52,'2024-02-21','2024-02-28','2024-02-29',7,22),(53,'2024-02-22','2024-02-29','2024-02-29',8,23),(54,'2024-02-23','2024-03-01','2024-03-02',9,24),(55,'2024-02-24','2024-03-02','2024-03-02',10,25),(56,'2024-02-25','2024-03-03','2024-03-03',11,26),(57,'2024-02-26','2024-03-04','2024-03-04',12,27),(58,'2024-02-27','2024-03-05','2024-03-06',13,28),(59,'2024-02-28','2024-03-06','2024-03-06',14,29),(60,'2024-02-29','2024-03-07','2024-03-07',15,30),(61,'2024-03-01','2024-03-08','2024-03-09',1,1),(62,'2024-03-02','2024-03-09','2024-03-09',2,2),(63,'2024-03-03','2024-03-10','2024-03-11',3,3),(64,'2024-03-04','2024-03-11','2024-03-11',4,4),(65,'2024-03-05','2024-03-12','2024-03-12',5,5),(66,'2024-03-06','2024-03-13','2024-03-13',6,6),(67,'2024-03-07','2024-03-14','2024-03-15',7,7),(68,'2024-03-08','2024-03-15','2024-03-15',8,8),(69,'2024-03-09','2024-03-16','2024-03-17',9,9),(70,'2024-03-10','2024-03-17','2024-03-17',10,10),(71,'2024-03-11','2024-03-18','2024-03-18',11,11),(72,'2024-03-12','2024-03-19','2024-03-19',12,12),(73,'2024-03-13','2024-03-20','2024-03-21',13,13),(74,'2024-03-14','2024-03-21','2024-03-21',14,14),(75,'2024-03-15','2024-03-22','2024-03-22',15,15),(76,'2024-03-16','2024-03-23','2024-03-24',1,16),(77,'2024-03-17','2024-03-24','2024-03-24',2,17),(78,'2024-03-18','2024-03-25','2024-03-26',3,18),(79,'2024-03-19','2024-03-26','2024-03-26',4,19),(80,'2024-03-20','2024-03-27','2024-03-27',5,20),(81,'2024-03-21','2024-03-28','2024-03-28',6,21),(82,'2024-03-22','2024-03-29','2024-03-30',7,22),(83,'2024-03-23','2024-03-30','2024-03-30',8,23),(84,'2024-03-24','2024-03-31','2024-04-01',9,24),(85,'2024-03-25','2024-04-01','2024-04-01',10,25),(86,'2024-03-26','2024-04-02','2024-04-02',11,26),(87,'2024-03-27','2024-04-03','2024-04-03',12,27),(88,'2024-03-28','2024-04-04','2024-04-05',13,28),(89,'2024-03-29','2024-04-05','2024-04-05',14,29),(90,'2024-03-30','2024-04-06','2024-04-06',15,30),(91,'2024-03-31','2024-04-07','2024-04-08',1,1),(92,'2024-04-01','2024-04-08','2024-04-08',2,2),(93,'2024-04-02','2024-04-09','2024-04-10',3,3),(94,'2024-04-03','2024-04-10','2024-04-10',4,4),(95,'2024-04-04','2024-04-11','2024-04-11',5,5),(96,'2024-04-05','2024-04-12','2024-04-12',6,6),(97,'2024-04-06','2024-04-13','2024-04-14',7,7),(98,'2024-04-07','2024-04-14','2024-04-14',8,8),(99,'2024-04-08','2024-04-15','2024-04-16',9,9),(100,'2024-04-09','2024-04-16','2024-04-16',10,10),(101,'2025-05-28','2025-05-28','2025-05-28',1,2),(102,'2025-05-28','2025-05-28','2025-05-28',3,4),(103,'2025-05-28','2025-05-28','2025-05-28',5,6),(104,'2025-05-28','2025-05-28','2025-05-28',7,8);
/*!40000 ALTER TABLE `tabela_locacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `filme_diretor`
--

/*!50001 DROP VIEW IF EXISTS `filme_diretor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `filme_diretor` AS select `f`.`titulo` AS `titulo`,`d`.`nome_diretor` AS `nome_diretor` from (`tabela_filme` `f` join `tabela_diretor` `d` on(`f`.`id_diretor` = `d`.`id_diretor`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_loc`
--

/*!50001 DROP VIEW IF EXISTS `lista_loc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_loc` AS select `c`.`nome_cliente` AS `nome_cliente`,`f`.`titulo` AS `titulo`,`l`.`dt_emprestimo` AS `dt_emprestimo` from ((`tabela_filme` `f` join `tabela_locacao` `l` on(`f`.`id_filme` = `l`.`id_filme`)) join `tabela_cliente` `c` on(`c`.`id_cliente` = `l`.`id_cliente`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-28 21:20:57
