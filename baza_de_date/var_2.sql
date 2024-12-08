-- MySQL dump 10.13  Distrib 9.1.0, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: platforma_studii
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
  `activitate_id` int(11) NOT NULL AUTO_INCREMENT,
  `disciplina_id` int(11) NOT NULL,
  `profesor_id` int(11) NOT NULL,
  `tip_activitate` enum('curs','seminar','laborator') DEFAULT NULL,
  `durata` time NOT NULL,
  `pondere_nota` int(11) NOT NULL,
  `nr_max_participanti` int(11) NOT NULL,
  `data_inceput` date DEFAULT NULL,
  `data_sfarsit` date DEFAULT NULL,
  `frecventa` enum('saptamanal','la 2 saptamani') DEFAULT NULL,
  PRIMARY KEY (`activitate_id`),
  UNIQUE KEY `activitate_id` (`activitate_id`),
  KEY `activitati_discipline_discipline_disciplina_id_fk` (`disciplina_id`),
  CONSTRAINT `activitati_discipline_discipline_disciplina_id_fk` FOREIGN KEY (`disciplina_id`) REFERENCES `discipline` (`disciplina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitati_discipline`
--

LOCK TABLES `activitati_discipline` WRITE;
/*!40000 ALTER TABLE `activitati_discipline` DISABLE KEYS */;
/*!40000 ALTER TABLE `activitati_discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activitati_grupe_de_studiu`
--

DROP TABLE IF EXISTS `activitati_grupe_de_studiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activitati_grupe_de_studiu` (
  `activitate_id` int(11) NOT NULL AUTO_INCREMENT,
  `grupa_id` int(11) NOT NULL,
  `descriere` text,
  `data_activitate` date NOT NULL,
  `data_postare` date NOT NULL,
  `timp_expirare` time NOT NULL,
  `ora` time NOT NULL,
  `durata` time NOT NULL,
  `min_participanti` int(11) NOT NULL,
  PRIMARY KEY (`activitate_id`),
  KEY `activitati_grupe_de_studiu_grupe_de_studiu_grupa_id_fk` (`grupa_id`),
  CONSTRAINT `activitati_grupe_de_studiu_grupe_de_studiu_grupa_id_fk` FOREIGN KEY (`grupa_id`) REFERENCES `grupe_de_studiu` (`grupa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitati_grupe_de_studiu`
--

LOCK TABLES `activitati_grupe_de_studiu` WRITE;
/*!40000 ALTER TABLE `activitati_grupe_de_studiu` DISABLE KEYS */;
/*!40000 ALTER TABLE `activitati_grupe_de_studiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrese`
--

DROP TABLE IF EXISTS `adrese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrese` (
  `adresa_id` int(11) NOT NULL AUTO_INCREMENT,
  `tara` varchar(20) NOT NULL,
  `judet` varchar(20) NOT NULL,
  `localitate` varchar(20) NOT NULL,
  `strada` varchar(30) NOT NULL,
  `numar` int(11) DEFAULT NULL,
  PRIMARY KEY (`adresa_id`),
  UNIQUE KEY `adresa_id` (`adresa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrese`
--

LOCK TABLES `adrese` WRITE;
/*!40000 ALTER TABLE `adrese` DISABLE KEYS */;
/*!40000 ALTER TABLE `adrese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disciplina_id` int(11) NOT NULL,
  `profesor_id` int(11) NOT NULL,
  `tip_activitate` enum('curs','seminar','laborator','examen','colocviu') DEFAULT NULL,
  `data_calendaristica` date NOT NULL,
  `ora_inceput` time NOT NULL,
  `ora_sfarsit` time NOT NULL,
  `nr_maxim_studenti` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `calendar_discipline_disciplina_id_fk` (`disciplina_id`),
  KEY `calendar_profesori_profesor_id_fk` (`profesor_id`),
  CONSTRAINT `calendar_discipline_disciplina_id_fk` FOREIGN KEY (`disciplina_id`) REFERENCES `discipline` (`disciplina_id`),
  CONSTRAINT `calendar_profesori_profesor_id_fk` FOREIGN KEY (`profesor_id`) REFERENCES `profesori` (`profesor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `profesor_id` int(11) NOT NULL,
  `nota_curs` int(11) DEFAULT NULL,
  `nota_laborator` int(11) DEFAULT NULL,
  `nota_seminar` int(11) DEFAULT NULL,
  `nota_finala` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catalog_studenti_student_id_fk` (`student_id`),
  KEY `catalog_discipline_disciplina_id_fk` (`disciplina_id`),
  KEY `catalog_profesori_profesor_id_fk` (`profesor_id`),
  CONSTRAINT `catalog_discipline_disciplina_id_fk` FOREIGN KEY (`disciplina_id`) REFERENCES `discipline` (`disciplina_id`),
  CONSTRAINT `catalog_profesori_profesor_id_fk` FOREIGN KEY (`profesor_id`) REFERENCES `profesori` (`profesor_id`),
  CONSTRAINT `catalog_studenti_student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `studenti` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline` (
  `disciplina_id` int(11) NOT NULL AUTO_INCREMENT,
  `nume_disciplina` varchar(40) NOT NULL,
  `descriere` text,
  `nr_max_studenti` int(11) NOT NULL,
  PRIMARY KEY (`disciplina_id`),
  UNIQUE KEY `disciplina_id` (`disciplina_id`),
  UNIQUE KEY `nume_disciplina` (`nume_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline`
--

LOCK TABLES `discipline` WRITE;
/*!40000 ALTER TABLE `discipline` DISABLE KEYS */;
/*!40000 ALTER TABLE `discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupe_de_studiu`
--

DROP TABLE IF EXISTS `grupe_de_studiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupe_de_studiu` (
  `grupa_id` int(11) NOT NULL AUTO_INCREMENT,
  `disciplina_id` int(11) NOT NULL,
  `nume_grupa` varchar(20) NOT NULL,
  PRIMARY KEY (`grupa_id`),
  UNIQUE KEY `grupa_id` (`grupa_id`),
  KEY `grupe_de_studiu_discipline_disciplina_id_fk` (`disciplina_id`),
  CONSTRAINT `grupe_de_studiu_discipline_disciplina_id_fk` FOREIGN KEY (`disciplina_id`) REFERENCES `discipline` (`disciplina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupe_de_studiu`
--

LOCK TABLES `grupe_de_studiu` WRITE;
/*!40000 ALTER TABLE `grupe_de_studiu` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupe_de_studiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscrieri`
--

DROP TABLE IF EXISTS `inscrieri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscrieri` (
  `nr_inscriere` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `disciplina_id` varchar(10) NOT NULL,
  PRIMARY KEY (`nr_inscriere`),
  UNIQUE KEY `nr_inscriere` (`nr_inscriere`),
  KEY `inscrieri_studenti_student_id_fk` (`student_id`),
  CONSTRAINT `inscrieri_studenti_student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `studenti` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscrieri`
--

LOCK TABLES `inscrieri` WRITE;
/*!40000 ALTER TABLE `inscrieri` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscrieri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membrii_grupe_de_studiu`
--

DROP TABLE IF EXISTS `membrii_grupe_de_studiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membrii_grupe_de_studiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupa_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `membrii_grupe_de_studiu_grupe_de_studiu_grupa_id_fk` (`grupa_id`),
  CONSTRAINT `membrii_grupe_de_studiu_grupe_de_studiu_grupa_id_fk` FOREIGN KEY (`grupa_id`) REFERENCES `grupe_de_studiu` (`grupa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membrii_grupe_de_studiu`
--

LOCK TABLES `membrii_grupe_de_studiu` WRITE;
/*!40000 ALTER TABLE `membrii_grupe_de_studiu` DISABLE KEYS */;
/*!40000 ALTER TABLE `membrii_grupe_de_studiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesaje`
--

DROP TABLE IF EXISTS `mesaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesaje` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupa_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `continut` varchar(500) NOT NULL,
  `data_trimitere` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mesaje_grupe_de_studiu_grupa_id_fk` (`grupa_id`),
  KEY `mesaje_studenti_student_id_fk` (`student_id`),
  CONSTRAINT `mesaje_grupe_de_studiu_grupa_id_fk` FOREIGN KEY (`grupa_id`) REFERENCES `grupe_de_studiu` (`grupa_id`),
  CONSTRAINT `mesaje_studenti_student_id_fk` FOREIGN KEY (`student_id`) REFERENCES `studenti` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesaje`
--

LOCK TABLES `mesaje` WRITE;
/*!40000 ALTER TABLE `mesaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orar`
--

DROP TABLE IF EXISTS `orar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activitate_id` int(11) NOT NULL,
  `ziua` date NOT NULL,
  `ora_inceput` time NOT NULL,
  `ora_sfarsit` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orar_activitati_discipline_activitate_id_fk` (`activitate_id`),
  CONSTRAINT `orar_activitati_discipline_activitate_id_fk` FOREIGN KEY (`activitate_id`) REFERENCES `activitati_discipline` (`activitate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orar`
--

LOCK TABLES `orar` WRITE;
/*!40000 ALTER TABLE `orar` DISABLE KEYS */;
/*!40000 ALTER TABLE `orar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesori`
--

DROP TABLE IF EXISTS `profesori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesori` (
  `profesor_id` int(11) NOT NULL,
  `departament` varchar(40) NOT NULL,
  `ore_min` int(11) NOT NULL,
  `ore_max` int(11) NOT NULL,
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
/*!40000 ALTER TABLE `profesori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesori_discipline`
--

DROP TABLE IF EXISTS `profesori_discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesori_discipline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profesor_id` int(11) NOT NULL,
  `disciplina_id` varchar(10) NOT NULL,
  `numar_studenti` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `profesori_discipline_profesori_profesor_id_fk` (`profesor_id`),
  CONSTRAINT `profesori_discipline_profesori_profesor_id_fk` FOREIGN KEY (`profesor_id`) REFERENCES `profesori` (`profesor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesori_discipline`
--

LOCK TABLES `profesori_discipline` WRITE;
/*!40000 ALTER TABLE `profesori_discipline` DISABLE KEYS */;
/*!40000 ALTER TABLE `profesori_discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studenti`
--

DROP TABLE IF EXISTS `studenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studenti` (
  `student_id` int(11) NOT NULL,
  `an_studiu` int(11) NOT NULL,
  `grupa` varchar(10) NOT NULL,
  `nr_ore` int(11) NOT NULL,
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
/*!40000 ALTER TABLE `studenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilizatori`
--

DROP TABLE IF EXISTS `utilizatori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilizatori` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `CNP` varchar(20) NOT NULL,
  `nume` varchar(50) NOT NULL,
  `prenume` varchar(50) NOT NULL,
  `adresa_id` int(11) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `iban` varchar(50) NOT NULL,
  `nr_contract` varchar(50) NOT NULL,
  `rol` enum('student','profesor','administrator','super-administrator') NOT NULL,
  `parola` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `CNP` (`CNP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizatori`
--

LOCK TABLES `utilizatori` WRITE;
/*!40000 ALTER TABLE `utilizatori` DISABLE KEYS */;
/*!40000 ALTER TABLE `utilizatori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'platforma_studii'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-08 14:12:57
