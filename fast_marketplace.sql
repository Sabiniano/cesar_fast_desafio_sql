-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: fast_marketplace
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `categoria_produto`
--

DROP TABLE IF EXISTS `categoria_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_produto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_produto`
--

LOCK TABLES `categoria_produto` WRITE;
/*!40000 ALTER TABLE `categoria_produto` DISABLE KEYS */;
INSERT INTO `categoria_produto` VALUES (1,'Esporte'),(2,'Eletronico'),(3,'Eletrodomestico'),(4,'Vestuário'),(5,'Alimentação'),(6,'Bebidas');
/*!40000 ALTER TABLE `categoria_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Descricao` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Esportivo','Material Esportivos'),(2,'Eletronico','Equipamentos eletronicos'),(3,'Eletrodomestico','Equipamentos eletrodomesticos'),(4,'Vestuario','Roupas Femenina e masculina'),(5,'Alimentação','Alimentos pereciveis e não pereciveis'),(6,'Bebidas','Bebidas em geral');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacao`
--

DROP TABLE IF EXISTS `formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Grau` varchar(80) NOT NULL,
  `Curso` varchar(120) NOT NULL,
  `Instituicao` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacao`
--

LOCK TABLES `formacao` WRITE;
/*!40000 ALTER TABLE `formacao` DISABLE KEYS */;
INSERT INTO `formacao` VALUES (1,'Superior','Administração','UFPE'),(2,'Medio','Técnico Administrativo','ITPE'),(3,'Médio','Técnico em Vendas','Escola de Marketing e Vendas de PE');
/*!40000 ALTER TABLE `formacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcao`
--

DROP TABLE IF EXISTS `funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Descricao` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao`
--

LOCK TABLES `funcao` WRITE;
/*!40000 ALTER TABLE `funcao` DISABLE KEYS */;
INSERT INTO `funcao` VALUES (1,'Vendedor','Vendedor de Loja'),(2,'Supervisor','Supervisor de Loja'),(3,'Tecnico Administrativo','Administrativo');
/*!40000 ALTER TABLE `funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcao_departamento`
--

DROP TABLE IF EXISTS `funcao_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcao_departamento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Funcao` int NOT NULL,
  `ID_Departamento` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Funcao` (`ID_Funcao`),
  KEY `ID_Departamento` (`ID_Departamento`),
  CONSTRAINT `Funcao_Departamento_ibfk_1` FOREIGN KEY (`ID_Funcao`) REFERENCES `funcao` (`ID`),
  CONSTRAINT `Funcao_Departamento_ibfk_2` FOREIGN KEY (`ID_Departamento`) REFERENCES `departamento` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao_departamento`
--

LOCK TABLES `funcao_departamento` WRITE;
/*!40000 ALTER TABLE `funcao_departamento` DISABLE KEYS */;
INSERT INTO `funcao_departamento` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `funcao_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja`
--

DROP TABLE IF EXISTS `loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Rua` varchar(120) NOT NULL,
  `Bairro` varchar(120) NOT NULL,
  `Cidade` varchar(120) NOT NULL,
  `Numero` varchar(120) NOT NULL,
  `CEP` varchar(10) NOT NULL,
  `Complemento` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja`
--

LOCK TABLES `loja` WRITE;
/*!40000 ALTER TABLE `loja` DISABLE KEYS */;
INSERT INTO `loja` VALUES (1,'Boa Viagem','AV. Barão de Souza Leão','Boa Viagem','Recife','1000','5000000','Loja 1'),(2,'Cais do Porto','a. eSPERANÇA','mARCO zERO','rECIFE','500','50001000','Loja 2');
/*!40000 ALTER TABLE `loja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Salario` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'João','2000-11-12',5000),(2,'Antonio','1991-03-07',6500),(3,'Pedro','1989-05-18',7000);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_departamento`
--

