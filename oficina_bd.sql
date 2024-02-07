-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: oficina_bd
-- ------------------------------------------------------
-- Server version	5.7.38

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (2,'Lubrificantes'),(3,'Peças Carro'),(4,'Peças Motos'),(6,'Óleos'),(7,'Acessórios');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Pedro Campos','688.555.555-55','(33) 33333-3333','hugovasconcelosf@hotmail.com','Rua A','2020-10-26'),(3,'Marta Campos','878.888.888-88','(88) 88888-8888','marta@hotmail.com','Rua c','2020-10-26'),(4,'Marcos Silva','999.999.999-99','(99) 99999-9999','marcos@hotmail.com','Rua A','2020-10-29');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comissoes`
--

DROP TABLE IF EXISTS `comissoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comissoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` decimal(8,2) NOT NULL,
  `mecanico` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `id_servico` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comissoes`
--

LOCK TABLES `comissoes` WRITE;
/*!40000 ALTER TABLE `comissoes` DISABLE KEYS */;
INSERT INTO `comissoes` VALUES (21,75.00,'877.777.777-77','Orçamento',19,'2021-06-09');
/*!40000 ALTER TABLE `comissoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `id_conta` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contas_pagar`
--

DROP TABLE IF EXISTS `contas_pagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contas_pagar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `data_venc` date NOT NULL,
  `pago` varchar(5) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `fornecedor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contas_pagar`
--

