CREATE DATABASE  IF NOT EXISTS `escola_senai_m` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `escola_senai_m`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escola_senai_m
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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `reg_academico` int(11) NOT NULL,
  `nome_aluno` varchar(100) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `sexo` char(1) DEFAULT NULL CHECK (`sexo` = ('M' or 'F')),
  PRIMARY KEY (`reg_academico`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'João Silva','1990-05-10','12345678900','M'),(2,'Maria Souza','1985-09-15','98765432100','F'),(3,'Pedro Santos','1992-07-20','45678912300','M'),(4,'Ana Oliveira','1988-12-05','32165498700','F'),(5,'Lucas Pereira','1995-03-25','78912345600','M'),(6,'Juliana Lima','1998-11-30','65498732100','F'),(7,'Rafael Costa','1991-08-12','23456789000','M'),(8,'Camila Martins','1986-04-18','87654321000','F'),(9,'Gabriel Alves','1993-02-03','34567890100','M'),(10,'Letícia Silva','1989-06-29','21054387600','F'),(11,'Bruno Santos','1997-10-14','56789012300','M'),(12,'Larissa Lima','1994-01-22','43210987600','F'),(13,'Thiago Oliveira','1990-07-08','90123456700','M'),(14,'Marina Costa','1987-05-02','67890123400','F'),(15,'André Pereira','1996-09-19','34567891200','M'),(16,'Carolina Souza','1984-11-11','12345678901','F'),(17,'Marcelo Silva','1991-03-28','78901234500','M'),(18,'Bruna Oliveira','1988-06-24','56789012301','F'),(19,'Eduardo Santos','1992-12-09','21054367801','M'),(20,'Vanessa Costa','1995-05-17','90123456701','F'),(21,'Ricardo Martins','1989-08-04','65498732101','M'),(22,'Fernanda Lima','1993-02-21','43210987601','F'),(23,'Gabriel Oliveira','1997-07-07','67890123401','M'),(24,'Amanda Pereira','1990-04-01','34567891201','F'),(25,'Gustavo Souza','1985-10-16','12345678902','M'),(26,'Mariana Silva','1992-03-27','78901234501','F'),(27,'Lucas Oliveira','1988-06-23','56789012302','M'),(28,'Letícia Santos','1994-12-10','21054367802','F'),(29,'Rafael Costa','1996-05-18','90123456702','M'),(30,'Camila Martins','1991-08-03','65498732102','F'),(31,'Guilherme Lima','1998-02-20','43210987602','M'),(32,'Larissa Silva','1990-07-06','67890123402','F'),(33,'Pedro Pereira','1986-03-31','34567891202','M'),(34,'Ana Souza','1993-09-15','12345678903','F'),(35,'Bruno Silva','1987-12-24','78901234502','M'),(36,'Mariana Oliveira','1994-06-11','56789012303','F'),(37,'André Santos','1989-10-28','21054367803','M'),(38,'Carolina Costa','1996-04-02','90123456703','F'),(39,'Eduardo Lima','1991-08-19','65498732103','M'),(40,'Fernanda Silva','1998-02-04','43210987603','F'),(41,'Gabriel Costa','1990-07-21','67890123403','M'),(42,'Amanda Oliveira','1985-05-05','34567891203','F'),(43,'Gustavo Martins','1992-09-22','12345678904','M'),(44,'Mariana Lima','1987-01-29','78901234503','F'),(45,'Lucas Santos','1994-05-14','56789012304','M'),(46,'Letícia Costa','1988-09-30','21054367804','F'),(47,'Rafael Oliveira','1995-03-15','90123456704','M'),(48,'Camila Silva','1990-07-10','65498732104','F'),(49,'Guilherme Costa','1997-02-26','43210987604','M'),(50,'Larissa Santos','1986-06-03','67890123404','F'),(51,'Pedro Amanso','1995-03-15','12348915618','M'),(52,'Cleide de Freitas','1991-08-19','15806615628','F'),(53,'Machado de Assis','1985-05-05','26824868228','M'),(54,'Amanda de Jesus','1988-06-23','36389248962','F'),(55,'Joacyr Algoz','1989-10-28','86245648684','M'),(56,'Cristiano Ronaldo Júnior','1987-12-24','68564598253','M'),(57,'Romáro Neto','1986-03-31','31246589769','M'),(58,'Gerlaine Bastos','1991-08-19','96328517562','F'),(59,'Oséias Júnior','1992-03-27','15948266392','M'),(60,'Lorrany Urias','1989-08-04','37568246986','F');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campus`
--

DROP TABLE IF EXISTS `campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campus` (
  `cod_campus` int(11) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  PRIMARY KEY (`cod_campus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` VALUES (1,'Serra','Avenida João Palácio - N° 300'),(2,'Vitória','Avenida Américo Buaiz - N° 200 '),(3,'Vila Velha','Avenida Dr. Olivio Lira - Nº 353');
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cod_curso` int(11) NOT NULL,
  `nome_curso` varchar(50) NOT NULL,
  `turno` varchar(50) NOT NULL,
  `duracao` int(11) NOT NULL,
  `valor` double(8,2) NOT NULL,
  `cod_campus` int(11) NOT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `cod_campus` (`cod_campus`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`cod_campus`) REFERENCES `campus` (`cod_campus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Engenharia Civil','Diurno',10,1500.00,1),(2,'Administração de Empresas','Noturno',8,1200.00,2),(3,'Medicina','Integral',12,2000.00,3),(4,'Ciência da Computação','Diurno',8,1400.00,1),(5,'Direito','Matutino',10,2000.00,2),(6,'Psicologia','Vespertino',9,1100.00,2),(7,'Arquitetura e Urbanismo','Integral',11,1450.00,1),(8,'Engenharia Elétrica','Diurno',10,1400.00,1),(9,'Pedagogia','Noturno',8,1000.00,3),(10,'Nutrição','Matutino',9,1300.00,3),(11,'Fisioterapia','Vespertino',9,1250.00,3),(12,'Odontologia','Integral',11,1450.00,3),(13,'Engenharia Mecânica','Diurno',10,1350.00,1),(14,'Ciências Contábeis','Noturno',8,1100.00,1),(15,'Comunicação Social - Jornalismo','Matutino',8,1000.00,2),(16,'Artes Visuais','Diurno',5,1000.00,2),(17,'Design Gráfico','Matutino',6,1300.00,2),(18,'Jogos Digitais','Noturno',8,1400.00,2),(19,'Multimídia','Noturno',4,1800.00,2);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `cod_matricula` int(11) NOT NULL,
  `dt_matricula` date NOT NULL,
  `reg_academico` int(11) DEFAULT NULL,
  `cod_campus` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_matricula`),
  KEY `reg_academico` (`reg_academico`),
  KEY `cod_campus` (`cod_campus`),
  CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`reg_academico`) REFERENCES `aluno` (`reg_academico`),
  CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`cod_campus`) REFERENCES `campus` (`cod_campus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (2,'2022-08-12',7,3),(4,'2020-10-17',31,2),(10,'2024-02-14',8,1),(16,'2023-11-04',3,2),(17,'2022-05-21',44,3),(19,'2020-04-27',25,1),(29,'2020-04-18',30,3),(32,'2022-09-09',28,1),(35,'2021-01-01',13,2),(42,'2024-08-28',50,1),(45,'2021-11-20',19,3),(48,'2024-03-11',43,2),(54,'2024-01-23',29,1),(57,'2022-03-15',38,3),(64,'2021-10-14',2,2),(68,'2023-06-23',17,1),(71,'2021-08-14',44,3),(78,'2022-03-13',43,2),(82,'2023-09-18',35,1),(84,'2022-06-24',24,3),(91,'2022-02-22',47,2),(95,'2023-09-02',36,1),(97,'2022-06-06',29,3);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 21:38:56