DROP TABLE IF EXISTS `pessoa_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa_departamento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int NOT NULL,
  `ID_Departamento` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  KEY `ID_Departamento` (`ID_Departamento`),
  CONSTRAINT `Pessoa_Departamento_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `pessoa` (`ID`),
  CONSTRAINT `Pessoa_Departamento_ibfk_2` FOREIGN KEY (`ID_Departamento`) REFERENCES `departamento` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_departamento`
--

LOCK TABLES `pessoa_departamento` WRITE;
/*!40000 ALTER TABLE `pessoa_departamento` DISABLE KEYS */;
INSERT INTO `pessoa_departamento` VALUES (1,1,1),(2,2,2),(3,3,1);
/*!40000 ALTER TABLE `pessoa_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_formacao`
--

DROP TABLE IF EXISTS `pessoa_formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa_formacao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int NOT NULL,
  `ID_Formacao` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  KEY `ID_Formacao` (`ID_Formacao`),
  CONSTRAINT `Pessoa_Formacao_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `pessoa` (`ID`),
  CONSTRAINT `Pessoa_Formacao_ibfk_2` FOREIGN KEY (`ID_Formacao`) REFERENCES `formacao` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_formacao`
--

LOCK TABLES `pessoa_formacao` WRITE;
/*!40000 ALTER TABLE `pessoa_formacao` DISABLE KEYS */;
INSERT INTO `pessoa_formacao` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `pessoa_formacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_funcao`
--

DROP TABLE IF EXISTS `pessoa_funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa_funcao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int NOT NULL,
  `ID_Funcao` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  KEY `ID_Funcao` (`ID_Funcao`),
  CONSTRAINT `Pessoa_Funcao_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `pessoa` (`ID`),
  CONSTRAINT `Pessoa_Funcao_ibfk_2` FOREIGN KEY (`ID_Funcao`) REFERENCES `funcao` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_funcao`
--

LOCK TABLES `pessoa_funcao` WRITE;
/*!40000 ALTER TABLE `pessoa_funcao` DISABLE KEYS */;
INSERT INTO `pessoa_funcao` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `pessoa_funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_loja`
--

DROP TABLE IF EXISTS `pessoa_loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa_loja` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int NOT NULL,
  `ID_Loja` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  KEY `ID_Loja` (`ID_Loja`),
  CONSTRAINT `Pessoa_Loja_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `pessoa` (`ID`),
  CONSTRAINT `Pessoa_Loja_ibfk_2` FOREIGN KEY (`ID_Loja`) REFERENCES `loja` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_loja`
--

LOCK TABLES `pessoa_loja` WRITE;
/*!40000 ALTER TABLE `pessoa_loja` DISABLE KEYS */;
INSERT INTO `pessoa_loja` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `pessoa_loja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Valor` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Geladeira',3500),(2,'TV',2500);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_categoria_produto`
--

DROP TABLE IF EXISTS `produto_categoria_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_categoria_produto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Produto` int NOT NULL,
  `ID_Categoria_Produto` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Produto` (`ID_Produto`),
  KEY `ID_Categoria_Produto` (`ID_Categoria_Produto`),
  CONSTRAINT `Produto_Categoria_Produto_ibfk_1` FOREIGN KEY (`ID_Produto`) REFERENCES `produto` (`ID`),
  CONSTRAINT `Produto_Categoria_Produto_ibfk_2` FOREIGN KEY (`ID_Categoria_Produto`) REFERENCES `categoria_produto` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_categoria_produto`
--

LOCK TABLES `produto_categoria_produto` WRITE;
/*!40000 ALTER TABLE `produto_categoria_produto` DISABLE KEYS */;
INSERT INTO `produto_categoria_produto` VALUES (1,1,3),(2,2,2);
/*!40000 ALTER TABLE `produto_categoria_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_departamento`
--

DROP TABLE IF EXISTS `produto_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_departamento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Produto` int NOT NULL,
  `ID_Departamento` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Produto` (`ID_Produto`),
  KEY `ID_Departamento` (`ID_Departamento`),
  CONSTRAINT `Produto_Departamento_ibfk_1` FOREIGN KEY (`ID_Produto`) REFERENCES `produto` (`ID`),
  CONSTRAINT `Produto_Departamento_ibfk_2` FOREIGN KEY (`ID_Departamento`) REFERENCES `departamento` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_departamento`
--

LOCK TABLES `produto_departamento` WRITE;
/*!40000 ALTER TABLE `produto_departamento` DISABLE KEYS */;
INSERT INTO `produto_departamento` VALUES (1,1,3),(2,2,2);
/*!40000 ALTER TABLE `produto_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fast_marketplace'
--

--
-- Dumping routines for database 'fast_marketplace'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27 18:36:02