LOCK TABLES `contas_pagar` WRITE;
/*!40000 ALTER TABLE `contas_pagar` DISABLE KEYS */;
INSERT INTO `contas_pagar` VALUES (3,'Telefone',705.00,'866.655.555-55','2020-10-21','2020-10-22','Não','conta3.jpg',0),(4,'Pagamento Luz',450.00,'866.655.555-55','2020-10-21','2020-10-21','Sim','movimentacoes.pdf',0),(6,'Conta Teste',50.00,'866.655.555-55','2020-10-21','2020-10-19','Sim','sem-foto.jpg',0),(8,'Compra de Produtos',500.00,'000.000.000-00','2020-10-21','2020-10-21','Sim',NULL,0),(9,'Compra de Produtos',250.00,'000.000.000-00','2020-10-21','2020-10-21','Sim',NULL,0),(10,'Pagamento Eletricista',250.00,'866.655.555-55','2020-10-21','2020-10-21','Sim','movimentacoes.pdf',0),(11,'Compra de Produtos',300.00,'000.000.000-00','2020-10-21','2020-10-21','Sim',NULL,0),(12,'Compra de Produtos',700.00,'000.000.000-00','2020-10-26','2020-10-26','Sim',NULL,0),(13,'Pagamento Encanador',250.00,'866.655.555-55','2020-10-26','2020-10-26','Não','sem-foto.jpg',0),(15,'Comissão',39.00,'788.888.888-60','2020-10-28','2020-10-28','Não',NULL,0),(16,'Comissão',39.00,'788.888.888-60','2020-10-28','2020-10-28','Não',NULL,0),(17,'Comissão',75.00,'788.888.888-60','2020-10-28','2020-10-28','Não',NULL,0),(18,'Comissão',75.00,'788.888.888-60','2020-10-28','2020-10-28','Não',NULL,0),(19,'Comissão',75.00,'788.888.888-60','2020-10-28','2020-10-28','Não',NULL,0),(20,'Comissão',75.00,'788.888.888-60','2020-10-28','2020-10-28','Não',NULL,0),(21,'Comissão',39.00,'788.888.888-60','2020-10-28','2020-10-28','Não',NULL,0),(22,'Comissão',300.00,'877.777.777-77','2020-10-28','2020-10-28','Não',NULL,0),(23,'Comissão',240.00,'877.777.777-77','2020-10-28','2020-10-28','Não',NULL,0),(24,'Comissão',105.00,'877.777.777-77','2020-10-28','2020-10-28','Não',NULL,0),(25,'Compra de Produtos',250.00,'000.000.000-00','2020-10-29','2020-10-29','Sim',NULL,0),(26,'Comissão',30.00,'788.888.888-60','2020-10-29','2020-10-29','Não',NULL,0),(27,'Comissão',39.00,'877.777.777-77','2020-10-29','2020-10-29','Não',NULL,0),(28,'Comissão',39.00,'877.777.777-77','2020-10-29','2020-10-29','Não',NULL,0),(29,'Comissão',39.00,'877.777.777-77','2020-10-29','2020-10-29','Não',NULL,0),(30,'Comissão',36.00,'877.777.777-77','2020-10-29','2020-10-29','Não',NULL,0),(31,'Comissão',39.00,'877.777.777-77','2020-10-29','2020-10-29','Não',NULL,0),(32,'Conta de Agua',650.00,'444.444.444-44','2021-06-01','2021-06-01','Não','man-in-tweed-suit-with-barett-4386ld.png',0),(33,'Conta Teste',350.00,'000.000.000-00','2021-06-01','2021-06-01','Sim','relpdf.pdf',0),(34,'Comissão',165.00,'877.777.777-77','2021-06-01','2021-06-01','Não',NULL,0),(37,'Marcos Souza',60.00,'000.000.000-00','2021-06-01','2021-06-01','Não','sem-foto.jpg',0),(38,'Paloma Campos',99.99,'000.000.000-00','2021-06-01','2021-06-01','Não','sem-foto.jpg',0),(39,'Conta de Telefone',580.00,'000.000.000-00','2021-06-01','2021-06-01','Não','sem-foto.jpg',0),(40,'Paloma Campos',105.50,'000.000.000-00','2021-06-01','2021-06-01','Não','sem-foto.jpg',3),(41,'Conta Telefone',9.99,'000.000.000-00','2021-06-01','2021-06-01','Não','sem-foto.jpg',1),(42,'Paloma Campos',65.00,'000.000.000-00','2021-06-01','2021-06-01','Não','sem-foto.jpg',3),(43,'Compra de Produtos',1750.00,'000.000.000-00','2021-06-01','2021-06-01','Não',NULL,1),(44,'Comissão',75.00,'877.777.777-77','2021-06-09','2021-06-09','Não',NULL,0);
/*!40000 ALTER TABLE `contas_pagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contas_receber`
--

DROP TABLE IF EXISTS `contas_receber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contas_receber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `adiantamento` decimal(8,2) DEFAULT NULL,
  `mecanico` varchar(20) NOT NULL,
  `cliente` varchar(20) NOT NULL,
  `funcionario` varchar(20) DEFAULT NULL,
  `data` date NOT NULL,
  `pago` varchar(5) NOT NULL,
  `id_servico` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contas_receber`
--

LOCK TABLES `contas_receber` WRITE;
/*!40000 ALTER TABLE `contas_receber` DISABLE KEYS */;
INSERT INTO `contas_receber` VALUES (2,'Orçamento',785.00,400.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Sim',2),(3,'Orçamento',785.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',2),(4,'Orçamento',785.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',2),(5,'Orçamento',785.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',2),(6,'Orçamento',785.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',2),(7,'Orçamento',785.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',2),(8,'Orçamento',785.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',2),(9,'Orçamento',785.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',2),(10,'Orçamento',785.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',2),(11,'Orçamento',0.00,0.00,'788.888.888-60','878.888.888-88',NULL,'2020-10-28','Não',3),(12,'Orçamento',0.00,0.00,'788.888.888-60','878.888.888-88',NULL,'2020-10-28','Não',3),(13,'Orçamento',250.00,0.00,'788.888.888-60','878.888.888-88',NULL,'2020-10-28','Não',3),(14,'Orçamento',1235.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2020-10-28','Não',5),(15,'Orçamento',885.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2020-10-28','Sim',7),(16,'Orçamento',885.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2020-10-28','Não',7),(17,'Orçamento',1600.00,0.00,'877.777.777-77','878.888.888-88',NULL,'2020-10-28','Não',9),(18,'Orçamento',550.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2020-10-28','Não',10),(19,'Orçamento',800.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2020-10-28','Não',8),(20,'Orçamento',260.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',6),(21,'Orçamento',60.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',11),(22,'Orçamento',200.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',12),(23,'Orçamento',250.00,0.00,'788.888.888-60','878.888.888-88',NULL,'2020-10-28','Não',13),(24,'Orçamento',350.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Não',14),(25,'Orçamento',200.00,0.00,'788.888.888-60','688.555.555-55',NULL,'2020-10-28','Sim',12),(27,'Orçamento',1450.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2020-10-29','Não',15),(28,'Orçamento',250.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2021-06-01','Não',16),(29,'Orçamento',1300.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2021-06-09','Não',19),(30,'Orçamento',1300.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2021-06-09','Não',19),(31,'Orçamento',1300.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2021-06-09','Não',19),(32,'Orçamento',1250.00,0.00,'877.777.777-77','999.999.999-99',NULL,'2021-06-09','Não',18),(33,'Orçamento',1250.00,0.00,'877.777.777-77','999.999.999-99',NULL,'2021-06-09','Não',18),(37,'Orçamento',555.00,0.00,'877.777.777-77','878.888.888-88',NULL,'2021-06-09','Sim',20),(38,'Orçamento',300.00,0.00,'877.777.777-77','688.555.555-55',NULL,'2021-06-09','Não',21);
/*!40000 ALTER TABLE `contas_receber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controles`
--

DROP TABLE IF EXISTS `controles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `veiculo` int(11) NOT NULL,
  `mecanico` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controles`
--

LOCK TABLES `controles` WRITE;
/*!40000 ALTER TABLE `controles` DISABLE KEYS */;
INSERT INTO `controles` VALUES (5,3,'788.888.888-60','2020-10-28','Pintura'),(6,2,'788.888.888-60','2020-10-28','Serviços de Oficina'),(7,4,'877.777.777-77','2020-10-28','Balanceamento'),(8,5,'877.777.777-77','2020-10-29','Troca de Óleo'),(9,6,'877.777.777-77','2021-06-09','2 Serviços');
/*!40000 ALTER TABLE `controles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `tipo_pessoa` varchar(20) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'Marcos Souza','Jurídica','55.555.555/5558-88','(55) 55555-5555','marcos@hotmail.com','Rua A'),(3,'Paloma Campos','Física','585.555.555-55','(66) 66666-6666','paloma@hotmail.com','Rua D');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mecanicos`
--

DROP TABLE IF EXISTS `mecanicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mecanicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mecanicos`
--

LOCK TABLES `mecanicos` WRITE;
/*!40000 ALTER TABLE `mecanicos` DISABLE KEYS */;
INSERT INTO `mecanicos` VALUES (1,'Marcela Silva','788.888.888-60','(88) 88888-8888','marcela@hotmail.com','Rua A'),(5,'Mecânico Teste','877.777.777-77','(77) 77777-7777','mecanico@hotmail.com','Rua S');
/*!40000 ALTER TABLE `mecanicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentacoes`
--

DROP TABLE IF EXISTS `movimentacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(20) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentacoes`
--

LOCK TABLES `movimentacoes` WRITE;
/*!40000 ALTER TABLE `movimentacoes` DISABLE KEYS */;
INSERT INTO `movimentacoes` VALUES (1,'Saída','Conta Teste',50.00,'866.655.555-55','2020-10-21'),(2,'Saída','Compra de Produtos',500.00,'866.655.555-55','2020-10-21'),(3,'Saída','Compra de Produtos',300.00,'866.655.555-55','2020-09-21'),(4,'Saída','Compra de Produtos',700.00,'866.655.555-55','2020-10-26'),(5,'Entrada','Adiantamento',350.00,'866.655.555-90','2020-10-28'),(6,'Entrada','Adiantamento',350.00,'866.655.555-90','2020-10-28'),(7,'Entrada','Orçamento',435.00,'866.655.555-90','2020-10-28'),(8,'Saída','Pagamento Luz',450.00,'866.655.555-90','2020-10-28'),(9,'Entrada','Adiantamento',400.00,'866.655.555-90','2020-10-28'),(10,'Entrada','Orçamento',385.00,'866.655.555-90','2020-10-28'),(11,'Saída','Compra de Produtos',250.00,'866.655.555-90','2020-10-29'),(12,'Saída','Pagamento Eletricista',250.00,'444.444.444-44','2021-06-01'),(13,'Entrada','Orçamento',885.00,'444.444.444-44','2021-06-01'),(14,'Saída','Conta Teste',350.00,'000.000.000-00','2021-06-01'),(15,'Entrada','Orçamento',200.00,'000.000.000-00','2021-06-01'),(16,'Entrada','Orçamento',555.00,'444.444.444-44','2021-06-09');
/*!40000 ALTER TABLE `movimentacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orc_prod`
--

DROP TABLE IF EXISTS `orc_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orc_prod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orcamento` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orc_prod`
--

LOCK TABLES `orc_prod` WRITE;
/*!40000 ALTER TABLE `orc_prod` DISABLE KEYS */;
INSERT INTO `orc_prod` VALUES (24,2,14),(25,5,13),(26,5,14),(27,5,8),(28,2,9),(29,2,7),(32,7,16),(33,7,9),(34,9,15),(35,9,10),(36,15,7),(37,15,13),(38,18,15),(39,18,13),(42,19,13),(44,19,14),(45,19,14),(46,20,15),(47,20,9),(48,21,7);
/*!40000 ALTER TABLE `orc_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orc_serv`
--

DROP TABLE IF EXISTS `orc_serv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orc_serv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orcamento` int(11) NOT NULL,
  `servico` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orc_serv`
--

LOCK TABLES `orc_serv` WRITE;
/*!40000 ALTER TABLE `orc_serv` DISABLE KEYS */;
INSERT INTO `orc_serv` VALUES (1,19,7),(2,19,6),(4,19,1),(6,18,7),(7,20,7),(8,20,6),(9,21,2);
/*!40000 ALTER TABLE `orc_serv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orcamentos`
--

DROP TABLE IF EXISTS `orcamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(20) NOT NULL,
  `veiculo` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `servico` int(11) NOT NULL,
  `data` date NOT NULL,
  `data_entrega` date NOT NULL,
  `garantia` int(11) NOT NULL,
  `mecanico` varchar(20) NOT NULL,
  `obs` text NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orcamentos`
--

LOCK TABLES `orcamentos` WRITE;
/*!40000 ALTER TABLE `orcamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `orcamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `os`
--

DROP TABLE IF EXISTS `os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `os` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `mecanico` varchar(20) NOT NULL,
  `cliente` varchar(20) NOT NULL,
  `data_entrega` date NOT NULL,
  `concluido` varchar(5) NOT NULL,
  `valor_mao_obra` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `veiculo` int(11) NOT NULL,
  `garantia` int(11) DEFAULT NULL,
  `obs` text NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `id_orc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `os`
--

LOCK TABLES `os` WRITE;
/*!40000 ALTER TABLE `os` DISABLE KEYS */;
INSERT INTO `os` VALUES (43,'3 Serviços',1300.00,'877.777.777-77','688.555.555-55','2021-06-10','Sim',250.00,'2021-06-09',2,30,'adafsfsadf','Orçamento',19),(45,'Alinhamento',1250.00,'877.777.777-77','999.999.999-99','2021-06-18','Não',500.00,'2021-06-09',5,60,'Estado do veículo','Orçamento',18),(49,'2 Serviços',555.00,'877.777.777-77','878.888.888-88','2021-06-25','Não',0.00,'2021-06-09',6,50,'Nenhuma','Orçamento',20),(50,'Serviços de Oficina',300.00,'877.777.777-77','688.555.555-55','2021-06-11','Não',100.00,'2021-06-09',3,30,'Nenhuma','Orçamento',21);
/*!40000 ALTER TABLE `os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `categoria` int(11) NOT NULL,
  `fornecedor` int(11) NOT NULL,
  `valor_compra` decimal(8,2) NOT NULL,
  `valor_venda` decimal(8,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `descricao` text,
  `imagem` varchar(100) DEFAULT NULL,
  `nivel_min` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (4,'Bateria',3,3,250.00,350.00,5,'A Bateria,é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas....','bateria.jpg',12),(7,'Correia Dentada',3,3,150.00,200.00,6,'A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas q','correia-dentada.jpg',0),(8,'Óleo Pneu Pretinho',6,1,25.00,35.00,5,'As principais características dos óleos lubrificantes são a viscosidade, o índice de viscosidade (IV) e a densidade. A viscosidade mede a dificuldade com que o óleo escorre (escoa).','pneu-pretinho.jpg',0),(9,'Óleo Lubrificante',2,1,20.00,35.00,11,'Linha de Lubrificação Aeronáutica Completa, você encontra na Lubvap. Melhores Preços, Qualidade Comprovada, Atendimento Personalizado, e muito mais, Confira. Atendimento 24h. Produto a pronta entrega. Melhor preço. Garantia de eficiência. Marcas: Rocol, A','oleo.jpg',0),(10,'Cabo de Ignição',3,1,250.00,300.00,11,'A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.','cabo-de-ignicao.jpg',9),(11,'Calota Aro 13',3,1,120.00,220.00,10,'A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.','calota-aro13.jpg',6),(12,'Capa Proteção',7,1,100.00,120.00,14,'A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.','capa-protecao.jpg',10),(13,'Embreagem',3,1,350.00,450.00,13,'A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.','embreagem.jpg',10),(14,'Faról',3,3,250.00,300.00,-2,'A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.','farol-de-carro.jpg',8),(15,'Freio Disco',3,3,250.00,300.00,-5,'A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.','freio-de-disco.jpg',7),(16,'ParaChoque Dianteiro',3,1,350.00,500.00,18,'A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.A correia dentada, também chamada de correia de distribuição, é uma peça matreira. Além de não dar sinais evidentes de desgaste ou pistas de que algo está mal, ela mantém ocultas na sua parte interna, composta por pequenos dentes de borracha, as mazelas que resultam da fricção constante pelo movimento de tração.','parachoque-dianteiro.jpg',8),(19,'Painel',3,1,500.00,800.00,7,'painel dianteiro','sem-foto.jpg',12);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recepcionistas`
--

DROP TABLE IF EXISTS `recepcionistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recepcionistas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recepcionistas`
--

LOCK TABLES `recepcionistas` WRITE;
/*!40000 ALTER TABLE `recepcionistas` DISABLE KEYS */;
INSERT INTO `recepcionistas` VALUES (1,'Paulo Campos','866.655.555-55','(00) 00000-0000','paulo@hotmail.com','Rua A'),(3,'Recepcionista Teste','444.444.444-44','(44) 44444-4444','recep@hotmail.com','Rua A');
/*!40000 ALTER TABLE `recepcionistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retornos`
--

DROP TABLE IF EXISTS `retornos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retornos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `veiculo` int(11) NOT NULL,
  `data_serv` date NOT NULL,
  `data_contato` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retornos`
--

LOCK TABLES `retornos` WRITE;
/*!40000 ALTER TABLE `retornos` DISABLE KEYS */;
INSERT INTO `retornos` VALUES (2,5,'2020-03-29','2020-03-29'),(3,3,'2021-06-01','2021-06-01'),(4,2,'2021-06-09','2021-06-09');
/*!40000 ALTER TABLE `retornos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `valor` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (1,'Troca de Óleo',130.00),(2,'Serviços de Oficina',0.00),(3,'Manutenção Preventiva',0.00),(5,'Pintura',0.00),(6,'Balanceamento',120.00),(7,'Alinhamento',100.00);
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Marcela Silva','788.888.888-60','marcela@hotmail.com','123','mecanico'),(2,'Administrador','000.000.000-00','hvfadvocacia@gmail.com','123','admin'),(3,'Paulo Campos','866.655.555-90','paulo@hotmail.com','123','recep'),(5,'Recepcionista Teste','444.444.444-44','recep@hotmail.com','123','recep'),(10,'Mecânico Teste','877.777.777-77','mecanico@hotmail.com','123','mecanico');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `veiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(30) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `cor` varchar(30) NOT NULL,
  `placa` varchar(20) NOT NULL,
  `ano` int(11) NOT NULL,
  `km` int(11) NOT NULL,
  `cliente` varchar(20) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculos`
--

LOCK TABLES `veiculos` WRITE;
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` VALUES (2,'Fiat','Uno','Verde','PKX-4125',2005,160000,'688.555.555-55','2020-10-26'),(3,'Ford','Ká','Branca','PWD-4545',2018,50000,'688.555.555-55','2020-10-26'),(4,'Ford','Ranger Storm','Vermelha','RWS-7895',2020,8000,'878.888.888-88','2020-10-26'),(5,'Wokswagem','Gol','Vermelha','DED-2200',2015,90000,'999.999.999-99','2020-10-29'),(6,'Ford','Storm','Cinza','SSF-7852',2021,1500,'878.888.888-88','2021-06-01');
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `funcionario` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `id_orc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,16,500.00,'877.777.777-77','2020-10-28',7),(2,9,35.00,'877.777.777-77','2020-10-28',7),(3,15,300.00,'877.777.777-77','2020-10-28',9),(4,10,300.00,'877.777.777-77','2020-10-28',9),(5,7,200.00,'877.777.777-77','2020-10-29',15),(6,13,450.00,'877.777.777-77','2020-10-29',15),(7,13,450.00,'877.777.777-77','2021-06-09',19),(8,14,300.00,'877.777.777-77','2021-06-09',19),(9,14,300.00,'877.777.777-77','2021-06-09',19),(10,13,450.00,'877.777.777-77','2021-06-09',19),(11,14,300.00,'877.777.777-77','2021-06-09',19),(12,14,300.00,'877.777.777-77','2021-06-09',19),(13,13,450.00,'877.777.777-77','2021-06-09',19),(14,14,300.00,'877.777.777-77','2021-06-09',19),(15,14,300.00,'877.777.777-77','2021-06-09',19),(16,15,300.00,'877.777.777-77','2021-06-09',18),(17,13,450.00,'877.777.777-77','2021-06-09',18),(18,15,300.00,'877.777.777-77','2021-06-09',18),(19,13,450.00,'877.777.777-77','2021-06-09',18),(20,15,300.00,'877.777.777-77','2021-06-09',20),(21,9,35.00,'877.777.777-77','2021-06-09',20),(22,15,300.00,'877.777.777-77','2021-06-09',20),(23,9,35.00,'877.777.777-77','2021-06-09',20),(24,15,300.00,'877.777.777-77','2021-06-09',20),(25,9,35.00,'877.777.777-77','2021-06-09',20),(26,15,300.00,'877.777.777-77','2021-06-09',20),(27,9,35.00,'877.777.777-77','2021-06-09',20),(28,15,300.00,'877.777.777-77','2021-06-09',20),(29,9,35.00,'877.777.777-77','2021-06-09',20),(30,15,300.00,'877.777.777-77','2021-06-09',20),(31,9,35.00,'877.777.777-77','2021-06-09',20),(32,7,200.00,'877.777.777-77','2021-06-09',21);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'oficina_bd'
--

--
-- Dumping routines for database 'oficina_bd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-02  1:11:11
