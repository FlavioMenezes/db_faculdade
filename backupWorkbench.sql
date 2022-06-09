CREATE DATABASE  IF NOT EXISTS `db_faculdade` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_faculdade`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_faculdade
-- ------------------------------------------------------
-- Server version	8.0.29

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
  `RA` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` char(20) DEFAULT NULL,
  `sobrenome_aluno` char(20) DEFAULT NULL,
  `CPF` char(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nome_pai` char(50) DEFAULT NULL,
  `nome_mae` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `whatsapp` char(20) DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  `fk_cod_turma` int DEFAULT NULL,
  `fk_cod_endereco` int DEFAULT NULL,
  PRIMARY KEY (`RA`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  KEY `fk_cod_turma` (`fk_cod_turma`),
  KEY `fk_cod_endereco` (`fk_cod_endereco`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`fk_cod_turma`) REFERENCES `turma` (`cod_turma`),
  CONSTRAINT `aluno_ibfk_3` FOREIGN KEY (`fk_cod_endereco`) REFERENCES `endereco` (`cod_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Leticia','Marques','12345678910',1,'F','Vitor Gabriel','Amanda Martinha','leticia@gmail.com','6199998484',10,1,14),(2,'Mateus','Fernande','12345678911',1,'M','Cauê','Aninha','mateus@gmail.com','1198456200',8,2,15),(3,'Emerson','Silva','12345678912',1,'M','Lucas Gabriel','Sarah','emerson@hotmail.com',NULL,10,5,19),(4,'Artur','Souza','12345678913',0,'M','Luiz Fernando','Isadora','artur@icloud.com','2841563003',2,2,18),(5,'Naruto','Uzumaki','12345678914',1,'M','Luiz Otávio','Luiza Otavia','naruto@ninja.com','6178523140',4,5,17),(6,'Goku','Sayajin','12345678915',0,'M','Alexandre','Livia','kakaroto@gmail.com','6198523460',3,6,16),(7,'Clarencio','Otimista','12345678916',1,'M','Francisco','Melissa','clarencio_otimista@gmail.com','6186542221',2,8,16),(8,'Jorel','Rick','12345678917',0,'M','Antonio','Heloisa','jorel@stevemagal.com',NULL,1,10,13),(9,'Rafael','Braga','12345678918',1,'M','João Guilherme','Alice Karto','rafinha@uol.com','619845874125',2,3,12),(10,'Joao','Gomes','12345678919',1,'M','Luiz Felipe','Heloisa','jg@sertanejo.com','61984785852',3,6,11),(11,'Rafaela','Souza','12345678920',1,'F','Tomás','Sabrina','rafa@senai.com',NULL,2,9,10),(12,'Thais','Alves','12345678921',1,'F','Bruno','Jennifer','talves@hotmail.com','62987412589',1,10,9),(13,'Daniel','Lago','12345678922',0,'M','Caio','Maria Sophia','dan.gola@hotmail.com','61951951984',10,10,8),(14,'Andrea','Lemos','12345678923',0,'F','Heitor','Nina','dede.lemo@gmail.com','6194847784',7,2,7),(15,'Thiago','Boca','12345678924',1,'M','Theo','Rayssa','bocao@bacas.edu.br',NULL,6,7,6),(16,'Bruna','Nezuko','12345678925',1,'F','Carlos Eduardo','Kamilly','nezuko@jiraya.com','61987987198',5,3,5),(17,'Igor','Calo','12345678926',1,'M','João Gabriel','Stella Artoia','igor@gmail.com','6148487846',4,2,4),(18,'Vanessa','Magalhaes','12345678927',1,'F','Miguel','Melissa','vanvan@gmail.com','6154547848',1,1,3),(19,'Amanda','Silva','12345678928',0,'F','Robson','Rosita','amanda@uol.com','6198497848',7,8,2),(20,'Flavio','Neiva','12345678929',0,'M','Jossan','Sara','flavio@gmail.com','6198883333',10,9,1);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_disciplina` (
  `fk_RA` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_RA`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_disciplina`
--

LOCK TABLES `aluno_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_disciplina` DISABLE KEYS */;
INSERT INTO `aluno_disciplina` VALUES (1,3),(3,3),(8,3),(20,3),(8,6),(11,6),(1,8),(4,8),(8,8),(11,8),(20,9),(4,10),(15,10),(11,11),(19,11),(20,11),(4,12),(9,12),(19,12),(6,13),(17,13),(14,15),(18,16),(1,17),(13,17),(19,17),(6,18),(1,19),(7,19),(8,19),(19,19),(4,22),(11,22),(6,23),(8,23),(1,24),(6,24),(17,24),(1,25),(3,25),(19,25),(8,26),(17,26),(8,27),(13,28),(7,29),(12,29),(15,29),(1,30),(14,30);
/*!40000 ALTER TABLE `aluno_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cod_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` char(30) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Engenharia de Software',5),(2,'Analise de Sistema',5),(3,'Biologia',3),(4,'Historia',4),(5,'Matematica',2),(6,'Engenharia Eletrica',2),(7,'Psicologia',1),(8,'Artes',1),(9,'Engenharia Espacial',2),(10,'Ciencia de Dados',5);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_disciplina`
--

DROP TABLE IF EXISTS `curso_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_disciplina` (
  `fk_cod_curso` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_curso`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_disciplina`
--

LOCK TABLES `curso_disciplina` WRITE;
/*!40000 ALTER TABLE `curso_disciplina` DISABLE KEYS */;
INSERT INTO `curso_disciplina` VALUES (2,1),(2,2),(3,3),(4,4),(8,5),(1,6),(2,7),(1,8),(6,9),(5,10),(4,11),(3,12),(2,13),(9,14),(1,15),(2,16),(3,17),(4,18),(5,19),(6,20),(6,21),(7,22),(8,23),(9,24),(2,25),(5,26),(4,27),(3,28),(2,29),(1,30);
/*!40000 ALTER TABLE `curso_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `cod_departamento` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` char(21) NOT NULL,
  PRIMARY KEY (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Ciencias Humanas'),(2,'Matematica'),(3,'Biologicas'),(4,'Estagio'),(5,'Tecnologia Informação');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `cod_disciplina` int NOT NULL AUTO_INCREMENT,
  `fk_cod_departamento` int DEFAULT NULL,
  `nome_disciplina` char(30) DEFAULT NULL,
  `carga_horaria` int NOT NULL,
  `descricao` char(60) DEFAULT NULL,
  `num_alunos` int NOT NULL,
  PRIMARY KEY (`cod_disciplina`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,2,'Raciocinio Logico',12,'Disciplina que ensia raciocinio logico',20),(2,1,'Psicologia Cognitiva',30,'Disciplina que ensia psicologia',15),(3,2,'Eletronica Digital',100,'Disciplina que ensia eletronica',19),(4,5,'Programacao em C',999,'Disciplina que ensia a programar em c',2),(5,5,'Power BI',92,'Aprendendo Power BI',5),(6,5,'Java',1000,'Aprendendo Java',1),(7,5,'Introdução Banco de Dados',200,'Disciplina para aprender SQL',10),(8,5,'BD Intermediario',200,'Comandos avançados em SQL',10),(9,5,'BD Avançado',200,'Se tornando um DBA',10),(10,3,'Plantação Ecologica',30,'Disciplina para fazer uma mini orta',12),(11,5,'Postgre',100,'Disciplina para dominar o Postgree',10),(12,5,'PHP',150,'Disciplina que ensina a linguagem PHP',12),(13,5,'PMBOK Boas praticas',50,'Disciplina voltada para PMBOK',3),(14,5,'Linux',40,'Disciplina que ensina sobre Ubuntu Linux',2),(15,5,'Power Shell',25,'Disciplina que ensina a criar scripts',1),(16,5,'Introdução Hardware',12,'Disciplina que ensina sobre hardware',7),(17,2,'Historia do Brasil',100,'Disciplina que ensina sobre o Brasil.',6),(18,5,'Python',200,'Disciplina que ensina Python',5),(19,4,'Como arrumar estágio?',20,'Disciplina que ensina sobre os estagios',4),(20,3,'Biologia do serhumaninho',50,'Disciplina que ensina sobre os seres humanos pequenos',3),(21,5,'Ciencia dos Dados',320,'Disciplina que ensina ciencia de Dados',2),(22,5,'SGBD',5,'Disciplina teorica sobre SGBD',6),(23,5,'Seguranca da Informacao',12,'Disciplina que ensina sobre seguranca em TI',5),(24,1,'Arte Moderna Antiga',30,'Disciplina da arte moderna e antiga',4),(25,1,'Historia de Brasilia',50,'Disciplina para aprender sobre Brasília',3),(26,1,'Meditação',90,'Disciplina ensina a ter mais calma',2),(27,5,'Teoria de Kimball',20,'Disciplina ensinando Kimball',2),(28,2,'Eletricidade',25,'Eletricidade Basica',1),(29,2,'Calculo Aplicado',10,'Aprendendo Calculo',4),(30,1,'Teatro',10,'Arte de atuar',2);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_historico`
--

DROP TABLE IF EXISTS `disciplina_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_historico` (
  `fk_cod_historico` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  `nota` float(4,2) DEFAULT NULL,
  `frequencia` int DEFAULT NULL,
  PRIMARY KEY (`fk_cod_historico`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `disciplina_historico_ibfk_1` FOREIGN KEY (`fk_cod_historico`) REFERENCES `historico` (`cod_historico`),
  CONSTRAINT `disciplina_historico_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_historico`
--

LOCK TABLES `disciplina_historico` WRITE;
/*!40000 ALTER TABLE `disciplina_historico` DISABLE KEYS */;
INSERT INTO `disciplina_historico` VALUES (1,11,4.88,21),(1,12,9.85,27),(1,19,8.08,19),(2,10,6.15,19),(2,18,6.05,44),(2,22,2.67,9),(2,24,8.29,23),(3,7,8.29,42),(3,14,4.80,43),(3,20,5.61,20),(4,1,3.49,45),(4,13,5.99,24),(4,19,8.81,47),(4,30,2.97,2),(5,12,9.81,50),(5,17,2.82,14),(6,3,1.17,30),(6,4,4.23,16),(6,10,5.03,4),(6,12,8.91,31),(6,25,7.38,35),(7,5,9.01,12),(7,6,6.41,9),(7,23,7.36,46),(7,30,7.19,26),(8,19,7.84,36),(8,22,4.70,19),(8,23,3.42,6),(9,1,6.71,16),(9,7,9.86,3),(9,12,7.27,38),(9,14,7.23,49),(9,15,8.48,14),(10,5,7.96,34),(10,6,4.77,26),(10,25,3.01,32),(10,26,5.07,33),(10,30,4.68,3),(11,9,9.70,15),(11,28,1.06,45),(12,16,3.76,11),(12,19,6.19,30),(13,19,3.32,20),(13,22,1.43,46),(14,24,4.55,22),(15,1,6.34,49),(15,18,8.74,22),(15,26,6.23,38),(16,5,8.53,33),(16,9,4.03,9),(16,13,7.65,40),(16,17,8.24,41),(16,18,9.14,33),(16,19,2.16,37),(16,27,5.57,39),(17,3,6.10,48),(17,5,9.94,2),(17,12,7.01,44),(17,14,4.73,42),(17,19,7.61,43);
/*!40000 ALTER TABLE `disciplina_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `cod_endereco` int NOT NULL AUTO_INCREMENT,
  `nome_rua` char(50) NOT NULL,
  `numero_rua` int NOT NULL,
  `complemento` char(20) NOT NULL,
  `CEP` char(8) NOT NULL,
  `fk_cod_tipo_logradouro` int NOT NULL,
  PRIMARY KEY (`cod_endereco`),
  KEY `fk_cod_tipo_logradouro` (`fk_cod_tipo_logradouro`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_cod_tipo_logradouro`) REFERENCES `tipo_logradouro` (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'SQS 310',13,'Proximo banca','74185278',1),(2,'SQN 410',11,'Bloco azul','74185277',1),(3,'SQN 516',30,'Predio Dom','74185276',1),(4,'SQN 716',23,'BLoco JK','74185275',1),(5,'SQS 411',24,'Bloco Z','74185274',1),(6,'SQN 102',21,'Bloco A','74185275',1),(7,'SQN 916',44,'Bloco C','74185274',1),(8,'SQN 502',42,'Predio Brasil','74185279',1),(9,'QNL 23',99,'Final da rua','71545488',2),(10,'QNL 30',92,'Chaparral','71545487',2),(11,'QNJ 42',61,'Casa vermelha','71545488',2),(12,'QNS 16',44,'Casa de andar','71545490',2),(13,'QNN 01',56,'Casa do Man','71545477',2),(14,'QNN 44',52,'Portao do brasil','71545498',2),(15,'QNN 51',66,'Ao lado senai','71545499',2),(16,'QNJ 12',99,'Beco Diagonal','71545497',2),(17,'Ch 21',1045,'Longe dmais','00001238',3),(18,'Ch 26',1001,'Final da BR','00001237',3),(19,'Ch 44',977,'Judas Lose Bot','00001235',3);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cod_historico` int NOT NULL AUTO_INCREMENT,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`cod_historico`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,'2022-01-01','2025-01-01',1),(2,'2022-01-01','2025-01-01',3),(3,'2022-01-01','2025-01-01',4),(4,'2022-01-01','2025-01-01',6),(5,'2022-01-01','2025-01-01',7),(6,'2022-01-01','2025-01-01',8),(7,'2022-01-01','2025-01-01',9),(8,'2022-01-01','2025-01-01',10),(9,'2022-01-01','2025-01-01',11),(10,'2022-01-01','2025-01-01',12),(11,'2022-01-01','2025-01-01',13),(12,'2022-01-01','2025-01-01',14),(13,'2022-01-01','2025-01-01',15),(14,'2022-01-01','2025-01-01',17),(15,'2022-01-01','2025-01-01',18),(16,'2022-01-01','2025-01-01',19),(17,'2022-01-01','2025-01-01',20);
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `cod_professor` int NOT NULL AUTO_INCREMENT,
  `nome_professor` char(20) NOT NULL,
  `sobrenome_professor` char(50) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_professor`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Luciano','Jedi',1,5),(2,'Marcelo','Forgado',1,2),(3,'Priscila','Dracaris',0,2),(4,'Marcela','Pontes',1,3),(5,'Ricardo','Amorim',1,5),(6,'Valeria','Norbis',0,4),(7,'Fernando','Saitama',1,5),(8,'Teles','Netero',0,4),(9,'Wesley','Testa',1,1),(10,'Renata','Kawasaki',1,3);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor_disciplina` (
  `fk_cod_professor` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_professor`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_professor`) REFERENCES `professor` (`cod_professor`),
  CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_disciplina`
--

LOCK TABLES `professor_disciplina` WRITE;
/*!40000 ALTER TABLE `professor_disciplina` DISABLE KEYS */;
INSERT INTO `professor_disciplina` VALUES (7,1),(9,2),(1,3),(1,4),(2,5),(1,6),(1,7),(2,8),(4,9),(4,10),(5,11),(7,12),(9,13),(10,14),(10,15),(9,16),(7,17),(5,18),(4,19),(3,20),(2,21),(1,22),(1,23),(2,24),(3,25),(4,26),(5,27),(7,28),(9,29),(10,30);
/*!40000 ALTER TABLE `professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `cod_telefone` int NOT NULL AUTO_INCREMENT,
  `num_telefone` char(20) DEFAULT NULL,
  `fk_cod_tipo` int DEFAULT NULL,
  PRIMARY KEY (`cod_telefone`),
  KEY `fk_cod_tipo` (`fk_cod_tipo`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`fk_cod_tipo`) REFERENCES `tipo_telefone` (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'1198456200',1),(2,'62987412589',1),(3,'61951951984',1),(4,'6194847784',1),(5,'6154547848',1),(6,'984941211',1),(7,'301201201',2),(8,'33000001',3),(9,'9452255221',1),(10,'31225541',2),(11,'33114515',3),(12,'984912211',1),(13,'33144355',2),(14,'41149873',3),(15,'34151254',3),(16,'719444541',1),(17,'345645641',2),(18,'33461142',3),(19,'78999444',1),(20,'33336666',2),(21,'222245654',3),(22,'10232121',1),(23,'45456161',2),(24,'77784221',3),(25,'65465465',3);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_aluno`
--

DROP TABLE IF EXISTS `telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_aluno` (
  `cod_tel_aluno` int NOT NULL AUTO_INCREMENT,
  `fk_RA` int NOT NULL,
  `fk_cod_telefone` int NOT NULL,
  PRIMARY KEY (`cod_tel_aluno`),
  KEY `fk_RA` (`fk_RA`),
  KEY `fk_cod_telefone` (`fk_cod_telefone`),
  CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `telefone_aluno_ibfk_2` FOREIGN KEY (`fk_cod_telefone`) REFERENCES `telefone` (`cod_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_aluno`
--

LOCK TABLES `telefone_aluno` WRITE;
/*!40000 ALTER TABLE `telefone_aluno` DISABLE KEYS */;
INSERT INTO `telefone_aluno` VALUES (1,2,1),(2,12,2),(3,13,3),(4,14,4),(5,18,5),(6,1,6),(7,1,7),(8,1,8),(9,5,9),(10,5,10),(11,5,11),(12,9,12),(13,9,13),(14,9,14),(15,4,15),(16,6,16),(17,7,17),(18,10,18),(19,15,19),(20,16,20),(21,16,21),(22,17,22),(23,18,23),(24,19,24),(25,20,25);
/*!40000 ALTER TABLE `telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_logradouro`
--

DROP TABLE IF EXISTS `tipo_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_logradouro` (
  `cod_tipo_logradouro` int NOT NULL AUTO_INCREMENT,
  `tipo_logradouro` char(11) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_logradouro`
--

LOCK TABLES `tipo_logradouro` WRITE;
/*!40000 ALTER TABLE `tipo_logradouro` DISABLE KEYS */;
INSERT INTO `tipo_logradouro` VALUES (1,'Quadra'),(2,'Rua'),(3,'Chacara');
/*!40000 ALTER TABLE `tipo_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefone`
--

DROP TABLE IF EXISTS `tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_telefone` (
  `cod_tipo` int NOT NULL AUTO_INCREMENT,
  `tipo_telefone` char(12) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefone`
--

LOCK TABLES `tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tipo_telefone` DISABLE KEYS */;
INSERT INTO `tipo_telefone` VALUES (1,'celular'),(2,'residencia'),(3,'comercial');
/*!40000 ALTER TABLE `tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `cod_turma` int NOT NULL AUTO_INCREMENT,
  `periodo` char(8) DEFAULT NULL,
  `num_alunos` int DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  PRIMARY KEY (`cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'Noturno',8,'2022-01-01','2025-03-15',1),(2,'Integral',28,'2022-01-01','2025-03-15',2),(3,'Manha',12,'2022-02-21','2025-03-15',3),(4,'Tarde',40,'2022-02-01','2025-03-15',4),(5,'Noite',25,'2022-05-28','2025-05-01',5),(6,'Noite',30,'2022-01-28','2025-05-05',6),(7,'Tarde',19,'2022-01-28','2023-03-12',7),(8,'Manha',20,'2022-12-28','2023-12-25',8),(9,'Integral',15,'2022-11-28','2027-01-01',9),(10,'Tarde',10,'2022-01-28','2024-02-01',10);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 16:44:33
