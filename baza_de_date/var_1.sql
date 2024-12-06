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
-- Table structure for table `persoana`
--

DROP TABLE IF EXISTS `persoana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persoana` (
  `CNP` varchar(15) NOT NULL,
  `nume` varchar(20) NOT NULL,
  `prenume` varchar(20) NOT NULL,
  `id_adresa` int(11) DEFAULT NULL,
  `telefon` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `IBAN` varchar(25) DEFAULT NULL,
  `numar_contact` varchar(15) NOT NULL,
  PRIMARY KEY (`CNP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persoana`
--

LOCK TABLES `persoana` WRITE;
/*!40000 ALTER TABLE `persoana` DISABLE KEYS */;
INSERT INTO `persoana` (`CNP`, `nume`, `prenume`, `id_adresa`, `telefon`, `email`, `IBAN`, `numar_contact`) VALUES ('1960101123458','Georgescu','Andrei',3,'0766123458','andrei.georgescu@example.com','RO49AAAA1B31007593840002','3');
INSERT INTO `persoana` (`CNP`, `nume`, `prenume`, `id_adresa`, `telefon`, `email`, `IBAN`, `numar_contact`) VALUES ('1970708123460','Constantin','Cristina',5,'0778123460','cristina.constantin@example.com','RO49AAAA1B31007593840004','5');
INSERT INTO `persoana` (`CNP`, `nume`, `prenume`, `id_adresa`, `telefon`, `email`, `IBAN`, `numar_contact`) VALUES ('1980201123456','Popescu','Ion',1,'0723123456','ion.popescu@example.com','RO49AAAA1B31007593840000','1');
INSERT INTO `persoana` (`CNP`, `nume`, `prenume`, `id_adresa`, `telefon`, `email`, `IBAN`, `numar_contact`) VALUES ('2970305123457','Ionescu','Maria',2,'0745123457','maria.ionescu@example.com','RO49AAAA1B31007593840001','2');
INSERT INTO `persoana` (`CNP`, `nume`, `prenume`, `id_adresa`, `telefon`, `email`, `IBAN`, `numar_contact`) VALUES ('2990222123459','Dumitru','Elena',4,'0734123459','elena.dumitru@example.com','RO49AAAA1B31007593840003','4');
/*!40000 ALTER TABLE `persoana` ENABLE KEYS */;
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

-- Dump completed on 2024-12-06 13:15:58
