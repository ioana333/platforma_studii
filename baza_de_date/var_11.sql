-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: platforma_studii
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `activitati_discipline`
--

DROP TABLE IF EXISTS `activitati_discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activitati_discipline` (
  `activitate_id` int NOT NULL AUTO_INCREMENT,
  `disciplina_id` int NOT NULL,
  `profesor_id` int NOT NULL,
  `tip_activitate` enum('curs','seminar','laborator') DEFAULT NULL,
  `durata` time NOT NULL,
  `numar_studenti` int NOT NULL,
  `nr_max_participanti` int NOT NULL,
  `frecventa` enum('saptamanal','la 2 saptamani') DEFAULT NULL,
  PRIMARY KEY (`activitate_id`),
  UNIQUE KEY `activitate_id` (`activitate_id`),
  KEY `activitati_discipline_discipline_disciplina_id_fk` (`disciplina_id`),
  KEY `activitati_discipline_profesori_profesor_id_fk` (`profesor_id`),
  CONSTRAINT `activitati_discipline_discipline_disciplina_id_fk` FOREIGN KEY (`disciplina_id`) REFERENCES `discipline` (`disciplina_id`),
  CONSTRAINT `activitati_discipline_profesori_profesor_id_fk` FOREIGN KEY (`profesor_id`) REFERENCES `profesori` (`profesor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitati_discipline`
--

LOCK TABLES `activitati_discipline` WRITE;
/*!40000 ALTER TABLE `activitati_discipline` DISABLE KEYS */;
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (1,4,7,'curs','02:00:00',41,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (2,5,7,'seminar','02:00:00',41,20,'la 2 saptamani');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (3,1,8,'curs','02:00:00',35,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (4,2,8,'seminar','02:00:00',40,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (5,4,9,'curs','02:00:00',0,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (6,5,9,'laborator','02:00:00',41,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (7,6,10,'curs','02:00:00',41,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (8,6,10,'laborator','02:00:00',0,10,'la 2 saptamani');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (9,7,11,'curs','02:00:00',35,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (10,8,11,'seminar','02:00:00',2,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (11,6,12,'laborator','02:00:00',0,10,'la 2 saptamani');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (12,4,13,'curs','02:00:00',0,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (13,5,13,'seminar','02:00:00',0,20,'la 2 saptamani');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (14,1,14,'curs','02:00:00',0,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (15,2,14,'curs','02:00:00',41,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (16,1,15,'seminar','02:00:00',20,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (17,3,16,'curs','02:00:00',41,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (18,2,16,'seminar','02:00:00',1,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (19,6,17,'curs','02:00:00',0,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (20,4,18,'curs','02:00:00',0,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (21,5,18,'seminar','02:00:00',0,20,'la 2 saptamani');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (22,9,19,'seminar','02:00:00',0,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (23,8,19,'curs','02:00:00',2,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (24,3,20,'seminar','02:00:00',0,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (25,6,21,'laborator','02:00:00',0,10,'la 2 saptamani');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (26,2,22,'seminar','02:00:00',0,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (27,4,23,'laborator','02:00:00',0,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (28,6,24,'curs','02:00:00',0,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (29,6,25,'curs','02:00:00',0,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (30,4,26,'curs','02:00:00',0,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (31,1,27,'seminar','02:00:00',1,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (32,5,28,'curs','02:00:00',41,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (33,4,29,'laborator','02:00:00',21,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (34,2,30,'seminar','02:00:00',0,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (35,5,31,'seminar','02:00:00',0,20,'la 2 saptamani');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (36,9,32,'curs','02:00:00',5,200,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (37,3,33,'seminar','02:00:00',0,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (38,7,34,'seminar','02:00:00',35,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (39,9,34,'seminar','02:00:00',5,20,'saptamanal');
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (40,4,35,'laborator','02:00:00',0,20,'saptamanal');
/*!40000 ALTER TABLE `activitati_discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activitati_grupe_de_studiu`
--

DROP TABLE IF EXISTS `activitati_grupe_de_studiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activitati_grupe_de_studiu` (
  `activitate_id` int NOT NULL AUTO_INCREMENT,
  `grupa_id` int NOT NULL,
  `descriere` text NOT NULL,
  `data_activitate` date NOT NULL,
  `data_postare` date NOT NULL,
  `timp_postare` time NOT NULL,
  `timp_expirare` time NOT NULL,
  `ora` time NOT NULL,
  `durata` time NOT NULL,
  `min_participanti` int NOT NULL,
  `profesor_id` int DEFAULT NULL,
  `nr_inscrieri` int NOT NULL,
  PRIMARY KEY (`activitate_id`),
  KEY `activitati_grupe_de_studiu_grupe_de_studiu_grupa_id_fk` (`grupa_id`),
  KEY `activitati_grupe_de_studiu_profesor_fk` (`profesor_id`),
  CONSTRAINT `activitati_grupe_de_studiu_grupe_de_studiu_grupa_id_fk` FOREIGN KEY (`grupa_id`) REFERENCES `grupe_de_studiu` (`grupa_id`),
  CONSTRAINT `activitati_grupe_de_studiu_profesor_fk` FOREIGN KEY (`profesor_id`) REFERENCES `profesori` (`profesor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitati_grupe_de_studiu`
--

LOCK TABLES `activitati_grupe_de_studiu` WRITE;
/*!40000 ALTER TABLE `activitati_grupe_de_studiu` DISABLE KEYS */;
INSERT INTO `activitati_grupe_de_studiu` (`activitate_id`, `grupa_id`, `descriere`, `data_activitate`, `data_postare`, `timp_postare`, `timp_expirare`, `ora`, `durata`, `min_participanti`, `profesor_id`, `nr_inscrieri`) VALUES (1,6,'Activitate de studiu pentru Fizica','2025-04-28','2025-01-11','20:18:34','01:00:00','10:00:00','02:00:00',5,NULL,8);
INSERT INTO `activitati_grupe_de_studiu` (`activitate_id`, `grupa_id`, `descriere`, `data_activitate`, `data_postare`, `timp_postare`, `timp_expirare`, `ora`, `durata`, `min_participanti`, `profesor_id`, `nr_inscrieri`) VALUES (2,7,'Activitate de studiu pentru Engleza','2025-04-30','2025-01-11','20:18:34','01:00:00','12:00:00','02:00:00',5,NULL,2);
INSERT INTO `activitati_grupe_de_studiu` (`activitate_id`, `grupa_id`, `descriere`, `data_activitate`, `data_postare`, `timp_postare`, `timp_expirare`, `ora`, `durata`, `min_participanti`, `profesor_id`, `nr_inscrieri`) VALUES (3,7,'Activitate de studiu pentru Engleza2','2025-04-30','2025-01-11','20:18:34','00:01:00','12:00:00','02:00:00',5,16,2);
INSERT INTO `activitati_grupe_de_studiu` (`activitate_id`, `grupa_id`, `descriere`, `data_activitate`, `data_postare`, `timp_postare`, `timp_expirare`, `ora`, `durata`, `min_participanti`, `profesor_id`, `nr_inscrieri`) VALUES (4,7,'Pregatire examen Engleza','2025-01-17','2025-01-11','20:18:34','01:00:00','16:00:00','02:00:00',5,NULL,6);
/*!40000 ALTER TABLE `activitati_grupe_de_studiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese`
--

DROP TABLE IF EXISTS `adrese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese` (
  `adresa_id` int NOT NULL AUTO_INCREMENT,
  `tara` varchar(20) NOT NULL,
  `judet` varchar(20) NOT NULL,
  `localitate` varchar(40) NOT NULL,
  `strada` varchar(100) NOT NULL,
  `numar` int DEFAULT NULL,
  PRIMARY KEY (`adresa_id`),
  UNIQUE KEY `adresa_id` (`adresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese`
--

LOCK TABLES `adrese` WRITE;
/*!40000 ALTER TABLE `adrese` DISABLE KEYS */;
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (1,'Romania','Bucuresti','Sector 1','Calea Victoriei',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (2,'Romania','Cluj','Cluj-Napoca','Strada Memorandumului',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (3,'Romania','Timis','Timisoara','Bulevardul Revolutiei',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (4,'Romania','Brasov','Brasov','Strada Muresenilor',25);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (5,'Romania','Iasi','Iasi','Strada Lapusneanu',34);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (6,'Romania','Constanta','Constanta','Bulevardul Tomis',10);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (7,'Romania','Prahova','Ploiesti','Bulevardul Independentei',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (8,'Romania','Sibiu','Sibiu','Strada Nicolae Balcescu',15);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (9,'Romania','Arad','Arad','Strada Mihai Eminescu',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (10,'Romania','Bihor','Oradea','Strada Republicii',18);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (11,'Romania','Buzau','Buzau','Strada Mare',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (12,'Romania','Bacau','Bacau','Strada George Bacovia',21);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (13,'Romania','Hunedoara','Deva','Bulevardul Decebal',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (14,'Romania','Maramures','Baia Mare','Strada Gheorghe Sincai',11);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (15,'Romania','Neamt','Piatra Neamt','Strada Stefan cel Mare',16);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (16,'Romania','Galati','Galati','Strada Domneasca',13);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (17,'Romania','Suceava','Suceava','Strada Stefan cel Mare',22);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (18,'Romania','Valcea','Ramnicu Valcea','Strada Tudor Vladimirescu',20);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (19,'Romania','Dolj','Craiova','Bulevardul Carol I',27);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (20,'Romania','Harghita','Miercurea Ciuc','Strada Marton Aron',14);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (21,'Romania','Covasna','Sfantu Gheorghe','Strada Mihai Viteazul',29);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (22,'Romania','Salaj','Zalau','Bulevardul Mihai Viteazul',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (23,'Romania','Ilfov','Otopeni','Strada Primaverii',1);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (24,'Romania','Caras-Severin','Resita','Strada Castanilor',23);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (25,'Romania','Giurgiu','Giurgiu','Bulevardul Bucuresti',17);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (26,'Romania','Dambovita','Targoviste','Strada Calea Domneasca',28);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (27,'Romania','Tulcea','Tulcea','Strada Pacii',19);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (28,'Romania','Olt','Slatina','Strada Ecaterina Teodoroiu',24);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (29,'Romania','Teleorman','Alexandria','Bulevardul Libertatii',26);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (30,'Romania','Vaslui','Vaslui','Strada Stefan cel Mare',30);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (31,'Romania','Bucuresti','Sector 2','Strada Mosilor',40);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (32,'Romania','Bucuresti','Sector 3','Calea Calarasilor',18);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (33,'Romania','Cluj','Turda','Strada Principala',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (34,'Romania','Timis','Lugoj','Bulevardul Timisoara',11);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (35,'Romania','Arad','Ineu','Strada Libertatii',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (36,'Romania','Hunedoara','Hunedoara','Strada Castelului',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (37,'Romania','Bihor','Beius','Strada Eroilor',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (38,'Romania','Brasov','Fagaras','Strada Republicii',22);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (39,'Romania','Prahova','Campina','Strada Mihai Eminescu',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (40,'Romania','Iasi','Pascani','Strada Stefan cel Mare',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (41,'Romania','Constanta','Mangalia','Strada Marii',15);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (42,'Romania','Sibiu','Medias','Strada Nicolae Iorga',21);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (43,'Romania','Buzau','Ramnicu Sarat','Strada Independentei',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (44,'Romania','Dolj','Calafat','Strada Tudor Vladimirescu',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (45,'Romania','Valcea','Dragasani','Strada Regele Carol',13);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (46,'Romania','Teleorman','Turnu Magurele','Strada Mihai Eminescu',19);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (47,'Romania','Galati','Tecuci','Strada Stefan cel Mare',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (48,'Romania','Tulcea','Macin','Strada Libertatii',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (49,'Romania','Olt','Corabia','Strada Dunarii',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (50,'Romania','Suceava','Radauti','Strada Mihai Eminescu',17);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (51,'Romania','Neamt','Targu Neamt','Strada Stefan cel Mare',25);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (52,'Romania','Giurgiu','Bolintin Vale','Strada Bucuresti',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (53,'Romania','Bacau','Onesti','Strada George Bacovia',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (54,'Romania','Harghita','Gheorgheni','Strada Lacu Rosu',30);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (55,'Romania','Covasna','Targu Secuiesc','Strada Libertatii',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (56,'Romania','Salaj','Simleu Silvaniei','Strada Mihai Viteazul',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (57,'Romania','Ilfov','Bragadiru','Strada Independentei',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (58,'Romania','Caras-Severin','Caransebes','Strada 1 Decembrie',20);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (59,'Romania','Dambovita','Moren','Strada Mihai Eminescu',14);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (60,'Romania','Bihor','Salonta','Strada Republicii',10);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (61,'Romania','Brasov','Rasnov','Strada Cetatii',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (62,'Romania','Cluj','Gherla','Strada Avram Iancu',17);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (63,'Romania','Maramures','Borsa','Strada Victoriei',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (64,'Romania','Arad','Sebis','Strada Mihai Viteazul',11);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (65,'Romania','Timis','Sannicolau Mare','Strada Libertatii',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (66,'Romania','Prahova','Breaza','Strada Republicii',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (67,'Romania','Hunedoara','Orastie','Strada Unirii',22);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (68,'Romania','Bucuresti','Sector 4','Calea Vacaresti',45);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (69,'Romania','Iasi','Targu Frumos','Strada Stefan cel Mare',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (70,'Romania','Dolj','Filiasi','Strada Olteniei',18);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (71,'Romania','Tulcea','Isaccea','Strada Pacii',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (72,'Romania','Valcea','Calimanesti','Strada Oltului',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (73,'Romania','Sibiu','Cisnadie','Strada Mihai Viteazul',10);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (74,'Romania','Suceava','Vatra Dornei','Strada Eroilor',24);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (75,'Romania','Neamt','Roznov','Strada Mihai Eminescu',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (76,'Romania','Constanta','Eforie','Strada Marii',14);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (77,'Romania','Bacau','Targu Ocna','Strada 1 Decembrie',19);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (78,'Romania','Giurgiu','Mihailesti','Strada Dunarii',21);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (79,'Romania','Bucuresti','Sector 5','Strada Pandurilor',25);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (80,'Romania','Bucuresti','Sector 6','Bulevardul Iuliu Maniu',90);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (81,'Romania','Arad','Chisineu Cris','Strada Libertatii',33);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (82,'Romania','Timis','Jimbolia','Strada Mare',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (83,'Romania','Maramures','Baia Mare','Strada Victoriei',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (84,'Romania','Cluj','Huedin','Strada Mihai Eminescu',19);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (85,'Romania','Bihor','Marghita','Strada Republicii',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (86,'Romania','Brasov','Codlea','Strada Principala',15);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (87,'Romania','Prahova','Baicoi','Strada Garii',10);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (88,'Romania','Iasi','Harlau','Strada Stefan cel Mare',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (89,'Romania','Dolj','Segarcea','Strada Mihai Viteazul',13);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (90,'Romania','Constanta','Navodari','Strada Pescarilor',27);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (91,'Romania','Sibiu','Agnita','Strada Garii',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (92,'Romania','Galati','Targu Bujor','Strada Victoriei',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (93,'Romania','Tulcea','Babadag','Strada Libertatii',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (94,'Romania','Bacau','Comanesti','Strada Minerilor',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (95,'Romania','Vaslui','Barlad','Strada Republicii',22);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (96,'Romania','Buzau','Pogoanele','Strada Independentei',11);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (97,'Romania','Suceava','Cajvana','Strada Unirii',14);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (98,'Romania','Neamt','Roman','Strada Stefan cel Mare',23);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (99,'Romania','Ilfov','Voluntari','Strada Eroilor',17);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (100,'Romania','Giurgiu','Ogrezeni','Strada Mihai Viteazul',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (101,'Romania','Harghita','Toplita','Strada Principala',21);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (102,'Romania','Covasna','Sfantu Gheorghe','Strada Mihai Eminescu',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (103,'Romania','Valcea','Brezoi','Strada Oltului',15);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (104,'Romania','Hunedoara','Petrosani','Strada Minerilor',13);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (105,'Romania','Caras-Severin','Resita','Strada Principala',19);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (106,'Romania','Dambovita','Gaesti','Strada Unirii',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (107,'Romania','Arad','Santana','Strada Republicii',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (108,'Romania','Brasov','Zarnesti','Strada Mihai Viteazul',10);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (109,'Romania','Cluj','Campia Turzii','Strada Victoriei',18);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (110,'Romania','Timis','Buzias','Strada Independentei',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (111,'Romania','Maramures','Targu Lapus','Strada Garii',14);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (112,'Romania','Bihor','Alesd','Strada Mihai Eminescu',22);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (113,'Romania','Prahova','Slanic','Strada Republicii',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (114,'Romania','Iasi','Raducaneni','Strada Stefan cel Mare',16);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (115,'Romania','Dolj','Bailesti','Strada Unirii',30);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (116,'Romania','Constanta','Medgidia','Strada Dunarii',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (117,'Romania','Tulcea','Sulina','Strada Libertatii',20);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (118,'Romania','Sibiu','Saliste','Strada Garii',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (119,'Romania','Bacau','Darmanesti','Strada Minerilor',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (120,'Romania','Suceava','Gura Humorului','Strada Republicii',27);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (121,'Romania','Neamt','Bicaz','Strada Oltului',11);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (122,'Romania','Vaslui','Husi','Strada Stefan cel Mare',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (123,'Romania','Ilfov','Otopeni','Strada Garii',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (124,'Romania','Galati','Pechea','Strada Victoriei',19);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (125,'Romania','Buzau','Nehoiu','Strada Mihai Viteazul',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (126,'Romania','Valcea','Calimanesti','Strada Dunarii',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (127,'Romania','Brasov','Fagaras','Strada Independentei',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (128,'Romania','Prahova','Busteni','Strada Libertatii',18);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (129,'Romania','Arad','Curtici','Strada Garii',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (130,'Romania','Timis','Faget','Strada Mihai Viteazul',14);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (131,'Romania','Cluj','Apahida','Strada Principala',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (132,'Romania','Maramures','Seini','Strada Mihai Eminescu',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (133,'Romania','Hunedoara','Brad','Strada Libertatii',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (134,'Romania','Bihor','Stei','Strada Republicii',20);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (135,'Romania','Dolj','Filiasi','Strada Unirii',25);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (136,'Romania','Suceava','Vicovu de Sus','Strada Stefan cel Mare',13);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (137,'Romania','Tulcea','Nufaru','Strada Dunarii',10);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (138,'Romania','Iasi','Podu Iloaiei','Strada Victoriei',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (139,'Romania','Brasov','Predeal','Strada Independentei',15);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (140,'Romania','Galati','Matca','Strada Republicii',17);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (141,'Romania','Vaslui','Murgeni','Strada Mihai Viteazul',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (142,'Romania','Harghita','Borsec','Strada Minerilor',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (143,'Romania','Bacau','Slanic Moldova','Strada Oltului',2);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (144,'Romania','Ilfov','Buftea','Strada Principala',11);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (145,'Romania','Caras-Severin','Moldova Noua','Strada Mihai Eminescu',16);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (146,'Romania','Buzau','Patarlagele','Strada Republicii',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (147,'Romania','Sibiu','Copsa Mica','Strada Victoriei',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (148,'Romania','Hunedoara','Hateg','Strada Unirii',22);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (149,'Romania','Dambovita','Titu','Strada Independentei',14);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (150,'Romania','Bihor','Valea lui Mihai','Strada Republicii',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (151,'Romania','Brasov','Sacele','Strada Mihai Eminescu',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (152,'Romania','Cluj','Floresti','Strada Principala',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (153,'Romania','Timis','Recas','Strada Libertatii',18);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (154,'Romania','Maramures','Cavnic','Strada Dunarii',20);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (155,'Romania','Arad','Pecica','Strada Victoriei',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (156,'Romania','Constanta','Ovidiu','Strada Mihai Viteazul',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (157,'Romania','Dolj','Craiova','Strada Stefan cel Mare',11);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (158,'Romania','Prahova','Ploiesti','Strada Garii',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (159,'Romania','Bacau','Buhusi','Strada Minerilor',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (160,'Romania','Galati','Tandarei','Strada Principala',17);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (161,'Romania','Iasi','Iasi','Strada Mihai Eminescu',19);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (162,'Romania','Tulcea','Chilia Veche','Strada Dunarii',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (163,'Romania','Ilfov','Magurele','Strada Libertatii',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (164,'Romania','Sibiu','Talmaciu','Strada Victoriei',20);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (165,'Romania','Dambovita','Pucioasa','Strada Independentei',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (166,'Romania','Buzau','Berca','Strada Principala',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (167,'Romania','Suceava','Solca','Strada Mihai Viteazul',22);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (168,'Romania','Bihor','Santandrei','Strada Republicii',19);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (169,'Romania','Cluj','Dej','Strada Libertatii',18);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (170,'Romania','Timis','Ciacova','Strada Mihai Eminescu',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (171,'Romania','Arad','Ineu','Strada Dunarii',15);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (172,'Romania','Hunedoara','Geoagiu','Strada Victoriei',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (173,'Romania','Maramures','Baia Sprie','Strada Libertatii',13);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (174,'Romania','Prahova','Campina','Strada Mihai Eminescu',23);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (175,'Romania','Arad','Lipova','Strada Libertatii',11);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (176,'Romania','Timis','Sannicolau Mare','Strada Mihai Viteazul',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (177,'Romania','Cluj','Gherla','Strada Principala',17);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (178,'Romania','Maramures','Sighetu Marmatiei','Strada Republicii',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (179,'Romania','Hunedoara','Orastie','Strada Unirii',14);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (180,'Romania','Bihor','Beius','Strada Garii',13);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (181,'Romania','Dolj','Calarasi','Strada Dunarii',25);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (182,'Romania','Suceava','Radauti','Strada Stefan cel Mare',21);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (183,'Romania','Tulcea','Isaccea','Strada Victoriei',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (184,'Romania','Iasi','Targu Frumos','Strada Independentei',10);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (185,'Romania','Brasov','Rasnov','Strada Republicii',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (186,'Romania','Galati','Tecuci','Strada Mihai Eminescu',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (187,'Romania','Vaslui','Negresti','Strada Libertatii',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (188,'Romania','Harghita','Odorheiu Secuiesc','Strada Principala',19);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (189,'Romania','Bacau','Onesti','Strada Minerilor',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (190,'Romania','Ilfov','Chitila','Strada Unirii',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (191,'Romania','Caras-Severin','Caransebes','Strada Mihai Eminescu',20);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (192,'Romania','Buzau','Ramnicu Sarat','Strada Garii',16);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (193,'Romania','Sibiu','Medias','Strada Republicii',11);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (194,'Romania','Hunedoara','Vulcan','Strada Independentei',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (195,'Romania','Dambovita','Fieni','Strada Victoriei',14);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (196,'Romania','Bihor','Salonta','Strada Mihai Eminescu',18);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (197,'Romania','Brasov','Victoria','Strada Principala',10);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (198,'Romania','Cluj','Turda','Strada Republicii',3);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (199,'Romania','Timis','Deta','Strada Mihai Viteazul',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (200,'Romania','Maramures','Borsa','Strada Libertatii',20);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (201,'Romania','Arad','Nadlac','Strada Stefan cel Mare',15);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (202,'Romania','Constanta','Eforie Nord','Strada Dunarii',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (203,'Romania','Dolj','Segarcea','Strada Republicii',22);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (204,'Romania','Prahova','Valenii de Munte','Strada Mihai Eminescu',5);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (205,'Romania','Bacau','Moinesti','Strada Garii',12);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (206,'Romania','Galati','Barlad','Strada Libertatii',17);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (207,'Romania','Iasi','Pascani','Strada Principala',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (208,'Romania','Tulcea','Macin','Strada Victoriei',2);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (209,'Romania','Ilfov','Popesti-Leordeni','Strada Stefan cel Mare',21);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (210,'Romania','Sibiu','Avrig','Strada Dunarii',11);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (211,'Romania','Dambovita','Moreni','Strada Mihai Eminescu',18);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (212,'Romania','Buzau','Buzau','Strada Republicii',9);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (213,'Romania','Suceava','Campulung Moldovenesc','Strada Libertatii',6);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (214,'Romania','Bihor','Alesd','Strada Independentei',13);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (215,'Romania','Cluj','Huedin','Strada Minerilor',4);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (216,'Romania','Timis','Lugoj','Strada Garii',19);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (217,'Romania','Arad','Sebis','Strada Principala',7);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (218,'Romania','Hunedoara','Lupeni','Strada Mihai Viteazul',15);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (219,'Romania','Maramures','Targu Lapus','Strada Stefan cel Mare',23);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (220,'Romania','Constanta','Mangalia','Strada Dunarii',10);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (221,'Romania','Dolj','Calafat','Strada Mihai Eminescu',8);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (222,'Romania','Prahova','Azuga','Strada Republicii',14);
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (223,'Romania','Iasi','Harlau','Strada Victoriei',17);
/*!40000 ALTER TABLE `adrese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disciplina_id` int NOT NULL,
  `profesor_id` int NOT NULL,
  `tip_activitate` enum('curs','laborator','seminar','examen','colocviu') NOT NULL,
  `ora_inceput` time NOT NULL,
  `ora_sfarsit` time NOT NULL,
  `nr_maxim_studenti` int NOT NULL,
  `activitate_id` int NOT NULL,
  `zi` enum('Duminica','Luni','Marti','Miercuri','Joi','Vineri','Sambata') NOT NULL,
  `data_activitate` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `calendar_discipline_disciplina_id_fk` (`disciplina_id`),
  KEY `calendar_profesori_profesor_id_fk` (`profesor_id`),
  KEY `calendar_activitati_discipline_activitate_id_fk` (`activitate_id`),
  CONSTRAINT `calendar_activitati_discipline_activitate_id_fk` FOREIGN KEY (`activitate_id`) REFERENCES `activitati_discipline` (`activitate_id`),
  CONSTRAINT `calendar_discipline_disciplina_id_fk` FOREIGN KEY (`disciplina_id`) REFERENCES `discipline` (`disciplina_id`),
  CONSTRAINT `calendar_profesori_profesor_id_fk` FOREIGN KEY (`profesor_id`) REFERENCES `profesori` (`profesor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (1,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-10-01');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (2,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-10-08');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (3,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-10-15');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (4,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-10-22');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (5,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-10-29');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (6,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-11-05');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (7,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-11-12');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (8,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-11-19');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (9,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-11-26');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (10,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-12-03');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (11,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-12-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (12,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-12-17');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (13,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-12-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (14,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-12-31');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (15,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2025-01-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (16,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2025-01-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (17,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-10-01');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (18,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-10-08');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (19,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-10-15');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (20,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-10-22');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (21,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-10-29');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (22,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-11-05');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (23,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-11-12');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (24,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-11-19');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (25,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-11-26');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (26,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-12-03');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (27,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-12-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (28,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-12-17');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (29,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-12-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (30,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-12-31');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (31,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2025-01-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (32,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2025-01-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (33,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-10-01');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (34,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-10-08');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (35,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-10-15');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (36,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-10-22');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (37,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-10-29');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (38,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-11-05');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (39,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-11-12');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (40,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-11-19');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (41,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-11-26');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (42,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-12-03');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (43,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-12-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (44,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-12-17');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (45,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-12-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (46,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-12-31');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (47,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2025-01-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (48,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2025-01-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (49,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-10-03');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (50,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-10-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (51,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-10-17');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (52,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-10-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (53,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-10-31');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (54,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-11-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (55,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-11-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (56,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-11-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (57,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-11-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (58,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-12-05');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (59,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-12-12');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (60,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-12-19');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (61,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-12-26');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (62,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2025-01-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (63,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2025-01-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (64,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2025-01-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (65,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-10-03');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (66,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-10-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (67,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-10-17');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (68,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-10-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (69,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-10-31');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (70,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-11-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (71,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-11-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (72,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-11-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (73,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-11-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (74,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-12-05');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (75,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-12-12');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (76,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-12-19');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (77,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-12-26');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (78,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2025-01-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (79,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2025-01-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (80,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2025-01-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (81,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-10-03');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (82,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-10-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (83,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-10-17');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (84,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-10-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (85,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-10-31');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (86,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-11-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (87,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-11-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (88,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-11-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (89,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-11-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (90,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-12-05');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (91,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-12-12');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (92,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-12-19');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (93,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-12-26');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (94,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2025-01-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (95,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2025-01-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (96,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2025-01-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (97,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-09-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (98,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-10-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (99,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-10-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (100,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-10-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (101,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-10-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (102,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-11-04');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (103,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-11-11');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (104,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-11-18');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (105,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-11-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (106,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-12-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (107,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-12-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (108,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-12-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (109,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-12-23');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (110,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-12-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (111,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2025-01-06');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (112,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2025-01-13');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (113,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-09-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (114,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-10-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (115,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-10-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (116,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-10-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (117,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-10-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (118,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-11-04');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (119,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-11-11');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (120,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-11-18');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (121,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-11-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (122,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-12-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (123,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-12-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (124,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-12-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (125,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-12-23');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (126,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-12-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (127,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2025-01-06');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (128,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2025-01-13');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (129,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-09-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (130,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-10-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (131,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-10-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (132,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-10-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (133,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-10-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (134,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-11-04');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (135,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-11-11');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (136,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-11-18');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (137,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-11-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (138,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-12-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (139,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-12-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (140,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-12-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (141,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-12-23');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (142,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-12-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (143,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2025-01-06');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (144,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2025-01-13');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (145,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-09-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (146,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-10-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (147,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-10-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (148,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-10-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (149,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-10-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (150,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-11-04');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (151,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-11-11');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (152,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-11-18');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (153,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-11-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (154,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-12-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (155,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-12-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (156,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-12-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (157,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-12-23');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (158,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-12-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (159,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2025-01-06');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (160,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2025-01-13');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (161,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-10-01');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (162,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-10-15');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (163,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-10-29');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (164,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-11-12');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (165,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-11-26');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (166,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-12-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (167,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-12-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (168,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2025-01-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (169,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-10-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (170,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-10-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (171,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-10-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (172,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-10-23');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (173,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-10-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (174,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-11-06');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (175,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-11-13');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (176,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-11-20');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (177,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-11-27');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (178,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-12-04');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (179,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-12-11');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (180,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-12-18');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (181,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-12-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (182,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2025-01-01');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (183,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2025-01-08');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (184,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2025-01-15');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (185,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-10-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (186,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-10-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (187,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-10-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (188,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-10-23');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (189,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-10-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (190,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-11-06');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (191,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-11-13');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (192,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-11-20');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (193,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-11-27');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (194,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-12-04');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (195,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-12-11');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (196,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-12-18');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (197,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-12-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (198,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2025-01-01');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (199,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2025-01-08');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (200,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2025-01-15');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (201,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-10-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (202,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-10-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (203,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-10-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (204,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-10-23');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (205,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-10-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (206,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-11-06');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (207,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-11-13');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (208,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-11-20');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (209,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-11-27');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (210,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-12-04');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (211,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-12-11');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (212,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-12-18');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (213,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-12-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (214,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2025-01-01');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (215,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2025-01-08');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (216,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2025-01-15');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (217,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-10-04');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (218,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-10-11');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (219,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-10-18');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (220,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-10-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (221,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-11-01');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (222,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-11-08');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (223,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-11-15');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (224,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-11-22');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (225,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-11-29');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (226,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-12-06');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (227,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-12-13');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (228,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-12-20');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (229,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-12-27');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (230,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2025-01-03');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (231,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2025-01-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (232,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2025-01-17');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (233,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-10-03');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (234,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-10-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (235,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-10-17');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (236,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-10-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (237,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-10-31');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (238,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-11-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (239,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-11-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (240,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-11-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (241,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-11-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (242,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-12-05');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (243,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-12-12');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (244,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-12-19');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (245,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-12-26');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (246,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2025-01-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (247,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2025-01-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (248,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2025-01-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (249,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-10-03');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (250,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-10-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (251,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-10-17');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (252,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-10-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (253,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-10-31');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (254,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-11-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (255,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-11-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (256,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-11-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (257,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-11-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (258,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-12-05');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (259,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-12-12');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (260,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-12-19');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (261,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-12-26');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (262,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2025-01-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (263,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2025-01-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (264,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2025-01-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (265,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-10-03');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (266,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-10-10');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (267,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-10-17');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (268,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-10-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (269,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-10-31');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (270,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-11-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (271,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-11-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (272,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-11-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (273,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-11-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (274,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-12-05');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (275,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-12-12');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (276,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-12-19');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (277,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-12-26');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (278,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2025-01-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (279,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2025-01-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (280,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2025-01-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (281,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-09-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (282,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-10-07');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (283,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-10-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (284,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-10-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (285,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-10-28');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (286,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-11-04');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (287,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-11-11');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (288,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-11-18');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (289,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-11-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (290,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-12-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (291,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-12-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (292,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-12-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (293,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-12-23');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (294,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-12-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (295,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2025-01-06');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (296,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2025-01-13');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (297,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-10-02');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (298,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-10-09');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (299,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-10-16');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (300,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-10-23');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (301,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-10-30');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (302,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-11-06');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (303,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-11-13');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (304,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-11-20');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (305,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-11-27');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (306,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-12-04');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (307,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-12-11');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (308,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-12-18');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (309,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-12-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (310,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2025-01-01');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (311,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2025-01-08');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (312,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2025-01-15');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (313,4,23,'colocviu','08:00:00','09:30:00',20,27,'Vineri','2025-01-24');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (314,5,9,'colocviu','10:30:00','12:30:00',20,6,'Sambata','2025-01-25');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (315,5,9,'colocviu','01:30:00','03:30:00',20,6,'Marti','2025-01-14');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (316,1,8,'examen','09:00:00','12:00:00',200,3,'Marti','2025-01-21');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (317,6,10,'examen','14:00:00','16:30:00',200,7,'Miercuri','2025-01-22');
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (318,2,14,'examen','12:00:00','13:45:00',200,15,'Joi','2025-01-23');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `disciplina_id` int NOT NULL,
  `profesor_id` int NOT NULL,
  `nota_curs` int DEFAULT NULL,
  `nota_laborator` int DEFAULT NULL,
  `nota_seminar` int DEFAULT NULL,
  `nota_finala` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catalog_studenti_student_id_fk` (`student_id`),
  KEY `catalog_discipline_disciplina_id_fk` (`disciplina_id`),
  KEY `catalog_profesori_profesor_id_fk` (`profesor_id`),
  CONSTRAINT `catalog_discipline_disciplina_id_fk` FOREIGN KEY (`disciplina_id`) REFERENCES `discipline` (`disciplina_id`),
  CONSTRAINT `catalog_profesori_profesor_id_fk` FOREIGN KEY (`profesor_id`) REFERENCES `profesori` (`profesor_id`),
  CONSTRAINT `catalog_studenti_student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `studenti` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (1,36,1,8,9,NULL,2,7);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (2,36,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (3,36,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (4,36,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (5,36,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (6,36,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (7,37,8,19,3,NULL,5,4);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (8,37,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (9,37,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (10,37,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (11,37,4,7,3,NULL,NULL,2);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (12,37,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (13,37,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (14,38,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (15,38,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (16,38,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (17,38,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (18,38,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (19,39,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (20,39,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (21,39,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (22,39,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (23,39,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (24,39,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (25,39,8,19,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (26,40,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (27,40,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (28,40,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (29,40,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (30,40,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (31,60,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (32,60,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (33,60,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (34,60,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (35,60,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (36,60,9,32,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (37,60,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (38,61,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (39,61,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (40,61,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (41,61,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (42,61,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (43,61,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (44,61,9,32,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (45,62,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (46,62,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (47,62,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (48,62,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (49,62,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (50,62,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (51,62,9,32,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (52,63,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (53,63,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (54,63,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (55,63,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (56,63,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (57,63,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (58,63,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (59,64,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (60,64,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (61,64,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (62,64,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (63,64,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (64,64,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (65,64,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (66,65,9,32,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (67,65,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (68,65,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (69,65,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (70,65,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (71,65,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (72,65,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (73,66,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (74,66,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (75,66,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (76,66,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (77,66,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (78,66,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (79,66,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (80,67,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (81,67,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (82,67,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (83,67,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (84,67,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (85,67,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (86,67,9,32,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (87,68,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (88,68,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (89,68,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (90,68,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (91,68,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (92,68,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (93,68,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (94,69,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (95,69,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (96,69,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (97,69,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (98,69,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (99,69,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (100,69,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (101,70,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (102,70,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (103,70,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (104,70,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (105,70,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (106,70,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (107,70,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (108,71,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (109,71,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (110,71,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (111,71,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (112,71,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (113,71,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (114,71,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (115,72,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (116,72,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (117,72,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (118,72,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (119,72,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (120,72,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (121,72,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (122,73,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (123,73,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (124,73,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (125,73,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (126,73,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (127,73,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (128,73,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (129,74,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (130,74,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (131,74,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (132,74,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (133,74,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (134,74,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (135,74,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (136,75,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (137,75,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (138,75,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (139,75,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (140,75,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (141,75,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (142,75,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (143,76,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (144,76,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (145,76,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (146,76,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (147,76,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (148,76,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (149,76,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (150,77,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (151,77,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (152,77,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (153,77,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (154,77,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (155,77,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (156,77,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (157,78,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (158,78,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (159,78,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (160,78,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (161,78,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (162,78,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (163,78,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (164,79,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (165,79,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (166,79,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (167,79,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (168,79,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (169,79,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (170,79,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (171,80,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (172,80,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (173,80,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (174,80,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (175,80,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (176,80,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (177,80,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (178,81,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (179,81,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (180,81,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (181,81,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (182,81,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (183,81,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (184,81,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (185,82,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (186,82,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (187,82,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (188,82,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (189,82,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (190,82,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (191,82,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (192,83,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (193,83,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (194,83,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (195,83,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (196,83,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (197,83,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (198,83,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (199,84,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (200,84,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (201,84,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (202,84,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (203,84,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (204,84,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (205,84,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (206,85,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (207,85,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (208,85,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (209,85,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (210,85,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (211,85,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (212,85,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (213,86,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (214,86,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (215,86,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (216,86,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (217,86,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (218,86,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (219,86,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (220,87,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (221,87,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (222,87,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (223,87,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (224,87,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (225,87,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (226,87,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (227,88,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (228,88,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (229,88,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (230,88,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (231,88,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (232,88,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (233,88,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (234,89,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (235,89,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (236,89,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (237,89,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (238,89,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (239,89,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (240,89,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (241,90,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (242,90,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (243,90,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (244,90,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (245,90,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (246,90,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (247,90,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (248,91,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (249,91,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (250,91,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (251,91,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (252,91,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (253,91,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (254,91,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (255,92,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (256,92,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (257,92,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (258,92,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (259,92,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (260,92,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (261,92,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (262,93,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (263,93,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (264,93,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (265,93,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (266,93,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (267,93,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (268,93,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (269,94,1,8,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (270,94,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (271,94,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (272,94,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (273,94,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (274,94,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (275,94,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (276,95,6,10,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (277,95,5,28,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (278,95,3,16,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (279,95,4,7,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (280,95,2,14,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (281,95,7,11,NULL,NULL,NULL,NULL);
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (282,95,1,8,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline` (
  `disciplina_id` int NOT NULL AUTO_INCREMENT,
  `nume_disciplina` varchar(40) NOT NULL,
  `descriere` text,
  `data_inceput` date NOT NULL,
  `data_sfarsit` date NOT NULL,
  `pondere_curs` int DEFAULT NULL,
  `pondere_seminar` int DEFAULT NULL,
  `pondere_laborator` int DEFAULT NULL,
  PRIMARY KEY (`disciplina_id`),
  UNIQUE KEY `disciplina_id` (`disciplina_id`),
  UNIQUE KEY `nume_disciplina` (`nume_disciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline`
--

LOCK TABLES `discipline` WRITE;
/*!40000 ALTER TABLE `discipline` DISABLE KEYS */;
INSERT INTO `discipline` (`disciplina_id`, `nume_disciplina`, `descriere`, `data_inceput`, `data_sfarsit`, `pondere_curs`, `pondere_seminar`, `pondere_laborator`) VALUES (1,'Analiza matematica I','Curs introductiv de analiza matematica pentru studenti, incluzand limite, derivare, integrale, serii si aplicatii.','2024-09-30','2025-01-19',70,30,0);
INSERT INTO `discipline` (`disciplina_id`, `nume_disciplina`, `descriere`, `data_inceput`, `data_sfarsit`, `pondere_curs`, `pondere_seminar`, `pondere_laborator`) VALUES (2,'Algebra si geometrie analitica','Curs care acopera notiunile fundamentale de algebra liniara si geometrie analitica, incluzand spatii vectoriale, sisteme liniare si aplicatii geometrice.','2024-09-30','2025-01-19',100,0,0);
INSERT INTO `discipline` (`disciplina_id`, `nume_disciplina`, `descriere`, `data_inceput`, `data_sfarsit`, `pondere_curs`, `pondere_seminar`, `pondere_laborator`) VALUES (3,'Matematici speciale','Curs de matematica aplicata, care include ecuatii diferentiale, functii speciale, si metode numerice pentru rezolvarea acestora.','2024-09-30','2025-01-19',80,20,0);
INSERT INTO `discipline` (`disciplina_id`, `nume_disciplina`, `descriere`, `data_inceput`, `data_sfarsit`, `pondere_curs`, `pondere_seminar`, `pondere_laborator`) VALUES (4,'Proiectare logica','Curs care acopera principiile fundamentale ale logicii digitale, inclusiv circuite logice, algebra booleana si sisteme de numarare.','2024-09-30','2025-01-19',80,0,20);
INSERT INTO `discipline` (`disciplina_id`, `nume_disciplina`, `descriere`, `data_inceput`, `data_sfarsit`, `pondere_curs`, `pondere_seminar`, `pondere_laborator`) VALUES (5,'Programarea calculatoarelor','Introducere in programarea calculatoarelor, incluzand structuri de date, algoritmi si fundamentele limbajelor de programare.','2024-09-30','2025-01-19',60,20,20);
INSERT INTO `discipline` (`disciplina_id`, `nume_disciplina`, `descriere`, `data_inceput`, `data_sfarsit`, `pondere_curs`, `pondere_seminar`, `pondere_laborator`) VALUES (6,'Fizica','Curs de fizica generala, care acopera notiuni fundamentale de mecanica, termodinamica si electromagnetism, cu experimente la fiecare 2 saptamani.','2024-09-30','2025-01-19',90,0,10);
INSERT INTO `discipline` (`disciplina_id`, `nume_disciplina`, `descriere`, `data_inceput`, `data_sfarsit`, `pondere_curs`, `pondere_seminar`, `pondere_laborator`) VALUES (7,'Engleza','Curs de limba engleza, focusat pe imbunatatirea abilitatilor de vorbire, citire si scriere in context academic.','2024-09-30','2025-01-19',50,50,0);
INSERT INTO `discipline` (`disciplina_id`, `nume_disciplina`, `descriere`, `data_inceput`, `data_sfarsit`, `pondere_curs`, `pondere_seminar`, `pondere_laborator`) VALUES (8,'Germana','Curs de limba germana pentru studenti, incluzand invatarea vocabularului de baza, gramaticii si expresiilor utile in contexte academice.','2024-09-30','2025-01-19',50,50,0);
INSERT INTO `discipline` (`disciplina_id`, `nume_disciplina`, `descriere`, `data_inceput`, `data_sfarsit`, `pondere_curs`, `pondere_seminar`, `pondere_laborator`) VALUES (9,'Franceza','Curs de limba franceza pentru studenti, cu scopul de a dezvolta abilitati de conversatie, lectura si scriere in limba franceza.','2024-09-30','2025-01-19',50,50,0);
/*!40000 ALTER TABLE `discipline` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_grupa_after_disciplina_insert` AFTER INSERT ON `discipline` FOR EACH ROW BEGIN
    -- Inserăm o nouă grupă de studiu pentru disciplina nou introdusă
    INSERT INTO `grupe_de_studiu` (disciplina_id, nume_grupa)
    VALUES (NEW.disciplina_id, NULL);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `grupe_de_studiu`
--

DROP TABLE IF EXISTS `grupe_de_studiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupe_de_studiu` (
  `grupa_id` int NOT NULL AUTO_INCREMENT,
  `disciplina_id` int NOT NULL,
  `nume_grupa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`grupa_id`),
  UNIQUE KEY `grupa_id` (`grupa_id`),
  KEY `grupe_de_studiu_discipline_disciplina_id_fk` (`disciplina_id`),
  CONSTRAINT `grupe_de_studiu_discipline_disciplina_id_fk` FOREIGN KEY (`disciplina_id`) REFERENCES `discipline` (`disciplina_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupe_de_studiu`
--

LOCK TABLES `grupe_de_studiu` WRITE;
/*!40000 ALTER TABLE `grupe_de_studiu` DISABLE KEYS */;
INSERT INTO `grupe_de_studiu` (`grupa_id`, `disciplina_id`, `nume_grupa`) VALUES (1,1,'Grupa_Analiza matematica I');
INSERT INTO `grupe_de_studiu` (`grupa_id`, `disciplina_id`, `nume_grupa`) VALUES (2,2,'Grupa_Algebra si geometrie analitica');
INSERT INTO `grupe_de_studiu` (`grupa_id`, `disciplina_id`, `nume_grupa`) VALUES (3,3,'Grupa_Matematici speciale');
INSERT INTO `grupe_de_studiu` (`grupa_id`, `disciplina_id`, `nume_grupa`) VALUES (4,4,'Grupa_Proiectare logica');
INSERT INTO `grupe_de_studiu` (`grupa_id`, `disciplina_id`, `nume_grupa`) VALUES (5,5,'Grupa_Programarea calculatoarelor');
INSERT INTO `grupe_de_studiu` (`grupa_id`, `disciplina_id`, `nume_grupa`) VALUES (6,6,'Grupa_Fizica');
INSERT INTO `grupe_de_studiu` (`grupa_id`, `disciplina_id`, `nume_grupa`) VALUES (7,7,'Grupa_Engleza');
INSERT INTO `grupe_de_studiu` (`grupa_id`, `disciplina_id`, `nume_grupa`) VALUES (8,8,'Grupa_Germana');
INSERT INTO `grupe_de_studiu` (`grupa_id`, `disciplina_id`, `nume_grupa`) VALUES (9,9,'Grupa_Franceza');
/*!40000 ALTER TABLE `grupe_de_studiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscrieri`
--

DROP TABLE IF EXISTS `inscrieri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscrieri` (
  `nr_inscriere` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `activitate_id` int NOT NULL,
  PRIMARY KEY (`nr_inscriere`),
  UNIQUE KEY `nr_inscriere` (`nr_inscriere`),
  KEY `inscrieri_studenti_student_id_fk` (`student_id`),
  KEY `inscrieri_discipline_activitate_id_fk` (`activitate_id`),
  CONSTRAINT `inscrieri_discipline_activitate_id_fk` FOREIGN KEY (`activitate_id`) REFERENCES `activitati_discipline` (`activitate_id`),
  CONSTRAINT `inscrieri_studenti_student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `studenti` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=490 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscrieri`
--

LOCK TABLES `inscrieri` WRITE;
/*!40000 ALTER TABLE `inscrieri` DISABLE KEYS */;
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (1,36,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (2,36,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (3,36,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (4,36,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (5,36,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (6,36,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (7,36,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (8,36,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (9,36,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (10,36,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (11,37,23);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (12,37,10);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (13,37,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (14,37,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (15,37,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (16,37,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (17,37,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (18,37,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (19,37,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (20,37,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (21,37,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (22,37,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (23,38,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (24,38,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (25,38,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (26,38,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (27,38,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (28,38,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (29,38,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (30,38,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (31,38,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (32,39,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (33,39,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (34,39,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (35,39,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (36,39,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (37,39,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (38,39,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (39,39,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (40,39,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (41,39,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (42,39,23);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (43,39,10);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (44,40,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (45,40,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (46,40,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (47,40,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (48,40,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (49,40,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (50,40,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (51,40,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (52,40,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (53,60,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (54,60,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (55,60,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (56,60,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (57,60,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (58,60,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (59,60,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (60,60,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (61,60,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (62,60,36);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (63,60,39);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (64,60,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (65,60,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (66,61,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (67,61,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (68,61,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (69,61,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (70,61,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (71,61,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (72,61,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (73,61,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (74,61,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (75,61,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (76,61,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (77,61,36);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (78,61,39);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (79,62,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (80,62,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (81,62,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (82,62,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (83,62,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (84,62,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (85,62,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (86,62,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (87,62,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (88,62,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (89,62,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (90,62,36);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (91,62,39);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (92,63,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (93,63,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (94,63,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (95,63,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (96,63,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (97,63,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (98,63,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (99,63,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (100,63,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (101,63,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (102,63,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (103,63,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (104,64,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (105,64,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (106,64,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (107,64,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (108,64,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (109,64,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (110,64,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (111,64,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (112,64,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (113,64,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (114,64,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (115,64,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (116,65,36);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (117,65,39);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (118,65,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (119,65,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (120,65,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (121,65,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (122,65,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (123,65,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (124,65,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (125,65,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (126,65,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (127,65,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (128,65,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (129,66,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (130,66,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (131,66,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (132,66,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (133,66,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (134,66,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (135,66,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (136,66,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (137,66,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (138,66,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (139,66,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (140,66,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (141,67,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (142,67,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (143,67,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (144,67,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (145,67,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (146,67,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (147,67,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (148,67,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (149,67,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (150,67,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (151,67,36);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (152,67,39);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (153,68,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (154,68,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (155,68,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (156,68,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (157,68,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (158,68,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (159,68,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (160,68,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (161,68,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (162,68,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (163,68,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (164,68,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (165,69,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (166,69,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (167,69,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (168,69,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (169,69,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (170,69,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (171,69,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (172,69,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (173,69,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (174,69,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (175,69,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (176,69,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (177,70,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (178,70,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (179,70,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (180,70,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (181,70,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (182,70,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (183,70,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (184,70,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (185,70,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (186,70,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (187,70,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (188,70,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (189,71,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (190,71,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (191,71,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (192,71,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (193,71,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (194,71,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (195,71,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (196,71,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (197,71,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (198,71,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (199,71,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (200,71,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (201,72,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (202,72,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (203,72,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (204,72,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (205,72,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (206,72,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (207,72,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (208,72,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (209,72,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (210,72,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (211,72,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (212,72,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (213,73,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (214,73,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (215,73,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (216,73,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (217,73,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (218,73,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (219,73,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (220,73,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (221,73,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (222,73,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (223,73,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (224,73,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (225,74,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (226,74,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (227,74,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (228,74,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (229,74,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (230,74,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (231,74,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (232,74,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (233,74,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (234,74,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (235,74,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (236,74,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (237,75,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (238,75,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (239,75,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (240,75,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (241,75,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (242,75,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (243,75,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (244,75,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (245,75,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (246,75,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (247,75,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (248,75,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (249,76,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (250,76,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (251,76,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (252,76,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (253,76,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (254,76,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (255,76,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (256,76,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (257,76,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (258,76,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (259,76,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (260,76,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (261,77,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (262,77,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (263,77,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (264,77,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (265,77,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (266,77,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (267,77,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (268,77,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (269,77,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (270,77,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (271,77,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (272,77,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (273,78,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (274,78,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (275,78,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (276,78,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (277,78,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (278,78,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (279,78,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (280,78,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (281,78,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (282,78,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (283,78,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (284,78,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (285,79,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (286,79,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (287,79,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (288,79,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (289,79,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (290,79,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (291,79,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (292,79,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (293,79,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (294,79,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (295,79,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (296,79,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (297,80,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (298,80,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (299,80,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (300,80,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (301,80,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (302,80,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (303,80,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (304,80,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (305,80,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (306,80,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (307,80,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (308,80,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (309,81,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (310,81,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (311,81,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (312,81,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (313,81,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (314,81,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (315,81,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (316,81,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (317,81,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (318,81,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (319,81,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (320,81,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (321,82,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (322,82,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (323,82,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (324,82,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (325,82,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (326,82,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (327,82,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (328,82,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (329,82,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (330,82,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (331,82,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (332,82,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (333,83,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (334,83,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (335,83,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (336,83,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (337,83,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (338,83,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (339,83,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (340,83,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (341,83,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (342,83,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (343,83,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (344,83,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (345,84,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (346,84,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (347,84,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (348,84,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (349,84,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (350,84,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (351,84,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (352,84,31);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (353,84,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (354,84,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (355,84,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (356,84,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (357,84,18);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (358,85,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (359,85,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (360,85,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (361,85,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (362,85,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (363,85,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (364,85,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (365,85,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (366,85,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (367,85,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (368,85,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (369,85,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (370,86,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (371,86,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (372,86,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (373,86,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (374,86,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (375,86,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (376,86,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (377,86,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (378,86,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (379,86,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (380,86,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (381,86,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (382,87,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (383,87,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (384,87,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (385,87,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (386,87,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (387,87,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (388,87,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (389,87,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (390,87,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (391,87,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (392,87,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (393,87,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (394,88,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (395,88,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (396,88,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (397,88,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (398,88,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (399,88,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (400,88,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (401,88,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (402,88,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (403,88,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (404,88,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (405,88,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (406,89,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (407,89,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (408,89,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (409,89,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (410,89,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (411,89,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (412,89,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (413,89,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (414,89,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (415,89,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (416,89,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (417,89,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (418,90,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (419,90,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (420,90,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (421,90,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (422,90,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (423,90,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (424,90,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (425,90,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (426,90,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (427,90,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (428,90,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (429,90,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (430,91,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (431,91,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (432,91,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (433,91,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (434,91,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (435,91,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (436,91,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (437,91,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (438,91,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (439,91,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (440,91,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (441,91,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (442,92,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (443,92,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (444,92,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (445,92,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (446,92,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (447,92,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (448,92,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (449,92,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (450,92,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (451,92,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (452,92,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (453,92,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (454,93,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (455,93,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (456,93,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (457,93,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (458,93,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (459,93,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (460,93,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (461,93,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (462,93,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (463,93,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (464,93,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (465,93,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (466,94,3);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (467,94,16);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (468,94,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (469,94,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (470,94,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (471,94,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (472,94,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (473,94,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (474,94,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (475,94,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (476,94,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (477,94,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (478,95,7);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (479,95,32);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (480,95,2);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (481,95,6);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (482,95,17);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (483,95,1);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (484,95,33);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (485,95,15);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (486,95,4);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (487,95,9);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (488,95,38);
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (489,95,3);
/*!40000 ALTER TABLE `inscrieri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscrieri_activitati_grupe_studiu`
--

DROP TABLE IF EXISTS `inscrieri_activitati_grupe_studiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscrieri_activitati_grupe_studiu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `activitate_id` int NOT NULL,
  `data_inscriere` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_student_id` (`student_id`),
  KEY `fk_activitate_id` (`activitate_id`),
  CONSTRAINT `inscrieri_activitati_grupe_studiu_activitati_fk` FOREIGN KEY (`activitate_id`) REFERENCES `activitati_grupe_de_studiu` (`activitate_id`),
  CONSTRAINT `inscrieri_activitati_grupe_studiu_studenti_fk` FOREIGN KEY (`student_id`) REFERENCES `studenti` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscrieri_activitati_grupe_studiu`
--

LOCK TABLES `inscrieri_activitati_grupe_studiu` WRITE;
/*!40000 ALTER TABLE `inscrieri_activitati_grupe_studiu` DISABLE KEYS */;
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (1,88,1,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (2,93,1,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (3,91,1,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (4,90,1,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (5,87,1,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (6,92,1,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (7,74,1,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (8,85,1,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (9,92,2,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (10,91,2,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (11,92,3,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (12,91,3,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (13,91,4,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (14,94,4,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (15,62,4,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (16,61,4,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (17,84,4,'2025-01-11');
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (18,74,4,'2025-01-11');
/*!40000 ALTER TABLE `inscrieri_activitati_grupe_studiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membrii_grupe_de_studiu`
--

DROP TABLE IF EXISTS `membrii_grupe_de_studiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membrii_grupe_de_studiu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grupa_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `membrii_grupe_de_studiu_grupe_de_studiu_grupa_id_fk` (`grupa_id`),
  KEY `membrii_grupe_de_studiu_studenti_student_id_fk` (`student_id`),
  CONSTRAINT `membrii_grupe_de_studiu_grupe_de_studiu_grupa_id_fk` FOREIGN KEY (`grupa_id`) REFERENCES `grupe_de_studiu` (`grupa_id`),
  CONSTRAINT `membrii_grupe_de_studiu_studenti_student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `studenti` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membrii_grupe_de_studiu`
--

LOCK TABLES `membrii_grupe_de_studiu` WRITE;
/*!40000 ALTER TABLE `membrii_grupe_de_studiu` DISABLE KEYS */;
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (1,7,95);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (2,3,61);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (3,5,61);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (4,6,61);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (5,7,61);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (6,3,62);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (7,5,62);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (8,6,62);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (9,7,62);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (10,3,63);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (11,5,63);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (12,6,63);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (13,7,63);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (14,3,64);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (15,5,64);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (16,6,64);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (17,7,64);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (18,3,65);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (19,5,65);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (20,6,65);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (21,7,65);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (22,3,66);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (23,5,66);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (24,6,66);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (25,7,66);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (26,3,67);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (27,5,67);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (28,6,67);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (29,7,71);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (30,4,71);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (31,3,71);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (32,6,71);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (33,5,71);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (34,2,71);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (35,1,71);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (36,4,72);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (37,6,72);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (38,2,72);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (39,5,72);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (40,3,72);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (41,1,72);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (42,7,72);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (43,3,73);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (44,6,73);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (45,5,73);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (46,1,73);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (47,7,73);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (48,4,73);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (49,2,73);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (50,2,74);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (51,5,74);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (52,6,74);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (53,3,74);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (54,1,74);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (55,7,74);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (56,4,74);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (57,4,75);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (58,6,75);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (59,5,75);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (60,2,75);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (61,3,75);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (62,7,75);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (63,1,75);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (64,5,76);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (65,3,76);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (66,1,76);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (67,2,76);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (68,6,76);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (69,4,76);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (70,7,76);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (71,5,77);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (72,3,77);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (73,2,77);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (74,6,77);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (75,4,77);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (76,1,77);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (77,7,77);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (78,3,78);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (79,6,78);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (80,5,78);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (81,1,78);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (82,4,78);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (83,2,78);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (84,7,78);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (85,5,79);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (86,6,79);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (87,2,79);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (88,7,79);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (89,1,79);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (90,3,79);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (91,4,79);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (92,6,80);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (93,2,80);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (94,5,80);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (95,7,80);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (96,1,80);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (97,3,80);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (98,4,80);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (99,7,81);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (100,3,81);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (101,2,81);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (102,4,81);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (103,6,81);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (104,5,81);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (105,1,81);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (106,5,82);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (107,3,82);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (108,2,82);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (109,6,82);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (110,1,82);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (111,7,82);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (112,4,82);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (113,3,83);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (114,6,83);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (115,2,83);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (116,5,83);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (117,7,83);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (118,4,83);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (119,1,83);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (120,6,84);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (121,3,84);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (122,7,84);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (123,4,84);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (124,1,84);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (125,5,84);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (126,2,84);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (127,2,85);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (128,6,85);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (129,3,85);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (130,4,85);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (131,7,85);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (132,5,85);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (133,1,85);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (134,5,86);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (135,3,86);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (136,2,86);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (137,6,86);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (138,7,86);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (139,1,86);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (140,4,86);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (141,4,87);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (142,5,87);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (143,3,87);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (144,2,87);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (145,6,87);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (146,7,87);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (147,1,87);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (148,7,88);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (149,4,88);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (150,6,88);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (151,3,88);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (152,2,88);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (153,5,88);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (154,1,88);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (155,3,89);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (156,6,89);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (157,2,89);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (158,5,89);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (159,7,89);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (160,4,89);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (161,1,89);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (162,4,90);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (163,6,90);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (164,3,90);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (165,2,90);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (166,7,90);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (167,1,90);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (168,5,90);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (169,6,91);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (170,5,91);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (171,2,91);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (172,7,91);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (173,3,91);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (174,4,91);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (175,1,91);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (176,1,92);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (177,6,92);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (178,5,92);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (179,3,92);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (180,4,92);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (181,2,92);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (182,7,92);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (183,4,93);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (184,3,93);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (185,2,93);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (186,6,93);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (187,7,93);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (188,5,93);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (189,1,93);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (190,1,94);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (191,5,94);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (192,3,94);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (193,2,94);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (194,4,94);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (195,6,94);
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (196,7,94);
/*!40000 ALTER TABLE `membrii_grupe_de_studiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesaje`
--

DROP TABLE IF EXISTS `mesaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesaje` (
  `id` int NOT NULL AUTO_INCREMENT,
  `grupa_id` int NOT NULL,
  `student_id` int NOT NULL,
  `continut` varchar(500) NOT NULL,
  `data_trimitere` date NOT NULL,
  `ora_trimitere` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mesaje_grupe_de_studiu_grupa_id_fk` (`grupa_id`),
  KEY `mesaje_studenti_student_id_fk` (`student_id`),
  CONSTRAINT `mesaje_grupe_de_studiu_grupa_id_fk` FOREIGN KEY (`grupa_id`) REFERENCES `grupe_de_studiu` (`grupa_id`),
  CONSTRAINT `mesaje_studenti_student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `studenti` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesaje`
--

LOCK TABLES `mesaje` WRITE;
/*!40000 ALTER TABLE `mesaje` DISABLE KEYS */;
INSERT INTO `mesaje` (`id`, `grupa_id`, `student_id`, `continut`, `data_trimitere`, `ora_trimitere`) VALUES (1,6,93,'Salut!','2025-01-11','20:18:35');
INSERT INTO `mesaje` (`id`, `grupa_id`, `student_id`, `continut`, `data_trimitere`, `ora_trimitere`) VALUES (2,6,92,'Hello!','2025-01-11','20:18:35');
INSERT INTO `mesaje` (`id`, `grupa_id`, `student_id`, `continut`, `data_trimitere`, `ora_trimitere`) VALUES (3,6,90,'Ce faceti?','2025-01-11','20:18:35');
INSERT INTO `mesaje` (`id`, `grupa_id`, `student_id`, `continut`, `data_trimitere`, `ora_trimitere`) VALUES (4,6,93,'Ati invatat pentru testul de maine?','2025-01-11','20:18:35');
/*!40000 ALTER TABLE `mesaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesaje_private`
--

DROP TABLE IF EXISTS `mesaje_private`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesaje_private` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `continut` text NOT NULL,
  `data_trimitere` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mesaje_private_student_id` (`student_id`),
  CONSTRAINT `fk_mesaje_private_student_id` FOREIGN KEY (`student_id`) REFERENCES `studenti` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesaje_private`
--

LOCK TABLES `mesaje_private` WRITE;
/*!40000 ALTER TABLE `mesaje_private` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesaje_private` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesori`
--

DROP TABLE IF EXISTS `profesori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesori` (
  `profesor_id` int NOT NULL,
  `departament` varchar(40) NOT NULL,
  `ore_min` int NOT NULL,
  `ore_max` int NOT NULL,
  PRIMARY KEY (`profesor_id`),
  UNIQUE KEY `profesor_id` (`profesor_id`),
  CONSTRAINT `profesori_utilizatori_user_id_fk` FOREIGN KEY (`profesor_id`) REFERENCES `utilizatori` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesori`
--

LOCK TABLES `profesori` WRITE;
/*!40000 ALTER TABLE `profesori` DISABLE KEYS */;
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (7,'Calculatoare',10,25);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (8,'Matematica',8,20);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (9,'Calculatoare',12,30);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (10,'Fizica',14,28);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (11,'Limbi straine',6,18);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (12,'Fizica',9,22);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (13,'Calculatoare',15,35);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (14,'Matematica',10,24);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (15,'Matematica',7,19);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (16,'Matematica',10,18);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (17,'Fizica',8,16);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (18,'Calculatoare',12,20);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (19,'Limbi straine',9,15);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (20,'Matematica',11,18);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (21,'Fizica',10,14);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (22,'Matematica',8,16);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (23,'Calculatoare',9,17);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (24,'Fizica',12,20);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (25,'Fizica',10,18);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (26,'Calculatoare',9,16);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (27,'Matematica',8,14);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (28,'Calculatoare',10,17);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (29,'Calculatoare',11,19);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (30,'Matematica',10,16);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (31,'Calculatoare',9,15);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (32,'Limbi straine',12,18);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (33,'Matematica',8,16);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (34,'Limbi straine',10,18);
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (35,'Calculatoare',11,17);
/*!40000 ALTER TABLE `profesori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenti`
--

DROP TABLE IF EXISTS `studenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studenti` (
  `student_id` int NOT NULL,
  `an_studiu` int NOT NULL,
  `grupa` varchar(10) NOT NULL,
  `nr_ore` int NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id` (`student_id`),
  CONSTRAINT `studenti_utilizatori_user_id_fk` FOREIGN KEY (`student_id`) REFERENCES `utilizatori` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studenti`
--

LOCK TABLES `studenti` WRITE;
/*!40000 ALTER TABLE `studenti` DISABLE KEYS */;
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (36,2,'A1',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (37,1,'B2',25);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (38,3,'C1',28);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (39,2,'B2',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (40,4,'A1',32);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (41,1,'B1',27);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (42,2,'C2',29);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (43,3,'A1',31);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (44,2,'A2',26);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (45,1,'B3',28);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (46,2,'C3',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (47,3,'A3',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (48,1,'A3',28);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (49,2,'B3',32);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (50,3,'C2',27);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (51,1,'A3',25);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (52,2,'B1',29);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (53,3,'C3',31);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (54,4,'C2',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (55,1,'A2',26);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (56,1,'A1',28);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (57,2,'B2',32);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (58,3,'C1',25);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (59,1,'A2',29);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (60,2,'B1',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (61,3,'C2',24);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (62,1,'A3',26);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (63,2,'B3',33);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (64,3,'C3',31);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (65,1,'A2',27);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (66,2,'B1',28);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (67,3,'C1',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (68,1,'A3',26);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (69,2,'B2',34);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (70,3,'C1',32);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (71,1,'A3',29);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (72,2,'B2',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (73,3,'C3',31);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (74,1,'A3',28);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (75,2,'B2',27);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (76,1,'A1',26);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (77,2,'B3',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (78,3,'C1',29);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (79,1,'A2',24);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (80,2,'B1',28);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (81,3,'C3',31);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (82,1,'A3',27);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (83,2,'B2',32);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (84,3,'C2',25);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (85,1,'A1',28);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (86,2,'B3',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (87,3,'C1',33);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (88,1,'A2',29);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (89,2,'B1',31);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (90,3,'C3',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (91,1,'A3',26);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (92,2,'B2',28);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (93,3,'C2',29);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (94,1,'A1',30);
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (95,2,'B3',27);
/*!40000 ALTER TABLE `studenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilizatori`
--

DROP TABLE IF EXISTS `utilizatori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilizatori` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `CNP` varchar(20) NOT NULL,
  `nume` varchar(50) NOT NULL,
  `prenume` varchar(50) NOT NULL,
  `adresa_id` int NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `iban` varchar(50) NOT NULL,
  `nr_contract` varchar(50) NOT NULL,
  `rol` enum('student','profesor','administrator','super-administrator') NOT NULL,
  `parola` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `telefon` (`telefon`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `iban` (`iban`),
  UNIQUE KEY `nr_contract` (`nr_contract`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `CNP` (`CNP`),
  KEY `utilizatori_adrese_adresa_id_fk` (`adresa_id`),
  CONSTRAINT `utilizatori_adrese_adresa_id_fk` FOREIGN KEY (`adresa_id`) REFERENCES `adrese` (`adresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizatori`
--

LOCK TABLES `utilizatori` WRITE;
/*!40000 ALTER TABLE `utilizatori` DISABLE KEYS */;
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (1,'1234567890202','Ionescu','Daniel',100,'0755123502','daniel.ionescu@example.com','RO49AAAA1B3100750000102','C12367','super-administrator','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (2,'1234567890203','Pavel','Diana',101,'0755123503','diana.pavel@example.com','RO49AAAA1B3100750000103','C12368','super-administrator','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (3,'1234567890204','Enescu','Gheorghe',102,'0755123504','gheorghe.enescu@example.com','RO49AAAA1B3100750000104','C12369','super-administrator','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (4,'1234567890125','Georgescu','Vasile',3,'0755123458','vasile.georgescu@example.com','RO49AAAA1B3100750000002','C12347','administrator','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (5,'1234567890129','Ionescu','Mihai',7,'0755123462','mihai.ionescu@example.com','RO49AAAA1B3100750000006','C12351','administrator','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (6,'1234567890137','Popa','Florentina',15,'0755123470','florentina.popa@example.com','RO49AAAA1B3100750000014','C12359','administrator','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (7,'1234567890131','Popescu','Alexandru',9,'0755123464','alexandru.popescu@example.com','RO49AAAA1B3100750000008','C12353','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (8,'1234567890124','Ionescu','Maria',2,'0755123457','maria.ionescu@example.com','RO49AAAA1B3100750000001','C12346','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (9,'1234567890133','Marinescu','Florin',11,'0755123466','florin.marinescu@example.com','RO49AAAA1B3100750000010','C12355','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (10,'1234567890135','Munteanu','Radu',13,'0755123468','radu.munteanu@example.com','RO49AAAA1B3100750000012','C12357','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (11,'1234567890142','Popescu','Irina',20,'0755123475','irina.popescu@example.com','RO49AAAA1B3100750000019','C12364','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (12,'1234567890201','Sima','Anca',99,'0755123501','anca.sima@example.com','RO49AAAA1B3100750000101','C12366','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (13,'1234567890127','Dumitru','George',5,'0755123460','george.dumitru@example.com','RO49AAAA1B3100750000004','C12349','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (14,'1234567890139','Constantin','Monica',17,'0755123472','monica.constantin@example.com','RO49AAAA1B3100750000016','C12361','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (15,'1234567890140','Ionescu','Silvia',18,'0755123473','silvia.ionescu@example.com','RO49AAAA1B3100750000017','C12362','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (16,'1254567890201','Popescu','Ion',201,'0755000001','ion.popescu@example.com','RO49AAAA1B3100754000101','P12301','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (17,'1334567890202','Ionescu','Maria',202,'0755000002','maria.ionescuu@example.com','RO49ABAA1B3100750000102','P12302','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (18,'1434567890203','Enache','George',203,'0755000003','george.enache@example.com','RO44AAAA1B3100750000103','P12303','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (19,'1134567890204','Mihai','Ana',204,'0755000004','ana.mihai@example.com','RO49AANA1B3100750000104','P12304','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (20,'1264567890205','Tudor','Bogdan',205,'0755000005','bogdan.tudor@example.com','RO49AANA1B3100750000105','P12305','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (21,'1294567890206','Marin','Cristina',206,'0755000006','cristina.marin@example.com','RO49AALA1B3100750000106','P12306','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (22,'1234567890207','Ilie','Alex',207,'0755000007','alex.ilie@example.com','RO49AAA51B3100750000107','P12307','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (23,'1234567790208','Stefan','Diana',208,'0755000008','diana.stefan@example.com','RO49AAAA1O3100750000108','P12308','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (24,'123467890209','Dumitrescu','Vasile',209,'0755000009','vasile.dumitrescu@example.com','RO49AAUAA1B3100750000109','P12309','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (25,'1237567890210','Popa','Simona',210,'0755000010','simona.popa@example.com','RO49AAAA183100750000110','P12310','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (26,'1254567890211','Radulescu','Marius',211,'0755000011','marius.radulescu@example.com','RO49A9AA1B3100750000111','P12311','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (27,'1234467890212','Ciobanu','Larisa',212,'0755000012','larisa.ciobanu@example.com','RO49AQAA1B3100750000112','P12312','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (28,'1234567760213','Georgescu','Razvan',213,'0755000013','razvan.georgescu@example.com','RO4TRAAA1B3100750000113','P12313','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (29,'1234567350214','Badea','Claudia',214,'0755000014','claudia.badea@example.com','RO49AAHA1B3100750000114','P12314','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (30,'1234598790215','Vlad','Stefan',215,'0755000015','stefan.vlad@example.com','RO49AAVBN1B3100750000115','P12315','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (31,'1236567890216','Barbu','Elena',216,'0755000016','elena.barbu@example.com','RO49AKJHA1B3100750000116','P12316','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (32,'1234567790217','Serban','Gabriel',217,'0755000017','gabriel.serban@example.com','RO49AAHH1B3100750000117','P12317','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (33,'12345555890218','Petrescu','Adina',218,'0755000018','adina.petrescu@example.com','RO49BBBA1B3100750000118','P12318','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (34,'12345673452219','Lungu','Roxana',219,'0755000019','roxana.lungu@example.com','RO49ASWER1B3100750000119','P12319','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (35,'12345444490220','Toma','Dan',220,'0755000020','dan.toma@example.com','RO49AFGHJ1B3100750000120','P12320','profesor','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (36,'1234567890123','Popescu','Ion',1,'0755123456','io0n.popescu@example.com','RO49AAAA1B3100750000000','C12345','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (37,'1234567890126','Popa','Andreea',4,'0755123459','andreea.popa@example.com','RO49AAAA1B3100750000003','C12348','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (38,'1234567890128','Marin','Ioana',6,'0755123461','ioana.marin@example.com','RO49AAAA1B3100750000005','C12350','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (39,'1234567890134','Nistor','Gabriela',12,'0755123467','gabriela.nistor@example.com','RO49AAAA1B3100750000011','C12356','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (40,'1234567890136','Popescu','Lavinia',14,'0755123469','lavinia.popescu@example.com','RO49AAAA1B3100750000013','C12358','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (41,'1234567890130','Constantin','Adriana',8,'0755123463','adriana.constantin@example.com','RO49AAAA1B3100750000007','C12352','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (42,'1234567890132','Radu','Elena',10,'0755123465','elena.radu@example.com','RO49AAAA1B3100750000009','C12354','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (43,'1234567890138','Nica','Lucian',16,'0755123471','lucian.nica@example.com','RO49AAAA1B3100750000015','C12360','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (44,'1234567890200','Toma','Mihail',98,'0755123500','mihail.toma@example.com','RO49AAAA1B3100750000100','C12365','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (45,'1234567890141','Matei','Adrian',19,'0755123474','adrian.matei@example.com','RO49AAAA1B3100750000018','C12363','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (46,'1234567890143','Popescu','Marian',103,'0755123476','marian.popescu@example.com','RO49AAAA1B3100750000020','C12370','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (47,'1234567890144','Vasilescu','Elena',104,'0755123477','elena.vasilescu@example.com','RO49AAAA1B3100750000021','C12371','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (48,'1234567890145','Mihaila','Stefan',105,'0755123478','stefan.mihaila@example.com','RO49AAAA1B3100750000022','C12372','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (49,'1234567890146','Stanciu','Camelia',106,'0755123479','camelia.stanciu@example.com','RO49AAAA1B3100750000023','C12373','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (50,'1234567890147','Popa','Victor',107,'0755123480','victor.popa@example.com','RO49AAAA1B3100750000024','C12374','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (51,'1234567890148','Costache','Mihai',108,'0755123481','mihai.costache@example.com','RO49AAAA1B3100750000025','C12375','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (52,'1234567890149','Bucur','Irina',109,'0755123482','irina.bucur@example.com','RO49AAAA1B3100750000026','C12376','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (53,'1234567890150','Popescu','Alexandra',110,'0755123483','alexandra.popescu@example.com','RO49AAAA1B3100750000027','C12377','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (54,'1234567890151','Marin','Toma',111,'0755123484','toma.marin@example.com','RO49AAAA1B3100750000028','C12378','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (55,'1234567890152','Grigorescu','Laura',112,'0755123485','laura.grigorescu@example.com','RO49AAAA1B3100750000029','C12379','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (56,'1234567890153','Manea','Cristina',113,'0755123486','cristina.manea@example.com','RO49AAAA1B3100750000030','C12380','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (57,'1234567890154','Ionita','Bogdan',114,'0755123487','bogdan.ionita@example.com','RO49AAAA1B3100750000031','C12381','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (58,'1234567890155','Vasile','Ioana',115,'0755123488','ioana.vasile@example.com','RO49AAAA1B3100750000032','C12382','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (59,'1234567890156','Constantin','Rares',116,'0755123489','rares.constantin@example.com','RO49AAAA1B3100750000033','C12383','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (60,'1234567890157','Nedelcu','Ana',117,'0755123490','ana.nedelcu@example.com','RO49AAAA1B3100750000034','C12384','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (61,'1234567890158','Popovici','Vlad',118,'0755123491','vlad.popovici@example.com','RO49AAAA1B3100750000035','C12385','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (62,'1234567890159','Cristea','Maria',119,'0755123492','maria.cristea@example.com','RO49AAAA1B3100750000036','C12386','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (63,'1234567890160','Barbu','Daniel',120,'0755123493','daniel.barbu@example.com','RO49AAAA1B3100750000037','C12387','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (64,'1234567890161','Stoica','Diana',121,'0755123494','diana.stoica@example.com','RO49AAAA1B3100750000038','C12388','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (65,'1234567890162','Iacob','Marius',122,'0755123495','marius.iacob@example.com','RO49AAAA1B3100750000039','C12389','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (66,'1234567890163','Radulescu','Oana',123,'0755123496','oana.radulescu@example.com','RO49AAAA1B3100750000040','C12390','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (67,'1234567890164','Voicu','Andrei',124,'0755123497','andrei.voicu@example.com','RO49AAAA1B3100750000041','C12391','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (68,'1234567890165','Diaconu','Laura',125,'0755123498','laura.diaconu@example.com','RO49AAAA1B3100750000042','C12392','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (69,'1234567890166','Enache','Alex',126,'0755123499','alex.enache@example.com','RO49AAAA1B3100750000043','C12393','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (70,'1234567890167','Petrescu','Roxana',127,'0785123500','roxana.petrescu@example.com','RO49AAAA1B3100750000044','C12394','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (71,'1234567890168','Lungu','George',128,'0855123501','george.lungu@example.com','RO49AAAA1B3100750000045','C12395','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (72,'1234567890169','Dobre','Raluca',129,'0754123502','raluca.dobre@example.com','RO49AAAA1B3100750000046','C12396','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (73,'1234567890170','Andrei','Victor',130,'0754123503','victor.andrei@example.com','RO49AAAA1B3100750000047','C12397','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (74,'1234567890171','Iordache','Bianca',131,'0745123504','bianca.iordache@example.com','RO49AAAA1B3100750000048','C12398','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (75,'1234567890172','Pavel','Stefan',132,'0755143505','stefan.pavel@example.com','RO49AAAA1B3100750000049','C12399','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (76,'1234567890173','Mihai','Andreea',133,'0755423506','andreea.mihai@example.com','RO49AAAA1B3100750000050','C12400','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (77,'1234567890174','Preda','Ionut',134,'0755124507','ionut.preda@example.com','RO49AAAA1B3100750000051','C12401','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (78,'1234567890175','Popescu','Alina',135,'0754123508','alina.popescu@example.com','RO49AAAA1B3100750000052','C12402','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (79,'1234567890176','Ionescu','Radu',136,'0755423509','radu.ionescu@example.com','RO49AAAA1B3100750000053','C12403','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (80,'1234567890177','Marin','Carmen',137,'0755423510','carmen.marin@example.com','RO49AAAA1B3100750000054','C12404','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (81,'1234567890178','Dumitru','Lucian',138,'0745123511','lucian.dumitru@example.com','RO49AAAA1B3100750000055','C12405','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (82,'1234567890179','Matei','Simona',139,'0755143512','simona.matei@example.com','RO49AAAA1B3100750000056','C12406','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (83,'1234567890180','Petru','Florin',140,'0755143513','florin.petru@example.com','RO49AAAA1B3100750000057','C12407','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (84,'1234567890181','Stefan','Gabriela',141,'0745123514','gabriela.stefan@example.com','RO49AAAA1B3100750000058','C12408','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (85,'1234567890182','Voinea','Alexandru',142,'0755523515','alexandru.voinea@example.com','RO49AAAA1B3100750000059','C12409','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (86,'1234567890183','Pop','Larisa',143,'0755125516','larisa.pop@example.com','RO49AAAA1B3100750000060','C12410','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (87,'1234567890184','Lazar','Victor',144,'0755523517','victor.lazar@example.com','RO49AAAA1B3100750000061','C12411','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (88,'1234567890185','Nistor','Denisa',145,'0757123518','denisa.nistor@example.com','RO49AAAA1B3100750000062','C12412','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (89,'1234567890186','Serban','Mihai',146,'0755523519','mihai.serban@example.com','RO49AAAA1B3100750000063','C12413','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (90,'1234567890187','Tudor','Catalina',147,'0745123520','catalina.tudor@example.com','RO49AAAA1B3100750000064','C12414','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (91,'1234567890188','Ciobanu','Adrian',148,'0775123521','adrian.ciobanu@example.com','RO49AAAA1B3100750000065','C12415','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (92,'1234567890189','Radu','Sonia',149,'0755122522','sonia.radu@example.com','RO49AAAA1B3100750000066','C12416','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (93,'1234567890190','Georgescu','Razvan',150,'0745123523','razvaan.georgescu@example.com','RO49AAAA1B3100750000067','C12417','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (94,'1234567890191','Badea','Claudia',151,'0755163524','claaudiaa.badea@example.com','RO49AAAA1B3100750000068','C12418','student','parola123');
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (95,'1234567890192','Ilie','Dragos',152,'0755173525','dragos.ilie@example.com','RO49AAAA1B3100750000069','C12419','student','parola123');
/*!40000 ALTER TABLE `utilizatori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'platforma_studii'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizeaza_nota_student` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizeaza_nota_student`(
    IN profesor_id_in INT,
    IN student_id_in INT,
    IN disciplina_id_in INT,
    IN nota_curs_in INT,
    IN nota_seminar_in INT,
    IN nota_laborator_in INT
)
BEGIN
    DECLARE pondere_curs_in INT;
    DECLARE pondere_seminar_in INT;
    DECLARE pondere_laborator_in INT;
    DECLARE suma_ponderi INT;
    DECLARE activitate_curs INT;
    DECLARE activitate_seminar INT;
    DECLARE activitate_laborator INT;

    -- Verificăm dacă profesorul este corect pentru disciplina respectivă
    DECLARE profesor_corect INT;
    SELECT COUNT(*)
    INTO profesor_corect
    FROM activitati_discipline
    WHERE disciplina_id = disciplina_id_in
      AND profesor_id = profesor_id_in;

    -- Dacă profesorul nu este cel care predă disciplina, generăm eroare
    IF profesor_corect = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Eroare: Profesorul nu predă această disciplină.';
    END IF;

    -- Obținem ponderile pentru disciplina respectivă
    SELECT pondere_curs, pondere_seminar, pondere_laborator
    INTO pondere_curs_in, pondere_seminar_in, pondere_laborator_in
    FROM discipline
    WHERE disciplina_id = disciplina_id_in;

    -- Verificăm dacă există activități de tipul corespunzător pentru disciplină
    SELECT COUNT(*)
    INTO activitate_curs
    FROM activitati_discipline
    WHERE disciplina_id = disciplina_id_in
      AND tip_activitate = 'curs';

    SELECT COUNT(*)
    INTO activitate_seminar
    FROM activitati_discipline
    WHERE disciplina_id = disciplina_id_in
      AND tip_activitate = 'seminar';

    SELECT COUNT(*)
    INTO activitate_laborator
    FROM activitati_discipline
    WHERE disciplina_id = disciplina_id_in
      AND tip_activitate = 'laborator';

    -- Verificăm dacă activitatea de tipul corespunzător există pentru disciplină
    IF nota_curs_in IS NOT NULL AND activitate_curs = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Eroare: Nu există activitate de tip Curs pentru această disciplină.';
    END IF;

    IF nota_seminar_in IS NOT NULL AND activitate_seminar = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Eroare: Nu există activitate de tip Seminar pentru această disciplină.';
    END IF;

    IF nota_laborator_in IS NOT NULL AND activitate_laborator = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Eroare: Nu există activitate de tip Laborator pentru această disciplină.';
    END IF;

    -- Actualizăm nota corespunzătoare, doar dacă este diferită de NULL
    IF nota_curs_in IS NOT NULL THEN
        UPDATE catalog
        SET nota_curs = nota_curs_in
        WHERE student_id = student_id_in
          AND disciplina_id = disciplina_id_in
          AND profesor_id = profesor_id_in;
    END IF;

    IF nota_seminar_in IS NOT NULL THEN
        UPDATE catalog
        SET nota_seminar = nota_seminar_in
        WHERE student_id = student_id_in
          AND disciplina_id = disciplina_id_in
          AND profesor_id = profesor_id_in;
    END IF;

    IF nota_laborator_in IS NOT NULL THEN
        UPDATE catalog
        SET nota_laborator = nota_laborator_in
        WHERE student_id = student_id_in
          AND disciplina_id = disciplina_id_in
          AND profesor_id = profesor_id_in;
    END IF;

    -- Calculăm suma ponderilor pentru normalizare
    SET suma_ponderi = pondere_curs_in + pondere_seminar_in + pondere_laborator_in;

    -- Calculăm și actualizăm nota finală
    UPDATE catalog
    SET nota_finala = (IFNULL(nota_curs, 0) * pondere_curs_in +
         IFNULL(nota_seminar, 0) * pondere_seminar_in +
         IFNULL(nota_laborator, 0) * pondere_laborator_in) / suma_ponderi
    WHERE student_id = student_id_in
      AND disciplina_id = disciplina_id_in
      AND profesor_id = profesor_id_in;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdaugaActivitate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AdaugaActivitate`(
    IN p_student_id INT,
    IN p_denumire_disciplina VARCHAR(255),  -- Numele disciplinei (de exemplu, 'Fizica')
    IN p_descriere TEXT,
    IN p_data_activitate DATE,
    IN p_ora TIME,
    IN p_durata TIME,
    IN p_min_participanti INT,
    IN p_timp_expirare TIME
)
BEGIN
    DECLARE v_grupa_id INT;
   SET GLOBAL event_scheduler = ON;
   SET SQL_SAFE_UPDATES = 0;
    -- Căutăm ID-ul grupei pentru disciplina specificată
    SELECT grupa_id
    INTO v_grupa_id
    FROM grupe_de_studiu g
    INNER JOIN discipline d ON g.disciplina_id=d.disciplina_id
    WHERE d.nume_disciplina = p_denumire_disciplina
    LIMIT 1;

    -- Verificăm dacă grupul a fost găsit
    IF v_grupa_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Grupa pentru disciplina specificată nu a fost găsită.';
    END IF;

    -- Verificăm dacă studentul face parte din grup
    IF NOT EXISTS (
        SELECT 1
        FROM membrii_grupe_de_studiu
        WHERE student_id = p_student_id AND grupa_id = v_grupa_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Studentul nu face parte din grupul specificat.';
    END IF;

    -- Inserăm activitatea dacă verificările au trecut
    INSERT INTO activitati_grupe_de_studiu (
        grupa_id,
        descriere,
        data_activitate,
        data_postare,
        timp_postare,
        timp_expirare,
        ora,
        durata,
        min_participanti,
        nr_inscrieri
    )
    VALUES (
        v_grupa_id,
        p_descriere,
        p_data_activitate,
        CURDATE(),  -- data postării este data curentă
        CURTIME(),  -- timpul postării este timpul curent
        p_timp_expirare,
        p_ora,
        p_durata,
        p_min_participanti,
        0  -- nr_inscrieri, presupunem că începe cu 0
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `adauga_mesaj_grup_studiu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `adauga_mesaj_grup_studiu`(
    IN p_student_id INT,
    IN p_nume_disciplina VARCHAR(100),
    IN p_mesaj VARCHAR(500)
)
BEGIN
    DECLARE v_disciplina_id INT;
    DECLARE v_grupa_id INT;

    SELECT disciplina_id INTO v_disciplina_id
    FROM discipline
    WHERE nume_disciplina = p_nume_disciplina
    LIMIT 1;

    IF v_disciplina_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Disciplina nu a fost găsită';
    END IF;

    SELECT grupa_id INTO v_grupa_id
    FROM grupe_de_studiu
    WHERE disciplina_id = v_disciplina_id
    LIMIT 1;

    IF v_grupa_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Nu există grup de studiu pentru această disciplină';
    END IF;

    IF NOT EXISTS (
        SELECT 1
        FROM membrii_grupe_de_studiu
        WHERE grupa_id = v_grupa_id AND student_id = p_student_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Studentul nu este membru al grupului de studiu';
    END IF;

    INSERT INTO mesaje (grupa_id, student_id, continut, data_trimitere, ora_trimitere)
    VALUES (v_grupa_id, p_student_id, p_mesaj, CURDATE(), CURTIME());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `adauga_profesor_la_activitate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `adauga_profesor_la_activitate`(
    IN p_descriere_activitate VARCHAR(255),
    IN p_profesor_nume VARCHAR(255),
    IN p_profesor_prenume VARCHAR(255)
)
BEGIN
 -- Căutăm ID-ul profesorului pe baza numelui și prenumelui
            DECLARE p_profesor_id INT;

            SELECT user_id INTO p_profesor_id
            FROM utilizatori
            WHERE nume = p_profesor_nume AND prenume = p_profesor_prenume AND rol='profesor'
            LIMIT 1;
    -- Verificăm dacă activitatea există pe baza descrierii
    IF EXISTS (SELECT 1 FROM activitati_grupe_de_studiu WHERE descriere = p_descriere_activitate) THEN

        -- Verificăm dacă activitatea are deja un profesor asociat
        IF (SELECT profesor_id FROM activitati_grupe_de_studiu WHERE descriere = p_descriere_activitate) IS NULL THEN

            -- Verificăm dacă profesorul a fost găsit
            IF p_profesor_id IS NOT NULL THEN
                -- Actualizăm activitatea cu profesorul
                UPDATE activitati_grupe_de_studiu
                SET profesor_id = p_profesor_id
                WHERE descriere = p_descriere_activitate;
            ELSE
                -- Dacă profesorul nu a fost găsit, afișăm un mesaj de eroare
                SELECT 'Profesorul nu a fost găsit!' AS mesaj;
            END IF;

        ELSE
            -- Dacă activitatea are deja un profesor, afișăm un mesaj de eroare
            SELECT 'Activitatea are deja un profesor asociat!' AS mesaj;
        END IF;

    ELSE
        -- Dacă activitatea nu există, afișăm un mesaj de eroare
        SELECT 'Activitatea nu a fost găsită!' AS mesaj;
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `afisare_informatii_disciplina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `afisare_informatii_disciplina`(
    IN nume_disciplina_in VARCHAR(40)
)
BEGIN
    -- 1. Verificăm dacă disciplina există
    DECLARE disciplina_id_in INT;

    SELECT disciplina_id
    INTO disciplina_id_in
    FROM discipline
    WHERE nume_disciplina = nume_disciplina_in;

    IF disciplina_id_in IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Disciplina specificată nu există.';
    END IF;

    -- 2. Afișăm profesorii care au activități de curs pentru disciplina respectivă
    SELECT CONCAT(u.nume, ' ', u.prenume) AS `Nume profesori curs`
    FROM utilizatori u
    JOIN profesori p ON u.user_id = p.profesor_id
    JOIN activitati_discipline a ON p.profesor_id = a.profesor_id
    WHERE a.disciplina_id = disciplina_id_in AND a.tip_activitate = 'curs';

    -- 3. Afișăm profesorii care au activități de seminar pentru disciplina respectivă
    SELECT CONCAT(u.nume, ' ', u.prenume) AS `Nume profesori seminar`
    FROM utilizatori u
    JOIN profesori p ON u.user_id = p.profesor_id
    JOIN activitati_discipline a ON p.profesor_id = a.profesor_id
    WHERE a.disciplina_id = disciplina_id_in AND a.tip_activitate = 'seminar';

    -- 4. Afișăm profesorii care au activități de laborator pentru disciplina respectivă
    SELECT CONCAT(u.nume, ' ', u.prenume) AS `Nume profesori laborator`
    FROM utilizatori u
    JOIN profesori p ON u.user_id = p.profesor_id
    JOIN activitati_discipline a ON p.profesor_id = a.profesor_id
    WHERE a.disciplina_id = disciplina_id_in AND a.tip_activitate = 'laborator';

    -- 5. Afișăm informațiile despre disciplina respectivă
    SELECT *
    FROM discipline
    WHERE disciplina_id = disciplina_id_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `afisare_informatii_utilizator_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `afisare_informatii_utilizator_id`(
    IN utilizator_id INT
)
BEGIN
    -- 1. Variabile pentru rolul utilizatorului
    DECLARE utilizator_rol ENUM('student', 'profesor', 'administrator', 'super-administrator');

    -- 2. Obținem rolul utilizatorului
    SELECT rol
    INTO utilizator_rol
    FROM utilizatori
    WHERE user_id = utilizator_id;

    -- 3. Verificăm dacă utilizatorul există
    IF utilizator_rol IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Utilizatorul specificat nu există.';
    END IF;

    -- 4. Afișăm informațiile generale ale utilizatorului, inclusiv adresa
    SELECT u.user_id AS `ID Utilizator`,
           CONCAT(u.nume, ' ', u.prenume) AS `Nume complet`,
           u.CNP AS `CNP`,
           u.telefon AS `Telefon`,
           u.email AS `Email`,
           CONCAT(a.tara, ', ', a.judet, ', ', a.localitate, ', ', a.strada, ' ', IFNULL(a.numar, 'N/A')) AS `Adresă completă`
    FROM utilizatori u
    JOIN adrese a ON u.adresa_id = a.adresa_id
    WHERE u.user_id = utilizator_id;

    -- 5. Dacă utilizatorul este profesor
    IF utilizator_rol = 'profesor' THEN
        -- Afișăm informațiile profesorului
        SELECT CONCAT(u.nume, ' ', u.prenume) AS `Nume complet`,
               u.user_id AS `ID Utilizator`,
               p.departament AS `Departament`
        FROM utilizatori u
        JOIN profesori p ON u.user_id = p.profesor_id
        WHERE u.user_id = utilizator_id;

        -- Afișăm disciplinele și tipurile de activități
        SELECT d.nume_disciplina AS `Disciplina`,
               a.tip_activitate AS `Tip activitate`
        FROM activitati_discipline a
        JOIN discipline d ON a.disciplina_id = d.disciplina_id
        WHERE a.profesor_id = utilizator_id;

    -- 6. Dacă utilizatorul este student
    ELSEIF utilizator_rol = 'student' THEN
        -- Afișăm disciplinele la care este înscris, cu profesorii care predau cursul, seminarul și laboratorul
        SELECT d.nume_disciplina AS `Disciplina`,
               -- Profesorii care predau cursul
               GROUP_CONCAT(DISTINCT CONCAT(u1.nume, ' ', u1.prenume) SEPARATOR ', ') AS `Profesor curs`,
               -- Profesorii care predau seminarul
               GROUP_CONCAT(DISTINCT CONCAT(u2.nume, ' ', u2.prenume) SEPARATOR ', ') AS `Profesor seminar`,
               -- Profesorii care predau laboratorul
               GROUP_CONCAT(DISTINCT CONCAT(u3.nume, ' ', u3.prenume) SEPARATOR ', ') AS `Profesor laborator`
        FROM inscrieri i
        JOIN activitati_discipline a ON i.activitate_id = a.activitate_id
        JOIN discipline d ON a.disciplina_id = d.disciplina_id
        LEFT JOIN utilizatori u1 ON u1.user_id = (SELECT p1.profesor_id FROM profesori p1 WHERE p1.profesor_id = a.profesor_id AND a.tip_activitate = 'curs')
        LEFT JOIN utilizatori u2 ON u2.user_id = (SELECT p2.profesor_id FROM profesori p2 WHERE p2.profesor_id = a.profesor_id AND a.tip_activitate = 'seminar')
        LEFT JOIN utilizatori u3 ON u3.user_id = (SELECT p3.profesor_id FROM profesori p3 WHERE p3.profesor_id = a.profesor_id AND a.tip_activitate = 'laborator')
        WHERE i.student_id = utilizator_id
        GROUP BY d.disciplina_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `afiseaza_activitati_studiu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `afiseaza_activitati_studiu`(
    IN p_student_id INT -- ID-ul studentului
)
BEGIN
    -- Afișăm toate activitățile viitoare pentru grupurile la care este înscris studentul
    SELECT
        g.nume_grupa,
        a.descriere,
        a.data_activitate,
        a.ora
    FROM activitati_grupe_de_studiu a
    INNER JOIN grupe_de_studiu g ON a.grupa_id = g.grupa_id
    INNER JOIN membrii_grupe_de_studiu m ON g.grupa_id = m.grupa_id
    WHERE m.student_id = p_student_id
      AND a.data_activitate >= CURDATE()
    ORDER BY a.data_activitate, a.ora;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `afiseaza_catalog_student` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `afiseaza_catalog_student`(
    IN student_id_in INT
)
BEGIN
    -- Interogăm tabela catalog pentru a obține notele și informațiile legate de disciplinele studentului
    SELECT
        d.nume_disciplina AS Disciplina,
        p.nume AS Nume_Profesor,
        p.prenume AS Prenume_Profesor,
        c.nota_curs AS Nota_Curs,
        c.nota_seminar AS Nota_Seminar,
        c.nota_laborator AS Nota_Laborator,
        c.nota_finala AS Nota_Finala
    FROM
        catalog c
    JOIN
        discipline d ON c.disciplina_id = d.disciplina_id
    JOIN
        profesori prof ON c.profesor_id = prof.profesor_id
    JOIN
        utilizatori p ON prof.profesor_id = p.user_id  -- Ne asigurăm că legăm profesorul cu tabelul utilizatori
    WHERE
        c.student_id = student_id_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `afiseaza_studenti_la_disciplina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `afiseaza_studenti_la_disciplina`(
    IN profesor_id_in INT,
    IN disciplina_id_in INT
)
BEGIN
    -- Interogăm tabelele pentru a obține studenții care sunt înscriși la activitățile specifice disciplinei și predată de profesorul specificat
    SELECT
        u.nume AS Nume_Student,
        u.prenume AS Prenume_Student,
        s.an_studiu AS An_Studiu,
        s.grupa AS Grupa,
        d.nume_disciplina AS Disciplina
    FROM
        studenti s
    JOIN
        utilizatori u ON s.student_id = u.user_id  -- Legătura cu tabelul utilizatori pentru numele studentului
    JOIN
        inscrieri i ON s.student_id = i.student_id  -- Verificăm înscrierea studentului
    JOIN
        activitati_discipline ad ON i.activitate_id = ad.activitate_id  -- Legăm activitatea de disciplină și profesor
    JOIN
        discipline d ON ad.disciplina_id = d.disciplina_id  -- Verificăm numele disciplinei
    WHERE
        ad.profesor_id = profesor_id_in  -- Filtrăm după profesor
        AND ad.disciplina_id = disciplina_id_in;  -- Filtrăm după disciplină
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `creare_grup_studiu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `creare_grup_studiu`(
    IN p_nume_disciplina VARCHAR(100),  -- Numele disciplinei
    IN p_nume_grupa VARCHAR(100)         -- Numele grupului de studiu
)
BEGIN
    DECLARE v_disciplina_id INT;
    DECLARE v_grupa_id INT;

    -- Căutăm ID-ul disciplinei după numele ei
    SELECT disciplina_id INTO v_disciplina_id
    FROM discipline
    WHERE nume_disciplina = p_nume_disciplina
    LIMIT 1;

    -- Dacă nu am găsit disciplina, semnalăm eroare
    IF v_disciplina_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Disciplina nu a fost găsită.';
    END IF;

    -- Verificăm dacă există deja un grup de studiu pentru disciplina respectivă
    SELECT grupa_id INTO v_grupa_id
    FROM grupe_de_studiu
    WHERE disciplina_id = v_disciplina_id
    LIMIT 1;

    -- Dacă există deja un grup de studiu pentru această disciplină
    IF v_grupa_id IS NOT NULL THEN
        -- Actualizăm numele grupului de studiu
        UPDATE grupe_de_studiu
        SET nume_grupa = p_nume_grupa
        WHERE grupa_id = v_grupa_id;
    ELSE
        -- Dacă nu există, creăm un grup de studiu nou
        INSERT INTO grupe_de_studiu (disciplina_id, nume_grupa)
        VALUES (v_disciplina_id, p_nume_grupa);
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inscriere_activitate_studiu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inscriere_activitate_studiu`(
    IN p_id_student INT,          -- ID-ul studentului
    IN p_descriere_activitate TEXT, -- Descrierea activității de studiu
    IN p_denumire_disciplina TEXT  -- Denumirea disciplinei (de exemplu, 'Fizica')
)
BEGIN
    DECLARE v_id_activitate INT;
    DECLARE v_id_grupa INT;
    DECLARE v_count INT;

    -- Obținem ID-ul activității pe baza descrierii activității
    SELECT activitate_id
    INTO v_id_activitate
    FROM activitati_grupe_de_studiu
    WHERE descriere = p_descriere_activitate
	 AND data_activitate >= CURDATE()  -- Activitățile viitoare
    LIMIT 1;

    -- Verificăm dacă am găsit activitatea
    IF v_id_activitate IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Activitatea nu a fost găsită';
    END IF;

    -- Obținem ID-ul grupei pe baza denumirii disciplinei
    SELECT grupa_id
    INTO v_id_grupa
    FROM grupe_de_studiu g
    INNER JOIN discipline d ON g.disciplina_id=d.disciplina_id
    WHERE d.nume_disciplina = p_denumire_disciplina
    LIMIT 1;

    -- Verificăm dacă am găsit grupa
    IF v_id_grupa IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Grupa pentru disciplina specificată nu a fost găsită.';
    END IF;

    -- Verificăm dacă studentul face parte din grupa activității
    SELECT COUNT(*) INTO v_count
    FROM membrii_grupe_de_studiu iag
    WHERE iag.student_id = p_id_student
      AND iag.grupa_id = v_id_grupa;

    -- Dacă studentul face parte din grupă și activitatea există, îl înscriem
    IF v_count > 0 THEN
        -- Verificăm dacă studentul este deja înscris la activitatea respectivă
        IF NOT EXISTS (
            SELECT 1
            FROM inscrieri_activitati_grupe_studiu
            WHERE student_id = p_id_student
              AND activitate_id = v_id_activitate
        ) THEN
            -- Dacă nu este deja înscris, îl înscriem
            INSERT INTO inscrieri_activitati_grupe_studiu (student_id,activitate_id,data_inscriere)
            VALUES (p_id_student,v_id_activitate, CURDATE());

            -- Actualizăm numărul de înscriere pentru activitatea respectivă
            UPDATE activitati_grupe_de_studiu
            SET nr_inscrieri = nr_inscrieri + 1
            WHERE activitate_id = v_id_activitate;

            -- Mesaj de succes
        ELSE
            -- Mesaj că studentul este deja înscris
            SELECT 'Studentul este deja înscris la această activitate.' AS mesaj;
        END IF;
    ELSE
        -- Mesaj că studentul nu face parte din grupa respectivă
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Studentul nu face parte din grupa specificată.';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inscriere_student_grup_studiu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inscriere_student_grup_studiu`(
    IN p_student_id INT,
    IN p_nume_disciplina VARCHAR(100)  -- Numele disciplinei
)
BEGIN
    DECLARE v_disciplina_id INT;
    DECLARE v_grupa_id INT;

    -- Căutăm ID-ul disciplinei după numele acesteia
    SELECT disciplina_id INTO v_disciplina_id
    FROM discipline
    WHERE nume_disciplina = p_nume_disciplina
    LIMIT 1;

    -- Dacă nu găsim disciplina, semnalăm eroare
    IF v_disciplina_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Disciplina nu a fost găsită';
    END IF;

    -- Verificăm dacă studentul este înscris la disciplina respectivă
    IF NOT EXISTS (
    SELECT 1 FROM inscrieri i
    INNER JOIN activitati_discipline a ON i.activitate_id=a.activitate_id
    WHERE student_id = p_student_id AND
    a.disciplina_id= v_disciplina_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Studentul nu este înscris la disciplina respectiva';
    END IF;

    -- Căutăm un grup de studiu pentru disciplina respectivă
    SELECT grupa_id INTO v_grupa_id
    FROM grupe_de_studiu
    WHERE disciplina_id = v_disciplina_id
    LIMIT 1;

    -- Dacă nu există un grup pentru disciplina respectivă
    IF v_grupa_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Nu exista grup de studiu pentru aceasta disciplina';
    END IF;

    -- Dacă toate condițiile sunt îndeplinite, înscriem studentul în grupul de studiu
    INSERT INTO membrii_grupe_de_studiu (grupa_id, student_id)
    VALUES (v_grupa_id, p_student_id);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inscriere_student_la_disciplina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inscriere_student_la_disciplina`(
    IN student_id_in INT,
    IN nume_disciplina_in VARCHAR(40)
)
BEGIN
    DECLARE disciplina_id_var INT;
    DECLARE activitate_id_var INT;
    DECLARE profesor_id_var INT;
    DECLARE ora_inceput_var TIME;
    DECLARE ora_sfarsit_var TIME;
    DECLARE zi_var DATE;
    DECLARE done_var INT DEFAULT 0;

    -- Declarați cursorii
    DECLARE cursor_seminar CURSOR FOR
        SELECT c.activitate_id, c.ora_inceput, c.ora_sfarsit, c.data_activitate
        FROM calendar c
        WHERE c.disciplina_id = disciplina_id_var AND c.tip_activitate = 'seminar';

    DECLARE cursor_laborator CURSOR FOR
        SELECT c.activitate_id, c.ora_inceput, c.ora_sfarsit, c.data_activitate
        FROM calendar c
        WHERE c.disciplina_id = disciplina_id_var AND c.tip_activitate = 'laborator';

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done_var = 1;

    -- Obține `disciplina_id` din tabela `discipline` pe baza `nume_disciplina_in`
    SELECT disciplina_id
    INTO disciplina_id_var
    FROM discipline
    WHERE nume_disciplina = nume_disciplina_in;

    -- Verificare dacă `disciplina_id` a fost găsit
    IF disciplina_id_var IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Disciplina nu există';
    END IF;

    -- Pas 1: Alocare la curs
    SELECT c.activitate_id, c.profesor_id, c.ora_inceput, c.ora_sfarsit, c.data_activitate
    INTO activitate_id_var, profesor_id_var, ora_inceput_var, ora_sfarsit_var, zi_var
    FROM calendar c
    LEFT JOIN (
        SELECT i.activitate_id, COUNT(i.student_id) AS nr_studenti
        FROM inscrieri i
        GROUP BY i.activitate_id
    ) sub ON c.activitate_id = sub.activitate_id
    WHERE c.disciplina_id = disciplina_id_var AND c.tip_activitate = 'curs'
    ORDER BY COALESCE(sub.nr_studenti, 0) ASC
    LIMIT 1;

    -- Verificare suprapuneri pentru curs
    IF NOT EXISTS (
        SELECT 1
        FROM inscrieri i
        JOIN calendar ca ON i.activitate_id = ca.activitate_id
        WHERE i.student_id = student_id_in
        AND ca.data_activitate = zi_var
        AND (
            (ca.ora_inceput <= ora_inceput_var AND ca.ora_sfarsit > ora_inceput_var) OR
            (ca.ora_inceput < ora_sfarsit_var AND ca.ora_sfarsit >= ora_sfarsit_var)
        )
    ) THEN
        -- Alocare student la curs
        INSERT INTO inscrieri (student_id, activitate_id)
        VALUES (student_id_in, activitate_id_var);

        -- Actualizare număr studenți la activitatea din `activitati_discipline`
        UPDATE activitati_discipline
        SET numar_studenti = numar_studenti + 1
        WHERE activitate_id = activitate_id_var;

        -- Inserare tuplă în catalog după ce studentul a fost înscris la curs
        INSERT INTO catalog (student_id, disciplina_id, profesor_id, nota_curs, nota_laborator, nota_seminar, nota_finala)
        VALUES (student_id_in, disciplina_id_var, profesor_id_var, NULL, NULL, NULL, NULL);
    END IF;

    -- Pas 2: Alocare la seminar
    OPEN cursor_seminar;
    seminar_loop: LOOP
        FETCH cursor_seminar INTO activitate_id_var, ora_inceput_var, ora_sfarsit_var, zi_var;

        IF done_var THEN
            LEAVE seminar_loop;
        END IF;

        -- Verificare suprapuneri pentru seminar
        IF NOT EXISTS (
            SELECT 1
            FROM inscrieri i
            JOIN calendar ca ON i.activitate_id = ca.activitate_id
            WHERE i.student_id = student_id_in
            AND ca.data_activitate = zi_var
            AND (
                (ca.ora_inceput <= ora_inceput_var AND ca.ora_sfarsit > ora_inceput_var) OR
                (ca.ora_inceput < ora_sfarsit_var AND ca.ora_sfarsit >= ora_sfarsit_var)
            )
        ) THEN
            -- Alocare student la seminar
            INSERT INTO inscrieri (student_id, activitate_id)
            VALUES (student_id_in, activitate_id_var);

            -- Actualizare număr studenți la seminar în `activitati_discipline`
            UPDATE activitati_discipline
            SET numar_studenti = numar_studenti + 1
            WHERE activitate_id = activitate_id_var;

            LEAVE seminar_loop;
        END IF;
    END LOOP;
    CLOSE cursor_seminar;

    -- Pas 3: Alocare la laborator
    SET done_var = 0;
    OPEN cursor_laborator;
    laborator_loop: LOOP
        FETCH cursor_laborator INTO activitate_id_var, ora_inceput_var, ora_sfarsit_var, zi_var;

        IF done_var THEN
            LEAVE laborator_loop;
        END IF;

        -- Verificare suprapuneri pentru laborator
        IF NOT EXISTS (
            SELECT 1
            FROM inscrieri i
            JOIN calendar ca ON i.activitate_id = ca.activitate_id
            WHERE i.student_id = student_id_in
            AND ca.data_activitate = zi_var
            AND (
                (ca.ora_inceput <= ora_inceput_var AND ca.ora_sfarsit > ora_inceput_var) OR
                (ca.ora_inceput < ora_sfarsit_var AND ca.ora_sfarsit >= ora_sfarsit_var)
            )
        ) THEN
            -- Alocare student la laborator
            INSERT INTO inscrieri (student_id, activitate_id)
            VALUES (student_id_in, activitate_id_var);

            -- Actualizare număr studenți la laborator în `activitati_discipline`
            UPDATE activitati_discipline
            SET numar_studenti = numar_studenti + 1
            WHERE activitate_id = activitate_id_var;

            LEAVE laborator_loop;
        END IF;
    END LOOP;
    CLOSE cursor_laborator;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserare_activitate_discipline` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserare_activitate_discipline`(
    IN nume_disciplina_in VARCHAR(40),
    IN profesor_id INT,
    IN activitate_predata ENUM('curs', 'seminar', 'laborator'),
    IN durata TIME,
    IN nr_max_participanti INT,
    IN frecventa ENUM('saptamanal', 'la 2 saptamani')
)
BEGIN
    DECLARE disciplina_id_t INT;

    -- Obținem ID-ul disciplinei pentru numele dat
    SELECT disciplina_id INTO disciplina_id_t
    FROM discipline
    WHERE nume_disciplina_in = nume_disciplina
    LIMIT 1;  -- Ne asigurăm că se returnează doar un rând

    -- Verificăm dacă există o disciplină validă
    IF disciplina_id_t IS NOT NULL THEN
        -- Inserăm activitatea în tabelul activitati_discipline
        INSERT INTO activitati_discipline (disciplina_id, profesor_id, tip_activitate, durata,numar_studenti, nr_max_participanti, frecventa)
        VALUES (disciplina_id_t, profesor_id, activitate_predata, durata, 0, nr_max_participanti, frecventa);
    ELSE
        -- Dacă disciplina nu există, returnăm un mesaj de eroare
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Disciplina nu a fost găsită!';
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserare_disciplina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserare_disciplina`(
    IN nume_disciplina VARCHAR(40),
    IN descriere TEXT,
    IN data_inceput DATE,
    IN data_sfarsit DATE
)
BEGIN
    -- Inserare in tabela discipline
    INSERT INTO discipline (nume_disciplina, descriere, data_inceput, data_sfarsit)
    VALUES (nume_disciplina, descriere, data_inceput, data_sfarsit);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserare_profesor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserare_profesor`(
    IN p_CNP VARCHAR(20),
	IN p_prenume VARCHAR(50),
	IN p_nume VARCHAR(50),
    IN p_adresa_id INT,
    IN p_telefon VARCHAR(20),
    IN p_email VARCHAR(50),
    IN p_iban VARCHAR(50),
    IN p_nr_contract VARCHAR(50),
    IN p_parola VARCHAR(30),
    IN p_departament VARCHAR(40),
    IN p_ore_min INT,
    IN p_ore_max INT
)
BEGIN
    DECLARE v_user_id INT;

    -- Inserarea in tabela utilizatori
    INSERT INTO utilizatori (CNP, nume, prenume, adresa_id, telefon, email, iban, nr_contract, rol, parola)
    VALUES (p_CNP, p_nume, p_prenume, p_adresa_id, p_telefon, p_email, p_iban, p_nr_contract, 'profesor', p_parola);

    -- Preluarea user_id-ului generat (ultimul id insertat)
    SET v_user_id = LAST_INSERT_ID();

    -- Inserarea in tabela profesori folosind user_id-ul
    INSERT INTO profesori (profesor_id, departament, ore_min, ore_max)
    VALUES (v_user_id, p_departament, p_ore_min, p_ore_max);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserare_student` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserare_student`(
    IN p_CNP VARCHAR(20),
	IN p_prenume VARCHAR(50),
	IN p_nume VARCHAR(50),
    IN p_adresa_id INT,
    IN p_telefon VARCHAR(20),
    IN p_email VARCHAR(50),
    IN p_iban VARCHAR(50),
    IN p_nr_contract VARCHAR(50),
    IN p_parola VARCHAR(30),
    IN p_an_studiu INT,
    IN p_grupa VARCHAR(10),
    IN p_nr_ore INT
)
BEGIN
    -- Declararea variabilei pentru user_id
    DECLARE v_user_id INT;

    -- Inserarea datele în tabela utilizatori
    INSERT INTO utilizatori (CNP, nume, prenume, adresa_id, telefon, email, iban, nr_contract, rol, parola)
    VALUES (p_CNP, p_nume, p_prenume, p_adresa_id, p_telefon, p_email, p_iban, p_nr_contract, 'student', p_parola);

    -- Obținerea ID-ul utilizatorului generat
    SET v_user_id = LAST_INSERT_ID();

    -- Inserarea datelor în tabela studenti
    INSERT INTO studenti (student_id, an_studiu, grupa, nr_ore)
    VALUES (v_user_id, p_an_studiu, p_grupa, p_nr_ore);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `modifica_ponderi_disciplina` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `modifica_ponderi_disciplina`(
    IN profesor_id_in INT,
    IN nume_disciplina_in VARCHAR(40),
    IN pondere_curs_in INT,
    IN pondere_seminar_in INT,
    IN pondere_laborator_in INT
)
BEGIN
    DECLARE disciplina_id_in INT;
    DECLARE exista_curs BOOLEAN;

    -- Găsirea ID-ului disciplinei pe baza numelui
    SELECT disciplina_id
	INTO disciplina_id_in
	FROM discipline
	WHERE nume_disciplina = nume_disciplina_in
	LIMIT 1;

    -- Verificăm dacă disciplina a fost găsită
    IF disciplina_id_in IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Disciplina specificată nu există.';
    END IF;

    -- Verificăm dacă profesorul are activitate de tip 'curs' pentru disciplina respectivă
    SELECT EXISTS (
        SELECT 1
        FROM activitati_discipline
        WHERE profesor_id_in = profesor_id
          AND disciplina_id_in = disciplina_id
          AND tip_activitate = 'curs'
    ) INTO exista_curs;

    -- Dacă profesorul nu are activitate de tip curs, returnăm o eroare
    IF NOT exista_curs THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Profesorul nu are dreptul de a modifica ponderile!';
    END IF;

    -- Verificăm dacă suma ponderilor este egală cu 100
    IF (pondere_curs_in + pondere_seminar_in + pondere_laborator_in) <> 100 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Suma ponderilor trebuie să fie egală cu 100.';
    END IF;

    -- Actualizăm ponderile disciplinei
    UPDATE discipline
    SET pondere_curs = pondere_curs_in,
        pondere_seminar = pondere_seminar_in,
        pondere_laborator = pondere_laborator_in
    WHERE disciplina_id = disciplina_id_in;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `parasire_student_grup_studiu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `parasire_student_grup_studiu`(
    IN p_student_id INT,
    IN p_nume_disciplina VARCHAR(100)  -- Numele disciplinei
)
BEGIN
    DECLARE v_disciplina_id INT;
    DECLARE v_grupa_id INT;

    -- Căutăm ID-ul disciplinei după numele acesteia
    SELECT disciplina_id INTO v_disciplina_id
    FROM discipline
    WHERE nume_disciplina = p_nume_disciplina
    LIMIT 1;

    -- Dacă nu găsim disciplina, semnalăm eroare
    IF v_disciplina_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Disciplina nu a fost găsită';
    END IF;

    -- Verificăm dacă studentul este înscris la disciplina respectivă
    IF NOT EXISTS (
    SELECT 1 FROM inscrieri i
    INNER JOIN activitati_discipline a ON i.activitate_id=a.activitate_id
    WHERE student_id = p_student_id AND
    a.disciplina_id= v_disciplina_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Studentul nu este înscris la disciplina respectiva';
    END IF;

    -- Căutăm grupul de studiu pentru disciplina respectivă
    SELECT grupa_id INTO v_grupa_id
    FROM grupe_de_studiu
    WHERE disciplina_id = v_disciplina_id
    LIMIT 1;

    -- Dacă nu există un grup pentru disciplina respectivă
    IF v_grupa_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Nu exista grup de studiu pentru aceasta disciplina';
    END IF;

    -- Verificăm dacă studentul este deja în grupul de studiu
    IF NOT EXISTS (
        SELECT 1 FROM membrii_grupe_de_studiu
        WHERE grupa_id = v_grupa_id AND student_id = p_student_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Studentul nu este membru al grupului de studiu';
    END IF;

    -- Dacă toate condițiile sunt îndeplinite, ștergem studentul din grupul de studiu
    DELETE FROM membrii_grupe_de_studiu
    WHERE grupa_id = v_grupa_id AND student_id = p_student_id;
     SELECT 'Studentul a fost șters din grupul de studiu' AS mesaj;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `programare_activitate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `programare_activitate`(
    IN profesor_id INT,
    IN nume_disciplina VARCHAR(255),
    IN tip_activitate ENUM('curs', 'laborator', 'seminar', 'examen', 'colocviu'),  -- ENUM pentru tipul de activitate
    IN zi ENUM('Luni', 'Marti', 'Miercuri', 'Joi', 'Vineri'),  -- ENUM pentru ziua aleasă de profesor
    IN ora_start TIME
)
BEGIN
    DECLARE v_frecventa VARCHAR(255);
    DECLARE v_activitate_id INT;
    DECLARE v_disciplina_id INT;
    DECLARE v_data_inceput DATE;
    DECLARE v_data_sfarsit DATE;
    DECLARE v_data_curenta DATE;
    DECLARE v_zi ENUM('Luni', 'Marti', 'Miercuri', 'Joi', 'Vineri');
    DECLARE v_durata INT;  -- Durata activității în minute
    DECLARE v_ora_finala TIME;
    DECLARE v_nr_max_participanti INT;  -- Numărul maxim de participanți
    DECLARE v_numar_suprapuneri INT;  -- Variabilă pentru numărarea suprapunerilor
    DECLARE v_zi_numar INT;  -- Ziua săptămânii în format numeric (Luni = 1, Marți = 2, ...)

    -- Preluăm datele de început și sfârșit din tabelul discipline pe baza numelui disciplinei
    SELECT data_inceput, data_sfarsit
    INTO v_data_inceput, v_data_sfarsit
    FROM discipline d
    WHERE d.nume_disciplina = nume_disciplina;

    -- Dacă nu găsim disciplina în tabel, generăm o eroare
    IF v_data_inceput IS NULL OR v_data_sfarsit IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Disciplina nu a fost găsită sau nu are datele de început și sfârșit setate!';
    END IF;

    -- Verificăm dacă profesorul predă activitatea respectivă la disciplina respectivă
    SELECT COUNT(*) INTO v_activitate_id
    FROM activitati_discipline ad
    JOIN discipline d ON ad.disciplina_id = d.disciplina_id
    WHERE d.nume_disciplina = nume_disciplina
      AND ad.tip_activitate = tip_activitate
      AND ad.profesor_id = profesor_id;

    -- Dacă profesorul nu predă această activitate, generăm o eroare
    IF v_activitate_id = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Profesorul nu predă activitatea respectivă la disciplina respectivă!';
    END IF;

    -- Preluăm activitatea pe baza numelui disciplinei și tipului activității
    SELECT ad.activitate_id, ad.frecventa, ad.durata, ad.nr_max_participanti
    INTO v_activitate_id, v_frecventa, v_durata, v_nr_max_participanti
    FROM activitati_discipline ad
    JOIN discipline d ON ad.disciplina_id = d.disciplina_id
    WHERE d.nume_disciplina = nume_disciplina
      AND ad.tip_activitate = tip_activitate
      AND ad.profesor_id = profesor_id;

    -- Verificăm dacă activitatea există
    IF v_activitate_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Activitatea nu a fost găsită!';
    END IF;

    -- Preluăm disciplina_id pe baza activității
    SELECT disciplina_id
    INTO v_disciplina_id
    FROM activitati_discipline
    WHERE activitate_id = v_activitate_id;

    -- Verificăm dacă disciplina există
    IF v_disciplina_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Disciplina nu a fost găsită!';
    END IF;

    -- Convertim ziua aleasă într-un număr (Luni = 1, Marți = 2, ...)
    CASE zi
        WHEN 'Luni' THEN SET v_zi_numar = 1;
        WHEN 'Marti' THEN SET v_zi_numar = 2;
        WHEN 'Miercuri' THEN SET v_zi_numar = 3;
        WHEN 'Joi' THEN SET v_zi_numar = 4;
        WHEN 'Vineri' THEN SET v_zi_numar = 5;
    END CASE;

    -- Căutăm prima zi a săptămânii dorite între v_data_inceput și v_data_sfarsit
    SET v_data_curenta = v_data_inceput;

    -- Găsim prima zi a săptămânii corespunzătoare
    WHILE DAYOFWEEK(v_data_curenta) != (v_zi_numar % 7) + 1 DO
        SET v_data_curenta = DATE_ADD(v_data_curenta, INTERVAL 1 DAY);
    END WHILE;

    -- Calculăm ora finală prin adăugarea duratei la ora de început
    SET v_ora_finala = ADDTIME(ora_start, v_durata);

    -- Generăm programarea activităților pe baza frecvenței
    WHILE v_data_curenta <= v_data_sfarsit DO
        -- Verificăm dacă profesorul are deja o activitate în intervalul orar dorit
        SELECT COUNT(*) INTO v_numar_suprapuneri
        FROM calendar c
        WHERE c.profesor_id = profesor_id
          AND c.zi = zi
          AND c.data_activitate = v_data_curenta
          AND (
              (c.ora_inceput <= ora_start AND c.ora_sfarsit > ora_start)  -- Suprapunere la începutul intervalului
              OR
              (c.ora_inceput < ADDTIME(ora_start, v_durata) AND c.ora_sfarsit >= ADDTIME(ora_start, v_durata))  -- Suprapunere la sfârșitul intervalului
          );

        -- Dacă există deja o activitate, generăm o eroare
        IF v_numar_suprapuneri > 0 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Profesorul are deja o activitate în acest interval orar!';
        END IF;

        -- Dacă nu există suprapunere, continuăm cu inserarea activității în calendar
        INSERT INTO calendar (disciplina_id, profesor_id, activitate_id, tip_activitate, zi, ora_inceput, ora_sfarsit, data_activitate, nr_maxim_studenti)
        VALUES (
            v_disciplina_id,
            profesor_id,
            v_activitate_id,
            tip_activitate,  -- Adăugăm tipul activității
            zi,
            ora_start,
            v_ora_finala,
            v_data_curenta,
            v_nr_max_participanti
        );

        -- Avansăm la următoarea dată, în funcție de frecvență
        IF v_frecventa = 'saptamanal' THEN
            SET v_data_curenta = DATE_ADD(v_data_curenta, INTERVAL 1 WEEK);
        ELSEIF v_frecventa = 'la 2 saptamani' THEN
            SET v_data_curenta = DATE_ADD(v_data_curenta, INTERVAL 2 WEEK);
        END IF;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `programare_examen_colocviu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `programare_examen_colocviu`(
    IN profesor_id INT,
    IN nume_disciplina VARCHAR(255),
    IN tip_activitate ENUM('examen', 'colocviu'),  -- ENUM pentru tipul de activitate
    IN data_activitate DATE,  -- Data activității
    IN ora_start TIME,        -- Ora de început
    IN durata TIME            -- Durata activității în format HH:MM:SS
)
BEGIN
    DECLARE v_activitate_id INT;
    DECLARE v_disciplina_id INT;
    DECLARE v_nr_max_participanti INT;
    DECLARE v_ora_finala TIME;
    DECLARE v_numar_suprapuneri INT;
    DECLARE v_zi_saptamana VARCHAR(10);

    -- Verificăm dacă tipul de activitate este valid
    IF tip_activitate NOT IN ('examen', 'colocviu') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Tipul de activitate trebuie să fie "examen" sau "colocviu"!';
    END IF;

    -- Verificăm dacă profesorul este asociat cu disciplina
    SELECT COUNT(*)
    INTO v_numar_suprapuneri
    FROM activitati_discipline ad
    JOIN discipline d ON ad.disciplina_id = d.disciplina_id
    WHERE d.nume_disciplina = nume_disciplina
      AND ad.profesor_id = profesor_id;

    IF v_numar_suprapuneri = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Profesorul nu este asociat cu disciplina specificată!';
    END IF;

    -- Verificăm dacă profesorul predă cursul pentru "examen" sau laboratorul pentru "colocviu"
    SELECT ad.activitate_id, ad.nr_max_participanti
    INTO v_activitate_id, v_nr_max_participanti
    FROM activitati_discipline ad
    JOIN discipline d ON ad.disciplina_id = d.disciplina_id
    WHERE d.nume_disciplina = nume_disciplina
      AND ad.tip_activitate = CASE
                                WHEN tip_activitate = 'examen' THEN 'curs'
                                WHEN tip_activitate = 'colocviu' THEN 'laborator'
                              END
      AND ad.profesor_id = profesor_id;

    -- Dacă profesorul nu predă activitatea corespunzătoare, generăm o eroare
    IF v_activitate_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Profesorul nu predă activitatea corespunzătoare la disciplina respectivă!';
    END IF;

    -- Preluăm disciplina_id pe baza activității
    SELECT disciplina_id
    INTO v_disciplina_id
    FROM activitati_discipline
    WHERE activitate_id = v_activitate_id;

    -- Verificăm dacă disciplina există
    IF v_disciplina_id IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Disciplina nu a fost găsită!';
    END IF;

    -- Calculăm ora finală prin adăugarea duratei la ora de început
    SET v_ora_finala = ADDTIME(ora_start, durata);

    -- Determinăm ziua săptămânii în limba română
    SET v_zi_saptamana = CASE DAYOFWEEK(data_activitate)
                            WHEN 1 THEN 'Duminica'
                            WHEN 2 THEN 'Luni'
                            WHEN 3 THEN 'Marti'
                            WHEN 4 THEN 'Miercuri'
                            WHEN 5 THEN 'Joi'
                            WHEN 6 THEN 'Vineri'
                            WHEN 7 THEN 'Sambata'
                            ELSE NULL
                         END;

    -- Verificăm dacă ziua este validă
    IF v_zi_saptamana IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data activității este invalidă!';
    END IF;

    -- Verificăm dacă profesorul are deja o activitate în intervalul orar dorit
    SELECT COUNT(*) INTO v_numar_suprapuneri
    FROM calendar c
    WHERE c.profesor_id = profesor_id
      AND c.data_activitate = data_activitate
      AND (
          (c.ora_inceput <= ora_start AND c.ora_sfarsit > ora_start)  -- Suprapunere la începutul intervalului
          OR
          (c.ora_inceput < v_ora_finala AND c.ora_sfarsit >= v_ora_finala)  -- Suprapunere la sfârșitul intervalului
      );

    -- Dacă există deja o activitate, generăm o eroare
    IF v_numar_suprapuneri > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Profesorul are deja o activitate în acest interval orar!';
    END IF;

    -- Dacă nu există suprapunere, continuăm cu inserarea activității în calendar
    INSERT INTO calendar (
        disciplina_id,
        profesor_id,
        activitate_id,
        tip_activitate,
        zi,
        ora_inceput,
        ora_sfarsit,
        data_activitate,
        nr_maxim_studenti
    )
    VALUES (
        v_disciplina_id,
        profesor_id,
        v_activitate_id,
        tip_activitate,
        v_zi_saptamana,
        ora_start,
        v_ora_finala,
        data_activitate,
        v_nr_max_participanti
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sugereaza_activitate_grup` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sugereaza_activitate_grup`(
    IN student_id_in INT
)
BEGIN
    DECLARE activitate_id_var INT;
    DECLARE grupa_id_var INT;
    DECLARE descriere_var TEXT;
    DECLARE data_activitate_var DATE;
    DECLARE ora_var TIME;
    DECLARE durata_var TIME;
    DECLARE done_var INT DEFAULT 0;

    -- Cursor pentru activitățile eligibile
    DECLARE cursor_activitati CURSOR FOR
        SELECT ags.activitate_id, ags.grupa_id, ags.descriere, ags.data_activitate, ags.ora, ags.durata
        FROM activitati_grupe_de_studiu ags
        INNER JOIN membrii_grupe_de_studiu mgs ON ags.grupa_id = mgs.grupa_id
        LEFT JOIN inscrieri_activitati_grupe_studiu iags ON ags.activitate_id = iags.activitate_id AND iags.student_id = student_id_in
        WHERE mgs.student_id = student_id_in
          AND iags.id IS NULL
          AND ags.data_activitate >= CURDATE()
        ORDER BY ags.data_activitate ASC, ags.ora ASC;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done_var = 1;

    -- Inițializare cursor
    OPEN cursor_activitati;
    activitate_loop: LOOP
        FETCH cursor_activitati INTO activitate_id_var, grupa_id_var, descriere_var, data_activitate_var, ora_var, durata_var;

        IF done_var THEN
            LEAVE activitate_loop;
        END IF;

        -- Afișează sugestia
        SELECT CONCAT(
            'Sugestie activitate: ', descriere_var,
            ' (Grupa ID: ', grupa_id_var,
            ', Data: ', DATE_FORMAT(data_activitate_var, '%Y-%m-%d'),
            ', Ora: ', TIME_FORMAT(ora_var, '%H:%i'),
            ', Durata: ', TIME_FORMAT(durata_var, '%H:%i'), ')'
        ) AS sugestie;

        -- Încheie bucla după prima sugestie găsită
        LEAVE activitate_loop;
    END LOOP;

    CLOSE cursor_activitati;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sugesti_de_participanti` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sugesti_de_participanti`(
    IN p_grup_id INT,             -- ID-ul grupului de studiu
    IN p_student_initiator_id INT -- ID-ul studentului care inițiază activitatea
)
BEGIN
    -- Verificăm dacă grupul există
    IF NOT EXISTS (
        SELECT 1
        FROM membrii_grupe_de_studiu
        WHERE grupa_id = p_grup_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Grupul specificat nu a fost găsit.';
    END IF;

    -- Selectăm aleatoriu 4 studenți din grupul de studiu, excluzând inițiatorul activității
    SELECT u.user_id, u.nume, u.prenume
    FROM membrii_grupe_de_studiu mg
    INNER JOIN utilizatori u ON mg.student_id = u.user_id
    WHERE mg.grupa_id = p_grup_id
      AND u.user_id != p_student_initiator_id
    ORDER BY RAND()
    LIMIT 4;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vizualizare_activitati_profesor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vizualizare_activitati_profesor`(
    IN profesor_id INT,
    IN data_aleasa DATE
)
BEGIN
    DECLARE v_activitate_id INT;
    DECLARE v_disciplina_id INT;
    DECLARE v_tip_activitate ENUM('curs', 'laborator', 'seminar', 'examen', 'colocviu');
    DECLARE v_ora_inceput TIME;
    DECLARE v_ora_sfarsit TIME;
    DECLARE v_nume_disciplina VARCHAR(255);
    DECLARE v_data_activitate DATE;
    DECLARE finished INT DEFAULT 0;  -- Variabila de stare pentru cursor

    -- Declaram cursorul pentru a selecta activitățile profesorului pentru data aleasă
    DECLARE activitati_cursor CURSOR FOR
        SELECT c.activitate_id, c.disciplina_id, c.tip_activitate, c.ora_inceput, c.ora_sfarsit, d.nume_disciplina, c.data_activitate
        FROM calendar c
        JOIN discipline d ON c.disciplina_id = d.disciplina_id
        WHERE c.profesor_id = profesor_id
        AND data_aleasa>= CURDATE()
        AND c.data_activitate = data_aleasa;  -- Filtrăm activitățile viitoare sau de la data curentă

    -- Handler pentru cazul când cursorul nu mai găsește date
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

    -- Tabel temporar pentru a stoca activitățile
    CREATE TEMPORARY TABLE activitati_temp (
        nume_disciplina VARCHAR(255),
        tip_activitate ENUM('curs', 'laborator', 'seminar', 'examen', 'colocviu'),
        data_activitate DATE,
        ora_inceput TIME,
        ora_sfarsit TIME
    );

    -- Deschidem cursorul pentru a parcurge activitățile
    OPEN activitati_cursor;

    -- Bucla pentru a parcurge activitățile
    read_loop: LOOP
        -- Fetch datele din cursor
        FETCH activitati_cursor INTO v_activitate_id, v_disciplina_id, v_tip_activitate, v_ora_inceput, v_ora_sfarsit, v_nume_disciplina, v_data_activitate;

        -- Dacă nu mai sunt activități de procesat, ieșim din buclă
        IF finished THEN
            LEAVE read_loop;
        END IF;

        -- Inserăm activitatea în tabelul temporar
        INSERT INTO activitati_temp (nume_disciplina, tip_activitate, data_activitate, ora_inceput, ora_sfarsit)
        VALUES (v_nume_disciplina, v_tip_activitate, v_data_activitate, v_ora_inceput, v_ora_sfarsit);
    END LOOP;

    -- Închidem cursorul
    CLOSE activitati_cursor;

    -- Afișăm toate activitățile din tabelul temporar
    SELECT * FROM activitati_temp;

    -- Ștergem tabelul temporar
    DROP TEMPORARY TABLE IF EXISTS activitati_temp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vizualizare_activitati_student` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vizualizare_activitati_student`(
    IN student_id INT,
    IN data_aleasa DATE
)
BEGIN
    DECLARE v_activitate_id INT;
    DECLARE v_disciplina_id INT;
    DECLARE v_tip_activitate ENUM('curs', 'laborator', 'seminar', 'examen', 'colocviu');
    DECLARE v_ora_inceput TIME;
    DECLARE v_ora_sfarsit TIME;
    DECLARE v_nume_disciplina VARCHAR(255);
    DECLARE v_data_activitate DATE;
    DECLARE finished INT DEFAULT 0;  -- Variabila de stare pentru cursor

    -- Declaram cursorul pentru a selecta activitățile pentru data aleasă
    DECLARE activitati_cursor CURSOR FOR
        SELECT c.activitate_id, c.disciplina_id, c.tip_activitate, c.ora_inceput, c.ora_sfarsit, d.nume_disciplina, c.data_activitate
        FROM calendar c
        JOIN discipline d ON c.disciplina_id = d.disciplina_id
        JOIN activitati_discipline ag ON c.activitate_id = ag.activitate_id
        WHERE c.data_activitate = data_aleasa
        and data_aleasa>CURDATE()
        AND EXISTS (
            SELECT 1
            FROM inscrieri isg
            WHERE isg.student_id = student_id
            AND isg.activitate_id = ag.activitate_id
        );

    -- Handler pentru cazul când cursorul nu mai găsește date
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;

    -- Deschidem cursorul pentru a parcurge activitățile
    OPEN activitati_cursor;

    -- Bucla pentru a parcurge activitățile
    read_loop: LOOP
        -- Fetch datele din cursor
        FETCH activitati_cursor INTO v_activitate_id, v_disciplina_id, v_tip_activitate, v_ora_inceput, v_ora_sfarsit, v_nume_disciplina, v_data_activitate;

        -- Dacă nu mai sunt activități de procesat, ieșim din buclă
        IF finished THEN
            LEAVE read_loop;
        END IF;

        -- Afișăm informațiile despre activitate
        SELECT v_nume_disciplina, v_tip_activitate, v_data_activitate, v_ora_inceput, v_ora_sfarsit;
    END LOOP;

    -- Închidem cursorul
    CLOSE activitati_cursor;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vizualizare_grupe_student` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vizualizare_grupe_student`(
    IN p_id_student INT -- ID-ul studentului
)
BEGIN
    -- Selectăm toate grupele la care este înscris studentul
    SELECT g.nume_grupa, d.nume_disciplina
    FROM membrii_grupe_de_studiu mg
    INNER JOIN grupe_de_studiu g ON mg.grupa_id = g.grupa_id
    INNER JOIN discipline d ON g.disciplina_id = d.disciplina_id
    WHERE mg.student_id = p_id_student;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vizualizare_membri_grupa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vizualizare_membri_grupa`(
    IN p_id_student INT,         -- ID-ul studentului
    IN p_denumire_disciplina VARCHAR(255) -- Numele grupei de studiu
)
BEGIN
    DECLARE v_grupa_id INT;

    -- Căutăm ID-ul grupei pe baza numelui grupei
    SELECT grupa_id
    INTO v_grupa_id
     FROM grupe_de_studiu g
    INNER JOIN discipline d ON g.disciplina_id=d.disciplina_id
    WHERE d.nume_disciplina = p_denumire_disciplina
    LIMIT 1;

    -- Verificăm dacă grupa a fost găsită
    IF v_grupa_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Grupa specificată nu a fost găsită.';
    END IF;

    -- Verificăm dacă studentul face parte din grupa respectivă
    IF NOT EXISTS (
        SELECT 1
        FROM membrii_grupe_de_studiu
        WHERE student_id = p_id_student AND grupa_id = v_grupa_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Studentul nu face parte din grupa specificată.';
    END IF;

    -- Selectăm toți ceilalți membri ai grupei (excluzând studentul curent)
    SELECT u.nume, u.prenume
    FROM utilizatori u
    INNER JOIN membrii_grupe_de_studiu mg ON u.user_id = mg.student_id
    WHERE mg.grupa_id = v_grupa_id
      AND u.user_id != p_id_student;  -- Excluzăm studentul curent

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `vizualizare_mesaje_student_grup_studiu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vizualizare_mesaje_student_grup_studiu`(
    IN p_student_id INT,            -- ID-ul studentului
    IN p_nume_disciplina VARCHAR(100)  -- Numele disciplinei
)
BEGIN
    DECLARE v_disciplina_id INT;
    DECLARE v_grupa_id INT;

    -- Căutăm ID-ul disciplinei după numele acesteia
    SELECT disciplina_id INTO v_disciplina_id
    FROM discipline
    WHERE nume_disciplina = p_nume_disciplina
    LIMIT 1;

    -- Dacă nu găsim disciplina, semnalăm eroare
    IF v_disciplina_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Disciplina nu a fost găsită';
    END IF;

    -- Căutăm ID-ul grupului de studiu asociat disciplinei
    SELECT grupa_id INTO v_grupa_id
    FROM grupe_de_studiu
    WHERE disciplina_id = v_disciplina_id
    LIMIT 1;

    -- Dacă nu există un grup de studiu pentru disciplina respectivă, semnalăm eroare
    IF v_grupa_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Nu există grup de studiu pentru această disciplină';
    END IF;

    -- Verificăm dacă studentul este membru al grupului de studiu
    IF NOT EXISTS (
        SELECT 1
        FROM membrii_grupe_de_studiu
        WHERE grupa_id = v_grupa_id AND student_id = p_student_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Studentul nu este membru al grupului de studiu';
    END IF;

    -- Afișăm mesajele asociate grupului de studiu
    SELECT m.id AS mesaj_id,
           m.student_id,
           CONCAT(u.nume, ' ', u.prenume) AS student_nume_complet,  -- Numele complet al studentului
           m.continut,
           m.data_trimitere,
           m.ora_trimitere
    FROM mesaje m
    INNER JOIN utilizatori u ON m.student_id = u.user_id  -- JOIN cu tabelul utilizatori
    WHERE m.grupa_id = v_grupa_id
    ORDER BY m.data_trimitere ASC, m.ora_trimitere ASC;  -- Ordine după dată și oră

END ;;
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

-- Dump completed on 2025-01-11 20:19:04
