-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `anio_publicacion` int(11) DEFAULT NULL,
  `genero` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Ulises','James Joyce',1922,'Ficción Moderna'),(2,'El gran Gatsby','F. Scott Fitzgerald',1925,'Novela'),(3,'Retrato del artista adolescente','James Joyce',1916,'Ficción Moderna'),(4,'Lolita','Vladimir Nabokov',1955,'Novela'),(5,'Un mundo feliz','Aldous Huxley',1932,'Ciencia Ficción'),(6,'El ruido y la furia','William Faulkner',1929,'Ficción Moderna'),(7,'Trampa 22','Joseph Heller',1961,'Novela Satírica'),(8,'El cero y el infinito','Arthur Koestler',1940,'Novela Política'),(9,'Hijos y amantes','D. H. Lawrence',1913,'Ficción Moderna'),(10,'Las uvas de la ira','John Steinbeck',1939,'Novela Social'),(11,'Cien años de soledad','Gabriel García Márquez',1967,'Realismo Mágico'),(12,'El señor de los anillos','J. R. R. Tolkien',1954,'Fantasía'),(13,'1984','George Orwell',1949,'Distopía'),(14,'Un mundo feliz','Aldous Huxley',1932,'Ciencia Ficción'),(15,'Orgullo y prejuicio','Jane Austen',1813,'Romance'),(16,'Crimen y castigo','Fiódor Dostoyevski',1866,'Novela Psicológica'),(17,'Lolita','Vladimir Nabokov',1955,'Novela'),(18,'Ulises','James Joyce',1922,'Ficción Moderna'),(19,'Madame Bovary','Gustave Flaubert',1856,'Realismo'),(20,'El guardián entre el centeno','J. D. Salinger',1951,'Novela'),(21,'Matar un ruiseñor','Harper Lee',1960,'Novela'),(22,'El proceso','Franz Kafka',1925,'Novela'),(23,'En busca del tiempo perdido','Marcel Proust',1913,'Ficción Moderna'),(24,'La metamorfosis','Franz Kafka',1915,'Novela Corta'),(25,'Don Quijote de la Mancha','Miguel de Cervantes',1605,'Aventura'),(26,'Crónica de una muerte anunciada','Gabriel García Márquez',1981,'Novela Corta'),(27,'Rayuela','Julio Cortázar',1963,'Experimental'),(28,'Fahrenheit 451','Ray Bradbury',1953,'Ciencia Ficción'),(29,'La sombra del viento','Carlos Ruiz Zafón',2001,'Misterio'),(30,'Ensayo sobre la ceguera','José Saramago',1995,'Ficción Filosófica'),(31,'La Odisea','Homero',-800,'Épica'),(32,'La Ilíada','Homero',-750,'Épica'),(33,'Hamlet','William Shakespeare',1603,'Tragedia'),(34,'Macbeth','William Shakespeare',1606,'Tragedia'),(35,'Romeo y Julieta','William Shakespeare',1597,'Tragedia'),(36,'El retrato de Dorian Gray','Oscar Wilde',1890,'Ficción Gótica'),(37,'Frankenstein','Mary Shelley',1818,'Ciencia Ficción'),(38,'Drácula','Bram Stoker',1897,'Horror'),(39,'El extraño caso del Dr. Jekyll y Mr. Hyde','Robert Louis Stevenson',1886,'Novela Corta'),(40,'Los miserables','Victor Hugo',1862,'Novela Histórica'),(41,'El conde de Montecristo','Alexandre Dumas',1844,'Novela Histórica'),(42,'La Divina Comedia','Dante Alighieri',1320,'Poesía Épica'),(43,'La Eneida','Virgilio',-19,'Poesía Épica'),(44,'La República','Platón',-380,'Filosofía'),(45,'El Príncipe','Nicolás Maquiavelo',1532,'Filosofía Política'),(46,'El arte de la guerra','Sun Tzu',-500,'Estrategia Militar'),(47,'La riqueza de las naciones','Adam Smith',1776,'Economía'),(48,'El capital','Karl Marx',1867,'Economía Política'),(49,'La ética protestante y el espíritu del capitalismo','Max Weber',1905,'Sociología'),(50,'El contrato social','Jean-Jacques Rousseau',1762,'Filosofía Política'),(51,'Meditaciones','Marco Aurelio',180,'Filosofía'),(52,'Así habló Zaratustra','Friedrich Nietzsche',1883,'Filosofía'),(53,'Más allá del bien y del mal','Friedrich Nietzsche',1886,'Filosofía'),(54,'El anticristo','Friedrich Nietzsche',1895,'Filosofía'),(55,'La genealogía de la moral','Friedrich Nietzsche',1887,'Filosofía'),(56,'La interpretación de los sueños','Sigmund Freud',1899,'Psicología'),(57,'Psicopatología de la vida cotidiana','Sigmund Freud',1901,'Psicología'),(58,'Tótem y tabú','Sigmund Freud',1913,'Psicología'),(59,'La civilización y sus descontentos','Sigmund Freud',1930,'Psicología'),(60,'El malestar en la cultura','Sigmund Freud',1930,'Psicología'),(61,'La teoría de la relatividad','Albert Einstein',1915,'Ciencia'),(62,'El origen de las especies','Charles Darwin',1859,'Biología'),(63,'La estructura de las revoluciones científicas','Thomas Kuhn',1962,'Filosofía de la Ciencia'),(64,'El gen egoísta','Richard Dawkins',1976,'Biología');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-31 10:00:59
