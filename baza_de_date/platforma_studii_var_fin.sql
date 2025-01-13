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
INSERT INTO `activitati_discipline` (`activitate_id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `durata`, `numar_studenti`, `nr_max_participanti`, `frecventa`) VALUES (1,4,7,'curs','02:00:00',41,200,'saptamanal'),(2,5,7,'seminar','02:00:00',41,20,'la 2 saptamani'),(3,1,8,'curs','02:00:00',35,200,'saptamanal'),(4,2,8,'seminar','02:00:00',40,20,'saptamanal'),(5,4,9,'curs','02:00:00',0,200,'saptamanal'),(6,5,9,'laborator','02:00:00',33,20,'saptamanal'),(7,6,10,'curs','02:00:00',41,200,'saptamanal'),(8,6,10,'laborator','02:00:00',0,10,'la 2 saptamani'),(9,7,11,'curs','02:00:00',35,200,'saptamanal'),(10,8,11,'seminar','02:00:00',2,20,'saptamanal'),(11,6,12,'laborator','02:00:00',0,10,'la 2 saptamani'),(12,4,13,'curs','02:00:00',0,200,'saptamanal'),(13,5,13,'seminar','02:00:00',0,20,'la 2 saptamani'),(14,1,14,'curs','02:00:00',0,200,'saptamanal'),(15,2,14,'curs','02:00:00',41,200,'saptamanal'),(16,1,15,'seminar','02:00:00',11,20,'saptamanal'),(17,3,16,'curs','02:00:00',41,200,'saptamanal'),(18,2,16,'seminar','02:00:00',1,20,'saptamanal'),(19,6,17,'curs','02:00:00',0,200,'saptamanal'),(20,4,18,'curs','02:00:00',0,200,'saptamanal'),(21,5,18,'seminar','02:00:00',0,20,'la 2 saptamani'),(22,9,19,'seminar','02:00:00',0,20,'saptamanal'),(23,8,19,'curs','02:00:00',2,200,'saptamanal'),(24,3,20,'seminar','02:00:00',0,20,'saptamanal'),(25,6,21,'laborator','02:00:00',0,10,'la 2 saptamani'),(26,2,22,'seminar','02:00:00',0,20,'saptamanal'),(27,4,23,'laborator','02:00:00',30,20,'saptamanal'),(28,6,24,'curs','02:00:00',0,200,'saptamanal'),(29,6,25,'curs','02:00:00',0,200,'saptamanal'),(30,4,26,'curs','02:00:00',0,200,'saptamanal'),(31,1,27,'seminar','02:00:00',1,20,'saptamanal'),(32,5,28,'curs','02:00:00',41,200,'saptamanal'),(33,4,29,'laborator','02:00:00',11,20,'saptamanal'),(34,2,30,'seminar','02:00:00',0,20,'saptamanal'),(35,5,31,'seminar','02:00:00',0,20,'la 2 saptamani'),(36,9,32,'curs','02:00:00',5,200,'saptamanal'),(37,3,33,'seminar','02:00:00',0,20,'saptamanal'),(38,7,34,'seminar','02:00:00',35,20,'saptamanal'),(39,9,34,'seminar','02:00:00',5,20,'saptamanal'),(40,4,35,'laborator','02:00:00',0,20,'saptamanal');
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
INSERT INTO `activitati_grupe_de_studiu` (`activitate_id`, `grupa_id`, `descriere`, `data_activitate`, `data_postare`, `timp_postare`, `timp_expirare`, `ora`, `durata`, `min_participanti`, `profesor_id`, `nr_inscrieri`) VALUES (1,6,'Activitate de studiu pentru Fizica','2025-04-28','2025-01-13','19:42:34','01:00:00','10:00:00','02:00:00',5,NULL,8),(2,7,'Activitate de studiu pentru Engleza','2025-04-30','2025-01-13','19:42:35','01:00:00','12:00:00','02:00:00',5,NULL,2),(4,7,'Pregatire examen Engleza','2025-01-17','2025-01-13','19:42:35','01:00:00','16:00:00','02:00:00',5,NULL,6);
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
INSERT INTO `adrese` (`adresa_id`, `tara`, `judet`, `localitate`, `strada`, `numar`) VALUES (1,'Romania','Bucuresti','Sector 1','Calea Victoriei',12),(2,'Romania','Cluj','Cluj-Napoca','Strada Memorandumului',8),(3,'Romania','Timis','Timisoara','Bulevardul Revolutiei',5),(4,'Romania','Brasov','Brasov','Strada Muresenilor',25),(5,'Romania','Iasi','Iasi','Strada Lapusneanu',34),(6,'Romania','Constanta','Constanta','Bulevardul Tomis',10),(7,'Romania','Prahova','Ploiesti','Bulevardul Independentei',7),(8,'Romania','Sibiu','Sibiu','Strada Nicolae Balcescu',15),(9,'Romania','Arad','Arad','Strada Mihai Eminescu',9),(10,'Romania','Bihor','Oradea','Strada Republicii',18),(11,'Romania','Buzau','Buzau','Strada Mare',3),(12,'Romania','Bacau','Bacau','Strada George Bacovia',21),(13,'Romania','Hunedoara','Deva','Bulevardul Decebal',6),(14,'Romania','Maramures','Baia Mare','Strada Gheorghe Sincai',11),(15,'Romania','Neamt','Piatra Neamt','Strada Stefan cel Mare',16),(16,'Romania','Galati','Galati','Strada Domneasca',13),(17,'Romania','Suceava','Suceava','Strada Stefan cel Mare',22),(18,'Romania','Valcea','Ramnicu Valcea','Strada Tudor Vladimirescu',20),(19,'Romania','Dolj','Craiova','Bulevardul Carol I',27),(20,'Romania','Harghita','Miercurea Ciuc','Strada Marton Aron',14),(21,'Romania','Covasna','Sfantu Gheorghe','Strada Mihai Viteazul',29),(22,'Romania','Salaj','Zalau','Bulevardul Mihai Viteazul',4),(23,'Romania','Ilfov','Otopeni','Strada Primaverii',1),(24,'Romania','Caras-Severin','Resita','Strada Castanilor',23),(25,'Romania','Giurgiu','Giurgiu','Bulevardul Bucuresti',17),(26,'Romania','Dambovita','Targoviste','Strada Calea Domneasca',28),(27,'Romania','Tulcea','Tulcea','Strada Pacii',19),(28,'Romania','Olt','Slatina','Strada Ecaterina Teodoroiu',24),(29,'Romania','Teleorman','Alexandria','Bulevardul Libertatii',26),(30,'Romania','Vaslui','Vaslui','Strada Stefan cel Mare',30),(31,'Romania','Bucuresti','Sector 2','Strada Mosilor',40),(32,'Romania','Bucuresti','Sector 3','Calea Calarasilor',18),(33,'Romania','Cluj','Turda','Strada Principala',5),(34,'Romania','Timis','Lugoj','Bulevardul Timisoara',11),(35,'Romania','Arad','Ineu','Strada Libertatii',9),(36,'Romania','Hunedoara','Hunedoara','Strada Castelului',7),(37,'Romania','Bihor','Beius','Strada Eroilor',6),(38,'Romania','Brasov','Fagaras','Strada Republicii',22),(39,'Romania','Prahova','Campina','Strada Mihai Eminescu',3),(40,'Romania','Iasi','Pascani','Strada Stefan cel Mare',8),(41,'Romania','Constanta','Mangalia','Strada Marii',15),(42,'Romania','Sibiu','Medias','Strada Nicolae Iorga',21),(43,'Romania','Buzau','Ramnicu Sarat','Strada Independentei',12),(44,'Romania','Dolj','Calafat','Strada Tudor Vladimirescu',4),(45,'Romania','Valcea','Dragasani','Strada Regele Carol',13),(46,'Romania','Teleorman','Turnu Magurele','Strada Mihai Eminescu',19),(47,'Romania','Galati','Tecuci','Strada Stefan cel Mare',5),(48,'Romania','Tulcea','Macin','Strada Libertatii',3),(49,'Romania','Olt','Corabia','Strada Dunarii',9),(50,'Romania','Suceava','Radauti','Strada Mihai Eminescu',17),(51,'Romania','Neamt','Targu Neamt','Strada Stefan cel Mare',25),(52,'Romania','Giurgiu','Bolintin Vale','Strada Bucuresti',8),(53,'Romania','Bacau','Onesti','Strada George Bacovia',6),(54,'Romania','Harghita','Gheorgheni','Strada Lacu Rosu',30),(55,'Romania','Covasna','Targu Secuiesc','Strada Libertatii',12),(56,'Romania','Salaj','Simleu Silvaniei','Strada Mihai Viteazul',4),(57,'Romania','Ilfov','Bragadiru','Strada Independentei',9),(58,'Romania','Caras-Severin','Caransebes','Strada 1 Decembrie',20),(59,'Romania','Dambovita','Moren','Strada Mihai Eminescu',14),(60,'Romania','Bihor','Salonta','Strada Republicii',10),(61,'Romania','Brasov','Rasnov','Strada Cetatii',6),(62,'Romania','Cluj','Gherla','Strada Avram Iancu',17),(63,'Romania','Maramures','Borsa','Strada Victoriei',8),(64,'Romania','Arad','Sebis','Strada Mihai Viteazul',11),(65,'Romania','Timis','Sannicolau Mare','Strada Libertatii',9),(66,'Romania','Prahova','Breaza','Strada Republicii',7),(67,'Romania','Hunedoara','Orastie','Strada Unirii',22),(68,'Romania','Bucuresti','Sector 4','Calea Vacaresti',45),(69,'Romania','Iasi','Targu Frumos','Strada Stefan cel Mare',3),(70,'Romania','Dolj','Filiasi','Strada Olteniei',18),(71,'Romania','Tulcea','Isaccea','Strada Pacii',6),(72,'Romania','Valcea','Calimanesti','Strada Oltului',12),(73,'Romania','Sibiu','Cisnadie','Strada Mihai Viteazul',10),(74,'Romania','Suceava','Vatra Dornei','Strada Eroilor',24),(75,'Romania','Neamt','Roznov','Strada Mihai Eminescu',4),(76,'Romania','Constanta','Eforie','Strada Marii',14),(77,'Romania','Bacau','Targu Ocna','Strada 1 Decembrie',19),(78,'Romania','Giurgiu','Mihailesti','Strada Dunarii',21),(79,'Romania','Bucuresti','Sector 5','Strada Pandurilor',25),(80,'Romania','Bucuresti','Sector 6','Bulevardul Iuliu Maniu',90),(81,'Romania','Arad','Chisineu Cris','Strada Libertatii',33),(82,'Romania','Timis','Jimbolia','Strada Mare',12),(83,'Romania','Maramures','Baia Mare','Strada Victoriei',8),(84,'Romania','Cluj','Huedin','Strada Mihai Eminescu',19),(85,'Romania','Bihor','Marghita','Strada Republicii',7),(86,'Romania','Brasov','Codlea','Strada Principala',15),(87,'Romania','Prahova','Baicoi','Strada Garii',10),(88,'Romania','Iasi','Harlau','Strada Stefan cel Mare',4),(89,'Romania','Dolj','Segarcea','Strada Mihai Viteazul',13),(90,'Romania','Constanta','Navodari','Strada Pescarilor',27),(91,'Romania','Sibiu','Agnita','Strada Garii',6),(92,'Romania','Galati','Targu Bujor','Strada Victoriei',5),(93,'Romania','Tulcea','Babadag','Strada Libertatii',9),(94,'Romania','Bacau','Comanesti','Strada Minerilor',3),(95,'Romania','Vaslui','Barlad','Strada Republicii',22),(96,'Romania','Buzau','Pogoanele','Strada Independentei',11),(97,'Romania','Suceava','Cajvana','Strada Unirii',14),(98,'Romania','Neamt','Roman','Strada Stefan cel Mare',23),(99,'Romania','Ilfov','Voluntari','Strada Eroilor',17),(100,'Romania','Giurgiu','Ogrezeni','Strada Mihai Viteazul',12),(101,'Romania','Harghita','Toplita','Strada Principala',21),(102,'Romania','Covasna','Sfantu Gheorghe','Strada Mihai Eminescu',7),(103,'Romania','Valcea','Brezoi','Strada Oltului',15),(104,'Romania','Hunedoara','Petrosani','Strada Minerilor',13),(105,'Romania','Caras-Severin','Resita','Strada Principala',19),(106,'Romania','Dambovita','Gaesti','Strada Unirii',5),(107,'Romania','Arad','Santana','Strada Republicii',8),(108,'Romania','Brasov','Zarnesti','Strada Mihai Viteazul',10),(109,'Romania','Cluj','Campia Turzii','Strada Victoriei',18),(110,'Romania','Timis','Buzias','Strada Independentei',6),(111,'Romania','Maramures','Targu Lapus','Strada Garii',14),(112,'Romania','Bihor','Alesd','Strada Mihai Eminescu',22),(113,'Romania','Prahova','Slanic','Strada Republicii',9),(114,'Romania','Iasi','Raducaneni','Strada Stefan cel Mare',16),(115,'Romania','Dolj','Bailesti','Strada Unirii',30),(116,'Romania','Constanta','Medgidia','Strada Dunarii',4),(117,'Romania','Tulcea','Sulina','Strada Libertatii',20),(118,'Romania','Sibiu','Saliste','Strada Garii',3),(119,'Romania','Bacau','Darmanesti','Strada Minerilor',12),(120,'Romania','Suceava','Gura Humorului','Strada Republicii',27),(121,'Romania','Neamt','Bicaz','Strada Oltului',11),(122,'Romania','Vaslui','Husi','Strada Stefan cel Mare',8),(123,'Romania','Ilfov','Otopeni','Strada Garii',5),(124,'Romania','Galati','Pechea','Strada Victoriei',19),(125,'Romania','Buzau','Nehoiu','Strada Mihai Viteazul',9),(126,'Romania','Valcea','Calimanesti','Strada Dunarii',6),(127,'Romania','Brasov','Fagaras','Strada Independentei',4),(128,'Romania','Prahova','Busteni','Strada Libertatii',18),(129,'Romania','Arad','Curtici','Strada Garii',9),(130,'Romania','Timis','Faget','Strada Mihai Viteazul',14),(131,'Romania','Cluj','Apahida','Strada Principala',7),(132,'Romania','Maramures','Seini','Strada Mihai Eminescu',5),(133,'Romania','Hunedoara','Brad','Strada Libertatii',12),(134,'Romania','Bihor','Stei','Strada Republicii',20),(135,'Romania','Dolj','Filiasi','Strada Unirii',25),(136,'Romania','Suceava','Vicovu de Sus','Strada Stefan cel Mare',13),(137,'Romania','Tulcea','Nufaru','Strada Dunarii',10),(138,'Romania','Iasi','Podu Iloaiei','Strada Victoriei',3),(139,'Romania','Brasov','Predeal','Strada Independentei',15),(140,'Romania','Galati','Matca','Strada Republicii',17),(141,'Romania','Vaslui','Murgeni','Strada Mihai Viteazul',8),(142,'Romania','Harghita','Borsec','Strada Minerilor',9),(143,'Romania','Bacau','Slanic Moldova','Strada Oltului',2),(144,'Romania','Ilfov','Buftea','Strada Principala',11),(145,'Romania','Caras-Severin','Moldova Noua','Strada Mihai Eminescu',16),(146,'Romania','Buzau','Patarlagele','Strada Republicii',4),(147,'Romania','Sibiu','Copsa Mica','Strada Victoriei',7),(148,'Romania','Hunedoara','Hateg','Strada Unirii',22),(149,'Romania','Dambovita','Titu','Strada Independentei',14),(150,'Romania','Bihor','Valea lui Mihai','Strada Republicii',5),(151,'Romania','Brasov','Sacele','Strada Mihai Eminescu',12),(152,'Romania','Cluj','Floresti','Strada Principala',9),(153,'Romania','Timis','Recas','Strada Libertatii',18),(154,'Romania','Maramures','Cavnic','Strada Dunarii',20),(155,'Romania','Arad','Pecica','Strada Victoriei',3),(156,'Romania','Constanta','Ovidiu','Strada Mihai Viteazul',7),(157,'Romania','Dolj','Craiova','Strada Stefan cel Mare',11),(158,'Romania','Prahova','Ploiesti','Strada Garii',4),(159,'Romania','Bacau','Buhusi','Strada Minerilor',6),(160,'Romania','Galati','Tandarei','Strada Principala',17),(161,'Romania','Iasi','Iasi','Strada Mihai Eminescu',19),(162,'Romania','Tulcea','Chilia Veche','Strada Dunarii',9),(163,'Romania','Ilfov','Magurele','Strada Libertatii',5),(164,'Romania','Sibiu','Talmaciu','Strada Victoriei',20),(165,'Romania','Dambovita','Pucioasa','Strada Independentei',3),(166,'Romania','Buzau','Berca','Strada Principala',6),(167,'Romania','Suceava','Solca','Strada Mihai Viteazul',22),(168,'Romania','Bihor','Santandrei','Strada Republicii',19),(169,'Romania','Cluj','Dej','Strada Libertatii',18),(170,'Romania','Timis','Ciacova','Strada Mihai Eminescu',3),(171,'Romania','Arad','Ineu','Strada Dunarii',15),(172,'Romania','Hunedoara','Geoagiu','Strada Victoriei',4),(173,'Romania','Maramures','Baia Sprie','Strada Libertatii',13),(174,'Romania','Prahova','Campina','Strada Mihai Eminescu',23),(175,'Romania','Arad','Lipova','Strada Libertatii',11),(176,'Romania','Timis','Sannicolau Mare','Strada Mihai Viteazul',8),(177,'Romania','Cluj','Gherla','Strada Principala',17),(178,'Romania','Maramures','Sighetu Marmatiei','Strada Republicii',7),(179,'Romania','Hunedoara','Orastie','Strada Unirii',14),(180,'Romania','Bihor','Beius','Strada Garii',13),(181,'Romania','Dolj','Calarasi','Strada Dunarii',25),(182,'Romania','Suceava','Radauti','Strada Stefan cel Mare',21),(183,'Romania','Tulcea','Isaccea','Strada Victoriei',5),(184,'Romania','Iasi','Targu Frumos','Strada Independentei',10),(185,'Romania','Brasov','Rasnov','Strada Republicii',12),(186,'Romania','Galati','Tecuci','Strada Mihai Eminescu',6),(187,'Romania','Vaslui','Negresti','Strada Libertatii',8),(188,'Romania','Harghita','Odorheiu Secuiesc','Strada Principala',19),(189,'Romania','Bacau','Onesti','Strada Minerilor',9),(190,'Romania','Ilfov','Chitila','Strada Unirii',7),(191,'Romania','Caras-Severin','Caransebes','Strada Mihai Eminescu',20),(192,'Romania','Buzau','Ramnicu Sarat','Strada Garii',16),(193,'Romania','Sibiu','Medias','Strada Republicii',11),(194,'Romania','Hunedoara','Vulcan','Strada Independentei',4),(195,'Romania','Dambovita','Fieni','Strada Victoriei',14),(196,'Romania','Bihor','Salonta','Strada Mihai Eminescu',18),(197,'Romania','Brasov','Victoria','Strada Principala',10),(198,'Romania','Cluj','Turda','Strada Republicii',3),(199,'Romania','Timis','Deta','Strada Mihai Viteazul',7),(200,'Romania','Maramures','Borsa','Strada Libertatii',20),(201,'Romania','Arad','Nadlac','Strada Stefan cel Mare',15),(202,'Romania','Constanta','Eforie Nord','Strada Dunarii',4),(203,'Romania','Dolj','Segarcea','Strada Republicii',22),(204,'Romania','Prahova','Valenii de Munte','Strada Mihai Eminescu',5),(205,'Romania','Bacau','Moinesti','Strada Garii',12),(206,'Romania','Galati','Barlad','Strada Libertatii',17),(207,'Romania','Iasi','Pascani','Strada Principala',9),(208,'Romania','Tulcea','Macin','Strada Victoriei',2),(209,'Romania','Ilfov','Popesti-Leordeni','Strada Stefan cel Mare',21),(210,'Romania','Sibiu','Avrig','Strada Dunarii',11),(211,'Romania','Dambovita','Moreni','Strada Mihai Eminescu',18),(212,'Romania','Buzau','Buzau','Strada Republicii',9),(213,'Romania','Suceava','Campulung Moldovenesc','Strada Libertatii',6),(214,'Romania','Bihor','Alesd','Strada Independentei',13),(215,'Romania','Cluj','Huedin','Strada Minerilor',4),(216,'Romania','Timis','Lugoj','Strada Garii',19),(217,'Romania','Arad','Sebis','Strada Principala',7),(218,'Romania','Hunedoara','Lupeni','Strada Mihai Viteazul',15),(219,'Romania','Maramures','Targu Lapus','Strada Stefan cel Mare',23),(220,'Romania','Constanta','Mangalia','Strada Dunarii',10),(221,'Romania','Dolj','Calafat','Strada Mihai Eminescu',8),(222,'Romania','Prahova','Azuga','Strada Republicii',14),(223,'Romania','Iasi','Harlau','Strada Victoriei',17);
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
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` (`id`, `disciplina_id`, `profesor_id`, `tip_activitate`, `ora_inceput`, `ora_sfarsit`, `nr_maxim_studenti`, `activitate_id`, `zi`, `data_activitate`) VALUES (1,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-10-01'),(2,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-10-08'),(3,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-10-15'),(4,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-10-22'),(5,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-10-29'),(6,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-11-05'),(7,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-11-12'),(8,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-11-19'),(9,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-11-26'),(10,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-12-03'),(11,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-12-10'),(12,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-12-17'),(13,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-12-24'),(14,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2024-12-31'),(15,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2025-01-07'),(16,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2025-01-14'),(17,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2025-01-21'),(18,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2025-01-28'),(19,4,7,'curs','10:00:00','12:00:00',200,1,'Marti','2025-02-04'),(20,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-10-01'),(21,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-10-08'),(22,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-10-15'),(23,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-10-22'),(24,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-10-29'),(25,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-11-05'),(26,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-11-12'),(27,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-11-19'),(28,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-11-26'),(29,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-12-03'),(30,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-12-10'),(31,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-12-17'),(32,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-12-24'),(33,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2024-12-31'),(34,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2025-01-07'),(35,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2025-01-14'),(36,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2025-01-21'),(37,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2025-01-28'),(38,5,28,'curs','08:00:00','10:00:00',200,32,'Marti','2025-02-04'),(39,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-10-01'),(40,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-10-08'),(41,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-10-15'),(42,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-10-22'),(43,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-10-29'),(44,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-11-05'),(45,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-11-12'),(46,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-11-19'),(47,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-11-26'),(48,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-12-03'),(49,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-12-10'),(50,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-12-17'),(51,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-12-24'),(52,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2024-12-31'),(53,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2025-01-07'),(54,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2025-01-14'),(55,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2025-01-21'),(56,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2025-01-28'),(57,2,14,'curs','12:00:00','14:00:00',200,15,'Marti','2025-02-04'),(58,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-10-03'),(59,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-10-10'),(60,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-10-17'),(61,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-10-24'),(62,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-10-31'),(63,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-11-07'),(64,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-11-14'),(65,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-11-21'),(66,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-11-28'),(67,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-12-05'),(68,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-12-12'),(69,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-12-19'),(70,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2024-12-26'),(71,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2025-01-02'),(72,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2025-01-09'),(73,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2025-01-16'),(74,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2025-01-23'),(75,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2025-01-30'),(76,3,16,'curs','08:00:00','10:00:00',200,17,'Joi','2025-02-06'),(77,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-10-03'),(78,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-10-10'),(79,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-10-17'),(80,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-10-24'),(81,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-10-31'),(82,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-11-07'),(83,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-11-14'),(84,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-11-21'),(85,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-11-28'),(86,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-12-05'),(87,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-12-12'),(88,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-12-19'),(89,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2024-12-26'),(90,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2025-01-02'),(91,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2025-01-09'),(92,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2025-01-16'),(93,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2025-01-23'),(94,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2025-01-30'),(95,1,8,'curs','10:00:00','12:00:00',200,3,'Joi','2025-02-06'),(96,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-10-03'),(97,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-10-10'),(98,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-10-17'),(99,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-10-24'),(100,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-10-31'),(101,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-11-07'),(102,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-11-14'),(103,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-11-21'),(104,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-11-28'),(105,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-12-05'),(106,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-12-12'),(107,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-12-19'),(108,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2024-12-26'),(109,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2025-01-02'),(110,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2025-01-09'),(111,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2025-01-16'),(112,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2025-01-23'),(113,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2025-01-30'),(114,6,10,'curs','12:00:00','14:00:00',200,7,'Joi','2025-02-06'),(115,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-09-30'),(116,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-10-07'),(117,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-10-14'),(118,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-10-21'),(119,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-10-28'),(120,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-11-04'),(121,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-11-11'),(122,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-11-18'),(123,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-11-25'),(124,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-12-02'),(125,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-12-09'),(126,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-12-16'),(127,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-12-23'),(128,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2024-12-30'),(129,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2025-01-06'),(130,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2025-01-13'),(131,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2025-01-20'),(132,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2025-01-27'),(133,4,29,'laborator','10:00:00','12:00:00',20,33,'Luni','2025-02-03'),(134,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-09-30'),(135,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-10-07'),(136,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-10-14'),(137,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-10-21'),(138,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-10-28'),(139,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-11-04'),(140,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-11-11'),(141,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-11-18'),(142,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-11-25'),(143,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-12-02'),(144,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-12-09'),(145,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-12-16'),(146,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-12-23'),(147,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2024-12-30'),(148,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2025-01-06'),(149,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2025-01-13'),(150,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2025-01-20'),(151,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2025-01-27'),(152,4,35,'laborator','10:00:00','12:00:00',20,40,'Luni','2025-02-03'),(153,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-09-30'),(154,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-10-07'),(155,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-10-14'),(156,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-10-21'),(157,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-10-28'),(158,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-11-04'),(159,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-11-11'),(160,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-11-18'),(161,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-11-25'),(162,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-12-02'),(163,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-12-09'),(164,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-12-16'),(165,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-12-23'),(166,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2024-12-30'),(167,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2025-01-06'),(168,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2025-01-13'),(169,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2025-01-20'),(170,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2025-01-27'),(171,5,9,'laborator','08:00:00','10:00:00',20,6,'Luni','2025-02-03'),(172,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-09-30'),(173,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-10-07'),(174,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-10-14'),(175,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-10-21'),(176,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-10-28'),(177,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-11-04'),(178,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-11-11'),(179,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-11-18'),(180,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-11-25'),(181,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-12-02'),(182,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-12-09'),(183,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-12-16'),(184,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-12-23'),(185,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2024-12-30'),(186,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2025-01-06'),(187,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2025-01-13'),(188,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2025-01-20'),(189,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2025-01-27'),(190,1,15,'seminar','10:00:00','12:00:00',20,16,'Luni','2025-02-03'),(191,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-10-01'),(192,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-10-15'),(193,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-10-29'),(194,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-11-12'),(195,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-11-26'),(196,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-12-10'),(197,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2024-12-24'),(198,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2025-01-07'),(199,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2025-01-21'),(200,5,7,'seminar','14:00:00','16:00:00',20,2,'Marti','2025-02-04'),(201,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-10-02'),(202,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-10-09'),(203,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-10-16'),(204,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-10-23'),(205,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-10-30'),(206,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-11-06'),(207,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-11-13'),(208,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-11-20'),(209,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-11-27'),(210,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-12-04'),(211,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-12-11'),(212,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-12-18'),(213,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2024-12-25'),(214,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2025-01-01'),(215,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2025-01-08'),(216,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2025-01-15'),(217,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2025-01-22'),(218,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2025-01-29'),(219,1,27,'seminar','14:00:00','16:00:00',20,31,'Miercuri','2025-02-05'),(220,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-10-02'),(221,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-10-09'),(222,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-10-16'),(223,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-10-23'),(224,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-10-30'),(225,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-11-06'),(226,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-11-13'),(227,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-11-20'),(228,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-11-27'),(229,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-12-04'),(230,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-12-11'),(231,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-12-18'),(232,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2024-12-25'),(233,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2025-01-01'),(234,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2025-01-08'),(235,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2025-01-15'),(236,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2025-01-22'),(237,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2025-01-29'),(238,2,8,'seminar','14:00:00','16:00:00',20,4,'Miercuri','2025-02-05'),(239,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-10-02'),(240,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-10-09'),(241,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-10-16'),(242,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-10-23'),(243,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-10-30'),(244,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-11-06'),(245,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-11-13'),(246,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-11-20'),(247,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-11-27'),(248,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-12-04'),(249,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-12-11'),(250,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-12-18'),(251,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2024-12-25'),(252,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2025-01-01'),(253,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2025-01-08'),(254,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2025-01-15'),(255,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2025-01-22'),(256,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2025-01-29'),(257,2,16,'seminar','16:00:00','18:00:00',20,18,'Miercuri','2025-02-05'),(258,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-10-04'),(259,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-10-11'),(260,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-10-18'),(261,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-10-25'),(262,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-11-01'),(263,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-11-08'),(264,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-11-15'),(265,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-11-22'),(266,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-11-29'),(267,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-12-06'),(268,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-12-13'),(269,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-12-20'),(270,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2024-12-27'),(271,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2025-01-03'),(272,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2025-01-10'),(273,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2025-01-17'),(274,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2025-01-24'),(275,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2025-01-31'),(276,8,19,'curs','12:00:00','14:00:00',200,23,'Vineri','2025-02-07'),(277,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-10-03'),(278,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-10-10'),(279,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-10-17'),(280,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-10-24'),(281,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-10-31'),(282,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-11-07'),(283,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-11-14'),(284,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-11-21'),(285,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-11-28'),(286,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-12-05'),(287,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-12-12'),(288,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-12-19'),(289,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2024-12-26'),(290,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2025-01-02'),(291,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2025-01-09'),(292,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2025-01-16'),(293,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2025-01-23'),(294,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2025-01-30'),(295,8,11,'seminar','16:00:00','18:00:00',20,10,'Joi','2025-02-06'),(296,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-10-03'),(297,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-10-10'),(298,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-10-17'),(299,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-10-24'),(300,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-10-31'),(301,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-11-07'),(302,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-11-14'),(303,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-11-21'),(304,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-11-28'),(305,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-12-05'),(306,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-12-12'),(307,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-12-19'),(308,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2024-12-26'),(309,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2025-01-02'),(310,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2025-01-09'),(311,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2025-01-16'),(312,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2025-01-23'),(313,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2025-01-30'),(314,7,11,'curs','14:00:00','16:00:00',200,9,'Joi','2025-02-06'),(315,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-10-03'),(316,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-10-10'),(317,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-10-17'),(318,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-10-24'),(319,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-10-31'),(320,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-11-07'),(321,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-11-14'),(322,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-11-21'),(323,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-11-28'),(324,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-12-05'),(325,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-12-12'),(326,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-12-19'),(327,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2024-12-26'),(328,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2025-01-02'),(329,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2025-01-09'),(330,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2025-01-16'),(331,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2025-01-23'),(332,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2025-01-30'),(333,7,34,'seminar','16:00:00','18:00:00',20,38,'Joi','2025-02-06'),(334,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-09-30'),(335,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-10-07'),(336,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-10-14'),(337,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-10-21'),(338,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-10-28'),(339,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-11-04'),(340,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-11-11'),(341,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-11-18'),(342,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-11-25'),(343,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-12-02'),(344,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-12-09'),(345,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-12-16'),(346,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-12-23'),(347,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2024-12-30'),(348,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2025-01-06'),(349,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2025-01-13'),(350,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2025-01-20'),(351,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2025-01-27'),(352,9,32,'curs','18:00:00','20:00:00',200,36,'Luni','2025-02-03'),(353,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-10-02'),(354,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-10-09'),(355,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-10-16'),(356,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-10-23'),(357,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-10-30'),(358,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-11-06'),(359,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-11-13'),(360,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-11-20'),(361,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-11-27'),(362,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-12-04'),(363,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-12-11'),(364,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-12-18'),(365,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2024-12-25'),(366,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2025-01-01'),(367,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2025-01-08'),(368,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2025-01-15'),(369,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2025-01-22'),(370,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2025-01-29'),(371,9,34,'seminar','10:00:00','12:00:00',20,39,'Miercuri','2025-02-05'),(372,4,23,'colocviu','08:00:00','09:30:00',20,27,'Vineri','2025-01-24'),(373,5,9,'colocviu','10:30:00','12:30:00',20,6,'Sambata','2025-01-25'),(374,5,9,'colocviu','01:30:00','03:30:00',20,6,'Marti','2025-01-14'),(375,1,8,'examen','09:00:00','12:00:00',200,3,'Marti','2025-01-21'),(376,6,10,'examen','14:00:00','16:30:00',200,7,'Miercuri','2025-01-22'),(377,2,14,'examen','12:00:00','13:45:00',200,15,'Joi','2025-01-23'),(378,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-09-30'),(379,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-10-07'),(380,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-10-14'),(381,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-10-21'),(382,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-10-28'),(383,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-11-04'),(384,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-11-11'),(385,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-11-18'),(386,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-11-25'),(387,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-12-02'),(388,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-12-09'),(389,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-12-16'),(390,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-12-23'),(391,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2024-12-30'),(392,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2025-01-06'),(393,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2025-01-13'),(394,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2025-01-20'),(395,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2025-01-27'),(396,1,8,'curs','08:00:00','10:00:00',200,3,'Luni','2025-02-03'),(397,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-09-30'),(398,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-10-07'),(399,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-10-14'),(400,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-10-21'),(401,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-10-28'),(402,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-11-04'),(403,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-11-11'),(404,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-11-18'),(405,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-11-25'),(406,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-12-02'),(407,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-12-09'),(408,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-12-16'),(409,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-12-23'),(410,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2024-12-30'),(411,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2025-01-06'),(412,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2025-01-13'),(413,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2025-01-20'),(414,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2025-01-27'),(415,2,8,'seminar','10:00:00','12:00:00',20,4,'Luni','2025-02-03'),(416,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-09-30'),(417,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-10-07'),(418,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-10-14'),(419,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-10-21'),(420,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-10-28'),(421,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-11-04'),(422,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-11-11'),(423,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-11-18'),(424,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-11-25'),(425,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-12-02'),(426,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-12-09'),(427,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-12-16'),(428,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-12-23'),(429,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2024-12-30'),(430,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2025-01-06'),(431,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2025-01-13'),(432,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2025-01-20'),(433,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2025-01-27'),(434,4,7,'curs','12:00:00','14:00:00',200,1,'Luni','2025-02-03'),(435,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-09-30'),(436,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-10-07'),(437,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-10-14'),(438,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-10-21'),(439,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-10-28'),(440,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-11-04'),(441,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-11-11'),(442,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-11-18'),(443,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-11-25'),(444,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-12-02'),(445,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-12-09'),(446,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-12-16'),(447,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-12-23'),(448,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2024-12-30'),(449,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2025-01-06'),(450,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2025-01-13'),(451,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2025-01-20'),(452,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2025-01-27'),(453,4,23,'laborator','14:00:00','16:00:00',20,27,'Luni','2025-02-03');
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
INSERT INTO `catalog` (`id`, `student_id`, `disciplina_id`, `profesor_id`, `nota_curs`, `nota_laborator`, `nota_seminar`, `nota_finala`) VALUES (1,36,1,8,10,NULL,5,9),(2,36,2,14,10,NULL,10,10),(3,36,3,16,10,NULL,10,10),(4,36,4,7,7,2,8,6),(5,36,5,28,4,10,4,5),(6,36,6,10,10,1,NULL,9),(7,37,8,19,NULL,NULL,NULL,NULL),(8,37,1,8,NULL,NULL,NULL,NULL),(9,37,2,14,NULL,NULL,NULL,NULL),(10,37,3,16,NULL,NULL,NULL,NULL),(11,37,4,7,NULL,NULL,NULL,NULL),(12,37,5,28,NULL,NULL,NULL,NULL),(13,37,6,10,NULL,NULL,NULL,NULL),(14,38,3,16,NULL,NULL,NULL,NULL),(15,38,4,7,NULL,NULL,NULL,NULL),(16,38,2,14,NULL,NULL,NULL,NULL),(17,38,5,28,NULL,NULL,NULL,NULL),(18,38,6,10,NULL,NULL,NULL,NULL),(19,39,1,8,NULL,NULL,NULL,NULL),(20,39,2,14,NULL,NULL,NULL,NULL),(21,39,3,16,NULL,NULL,NULL,NULL),(22,39,4,7,NULL,NULL,NULL,NULL),(23,39,5,28,NULL,NULL,NULL,NULL),(24,39,6,10,NULL,NULL,NULL,NULL),(25,39,8,19,NULL,NULL,NULL,NULL),(26,40,6,10,NULL,NULL,NULL,NULL),(27,40,2,14,NULL,NULL,NULL,NULL),(28,40,3,16,NULL,NULL,NULL,NULL),(29,40,4,7,NULL,NULL,NULL,NULL),(30,40,5,28,NULL,NULL,NULL,NULL),(31,60,5,28,NULL,NULL,NULL,NULL),(32,60,3,16,NULL,NULL,NULL,NULL),(33,60,2,14,NULL,NULL,NULL,NULL),(34,60,6,10,NULL,NULL,NULL,NULL),(35,60,7,11,NULL,NULL,NULL,NULL),(36,60,9,32,NULL,NULL,NULL,NULL),(37,60,4,7,NULL,NULL,NULL,NULL),(38,61,3,16,NULL,NULL,NULL,NULL),(39,61,4,7,NULL,NULL,NULL,NULL),(40,61,6,10,NULL,NULL,NULL,NULL),(41,61,2,14,NULL,NULL,NULL,NULL),(42,61,5,28,NULL,NULL,NULL,NULL),(43,61,7,11,NULL,NULL,NULL,NULL),(44,61,9,32,NULL,NULL,NULL,NULL),(45,62,6,10,NULL,NULL,NULL,NULL),(46,62,5,28,NULL,NULL,NULL,NULL),(47,62,3,16,NULL,NULL,NULL,NULL),(48,62,2,14,NULL,NULL,NULL,NULL),(49,62,7,11,NULL,NULL,NULL,NULL),(50,62,4,7,NULL,NULL,NULL,NULL),(51,62,9,32,NULL,NULL,NULL,NULL),(52,63,5,28,NULL,NULL,NULL,NULL),(53,63,2,14,NULL,NULL,NULL,NULL),(54,63,6,10,NULL,NULL,NULL,NULL),(55,63,3,16,NULL,NULL,NULL,NULL),(56,63,7,11,NULL,NULL,NULL,NULL),(57,63,1,8,NULL,NULL,NULL,NULL),(58,63,4,7,NULL,NULL,NULL,NULL),(59,64,1,8,NULL,NULL,NULL,NULL),(60,64,3,16,NULL,NULL,NULL,NULL),(61,64,2,14,NULL,NULL,NULL,NULL),(62,64,5,28,NULL,NULL,NULL,NULL),(63,64,6,10,NULL,NULL,NULL,NULL),(64,64,7,11,NULL,NULL,NULL,NULL),(65,64,4,7,NULL,NULL,NULL,NULL),(66,65,9,32,NULL,NULL,NULL,NULL),(67,65,5,28,NULL,NULL,NULL,NULL),(68,65,6,10,NULL,NULL,NULL,NULL),(69,65,2,14,NULL,NULL,NULL,NULL),(70,65,3,16,NULL,NULL,NULL,NULL),(71,65,7,11,NULL,NULL,NULL,NULL),(72,65,4,7,NULL,NULL,NULL,NULL),(73,66,6,10,NULL,NULL,NULL,NULL),(74,66,2,14,NULL,NULL,NULL,NULL),(75,66,5,28,NULL,NULL,NULL,NULL),(76,66,1,8,NULL,NULL,NULL,NULL),(77,66,3,16,NULL,NULL,NULL,NULL),(78,66,4,7,NULL,NULL,NULL,NULL),(79,66,7,11,NULL,NULL,NULL,NULL),(80,67,5,28,NULL,NULL,NULL,NULL),(81,67,3,16,NULL,NULL,NULL,NULL),(82,67,6,10,NULL,NULL,NULL,NULL),(83,67,1,8,NULL,NULL,NULL,NULL),(84,67,4,7,NULL,NULL,NULL,NULL),(85,67,2,14,NULL,NULL,NULL,NULL),(86,67,9,32,NULL,NULL,NULL,NULL),(87,68,5,28,NULL,NULL,NULL,NULL),(88,68,3,16,NULL,NULL,NULL,NULL),(89,68,6,10,NULL,NULL,NULL,NULL),(90,68,2,14,NULL,NULL,NULL,NULL),(91,68,7,11,NULL,NULL,NULL,NULL),(92,68,1,8,NULL,NULL,NULL,NULL),(93,68,4,7,NULL,NULL,NULL,NULL),(94,69,2,14,NULL,NULL,NULL,NULL),(95,69,6,10,NULL,NULL,NULL,NULL),(96,69,5,28,NULL,NULL,NULL,NULL),(97,69,3,16,NULL,NULL,NULL,NULL),(98,69,7,11,NULL,NULL,NULL,NULL),(99,69,1,8,NULL,NULL,NULL,NULL),(100,69,4,7,NULL,NULL,NULL,NULL),(101,70,6,10,NULL,NULL,NULL,NULL),(102,70,5,28,NULL,NULL,NULL,NULL),(103,70,1,8,NULL,NULL,NULL,NULL),(104,70,2,14,NULL,NULL,NULL,NULL),(105,70,3,16,NULL,NULL,NULL,NULL),(106,70,4,7,NULL,NULL,NULL,NULL),(107,70,7,11,NULL,NULL,NULL,NULL),(108,71,7,11,NULL,NULL,NULL,NULL),(109,71,4,7,NULL,NULL,NULL,NULL),(110,71,3,16,NULL,NULL,NULL,NULL),(111,71,6,10,NULL,NULL,NULL,NULL),(112,71,5,28,NULL,NULL,NULL,NULL),(113,71,2,14,NULL,NULL,NULL,NULL),(114,71,1,8,NULL,NULL,NULL,NULL),(115,72,4,7,NULL,NULL,NULL,NULL),(116,72,6,10,NULL,NULL,NULL,NULL),(117,72,2,14,NULL,NULL,NULL,NULL),(118,72,5,28,NULL,NULL,NULL,NULL),(119,72,3,16,NULL,NULL,NULL,NULL),(120,72,1,8,NULL,NULL,NULL,NULL),(121,72,7,11,NULL,NULL,NULL,NULL),(122,73,3,16,NULL,NULL,NULL,NULL),(123,73,6,10,NULL,NULL,NULL,NULL),(124,73,5,28,NULL,NULL,NULL,NULL),(125,73,1,8,NULL,NULL,NULL,NULL),(126,73,7,11,NULL,NULL,NULL,NULL),(127,73,4,7,NULL,NULL,NULL,NULL),(128,73,2,14,NULL,NULL,NULL,NULL),(129,74,2,14,NULL,NULL,NULL,NULL),(130,74,5,28,NULL,NULL,NULL,NULL),(131,74,6,10,NULL,NULL,NULL,NULL),(132,74,3,16,NULL,NULL,NULL,NULL),(133,74,1,8,NULL,NULL,NULL,NULL),(134,74,7,11,NULL,NULL,NULL,NULL),(135,74,4,7,NULL,NULL,NULL,NULL),(136,75,4,7,NULL,NULL,NULL,NULL),(137,75,6,10,NULL,NULL,NULL,NULL),(138,75,5,28,NULL,NULL,NULL,NULL),(139,75,2,14,NULL,NULL,NULL,NULL),(140,75,3,16,NULL,NULL,NULL,NULL),(141,75,7,11,NULL,NULL,NULL,NULL),(142,75,1,8,NULL,NULL,NULL,NULL),(143,76,5,28,NULL,NULL,NULL,NULL),(144,76,3,16,NULL,NULL,NULL,NULL),(145,76,1,8,NULL,NULL,NULL,NULL),(146,76,2,14,NULL,NULL,NULL,NULL),(147,76,6,10,NULL,NULL,NULL,NULL),(148,76,4,7,NULL,NULL,NULL,NULL),(149,76,7,11,NULL,NULL,NULL,NULL),(150,77,5,28,NULL,NULL,NULL,NULL),(151,77,3,16,NULL,NULL,NULL,NULL),(152,77,2,14,NULL,NULL,NULL,NULL),(153,77,6,10,NULL,NULL,NULL,NULL),(154,77,4,7,NULL,NULL,NULL,NULL),(155,77,1,8,NULL,NULL,NULL,NULL),(156,77,7,11,NULL,NULL,NULL,NULL),(157,78,3,16,NULL,NULL,NULL,NULL),(158,78,6,10,NULL,NULL,NULL,NULL),(159,78,5,28,NULL,NULL,NULL,NULL),(160,78,1,8,NULL,NULL,NULL,NULL),(161,78,4,7,NULL,NULL,NULL,NULL),(162,78,2,14,NULL,NULL,NULL,NULL),(163,78,7,11,NULL,NULL,NULL,NULL),(164,79,5,28,NULL,NULL,NULL,NULL),(165,79,6,10,NULL,NULL,NULL,NULL),(166,79,2,14,NULL,NULL,NULL,NULL),(167,79,7,11,NULL,NULL,NULL,NULL),(168,79,1,8,NULL,NULL,NULL,NULL),(169,79,3,16,NULL,NULL,NULL,NULL),(170,79,4,7,NULL,NULL,NULL,NULL),(171,80,6,10,NULL,NULL,NULL,NULL),(172,80,2,14,NULL,NULL,NULL,NULL),(173,80,5,28,NULL,NULL,NULL,NULL),(174,80,7,11,NULL,NULL,NULL,NULL),(175,80,1,8,NULL,NULL,NULL,NULL),(176,80,3,16,NULL,NULL,NULL,NULL),(177,80,4,7,NULL,NULL,NULL,NULL),(178,81,7,11,NULL,NULL,NULL,NULL),(179,81,3,16,NULL,NULL,NULL,NULL),(180,81,2,14,NULL,NULL,NULL,NULL),(181,81,4,7,NULL,NULL,NULL,NULL),(182,81,6,10,NULL,NULL,NULL,NULL),(183,81,5,28,NULL,NULL,NULL,NULL),(184,81,1,8,NULL,NULL,NULL,NULL),(185,82,5,28,NULL,NULL,NULL,NULL),(186,82,3,16,NULL,NULL,NULL,NULL),(187,82,2,14,NULL,NULL,NULL,NULL),(188,82,6,10,NULL,NULL,NULL,NULL),(189,82,1,8,NULL,NULL,NULL,NULL),(190,82,7,11,NULL,NULL,NULL,NULL),(191,82,4,7,NULL,NULL,NULL,NULL),(192,83,3,16,NULL,NULL,NULL,NULL),(193,83,6,10,NULL,NULL,NULL,NULL),(194,83,2,14,NULL,NULL,NULL,NULL),(195,83,5,28,NULL,NULL,NULL,NULL),(196,83,7,11,NULL,NULL,NULL,NULL),(197,83,4,7,NULL,NULL,NULL,NULL),(198,83,1,8,NULL,NULL,NULL,NULL),(199,84,6,10,NULL,NULL,NULL,NULL),(200,84,3,16,NULL,NULL,NULL,NULL),(201,84,7,11,NULL,NULL,NULL,NULL),(202,84,4,7,NULL,NULL,NULL,NULL),(203,84,1,8,NULL,NULL,NULL,NULL),(204,84,5,28,NULL,NULL,NULL,NULL),(205,84,2,14,NULL,NULL,NULL,NULL),(206,85,2,14,NULL,NULL,NULL,NULL),(207,85,6,10,NULL,NULL,NULL,NULL),(208,85,3,16,NULL,NULL,NULL,NULL),(209,85,4,7,NULL,NULL,NULL,NULL),(210,85,7,11,NULL,NULL,NULL,NULL),(211,85,5,28,NULL,NULL,NULL,NULL),(212,85,1,8,NULL,NULL,NULL,NULL),(213,86,5,28,NULL,NULL,NULL,NULL),(214,86,3,16,NULL,NULL,NULL,NULL),(215,86,2,14,NULL,NULL,NULL,NULL),(216,86,6,10,NULL,NULL,NULL,NULL),(217,86,7,11,NULL,NULL,NULL,NULL),(218,86,1,8,NULL,NULL,NULL,NULL),(219,86,4,7,NULL,NULL,NULL,NULL),(220,87,4,7,NULL,NULL,NULL,NULL),(221,87,5,28,NULL,NULL,NULL,NULL),(222,87,3,16,NULL,NULL,NULL,NULL),(223,87,2,14,NULL,NULL,NULL,NULL),(224,87,6,10,NULL,NULL,NULL,NULL),(225,87,7,11,NULL,NULL,NULL,NULL),(226,87,1,8,NULL,NULL,NULL,NULL),(227,88,7,11,NULL,NULL,NULL,NULL),(228,88,4,7,NULL,NULL,NULL,NULL),(229,88,6,10,NULL,NULL,NULL,NULL),(230,88,3,16,NULL,NULL,NULL,NULL),(231,88,2,14,NULL,NULL,NULL,NULL),(232,88,5,28,NULL,NULL,NULL,NULL),(233,88,1,8,NULL,NULL,NULL,NULL),(234,89,3,16,NULL,NULL,NULL,NULL),(235,89,6,10,NULL,NULL,NULL,NULL),(236,89,2,14,NULL,NULL,NULL,NULL),(237,89,5,28,NULL,NULL,NULL,NULL),(238,89,7,11,NULL,NULL,NULL,NULL),(239,89,4,7,NULL,NULL,NULL,NULL),(240,89,1,8,NULL,NULL,NULL,NULL),(241,90,4,7,NULL,NULL,NULL,NULL),(242,90,6,10,NULL,NULL,NULL,NULL),(243,90,3,16,NULL,NULL,NULL,NULL),(244,90,2,14,NULL,NULL,NULL,NULL),(245,90,7,11,NULL,NULL,NULL,NULL),(246,90,1,8,NULL,NULL,NULL,NULL),(247,90,5,28,NULL,NULL,NULL,NULL),(248,91,6,10,NULL,NULL,NULL,NULL),(249,91,5,28,NULL,NULL,NULL,NULL),(250,91,2,14,NULL,NULL,NULL,NULL),(251,91,7,11,NULL,NULL,NULL,NULL),(252,91,3,16,NULL,NULL,NULL,NULL),(253,91,4,7,NULL,NULL,NULL,NULL),(254,91,1,8,NULL,NULL,NULL,NULL),(255,92,1,8,NULL,NULL,NULL,NULL),(256,92,6,10,NULL,NULL,NULL,NULL),(257,92,5,28,NULL,NULL,NULL,NULL),(258,92,3,16,NULL,NULL,NULL,NULL),(259,92,4,7,NULL,NULL,NULL,NULL),(260,92,2,14,NULL,NULL,NULL,NULL),(261,92,7,11,NULL,NULL,NULL,NULL),(262,93,4,7,NULL,NULL,NULL,NULL),(263,93,3,16,NULL,NULL,NULL,NULL),(264,93,2,14,NULL,NULL,NULL,NULL),(265,93,6,10,NULL,NULL,NULL,NULL),(266,93,7,11,NULL,NULL,NULL,NULL),(267,93,5,28,NULL,NULL,NULL,NULL),(268,93,1,8,NULL,NULL,NULL,NULL),(269,94,1,8,NULL,NULL,NULL,NULL),(270,94,5,28,NULL,NULL,NULL,NULL),(271,94,3,16,NULL,NULL,NULL,NULL),(272,94,2,14,NULL,NULL,NULL,NULL),(273,94,4,7,NULL,NULL,NULL,NULL),(274,94,6,10,NULL,NULL,NULL,NULL),(275,94,7,11,NULL,NULL,NULL,NULL),(276,95,6,10,NULL,NULL,NULL,NULL),(277,95,5,28,NULL,NULL,NULL,NULL),(278,95,3,16,NULL,NULL,NULL,NULL),(279,95,4,7,NULL,NULL,NULL,NULL),(280,95,2,14,NULL,NULL,NULL,NULL),(281,95,7,11,NULL,NULL,NULL,NULL),(282,95,1,8,NULL,NULL,NULL,NULL);
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
INSERT INTO `discipline` (`disciplina_id`, `nume_disciplina`, `descriere`, `data_inceput`, `data_sfarsit`, `pondere_curs`, `pondere_seminar`, `pondere_laborator`) VALUES (1,'Analiza matematica I','Curs introductiv de analiza matematica pentru studenti, incluzand limite, derivare, integrale, serii si aplicatii.','2024-09-30','2025-02-09',70,30,0),(2,'Algebra si geometrie analitica','Curs care acopera notiunile fundamentale de algebra liniara si geometrie analitica, incluzand spatii vectoriale, sisteme liniare si aplicatii geometrice.','2024-09-30','2025-02-09',100,0,0),(3,'Matematici speciale','Curs de matematica aplicata, care include ecuatii diferentiale, functii speciale, si metode numerice pentru rezolvarea acestora.','2024-09-30','2025-02-09',80,20,0),(4,'Proiectare logica','Curs care acopera principiile fundamentale ale logicii digitale, inclusiv circuite logice, algebra booleana si sisteme de numarare.','2024-09-30','2025-02-09',80,0,20),(5,'Programarea calculatoarelor','Introducere in programarea calculatoarelor, incluzand structuri de date, algoritmi si fundamentele limbajelor de programare.','2024-09-30','2025-02-09',60,20,20),(6,'Fizica','Curs de fizica generala, care acopera notiuni fundamentale de mecanica, termodinamica si electromagnetism, cu experimente la fiecare 2 saptamani.','2024-09-30','2025-02-09',90,0,10),(7,'Engleza','Curs de limba engleza, focusat pe imbunatatirea abilitatilor de vorbire, citire si scriere in context academic.','2024-09-30','2025-02-09',50,50,0),(8,'Germana','Curs de limba germana pentru studenti, incluzand invatarea vocabularului de baza, gramaticii si expresiilor utile in contexte academice.','2024-09-30','2025-02-09',50,50,0),(9,'Franceza','Curs de limba franceza pentru studenti, cu scopul de a dezvolta abilitati de conversatie, lectura si scriere in limba franceza.','2024-09-30','2025-02-09',50,50,0);
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
INSERT INTO `grupe_de_studiu` (`grupa_id`, `disciplina_id`, `nume_grupa`) VALUES (1,1,'Grupa_Analiza matematica I'),(2,2,'Grupa_Algebra si geometrie analitica'),(3,3,'Grupa_Matematici speciale'),(4,4,'Grupa_Proiectare logica'),(5,5,'Grupa_Programarea calculatoarelor'),(6,6,'Grupa_Fizica'),(7,7,'Grupa_Engleza'),(8,8,'Grupa_Germana'),(9,9,'Grupa_Franceza');
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
) ENGINE=InnoDB AUTO_INCREMENT=493 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscrieri`
--

LOCK TABLES `inscrieri` WRITE;
/*!40000 ALTER TABLE `inscrieri` DISABLE KEYS */;
INSERT INTO `inscrieri` (`nr_inscriere`, `student_id`, `activitate_id`) VALUES (1,36,3),(2,36,16),(3,36,15),(4,36,4),(5,36,17),(6,36,1),(7,36,27),(8,36,32),(9,36,2),(10,36,7),(11,37,23),(12,37,10),(13,37,3),(14,37,16),(15,37,15),(16,37,4),(17,37,17),(18,37,1),(19,37,27),(20,37,32),(21,37,2),(22,37,7),(23,38,17),(24,38,1),(25,38,33),(26,38,15),(27,38,4),(28,38,32),(29,38,2),(30,38,6),(31,38,7),(32,39,3),(33,39,16),(34,39,15),(35,39,4),(36,39,17),(37,39,1),(38,39,27),(39,39,32),(40,39,2),(41,39,7),(42,39,23),(43,39,10),(44,40,7),(45,40,15),(46,40,4),(47,40,17),(48,40,1),(49,40,27),(50,40,32),(51,40,2),(52,40,6),(53,60,32),(54,60,2),(55,60,6),(56,60,17),(57,60,15),(58,60,4),(59,60,7),(60,60,9),(61,60,38),(62,60,36),(63,60,39),(64,60,1),(65,60,27),(66,61,17),(67,61,1),(68,61,33),(69,61,7),(70,61,15),(71,61,4),(72,61,32),(73,61,2),(74,61,6),(75,61,9),(76,61,38),(77,61,36),(78,61,39),(79,62,7),(80,62,32),(81,62,2),(82,62,6),(83,62,17),(84,62,15),(85,62,4),(86,62,9),(87,62,38),(88,62,1),(89,62,27),(90,62,36),(91,62,39),(92,63,32),(93,63,2),(94,63,6),(95,63,15),(96,63,4),(97,63,7),(98,63,17),(99,63,9),(100,63,38),(101,63,3),(102,63,1),(103,63,27),(104,64,3),(105,64,16),(106,64,17),(107,64,15),(108,64,4),(109,64,32),(110,64,2),(111,64,7),(112,64,9),(113,64,38),(114,64,1),(115,64,27),(116,65,36),(117,65,39),(118,65,32),(119,65,2),(120,65,6),(121,65,7),(122,65,15),(123,65,4),(124,65,17),(125,65,9),(126,65,38),(127,65,1),(128,65,27),(129,66,7),(130,66,15),(131,66,4),(132,66,32),(133,66,2),(134,66,6),(135,66,3),(136,66,17),(137,66,1),(138,66,27),(139,66,9),(140,66,38),(141,67,32),(142,67,2),(143,67,6),(144,67,17),(145,67,7),(146,67,3),(147,67,16),(148,67,1),(149,67,27),(150,67,15),(151,67,4),(152,67,36),(153,67,39),(154,68,32),(155,68,2),(156,68,6),(157,68,17),(158,68,7),(159,68,15),(160,68,4),(161,68,9),(162,68,38),(163,68,3),(164,68,1),(165,68,27),(166,69,15),(167,69,4),(168,69,7),(169,69,32),(170,69,2),(171,69,6),(172,69,17),(173,69,9),(174,69,38),(175,69,3),(176,69,1),(177,69,27),(178,70,7),(179,70,32),(180,70,2),(181,70,6),(182,70,3),(183,70,16),(184,70,15),(185,70,4),(186,70,17),(187,70,1),(188,70,27),(189,70,9),(190,70,38),(191,71,9),(192,71,38),(193,71,1),(194,71,33),(195,71,17),(196,71,7),(197,71,32),(198,71,2),(199,71,6),(200,71,15),(201,71,4),(202,71,3),(203,72,1),(204,72,33),(205,72,7),(206,72,15),(207,72,4),(208,72,32),(209,72,2),(210,72,6),(211,72,17),(212,72,3),(213,72,9),(214,72,38),(215,73,17),(216,73,7),(217,73,32),(218,73,2),(219,73,6),(220,73,3),(221,73,16),(222,73,9),(223,73,38),(224,73,1),(225,73,27),(226,73,15),(227,73,4),(228,74,15),(229,74,4),(230,74,32),(231,74,2),(232,74,6),(233,74,7),(234,74,17),(235,74,3),(236,74,9),(237,74,38),(238,74,1),(239,74,27),(240,75,1),(241,75,33),(242,75,7),(243,75,32),(244,75,2),(245,75,6),(246,75,15),(247,75,4),(248,75,17),(249,75,9),(250,75,38),(251,75,3),(252,76,32),(253,76,2),(254,76,6),(255,76,17),(256,76,3),(257,76,16),(258,76,15),(259,76,4),(260,76,7),(261,76,1),(262,76,27),(263,76,9),(264,76,38),(265,77,32),(266,77,2),(267,77,6),(268,77,17),(269,77,15),(270,77,4),(271,77,7),(272,77,1),(273,77,27),(274,77,3),(275,77,9),(276,77,38),(277,78,17),(278,78,7),(279,78,32),(280,78,2),(281,78,6),(282,78,3),(283,78,16),(284,78,1),(285,78,27),(286,78,15),(287,78,4),(288,78,9),(289,78,38),(290,79,32),(291,79,2),(292,79,6),(293,79,7),(294,79,15),(295,79,4),(296,79,9),(297,79,38),(298,79,3),(299,79,17),(300,79,1),(301,79,27),(302,80,7),(303,80,15),(304,80,4),(305,80,32),(306,80,2),(307,80,6),(308,80,9),(309,80,38),(310,80,3),(311,80,17),(312,80,1),(313,80,27),(314,81,9),(315,81,38),(316,81,17),(317,81,15),(318,81,4),(319,81,1),(320,81,27),(321,81,7),(322,81,32),(323,81,2),(324,81,6),(325,81,3),(326,82,32),(327,82,2),(328,82,6),(329,82,17),(330,82,15),(331,82,4),(332,82,7),(333,82,3),(334,82,9),(335,82,38),(336,82,1),(337,82,27),(338,83,17),(339,83,7),(340,83,15),(341,83,4),(342,83,32),(343,83,2),(344,83,6),(345,83,9),(346,83,38),(347,83,1),(348,83,27),(349,83,3),(350,84,7),(351,84,17),(352,84,9),(353,84,38),(354,84,1),(355,84,33),(356,84,3),(357,84,31),(358,84,32),(359,84,2),(360,84,15),(361,84,18),(362,85,15),(363,85,4),(364,85,7),(365,85,17),(366,85,1),(367,85,27),(368,85,9),(369,85,38),(370,85,32),(371,85,2),(372,85,6),(373,85,3),(374,86,32),(375,86,2),(376,86,6),(377,86,17),(378,86,15),(379,86,4),(380,86,7),(381,86,9),(382,86,38),(383,86,3),(384,86,1),(385,86,27),(386,87,1),(387,87,33),(388,87,32),(389,87,2),(390,87,6),(391,87,17),(392,87,15),(393,87,4),(394,87,7),(395,87,9),(396,87,38),(397,87,3),(398,88,9),(399,88,38),(400,88,1),(401,88,33),(402,88,7),(403,88,17),(404,88,15),(405,88,4),(406,88,32),(407,88,2),(408,88,6),(409,88,3),(410,89,17),(411,89,7),(412,89,15),(413,89,4),(414,89,32),(415,89,2),(416,89,6),(417,89,9),(418,89,38),(419,89,1),(420,89,27),(421,89,3),(422,90,1),(423,90,33),(424,90,7),(425,90,17),(426,90,15),(427,90,4),(428,90,9),(429,90,38),(430,90,3),(431,90,32),(432,90,2),(433,91,7),(434,91,32),(435,91,2),(436,91,6),(437,91,15),(438,91,4),(439,91,9),(440,91,38),(441,91,17),(442,91,1),(443,91,27),(444,91,3),(445,92,3),(446,92,16),(447,92,7),(448,92,32),(449,92,2),(450,92,17),(451,92,1),(452,92,27),(453,92,15),(454,92,4),(455,92,9),(456,92,38),(457,93,1),(458,93,33),(459,93,17),(460,93,15),(461,93,4),(462,93,7),(463,93,9),(464,93,38),(465,93,32),(466,93,2),(467,93,6),(468,93,3),(469,94,3),(470,94,16),(471,94,32),(472,94,2),(473,94,17),(474,94,15),(475,94,4),(476,94,1),(477,94,27),(478,94,7),(479,94,9),(480,94,38),(481,95,7),(482,95,32),(483,95,2),(484,95,6),(485,95,17),(486,95,1),(487,95,33),(488,95,15),(489,95,4),(490,95,9),(491,95,38),(492,95,3);
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
INSERT INTO `inscrieri_activitati_grupe_studiu` (`id`, `student_id`, `activitate_id`, `data_inscriere`) VALUES (1,88,1,'2025-01-13'),(2,93,1,'2025-01-13'),(3,91,1,'2025-01-13'),(4,90,1,'2025-01-13'),(5,87,1,'2025-01-13'),(6,92,1,'2025-01-13'),(7,74,1,'2025-01-13'),(8,85,1,'2025-01-13'),(9,92,2,'2025-01-13'),(10,91,2,'2025-01-13'),(13,91,4,'2025-01-13'),(14,94,4,'2025-01-13'),(15,62,4,'2025-01-13'),(16,61,4,'2025-01-13'),(17,84,4,'2025-01-13'),(18,74,4,'2025-01-13');
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membrii_grupe_de_studiu`
--

LOCK TABLES `membrii_grupe_de_studiu` WRITE;
/*!40000 ALTER TABLE `membrii_grupe_de_studiu` DISABLE KEYS */;
INSERT INTO `membrii_grupe_de_studiu` (`id`, `grupa_id`, `student_id`) VALUES (1,7,95),(2,3,61),(3,5,61),(4,6,61),(5,7,61),(6,3,62),(7,5,62),(8,6,62),(9,7,62),(10,3,63),(11,5,63),(12,6,63),(13,7,63),(14,3,64),(15,5,64),(16,6,64),(17,7,64),(18,3,65),(19,5,65),(20,6,65),(21,7,65),(22,3,66),(23,5,66),(24,6,66),(25,7,66),(26,3,67),(27,5,67),(28,6,67),(29,7,71),(30,4,71),(31,3,71),(32,6,71),(33,5,71),(34,2,71),(35,1,71),(36,4,72),(37,6,72),(38,2,72),(39,5,72),(40,3,72),(41,1,72),(42,7,72),(43,3,73),(44,6,73),(45,5,73),(46,1,73),(47,7,73),(48,4,73),(49,2,73),(50,2,74),(51,5,74),(52,6,74),(53,3,74),(54,1,74),(55,7,74),(56,4,74),(57,4,75),(58,6,75),(59,5,75),(60,2,75),(61,3,75),(62,7,75),(63,1,75),(64,5,76),(65,3,76),(66,1,76),(67,2,76),(68,6,76),(69,4,76),(70,7,76),(71,5,77),(72,3,77),(73,2,77),(74,6,77),(75,4,77),(76,1,77),(77,7,77),(78,3,78),(79,6,78),(80,5,78),(81,1,78),(82,4,78),(83,2,78),(84,7,78),(85,5,79),(86,6,79),(87,2,79),(88,7,79),(89,1,79),(90,3,79),(91,4,79),(92,6,80),(93,2,80),(94,5,80),(95,7,80),(96,1,80),(97,3,80),(98,4,80),(99,7,81),(100,3,81),(101,2,81),(102,4,81),(103,6,81),(104,5,81),(105,1,81),(106,5,82),(107,3,82),(108,2,82),(109,6,82),(110,1,82),(111,7,82),(112,4,82),(113,3,83),(114,6,83),(115,2,83),(116,5,83),(117,7,83),(118,4,83),(119,1,83),(120,6,84),(121,3,84),(122,7,84),(123,4,84),(124,1,84),(125,5,84),(126,2,84),(127,2,85),(128,6,85),(129,3,85),(130,4,85),(131,7,85),(132,5,85),(133,1,85),(134,5,86),(135,3,86),(136,2,86),(137,6,86),(138,7,86),(139,1,86),(140,4,86),(141,4,87),(142,5,87),(143,3,87),(144,2,87),(145,6,87),(146,7,87),(147,1,87),(148,7,88),(149,4,88),(150,6,88),(151,3,88),(152,2,88),(153,5,88),(154,1,88),(155,3,89),(156,6,89),(157,2,89),(158,5,89),(159,7,89),(160,4,89),(161,1,89),(162,4,90),(163,6,90),(164,3,90),(165,2,90),(166,7,90),(167,1,90),(168,5,90),(169,6,91),(170,5,91),(171,2,91),(172,7,91),(173,3,91),(174,4,91),(175,1,91),(176,1,92),(177,6,92),(178,5,92),(179,3,92),(180,4,92),(181,2,92),(182,7,92),(183,4,93),(184,3,93),(185,2,93),(186,6,93),(187,7,93),(188,5,93),(189,1,93),(190,1,94),(191,5,94),(192,3,94),(193,2,94),(194,4,94),(195,6,94),(196,7,94),(197,1,36),(198,2,36),(199,4,36),(200,6,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesaje`
--

LOCK TABLES `mesaje` WRITE;
/*!40000 ALTER TABLE `mesaje` DISABLE KEYS */;
INSERT INTO `mesaje` (`id`, `grupa_id`, `student_id`, `continut`, `data_trimitere`, `ora_trimitere`) VALUES (1,6,93,'Salut!','2025-01-13','19:42:36'),(2,6,92,'Hello!','2025-01-13','19:42:36'),(3,6,90,'Ce faceti?','2025-01-13','19:42:36'),(4,6,93,'Ati invatat pentru testul de maine?','2025-01-13','19:42:36'),(5,6,36,'Nu stiu fizica','2025-01-13','19:42:39'),(6,6,36,'Sunt de parere ca e o forta de atractie intre noi','2025-01-13','19:42:39'),(7,6,36,'Ai o frecventa perfecta pentru a-mi face ziua mai buna','2025-01-13','19:42:39'),(8,6,36,'Credeam ca e educatie fizica','2025-01-13','19:42:39'),(9,6,36,'Ma las de facultate','2025-01-13','19:42:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesaje_private`
--

LOCK TABLES `mesaje_private` WRITE;
/*!40000 ALTER TABLE `mesaje_private` DISABLE KEYS */;
INSERT INTO `mesaje_private` (`id`, `student_id`, `continut`, `data_trimitere`) VALUES (1,92,'Activitatea \"Activitate de studiu pentru Engleza2\" a fost anulata.','2025-01-13 19:43:42'),(2,91,'Activitatea \"Activitate de studiu pentru Engleza2\" a fost anulata.','2025-01-13 19:43:42');
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
INSERT INTO `profesori` (`profesor_id`, `departament`, `ore_min`, `ore_max`) VALUES (7,'Calculatoare',10,25),(8,'Matematica',8,20),(9,'Calculatoare',12,30),(10,'Fizica',14,28),(11,'Limbi straine',6,18),(12,'Fizica',9,22),(13,'Calculatoare',15,35),(14,'Matematica',10,24),(15,'Matematica',7,19),(16,'Matematica',10,18),(17,'Fizica',8,16),(18,'Calculatoare',12,20),(19,'Limbi straine',9,15),(20,'Matematica',11,18),(21,'Fizica',10,14),(22,'Matematica',8,16),(23,'Calculatoare',9,17),(24,'Fizica',12,20),(25,'Fizica',10,18),(26,'Calculatoare',9,16),(27,'Matematica',8,14),(28,'Calculatoare',10,17),(29,'Calculatoare',11,19),(30,'Matematica',10,16),(31,'Calculatoare',9,15),(32,'Limbi straine',12,18),(33,'Matematica',8,16),(34,'Limbi straine',10,18),(35,'Calculatoare',11,17);
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
INSERT INTO `studenti` (`student_id`, `an_studiu`, `grupa`, `nr_ore`) VALUES (36,2,'A1',30),(37,1,'B2',25),(38,3,'C1',28),(39,2,'B2',30),(40,4,'A1',32),(41,1,'B1',27),(42,2,'C2',29),(43,3,'A1',31),(44,2,'A2',26),(45,1,'B3',28),(46,2,'C3',30),(47,3,'A3',30),(48,1,'A3',28),(49,2,'B3',32),(50,3,'C2',27),(51,1,'A3',25),(52,2,'B1',29),(53,3,'C3',31),(54,4,'C2',30),(55,1,'A2',26),(56,1,'A1',28),(57,2,'B2',32),(58,3,'C1',25),(59,1,'A2',29),(60,2,'B1',30),(61,3,'C2',24),(62,1,'A3',26),(63,2,'B3',33),(64,3,'C3',31),(65,1,'A2',27),(66,2,'B1',28),(67,3,'C1',30),(68,1,'A3',26),(69,2,'B2',34),(70,3,'C1',32),(71,1,'A3',29),(72,2,'B2',30),(73,3,'C3',31),(74,1,'A3',28),(75,2,'B2',27),(76,1,'A1',26),(77,2,'B3',30),(78,3,'C1',29),(79,1,'A2',24),(80,2,'B1',28),(81,3,'C3',31),(82,1,'A3',27),(83,2,'B2',32),(84,3,'C2',25),(85,1,'A1',28),(86,2,'B3',30),(87,3,'C1',33),(88,1,'A2',29),(89,2,'B1',31),(90,3,'C3',30),(91,1,'A3',26),(92,2,'B2',28),(93,3,'C2',29),(94,1,'A1',30),(95,2,'B3',27);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizatori`
--

LOCK TABLES `utilizatori` WRITE;
/*!40000 ALTER TABLE `utilizatori` DISABLE KEYS */;
INSERT INTO `utilizatori` (`user_id`, `CNP`, `nume`, `prenume`, `adresa_id`, `telefon`, `email`, `iban`, `nr_contract`, `rol`, `parola`) VALUES (1,'1234567890202','Ionescu','Daniel',100,'0755123502','daniel.ionescu@example.com','RO49AAAA1B3100750000102','C12367','super-administrator','parola123'),(2,'1234567890203','Pavel','Diana',101,'0755123503','diana.pavel@example.com','RO49AAAA1B3100750000103','C12368','super-administrator','parola123'),(3,'1234567890204','Enescu','Gheorghe',102,'0755123504','gheorghe.enescu@example.com','RO49AAAA1B3100750000104','C12369','super-administrator','parola123'),(4,'1234567890125','Georgescu','Vasile',3,'0755123458','vasile.georgescu@example.com','RO49AAAA1B3100750000002','C12347','administrator','parola123'),(5,'1234567890129','Ionescu','Mihai',7,'0755123462','mihai.ionescu@example.com','RO49AAAA1B3100750000006','C12351','administrator','parola123'),(6,'1234567890137','Popa','Florentina',15,'0755123470','florentina.popa@example.com','RO49AAAA1B3100750000014','C12359','administrator','parola123'),(7,'1234567890131','Popescu','Alexandru',9,'0755123464','alexandru.popescu@example.com','RO49AAAA1B3100750000008','C12353','profesor','parola123'),(8,'1234567890124','Ionescu','Maria',2,'0755123457','maria.ionescu@example.com','RO49AAAA1B3100750000001','C12346','profesor','parola123'),(9,'1234567890133','Marinescu','Florin',11,'0755123466','florin.marinescu@example.com','RO49AAAA1B3100750000010','C12355','profesor','parola123'),(10,'1234567890135','Munteanu','Radu',13,'0755123468','radu.munteanu@example.com','RO49AAAA1B3100750000012','C12357','profesor','parola123'),(11,'1234567890142','Popescu','Irina',20,'0755123475','irina.popescu@example.com','RO49AAAA1B3100750000019','C12364','profesor','parola123'),(12,'1234567890201','Sima','Anca',99,'0755123501','anca.sima@example.com','RO49AAAA1B3100750000101','C12366','profesor','parola123'),(13,'1234567890127','Dumitru','George',5,'0755123460','george.dumitru@example.com','RO49AAAA1B3100750000004','C12349','profesor','parola123'),(14,'1234567890139','Constantin','Monica',17,'0755123472','monica.constantin@example.com','RO49AAAA1B3100750000016','C12361','profesor','parola123'),(15,'1234567890140','Ionescu','Silvia',18,'0755123473','silvia.ionescu@example.com','RO49AAAA1B3100750000017','C12362','profesor','parola123'),(16,'1254567890201','Popescu','Ion',201,'0755000001','ion.popescu@example.com','RO49AAAA1B3100754000101','P12301','profesor','parola123'),(17,'1334567890202','Ionescu','Maria',202,'0755000002','maria.ionescuu@example.com','RO49ABAA1B3100750000102','P12302','profesor','parola123'),(18,'1434567890203','Enache','George',203,'0755000003','george.enache@example.com','RO44AAAA1B3100750000103','P12303','profesor','parola123'),(19,'1134567890204','Mihai','Ana',204,'0755000004','ana.mihai@example.com','RO49AANA1B3100750000104','P12304','profesor','parola123'),(20,'1264567890205','Tudor','Bogdan',205,'0755000005','bogdan.tudor@example.com','RO49AANA1B3100750000105','P12305','profesor','parola123'),(21,'1294567890206','Marin','Cristina',206,'0755000006','cristina.marin@example.com','RO49AALA1B3100750000106','P12306','profesor','parola123'),(22,'1234567890207','Ilie','Alex',207,'0755000007','alex.ilie@example.com','RO49AAA51B3100750000107','P12307','profesor','parola123'),(23,'1234567790208','Stefan','Diana',208,'0755000008','diana.stefan@example.com','RO49AAAA1O3100750000108','P12308','profesor','parola123'),(24,'123467890209','Dumitrescu','Vasile',209,'0755000009','vasile.dumitrescu@example.com','RO49AAUAA1B3100750000109','P12309','profesor','parola123'),(25,'1237567890210','Popa','Simona',210,'0755000010','simona.popa@example.com','RO49AAAA183100750000110','P12310','profesor','parola123'),(26,'1254567890211','Radulescu','Marius',211,'0755000011','marius.radulescu@example.com','RO49A9AA1B3100750000111','P12311','profesor','parola123'),(27,'1234467890212','Ciobanu','Larisa',212,'0755000012','larisa.ciobanu@example.com','RO49AQAA1B3100750000112','P12312','profesor','parola123'),(28,'1234567760213','Georgescu','Razvan',213,'0755000013','razvan.georgescu@example.com','RO4TRAAA1B3100750000113','P12313','profesor','parola123'),(29,'1234567350214','Badea','Claudia',214,'0755000014','claudia.badea@example.com','RO49AAHA1B3100750000114','P12314','profesor','parola123'),(30,'1234598790215','Vlad','Stefan',215,'0755000015','stefan.vlad@example.com','RO49AAVBN1B3100750000115','P12315','profesor','parola123'),(31,'1236567890216','Barbu','Elena',216,'0755000016','elena.barbu@example.com','RO49AKJHA1B3100750000116','P12316','profesor','parola123'),(32,'1234567790217','Serban','Gabriel',217,'0755000017','gabriel.serban@example.com','RO49AAHH1B3100750000117','P12317','profesor','parola123'),(33,'12345555890218','Petrescu','Adina',218,'0755000018','adina.petrescu@example.com','RO49BBBA1B3100750000118','P12318','profesor','parola123'),(34,'12345673452219','Lungu','Roxana',219,'0755000019','roxana.lungu@example.com','RO49ASWER1B3100750000119','P12319','profesor','parola123'),(35,'12345444490220','Toma','Dan',220,'0755000020','dan.toma@example.com','RO49AFGHJ1B3100750000120','P12320','profesor','parola123'),(36,'1234567890123','Popescu','Ion',1,'0755123456','io0n.popescu@example.com','RO49AAAA1B3100750000000','C12345','student','parola123'),(37,'1234567890126','Popa','Andreea',4,'0755123459','andreea.popa@example.com','RO49AAAA1B3100750000003','C12348','student','parola123'),(38,'1234567890128','Marin','Ioana',6,'0755123461','ioana.marin@example.com','RO49AAAA1B3100750000005','C12350','student','parola123'),(39,'1234567890134','Nistor','Gabriela',12,'0755123467','gabriela.nistor@example.com','RO49AAAA1B3100750000011','C12356','student','parola123'),(40,'1234567890136','Popescu','Lavinia',14,'0755123469','lavinia.popescu@example.com','RO49AAAA1B3100750000013','C12358','student','parola123'),(41,'1234567890130','Constantin','Adriana',8,'0755123463','adriana.constantin@example.com','RO49AAAA1B3100750000007','C12352','student','parola123'),(42,'1234567890132','Radu','Elena',10,'0755123465','elena.radu@example.com','RO49AAAA1B3100750000009','C12354','student','parola123'),(43,'1234567890138','Nica','Lucian',16,'0755123471','lucian.nica@example.com','RO49AAAA1B3100750000015','C12360','student','parola123'),(44,'1234567890200','Toma','Mihail',98,'0755123500','mihail.toma@example.com','RO49AAAA1B3100750000100','C12365','student','parola123'),(45,'1234567890141','Matei','Adrian',19,'0755123474','adrian.matei@example.com','RO49AAAA1B3100750000018','C12363','student','parola123'),(46,'1234567890143','Popescu','Marian',103,'0755123476','marian.popescu@example.com','RO49AAAA1B3100750000020','C12370','student','parola123'),(47,'1234567890144','Vasilescu','Elena',104,'0755123477','elena.vasilescu@example.com','RO49AAAA1B3100750000021','C12371','student','parola123'),(48,'1234567890145','Mihaila','Stefan',105,'0755123478','stefan.mihaila@example.com','RO49AAAA1B3100750000022','C12372','student','parola123'),(49,'1234567890146','Stanciu','Camelia',106,'0755123479','camelia.stanciu@example.com','RO49AAAA1B3100750000023','C12373','student','parola123'),(50,'1234567890147','Popa','Victor',107,'0755123480','victor.popa@example.com','RO49AAAA1B3100750000024','C12374','student','parola123'),(51,'1234567890148','Costache','Mihai',108,'0755123481','mihai.costache@example.com','RO49AAAA1B3100750000025','C12375','student','parola123'),(52,'1234567890149','Bucur','Irina',109,'0755123482','irina.bucur@example.com','RO49AAAA1B3100750000026','C12376','student','parola123'),(53,'1234567890150','Popescu','Alexandra',110,'0755123483','alexandra.popescu@example.com','RO49AAAA1B3100750000027','C12377','student','parola123'),(54,'1234567890151','Marin','Toma',111,'0755123484','toma.marin@example.com','RO49AAAA1B3100750000028','C12378','student','parola123'),(55,'1234567890152','Grigorescu','Laura',112,'0755123485','laura.grigorescu@example.com','RO49AAAA1B3100750000029','C12379','student','parola123'),(56,'1234567890153','Manea','Cristina',113,'0755123486','cristina.manea@example.com','RO49AAAA1B3100750000030','C12380','student','parola123'),(57,'1234567890154','Ionita','Bogdan',114,'0755123487','bogdan.ionita@example.com','RO49AAAA1B3100750000031','C12381','student','parola123'),(58,'1234567890155','Vasile','Ioana',115,'0755123488','ioana.vasile@example.com','RO49AAAA1B3100750000032','C12382','student','parola123'),(59,'1234567890156','Constantin','Rares',116,'0755123489','rares.constantin@example.com','RO49AAAA1B3100750000033','C12383','student','parola123'),(60,'1234567890157','Nedelcu','Ana',117,'0755123490','ana.nedelcu@example.com','RO49AAAA1B3100750000034','C12384','student','parola123'),(61,'1234567890158','Popovici','Vlad',118,'0755123491','vlad.popovici@example.com','RO49AAAA1B3100750000035','C12385','student','parola123'),(62,'1234567890159','Cristea','Maria',119,'0755123492','maria.cristea@example.com','RO49AAAA1B3100750000036','C12386','student','parola123'),(63,'1234567890160','Barbu','Daniel',120,'0755123493','daniel.barbu@example.com','RO49AAAA1B3100750000037','C12387','student','parola123'),(64,'1234567890161','Stoica','Diana',121,'0755123494','diana.stoica@example.com','RO49AAAA1B3100750000038','C12388','student','parola123'),(65,'1234567890162','Iacob','Marius',122,'0755123495','marius.iacob@example.com','RO49AAAA1B3100750000039','C12389','student','parola123'),(66,'1234567890163','Radulescu','Oana',123,'0755123496','oana.radulescu@example.com','RO49AAAA1B3100750000040','C12390','student','parola123'),(67,'1234567890164','Voicu','Andrei',124,'0755123497','andrei.voicu@example.com','RO49AAAA1B3100750000041','C12391','student','parola123'),(68,'1234567890165','Diaconu','Laura',125,'0755123498','laura.diaconu@example.com','RO49AAAA1B3100750000042','C12392','student','parola123'),(69,'1234567890166','Enache','Alex',126,'0755123499','alex.enache@example.com','RO49AAAA1B3100750000043','C12393','student','parola123'),(70,'1234567890167','Petrescu','Roxana',127,'0785123500','roxana.petrescu@example.com','RO49AAAA1B3100750000044','C12394','student','parola123'),(71,'1234567890168','Lungu','George',128,'0855123501','george.lungu@example.com','RO49AAAA1B3100750000045','C12395','student','parola123'),(72,'1234567890169','Dobre','Raluca',129,'0754123502','raluca.dobre@example.com','RO49AAAA1B3100750000046','C12396','student','parola123'),(73,'1234567890170','Andrei','Victor',130,'0754123503','victor.andrei@example.com','RO49AAAA1B3100750000047','C12397','student','parola123'),(74,'1234567890171','Iordache','Bianca',131,'0745123504','bianca.iordache@example.com','RO49AAAA1B3100750000048','C12398','student','parola123'),(75,'1234567890172','Pavel','Stefan',132,'0755143505','stefan.pavel@example.com','RO49AAAA1B3100750000049','C12399','student','parola123'),(76,'1234567890173','Mihai','Andreea',133,'0755423506','andreea.mihai@example.com','RO49AAAA1B3100750000050','C12400','student','parola123'),(77,'1234567890174','Preda','Ionut',134,'0755124507','ionut.preda@example.com','RO49AAAA1B3100750000051','C12401','student','parola123'),(78,'1234567890175','Popescu','Alina',135,'0754123508','alina.popescu@example.com','RO49AAAA1B3100750000052','C12402','student','parola123'),(79,'1234567890176','Ionescu','Radu',136,'0755423509','radu.ionescu@example.com','RO49AAAA1B3100750000053','C12403','student','parola123'),(80,'1234567890177','Marin','Carmen',137,'0755423510','carmen.marin@example.com','RO49AAAA1B3100750000054','C12404','student','parola123'),(81,'1234567890178','Dumitru','Lucian',138,'0745123511','lucian.dumitru@example.com','RO49AAAA1B3100750000055','C12405','student','parola123'),(82,'1234567890179','Matei','Simona',139,'0755143512','simona.matei@example.com','RO49AAAA1B3100750000056','C12406','student','parola123'),(83,'1234567890180','Petru','Florin',140,'0755143513','florin.petru@example.com','RO49AAAA1B3100750000057','C12407','student','parola123'),(84,'1234567890181','Stefan','Gabriela',141,'0745123514','gabriela.stefan@example.com','RO49AAAA1B3100750000058','C12408','student','parola123'),(85,'1234567890182','Voinea','Alexandru',142,'0755523515','alexandru.voinea@example.com','RO49AAAA1B3100750000059','C12409','student','parola123'),(86,'1234567890183','Pop','Larisa',143,'0755125516','larisa.pop@example.com','RO49AAAA1B3100750000060','C12410','student','parola123'),(87,'1234567890184','Lazar','Victor',144,'0755523517','victor.lazar@example.com','RO49AAAA1B3100750000061','C12411','student','parola123'),(88,'1234567890185','Nistor','Denisa',145,'0757123518','denisa.nistor@example.com','RO49AAAA1B3100750000062','C12412','student','parola123'),(89,'1234567890186','Serban','Mihai',146,'0755523519','mihai.serban@example.com','RO49AAAA1B3100750000063','C12413','student','parola123'),(90,'1234567890187','Tudor','Catalina',147,'0745123520','catalina.tudor@example.com','RO49AAAA1B3100750000064','C12414','student','parola123'),(91,'1234567890188','Ciobanu','Adrian',148,'0775123521','adrian.ciobanu@example.com','RO49AAAA1B3100750000065','C12415','student','parola123'),(92,'1234567890189','Radu','Sonia',149,'0755122522','sonia.radu@example.com','RO49AAAA1B3100750000066','C12416','student','parola123'),(93,'1234567890190','Georgescu','Razvan',150,'0745123523','razvaan.georgescu@example.com','RO49AAAA1B3100750000067','C12417','student','parola123'),(94,'1234567890191','Badea','Claudia',151,'0755163524','claaudiaa.badea@example.com','RO49AAAA1B3100750000068','C12418','student','parola123'),(95,'1234567890192','Ilie','Dragos',152,'0755173525','dragos.ilie@example.com','RO49AAAA1B3100750000069','C12419','student','parola123'),(96,'7763527718933','Cordea','Maria',2,'0764773426','maria.cordea@pisi.com','RO49BBBB1B3100750000014','BR7474','administrator','oiubescpediana'),(97,'0123879993456','Tat','Teodora',7,'0777777777','teodora.tat@10laproiect','ROammuncitdingreu20','CONTRACT-CONFIDENTIAL','super-administrator','ioanamariadiana');
/*!40000 ALTER TABLE `utilizatori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'platforma_studii'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizare_utilizator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizare_utilizator`(
    IN p_ID_utilizator INT,
	IN p_CNP VARCHAR(20),
    IN p_prenume VARCHAR(50),
    IN p_nume VARCHAR(50),
    IN p_adresa_id INT,
    IN p_telefon VARCHAR(20),
    IN p_email VARCHAR(50),
    IN p_iban VARCHAR(50),
    IN p_nr_contract VARCHAR(50),
    IN p_rol ENUM('student', 'profesor', 'administrator', 'super-administrator'),
    IN p_parola VARCHAR(30)
)
BEGIN
    -- Actualizează tupla corespunzătoare ID_utilizator
    UPDATE utilizatori
    SET
		CNP = p_CNP,
        prenume = p_prenume,
        nume = p_nume,
        adresa_id = p_adresa_id,
        telefon = p_telefon,
        email = p_email,
        iban = p_iban,
        nr_contract = p_nr_contract,
        rol = p_rol,
        parola = p_parola
    WHERE user_id = p_ID_utilizator;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
    IN nume_disciplina_in VARCHAR(100),
    IN nota_curs_in INT,
    IN nota_seminar_in INT,
    IN nota_laborator_in INT
)
BEGIN
    DECLARE disciplina_id_in INT;
    DECLARE pondere_curs_in INT;
    DECLARE pondere_seminar_in INT;
    DECLARE pondere_laborator_in INT;
    DECLARE suma_ponderi INT;
    DECLARE inscris_la_activitate INT;

    -- Obținem disciplina_id pe baza numelui disciplinei
    SELECT disciplina_id
    INTO disciplina_id_in
    FROM discipline
    WHERE nume_disciplina = nume_disciplina_in;

    -- Verificăm dacă disciplina a fost găsită
    IF disciplina_id_in IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Eroare: Disciplina specificată nu există.';
    END IF;

    -- Verificăm dacă studentul este înscris la o activitate a profesorului pentru această disciplină
    SELECT COUNT(*)
    INTO inscris_la_activitate
    FROM inscrieri i
    JOIN activitati_discipline ad ON i.activitate_id = ad.activitate_id
    WHERE ad.profesor_id = profesor_id_in
      AND ad.disciplina_id = disciplina_id_in
      AND i.student_id = student_id_in;

    -- Dacă studentul nu este înscris, generăm eroare
    IF inscris_la_activitate = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Eroare: Studentul nu este înscris la o activitate a profesorului pentru această disciplină.';
    END IF;

    -- Obținem ponderile pentru disciplina respectivă
    SELECT pondere_curs, pondere_seminar, pondere_laborator
    INTO pondere_curs_in, pondere_seminar_in, pondere_laborator_in
    FROM discipline
    WHERE disciplina_id = disciplina_id_in;

    -- Actualizăm nota corespunzătoare, doar dacă este diferită de NULL
    IF nota_curs_in IS NOT NULL THEN
        UPDATE catalog
        SET nota_curs = nota_curs_in
        WHERE student_id = student_id_in
          AND disciplina_id = disciplina_id_in;
    END IF;

    IF nota_seminar_in IS NOT NULL THEN
        UPDATE catalog
        SET nota_seminar = nota_seminar_in
        WHERE student_id = student_id_in
          AND disciplina_id = disciplina_id_in;
    END IF;

    IF nota_laborator_in IS NOT NULL THEN
        UPDATE catalog
        SET nota_laborator = nota_laborator_in
        WHERE student_id = student_id_in
          AND disciplina_id = disciplina_id_in;
    END IF;

    -- Calculăm suma ponderilor pentru normalizare
    SET suma_ponderi = pondere_curs_in + pondere_seminar_in + pondere_laborator_in;

    -- Calculăm și actualizăm nota finală
    UPDATE catalog
    SET nota_finala = (IFNULL(nota_curs, 0) * pondere_curs_in +
         IFNULL(nota_seminar, 0) * pondere_seminar_in +
         IFNULL(nota_laborator, 0) * pondere_laborator_in) / suma_ponderi
    WHERE student_id = student_id_in
      AND disciplina_id = disciplina_id_in;

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
/*!50003 DROP PROCEDURE IF EXISTS `afisare_studenti_curs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `afisare_studenti_curs`(IN numeDisciplina VARCHAR(100))
BEGIN
    SELECT u.user_id,
           u.nume,
           u.prenume,
           u.CNP,
           u.adresa_id,
           u.telefon,
           u.email,
           u.iban,
           u.nr_contract,
           u.parola
    FROM studenti s
    JOIN utilizatori u ON s.student_id = u.user_id
    JOIN inscrieri i ON s.student_id = i.student_id
    JOIN activitati_discipline ad ON i.activitate_id = ad.activitate_id
    JOIN discipline d ON ad.disciplina_id = d.disciplina_id
    WHERE d.nume_disciplina = numeDisciplina
    ORDER BY u.nume, u.prenume, u.CNP, u.user_id;
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
/*!50003 DROP PROCEDURE IF EXISTS `cautare_dupa_nume_si_rol` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cautare_dupa_nume_si_rol`(
    IN in_nume VARCHAR(100),
    IN in_prenume VARCHAR(100),
    IN in_rol ENUM('student', 'profesor', 'administrator', 'fara rol')
)
BEGIN
    IF in_rol = 'fara rol' THEN
        SELECT user_id,
               nume,
               prenume,
               CNP,
               adresa_id,
               telefon,
               email,
               iban,
               nr_contract,
               parola
        FROM utilizatori
        WHERE nume = in_nume AND prenume = in_prenume
        ORDER BY nume, prenume, CNP, user_id;
    ELSE
        SELECT user_id,
               nume,
               prenume,
               CNP,
               adresa_id,
               telefon,
               email,
               iban,
               nr_contract,
               parola
        FROM utilizatori
        WHERE nume = in_nume AND prenume = in_prenume AND rol = in_rol
        ORDER BY nume, prenume, CNP, user_id;
    END IF;
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
/*!50003 DROP PROCEDURE IF EXISTS `inserare_administrator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserare_administrator`(
    IN p_CNP VARCHAR(20),
    IN p_prenume VARCHAR(50),
    IN p_nume VARCHAR(50),
    IN p_adresa_id INT,
    IN p_telefon VARCHAR(20),
    IN p_email VARCHAR(50),
    IN p_iban VARCHAR(50),
    IN p_nr_contract VARCHAR(50),
    IN p_parola VARCHAR(30)
)
BEGIN
    -- Inserează o tuplă în tabela utilizatori cu rolul de administrator
    INSERT INTO utilizatori (
        CNP,
        prenume,
        nume,
        adresa_id,
        telefon,
        email,
        iban,
        nr_contract,
        rol,
        parola
    )
    VALUES (
        p_CNP,
        p_prenume,
        p_nume,
        p_adresa_id,
        p_telefon,
        p_email,
        p_iban,
        p_nr_contract,
		'administrator',
        p_parola
    );
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
/*!50003 DROP PROCEDURE IF EXISTS `sterge_utilizator_cu_cnp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sterge_utilizator_cu_cnp`(IN cnp_in VARCHAR(20))
BEGIN
    -- Declararea variabilelor
    DECLARE user_id_var INT;
    DECLARE user_rol_var ENUM('student', 'profesor', 'administrator', 'super-administrator');
    DECLARE activitate_id_var INT;
    DECLARE cursuri_cursor_done_var BOOLEAN DEFAULT FALSE;

    -- Cursor pentru activități
    DECLARE cursuri_cursor CURSOR FOR
    SELECT activitate_id
    FROM inscrieri
    WHERE student_id = user_id_var;

    -- Handler pentru a închide cursorul când nu mai sunt date
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET cursuri_cursor_done_var = TRUE;

	SET FOREIGN_KEY_CHECKS = 0;

    -- Găsim user_id și rolul utilizatorului pe baza CNP-ului
    SELECT user_id, rol INTO user_id_var, user_rol_var
    FROM utilizatori
    WHERE CNP = cnp_in;

    -- Dacă utilizatorul nu există, generăm o eroare
    IF user_id_var IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Eroare: Utilizatorul cu acest CNP nu există.';
    END IF;

    -- Dacă utilizatorul este profesor
    IF user_rol_var = 'profesor' THEN
        -- Ștergem activitățile din calendar care referă activitățile profesorului
        DELETE FROM calendar
        WHERE activitate_id IN (
            SELECT activitate_id
            FROM activitati_discipline
            WHERE profesor_id = user_id_var
        );

        -- Ștergem activitățile din activitati_discipline
        DELETE FROM activitati_discipline
        WHERE profesor_id = user_id_var;

        -- Ștergem profesorul din tabela profesori
        DELETE FROM profesori
        WHERE profesor_id = user_id_var;
    END IF;

    -- Dacă utilizatorul este student
    IF user_rol_var = 'student' THEN
        -- Ștergem studentul din tabela studenti
        DELETE FROM studenti
        WHERE student_id = user_id_var;

        -- Decrementăm numărul de studenți pentru activitățile la care studentul era înscris
        OPEN cursuri_cursor;

        cursuri_cursor_loop: LOOP
            FETCH cursuri_cursor INTO activitate_id_var;
            IF cursuri_cursor_done_var THEN
                LEAVE cursuri_cursor_loop;
            END IF;

            UPDATE activitati_discipline
            SET numar_studenti = numar_studenti - 1
            WHERE activitate_id = activitate_id_var;
        END LOOP;

        CLOSE cursuri_cursor;

        -- Ștergem studentul din tabela inscrieri
        DELETE FROM inscrieri
        WHERE student_id = user_id_var;

        -- Ștergem studentul din tabela membri_grupe_de_studiu
        DELETE FROM membrii_grupe_de_studiu
        WHERE student_id = user_id_var;

        -- Ștergem studentul din tabela inscrieri_activitati_grupe_studiu
        DELETE FROM inscrieri_activitati_grupe_studiu
        WHERE student_id = user_id_var;

        -- Ștergem studentul din catalog
        DELETE FROM catalog
        WHERE student_id = user_id_var;
    END IF;

    -- În final, ștergem utilizatorul din tabela utilizatori
    DELETE FROM utilizatori
    WHERE user_id = user_id_var;

    SET FOREIGN_KEY_CHECKS = 1;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `vizualizare_activitati_student`(IN student_id int, IN data_aleasa date)
BEGIN
    SELECT
        d.nume_disciplina AS NumeDisciplina,
        c.tip_activitate AS TipActivitate,
        c.data_activitate AS DataActivitate,
        c.ora_inceput AS OraInceput,
        c.ora_sfarsit AS OraSfarsit
    FROM
        calendar c
    JOIN
        discipline d ON c.disciplina_id = d.disciplina_id
    JOIN
        activitati_discipline ag ON c.activitate_id = ag.activitate_id
    WHERE
        c.data_activitate = data_aleasa
        AND data_aleasa > CURDATE()
        AND EXISTS (
            SELECT 1
            FROM inscrieri isg
            WHERE isg.student_id = student_id
            AND isg.activitate_id = ag.activitate_id
        );
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
/*!50003 DROP PROCEDURE IF EXISTS `vizualizare_studenti` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vizualizare_studenti`(
    IN profesor_id_in INT,
    IN nume_disciplina_in VARCHAR(40),
    IN activitate_disciplina_in ENUM('curs', 'seminar', 'laborator')
)
BEGIN
    DECLARE disciplina_id_var INT;
    DECLARE activitate_id_var INT;

    -- Obține ID-ul disciplinei pe baza numelui disciplinei
    SELECT d.disciplina_id
    INTO disciplina_id_var
    FROM discipline d
    WHERE d.nume_disciplina = nume_disciplina_in;

    -- Obține ID-ul activității pe baza profesorului, disciplinei și tipului de activitate
    SELECT ad.activitate_id
    INTO activitate_id_var
    FROM activitati_discipline ad
    WHERE ad.profesor_id = profesor_id_in
      AND ad.disciplina_id = disciplina_id_var
      AND ad.tip_activitate = activitate_disciplina_in;

    -- Selectează studenții înscriși, numele și prenumele lor, și notele din catalog
    SELECT
        s.student_id AS `ID Student`,
        u.nume AS `Nume Student`,
        u.prenume AS `Prenume Student`,
        c.nota_curs AS `Nota Curs`,
        c.nota_seminar AS `Nota Seminar`,
        c.nota_laborator AS `Nota Laborator`,
        c.nota_finala AS `Nota Finala`
    FROM
        inscrieri i
    JOIN
        studenti s ON i.student_id = s.student_id
    JOIN
        utilizatori u ON s.student_id = u.user_id
    JOIN
        catalog c ON s.student_id = c.student_id AND c.disciplina_id = disciplina_id_var
    WHERE
        i.activitate_id = activitate_id_var;
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

-- Dump completed on 2025-01-13 19:45:48
