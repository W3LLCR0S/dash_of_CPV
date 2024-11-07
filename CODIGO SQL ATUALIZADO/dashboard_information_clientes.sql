CREATE DATABASE  IF NOT EXISTS `dashboard_information` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dashboard_information`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dashboard_information
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(100) DEFAULT NULL,
  `inicio_contrato` date DEFAULT NULL,
  `termino_contrato` date DEFAULT NULL,
  `tempo_contrato_meses` int DEFAULT NULL,
  `mes_inicio_contrato` int DEFAULT NULL,
  `mes_termino_contrato` int DEFAULT NULL,
  `classificacao_cliente` varchar(3) DEFAULT NULL,
  `situacao` varchar(100) DEFAULT NULL,
  `mensalidade` decimal(10,2) DEFAULT NULL,
  `life_time_value` decimal(10,2) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `regiao` varchar(100) DEFAULT NULL,
  `dias_em_contrato` int DEFAULT NULL,
  `flag` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (39,'Allow Portaria','2023-06-28','2023-01-02',-5,6,1,'B','Perdida',1200.00,3600.00,'Londrina','Paraná','Sul',-177,'Gray'),(40,'Altatech','2024-08-28','2024-12-19',4,8,12,'S','Em Aberto',2500.00,15000.00,'Londrina','Paraná','Sul',113,'White'),(41,'Altos','2024-04-18','2024-10-18',6,4,10,'C','Perdida',3000.00,18000.00,'Londrina','Paraná','Sul',183,'Gray'),(42,'Ana Paula Simões','2023-09-29','2024-09-26',12,9,9,'C','Em Aberto',1000.00,6000.00,'Brasília','Distrito Federal','Centro Oeste',363,'Red'),(43,'Anchieta & Pereira','2024-06-05','2024-12-05',6,6,12,'B','Em Aberto',1500.00,9000.00,'Londrina','Paraná','Sul',183,'Yellow'),(44,'Archibox','2024-09-20','2025-06-20',9,9,6,'B','Em Aberto',2000.00,16000.00,'Londrina','Paraná','Sul',273,'White'),(45,'Ateliê Maries','2023-11-13','2024-12-13',13,11,12,'C','Perdida',1000.00,10000.00,'Londrina','Paraná','Sul',396,'Gray'),(46,'Atomic Motorsport','2023-07-24','2024-12-24',17,7,12,'A','Em Aberto',700.00,6300.00,'Londrina','Paraná','Sul',519,'Green'),(47,'Aurora Imobiliária','2024-08-18','2025-05-18',9,8,5,'A','Em Aberto',2500.00,20000.00,'Londrina','Paraná','Sul',273,'White'),(48,'Bcar','2024-04-12','2024-12-10',8,4,12,'C','Perdida',1000.00,6000.00,'Londrina','Paraná','Sul',242,'Gray'),(49,'Bella Seg','2023-10-23','2024-02-23',4,10,2,'B','Perdida',1000.00,3000.00,'Londrina','Paraná','Sul',123,'Gray'),(50,'Bellibone','2024-01-25','2024-03-25',2,1,3,'B','Perdida',2691.24,5382.00,'Maywood','Nova Jersey','Nordeste',60,'Gray'),(51,'Béni Beleza E Estética','2024-02-01',NULL,NULL,2,NULL,'C','Perdida',1300.00,7800.00,'Londrina','Paraná','Sul',NULL,'Gray'),(52,'Bf Tech','2023-10-03','2025-02-04',16,10,2,'A','Em Aberto',0.00,0.00,'Chapecó','Santa Catarina','Sul',490,'Yellow'),(53,'Blackcar',NULL,NULL,NULL,NULL,NULL,'C','Perdida',1000.00,6000.00,'Londrina','Paraná','Sul',NULL,'Gray'),(54,'Boa Vista','2024-01-24','2024-09-24',8,1,9,'B','Em Aberto',900.00,9000.00,'Londrina','Paraná','Sul',244,'Red'),(55,'Bonfim Solutions','2024-02-27','2024-08-27',6,2,8,'C','Perdida',1500.00,9000.00,'Brasília','Distrito Federal','Centro Oeste',182,'Gray'),(56,'Bonn Produto Saúde','2024-03-18','2024-06-18',3,3,6,'C','Perdida',1300.00,3900.00,'Curitiba','Paraná','Sul',92,'Gray'),(57,'Brainstorm Nutrition','2024-03-22','2024-09-22',6,3,9,'C','Perdida',1000.00,9000.00,'Londrina','Paraná','Sul',184,'Gray'),(58,'Budega Bar','2023-08-29','2023-11-29',3,8,11,'C','Perdida',1500.00,4500.00,'Ubá','Minas Gerais','Sudeste',92,'Gray'),(59,'Campo Ótica','2024-07-03','2025-01-03',6,7,1,'B','Em Aberto',2500.00,15000.00,'Campo Mourão','Paraná','Sul',184,'Red'),(60,'Cássio Lourenço','2024-03-05','2024-09-05',6,3,9,'C','Em Aberto',1000.00,6000.00,'Belo Horizonte','Minas Gerais','Sudeste',184,'Yellow'),(61,'Century 21','2022-11-29','2023-06-27',7,11,6,'A','Perdida',1100.00,8800.00,'Londrina','Paraná','Sul',210,'Gray'),(62,'Cheirin Bão','2024-04-08','2025-04-08',12,4,4,'C','Perdida',1000.00,12000.00,'Belo Horizonte','Minas Gerais','Sudeste',365,'Gray'),(63,'Comex','2023-11-16','2024-02-11',3,11,2,'C','Perdida',900.00,5400.00,'Londrina','Paraná','Sul',87,'Gray'),(64,'Conquista','2023-12-12','2024-03-13',3,12,3,'C','Perdida',0.00,0.00,'Londrina','Paraná','Sul',92,'Gray'),(65,'Consultoria Do Sono','2023-09-22','2025-01-02',16,9,1,'B','Em Aberto',800.00,2400.00,'Porto Alegre','Rio Grande Do Sul','Sul',468,'Green'),(66,'Contabme','2024-05-27','2024-10-27',5,5,10,'A','Perdida',3497.00,20982.00,'São Paulo','São Paulo','Sudeste',153,'Gray'),(67,'Conveniencia D Hora','2023-09-04','2023-12-04',3,9,12,'C','Perdida',700.00,2100.00,'Timbó','Santa Catarina','Sul',91,'Gray'),(68,'Creative Saúde','2024-01-30','2024-06-30',5,1,6,'A','Perdida',1500.00,9000.00,'Curitiba','Paraná','Sul',152,'Gray'),(69,'Daiane Lorena','2024-04-10','2025-04-10',12,4,4,'C','Em Aberto',1000.00,12000.00,'Brasília','Distrito Federal','Centro Oeste',365,'Yellow'),(70,'Diplomata','2023-03-15','2023-09-15',6,3,9,'C','Perdida',1500.00,9000.00,'Londrina','Paraná','Sul',184,'Gray'),(71,'Doginarts','2024-01-29','2024-06-29',5,1,6,'A','Perdida',3170.00,19021.00,'Los Angeles','Califórnia','Sul',152,'Gray'),(72,'Dr Paulo Cortez',NULL,NULL,NULL,NULL,NULL,'C','Perdida',1500.00,4500.00,'preencher','preencher','preencher',NULL,'Gray'),(73,'Dgt','2023-08-24','2023-09-24',1,8,9,'C','Perdida',500.00,500.00,'Barueri','São Paulo','Sudeste',31,'Gray'),(74,'Easy Redirect','2024-03-06','2024-12-03',9,3,12,'S','Em Aberto',2000.00,8000.00,'Londrina','Paraná','Sul',272,'Red'),(75,'Edu Veículos','2023-07-07','2023-11-07',4,7,11,'B','Perdida',1250.00,5000.00,'Londrina','Paraná','Sul',123,'Gray'),(76,'Eduardo Castro','2023-02-20','2023-08-20',6,2,8,'C','Perdida',1300.00,7800.00,'Londrina','Paraná','Sul',181,'Gray'),(77,'Lucas Sabino','2023-05-10','2023-08-17',3,5,8,'C','Perdida',1000.00,1000.00,'Londrina','Paraná','Sul',99,'Gray'),(78,'Madeireira Luzitano','2023-06-01','2024-12-21',18,6,12,'A','Em Aberto',1300.00,7800.00,'Londrina','Paraná','Sul',569,'Green'),(79,'Martinoli Vidraçaria','2023-07-06','2024-06-01',11,7,6,'B','Perdida',1500.00,9000.00,'Londrina','Paraná','Sul',331,'Gray'),(80,'Master Sul','2024-09-02','2025-02-03',5,9,2,'C','Em Aberto',1500.00,9000.00,'Londrina','Paraná','Sul',154,'White'),(81,'Masterclin','2023-11-01','2024-01-02',2,11,1,'C','Perdida',1300.00,3900.00,'Cascavel','Paraná','Sul',62,'Gray'),(82,'Matel Automóveis','2023-11-24','2024-01-10',2,11,1,'C','Em Aberto',700.00,2400.00,'Londrina','Paraná','Sul',47,'Red'),(83,'Messias Motors','2023-07-27','2023-11-27',4,7,11,'B','Perdida',1200.00,6000.00,'Londrina','Paraná','Sul',123,'Gray'),(84,'Míria Fisioterapia','2024-01-11','2024-11-12',10,1,11,'C','Em Aberto',1000.00,12000.00,'Belo Horizonte','Minas Gerais','Sudeste',306,'Green'),(85,'Montari Planejados','2023-09-07','2024-07-03',10,9,7,'C','Perdida',800.00,7188.00,'Serrinha','Bahia','Nordeste',300,'Gray'),(86,'Natieli E Veronice','2022-11-01','2024-01-12',14,11,1,'C','Em Aberto',700.00,8400.00,'Londrina','Paraná','Sul',437,'Green'),(87,'Nobi','2024-01-08','2024-02-09',1,1,2,'B','Perdida',1000.00,3000.00,'Londrina','Paraná','Sul',32,'Gray'),(88,'Onesafety','2023-09-19','2023-12-19',3,9,12,'C','Perdida',1000.00,4000.00,'Londrina','Paraná','Sul',91,'Gray'),(89,'Pemaq Metalúrgica','2023-10-05','2023-05-12',-5,10,5,'C','Perdida',1000.00,3000.00,'Varginha','Minas Gerais','Sudeste',-146,'Gray'),(90,'Personalize Clínica','2023-09-18','2024-03-18',6,9,3,'B','Perdida',500.00,3000.00,'Santo André','São Paulo','Sudeste',182,'Gray'),(91,'Produtos Pinhal','2024-01-09','2024-03-01',2,1,3,'A','Em Aberto',1200.00,7200.00,'Londrina','Paraná','Sul',52,'Yellow'),(92,'Protege','2023-05-05','2023-05-11',0,5,5,'B','Perdida',900.00,5400.00,'Londrina','Paraná','Sul',6,'Gray'),(93,'Pura Vida','2024-04-30','2024-06-30',2,4,6,'C','Perdida',1000.00,2000.00,'Londrina','Paraná','Sul',61,'Gray'),(94,'R Office','2023-10-27','2024-11-07',13,10,11,'B','Perdida',1000.00,3000.00,'Londrina','Paraná','Sul',377,'Gray'),(95,'Rapha Ink','2023-08-17','2023-05-10',-3,8,5,'C','Perdida',1000.00,1000.00,'Londrina','Paraná','Sul',-99,'Gray'),(96,'Reação Piscinas','2023-09-19','2023-10-10',1,9,10,'C','Perdida',300.00,300.00,'Rio de Janeiro','Rio de Janeiro','Sudeste',21,'Gray'),(97,'Recuperar Clinica De Fisioterapia','2023-06-06','2025-06-06',24,6,6,'B','Em Aberto',1000.00,12000.00,'Belo Horizonte','Minas Gerais','Sudeste',731,'Green'),(98,'Rede Sia De Informações','2023-10-25','2024-04-25',6,10,4,'C','Perdida',1000.00,6000.00,'Vitória','Espírito Santo','Sudeste',183,'Gray'),(99,'Ricchezza','2014-12-07','2025-12-03',132,12,12,'S','Em Aberto',2500.00,15000.00,'Londrina','Paraná','Sul',4014,'Red'),(100,'Rockfeller','2024-04-15','2024-10-14',6,4,10,'C','Perdida',800.00,4800.00,'Londrina','Paraná','Sul',182,'Gray'),(101,'Ruah 295','2023-11-27','2024-07-31',8,11,7,'C','Perdida',1000.00,3000.00,'Londrina','Paraná','Sul',247,'Gray'),(102,'Sayomi Yamanaka','2024-04-30','2024-07-30',3,4,7,'C','Perdida',1500.00,4500.00,'preencher','preencher','preencher',91,'Gray'),(103,'Som Bassan','2023-07-19','2023-10-19',3,7,10,'B','Perdida',1000.00,3000.00,'Londrina','Paraná','Sul',92,'Gray'),(104,'South Motors','2023-04-11','2023-11-10',7,4,11,'B','Perdida',1095.26,6571.56,'Curitiba','Paraná','Sul',213,'Gray'),(105,'Stanza','2023-03-13','2024-12-13',21,3,12,'A','Perdida',1500.00,15000.00,'Londrina','Paraná','Sul',641,'Gray'),(106,'Sten','2023-04-06','2024-05-08',13,4,5,'C','Perdida',800.00,12000.00,'Londrina','Paraná','Sul',398,'Gray'),(107,'Tikdogs',NULL,NULL,NULL,NULL,NULL,'C','Perdida',1000.00,6000.00,'Londrina','Paraná','Sul',NULL,'Gray'),(108,'Top Tintas','2023-06-26','2023-12-26',6,6,12,'C','Perdida',1500.00,9000.00,'Londrina','Paraná','Sul',183,'Gray'),(109,'Traquitana','2024-04-23','2025-04-24',12,4,4,'B','Em Aberto',1000.00,1200.00,'Belo Horizonte','Minas Gerais','Sudeste',366,'Green'),(110,'V8 Multimarcas','2023-07-04','2023-10-10',3,7,10,'C','Perdida',1000.00,3000.00,'Curitiba','Paraná','Sul',98,'Gray'),(111,'Vaapty','2024-07-10','2025-10-01',15,7,10,'B','Em Aberto',1200.00,7200.00,'Ourinhos','São Paulo','Sudeste',448,'Yellow'),(112,'Vinicius Gobbo','2023-03-15','2023-09-15',6,3,9,'C','Perdida',1500.00,4500.00,'Londrina','Paraná','Sul',184,'Gray'),(113,'Vitalina','2024-07-31','2024-10-31',3,7,10,'C','Em Aberto',1000.00,3000.00,'Miraí','Minas Gerais','Sudeste',92,'Red'),(114,'Viva Mais','2023-09-19','2023-12-19',3,9,12,'C','Perdida',700.00,2100.00,'Curitiba','Paraná','Sul',91,'Gray'),(115,'Vivaldi','2024-07-10','2025-10-01',15,7,10,'C','Em Aberto',1300.00,7800.00,'Belo Horizonte','Minas Gerais','Sudeste',448,'Green'),(116,'Vox 2 You','2022-11-22','2023-11-22',12,11,11,'A','Perdida',0.00,0.00,'Londrina','Paraná','Sul',365,'Gray'),(117,'Web Eletric','2023-08-16','2023-11-16',3,8,11,'C','Perdida',1000.00,3000.00,'Londrina','Paraná','Sul',92,'Gray'),(118,'White Casas','2023-02-13','2023-08-13',6,2,8,'C','Perdida',800.00,4800.00,'Londrina','Paraná','Sul',181,'Gray'),(119,'Wmotors','2024-01-16','2024-06-14',5,1,6,'C','Perdida',800.00,4800.00,'Londrina','Paraná','Sul',150,'Gray'),(120,'Wv Imports','2024-02-24','2025-02-24',12,2,2,'C','Perdida',1000.00,12000.00,'Belo Horizonte','Minas Gerais','Sudeste',366,'Gray'),(121,'Yudi Ink','2023-02-08','2024-08-02',18,2,8,'C','Perdida',1050.00,12600.00,'Londrina','Paraná','Sul',541,'Gray'),(122,'Zaia Comunicação','2023-09-11','2023-11-12',2,9,11,'C','Perdida',500.00,1500.00,'São José Dos Campos','São Paulo','Sudeste',62,'Gray'),(123,'Ztf Advogados','2023-04-11','2023-05-12',1,4,5,'A','Perdida',2347.00,14082.00,'Londrina','Paraná','Sul',31,'Gray'),(124,'Edvaldo','2024-07-31','2024-10-31',3,7,10,'C','Em Aberto',1000.00,3000.00,'Londrina','Paraná','Sul',92,'White'),(125,'Effect Energia Solar','2023-05-05','2023-07-05',2,5,7,'C','Perdida',1500.00,3000.00,'Londrina','Paraná','Sul',61,'Gray'),(126,'Emporio das Unhas ','2023-05-31','2023-11-26',6,5,11,'B','Perdida',1497.97,8987.82,'Brasília','Distrito Federal','Centro Oeste',179,'Gray'),(127,'Ideal Veiculos','2023-11-09','2024-02-09',3,11,2,'A','Perdida',1750.00,5250.00,'Londrina','Paraná','Sul',92,'Gray'),(128,'Ideia Consultoria','2024-03-06','2024-09-06',6,3,9,'C','Perdida',1500.00,9000.00,'Londrina','Paraná','Sul',184,'Gray'),(129,'Ihard','2024-04-23','2024-10-23',6,4,10,'B','Perdida',1000.00,8000.00,'Curitiba','Paraná','Sul',183,'Gray'),(130,'Inplancare','2024-02-15','2024-12-15',10,2,12,'A','Perdida',0.00,0.00,'Londrina','Paraná','Sul',304,'Gray'),(131,'Instituto da Coluna e Movimento','2023-09-04','2024-03-04',6,9,3,'C','Perdida',1000.00,6000.00,'Brasília','Distrito Federal','Centro Oeste',182,'Gray'),(132,'Isaque','2024-02-09','2024-03-09',1,2,3,'C','Perdida',1225.00,1225.00,'Birmingham','Alabama','Sudeste',29,'Gray'),(133,'KM8 Cars','2023-09-07','2024-03-07',6,9,3,'C','Perdida',2000.00,12000.00,'Santo André','São Paulo','Sudeste',182,'Gray'),(134,'Lá No Fundo','2024-04-01','2024-10-01',6,4,10,'C','Perdida',1500.00,9000.00,'Londrina','Paraná','Sul',183,'Gray'),(135,'Lais Zanutto','2023-07-06','2023-10-06',3,7,10,'C','Perdida',1500.00,4500.00,'Ibiporã','Paraná','Sul',92,'Gray'),(136,'Lima Consultoria','2024-07-06','2024-07-06',0,7,7,'B','Perdida',2000.00,12000.00,'Apucarana','Paraná','Sul',0,'Gray'),(137,'Lit Point Joias','2023-11-07','2024-02-07',3,11,2,'C','Perdida',1200.00,3600.00,'Curitiba','Paraná','Sul',92,'Gray'),(138,'Locadrill','2023-07-27','2023-10-27',3,7,10,'B','Perdida',1497.00,4491.00,'Londrina','Paraná','Sul',92,'Gray'),(139,'Lojão do Bras','2024-07-25','2025-01-25',6,7,1,'C','Em Aberto',1500.00,9000.00,'Londrina','Paraná','Sul',184,'Green'),(140,'Lojinha do Ser','2023-07-10','2023-10-10',3,7,10,'B','Perdida',1200.00,3600.00,'Londrina','Paraná','Sul',92,'Gray'),(141,'Londri Fenix','2024-07-04','2025-01-04',6,7,1,'B','Em Aberto',2500.00,15000.00,'Londrina','Paraná','Sul',184,'Yellow'),(142,'loophing','2023-02-20','2023-08-20',6,2,8,'C','Perdida',1200.00,7200.00,'Londrina','Paraná','Sul',181,'Perdida'),(181,'Emy Saruwatari','2024-01-23','2024-12-23',11,1,12,'C','Perdida',1000.00,12000.00,'Dourados','Mato Grosso do Sul','Centro Oeste',335,'Gray'),(182,'Epic Joias','2024-01-24','2024-07-24',6,1,7,'A','Perdida',900.00,5400.00,'Londrina','Paraná','Sul',182,'Gray'),(183,'Escritório União','2024-02-06','2025-06-01',16,2,6,'B','Em Aberto',1500.00,9000.00,'Umuaruma','Paraná','Sul',481,'Green'),(184,'Estilo Móveis','2023-05-29','2023-11-29',6,5,11,'C','Perdida',1500.00,9000.00,'Cambé','Paraná','Sul',184,'Gray'),(185,'Fabio Cassiano','2023-07-12','2024-07-06',12,7,7,'C','Perdida',1500.00,9000.00,'Londrina','Paraná','Sul',360,'Gray'),(186,'Farmácia São Rafael','2023-10-11','2024-03-11',5,10,3,'C','Perdida',1000.00,6000.00,'Londrina','Paraná','Sul',152,'Gray'),(187,'Fast Online','2023-06-26','2023-09-26',3,6,9,'B','Perdida',1500.00,4500.00,'Londrina','Paraná','Sul',92,'Gray'),(188,'Felicitá','2024-04-10','2024-06-28',2,4,6,'C','Perdida',1000.00,12000.00,'São Miguel do Oeste','Santa Catarina','Sul',79,'Gray'),(189,'Fenibat','2024-01-01','2024-12-01',11,1,12,'A','Perdida',2500.00,28800.00,'Londrina','Paraná','Sul',335,'Gray'),(190,'Fenix Presentes','2023-01-30','2023-07-30',6,1,7,'C','Perdida',1000.00,6000.00,'Londrina','Paraná','Sul',181,'Gray'),(191,'Fer Fitness Center','2023-10-20','2025-01-17',15,10,1,'C','Perdida',900.00,3750.00,'Ouro Fino','Minas Gerais','Sudeste',455,'Gray'),(192,'Fernando Honório','2023-12-12','2024-03-12',3,12,3,'C','Perdida',0.00,0.00,'Londrina','Paraná','Sul',91,'Gray'),(193,'G.A Investimentos','2023-11-24','2024-03-01',4,11,3,'C','Perdida',1000.00,1000.00,'Londrina','Paraná','Sul',98,'Gray'),(194,'GEAMB Engenharia','2023-05-31','2025-03-08',22,5,3,'B','Em Aberto',700.00,16182.00,'Brasília','Distrito Federal','Centro Oeste',647,'Green'),(195,'GH Diamond','2024-01-24','2024-07-24',6,1,7,'A','Perdida',900.00,5400.00,'Londrina','Paraná','Sul',182,'Gray'),(196,'GR Advocacia','2024-02-29','2025-02-28',12,2,2,'C','Perdida',1300.00,15600.00,'Londrina','Paraná','Sul',365,'Gray'),(197,'Guilherme Chueire','2022-12-01','2024-01-02',13,12,1,'B','Perdida',0.00,0.00,'Londrina','Paraná','Sul',397,'Gray'),(198,'Hastam Motors','2023-04-18','2024-12-01',20,4,12,'A','Em Aberto',0.00,0.00,'Londrina','Paraná','Sul',593,'Red'),(199,'Homeney','2023-07-18','2025-01-24',18,7,1,'S','Em Aberto',2497.99,44963.82,'Londrina','Paraná','Sul',556,'Red');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` TRIGGER `clientes_BEFORE_INSERT` BEFORE INSERT ON `clientes` FOR EACH ROW BEGIN
	-- Calcula a diferença em dias entre a data de término e a data de início do contrato
    SET NEW.dias_em_contrato = DATEDIFF(NEW.termino_contrato, NEW.inicio_contrato);
    
    -- Extrai o mês da data de início do contrato
    SET NEW.mes_inicio_contrato = MONTH(NEW.inicio_contrato);
    
    -- Extrai o mês da data de término do contrato
    SET NEW.mes_termino_contrato = MONTH(NEW.termino_contrato);
    
    -- Calcula a diferença em meses entre a data de término e a data de início
    SET NEW.tempo_contrato_meses = PERIOD_DIFF(
        EXTRACT(YEAR_MONTH FROM NEW.termino_contrato), 
        EXTRACT(YEAR_MONTH FROM NEW.inicio_contrato)
    );
END

CREATE DEFINER=`root`@`localhost` TRIGGER `clientes_BEFORE_UPDATE` BEFORE UPDATE ON `clientes` FOR EACH ROW BEGIN
    -- Calcula a diferença em dias entre a data de término e a data de início do contrato
    SET NEW.dias_em_contrato = DATEDIFF(NEW.termino_contrato, NEW.inicio_contrato);
    
    -- Extrai o mês da data de início do contrato
    SET NEW.mes_inicio_contrato = MONTH(NEW.inicio_contrato);
    
    -- Extrai o mês da data de término do contrato
    SET NEW.mes_termino_contrato = MONTH(NEW.termino_contrato);
    
    -- Calcula a diferença em meses entre a data de término e a data de início
    SET NEW.tempo_contrato_meses = PERIOD_DIFF(
        EXTRACT(YEAR_MONTH FROM NEW.termino_contrato), 
        EXTRACT(YEAR_MONTH FROM NEW.inicio_contrato)
	);
END
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-29 21:06:41
