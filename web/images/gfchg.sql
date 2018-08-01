-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

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
-- Table structure for table `noticia`
--

DROP TABLE IF EXISTS `noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticia`
--

LOCK TABLES `noticia` WRITE;
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
INSERT INTO `noticia` VALUES (1,'Super Smash Bros. Ultimate no incorporará todos los escenarios de la saga','Los escenarios del nuevo Super Smash Bros. no seguirán el mismo ejemplo que los personajes, que en este caso sí estarán presentes todos.','images/1.jpg','2018-06-27 16:46:00'),(2,'PUBG retira su demanda a los creadores de Fortnite sin dar explicaciones','Fortnite no fue el primer título al que PUBG Corp. demandó por plagio, aunque -con diferencia- fue el que más ruido hizo.','images/2.jpg','2018-06-27 16:50:00'),(3,'Ya tenemos fecha para la temporada 5 de Fortnite. Y este fin de semana hay doble experiencia','Dentro de un par de semanas comenzarán nuevos desafíos que desbloquearán numerosas recompensas.','images/3.jpg','2018-06-27 16:55:00'),(4,'Así creó BioWare las cuatro alabardas, los exotrajes acorazados de Anthem','Así serán las \"armaduras\" voladoras con las que repartiremos plomo y destrucción en Anthem.','images/4.jpg','2018-06-27 17:00:00'),(5,'The Messenger, todo un homenaje a los Ninja Gaiden clásicos en forma de metroidvania, en 12 minutos de gameplay','La prometedora propuesta de Sabotage y Devolver Digital trata de conquistarnos con este completo gameplay.','images/5.jpg','2018-06-27 17:05:00'),(6,'Captain Spirit, la precuela de Life is Strange 2, ya se puede descargar gratis en Xbox, PS4 y PC','Ya puedes hacerte con la precuela de \'Life is Strange 2\' en PC y consolas totalmente gratis','images/6.jpg','2018-06-27 17:10:00'),(7,'El primer tráiler de la temporada 4 de \'Better Call Saul\' nos lleva de vuelta a Los Pollos Hermanos','\'Better Call Saul\' es una de las mejores series que uno puede ver en la actualidad. Es cierto que está poco menos que condenada a no llegar al nivel de \'Breaking Bad\', pero eso no quita para que tenga tantísimas virtudes.','images/7.jpg','2018-06-27 17:15:00'),(8,'\'Predator\' tiene un nuevo y espectacular tráiler: Shane Black quiere resucitar la franquicia con una violenta secuela para adultos','Sólo un mes después de lanzar el primer adelanto, Fox ha presentado un nuevo y espectacular tráiler de \'Predator\' (\'The Predator\'), secuela que pretende relanzar la franquicia para las nuevas generaciones.','images/8.jpg','2018-06-27 17:20:00'),(9,'El tráiler de \'La última Sharknado\' promete la más casposa orgía de destrucción para despedir la saga por todo lo alto','Sería un hipócrita si negase que hace ya cinco años la primera \'Sharknado\' me robó el corazón con ese desmadrado, cutre y casposo cachondeo que la convirtió en un auténtico fenómeno televisivo.','images/9.jpg','2018-06-27 17:25:00'),(10,'La secuela de \'Spider-Man: Homecoming\' ya tiene título: \'Far From Home\'','No se la juegan. La secuela de \'Spider-Man: Homecoming\' mantendrá la referencia hogareña y se titulará \'Spider-Man: Far From Home\' (\"Lejos de casa\").','images/10.jpg','2018-06-27 17:30:00'),(11,'\'It: Capítulo 2\' completa su reparto con Xavier Dolan: ya se rueda la secuela del film de terror más taquillero de la historia','Xavier Dolan y Will Beinbrink también quieren flotar. Esta semana comenzó el rodaje de la secuela de \'IT\' y el reparto se ha completado con estos dos últimos fichajes.','images/11.jpg','2018-06-27 17:35:00'),(12,'\'Creed II\' lanza su potente tráiler: el hijo de Apollo vs. el hijo de Drago','Warner acaba de presentar el potente primer tráiler de \'Creed II\', la secuela del spin-off de la saga sobre Rocky Balboa. Michael B. Jordan vuelve a dar vida al protagonista, Adonis Creed.','images/12.jpg','2018-06-27 17:40:00'),(17,'Blazing Chrome y su clara inspiración en Contra con su nuevo y frenético gameplay','El juego nos hará regresar a la época dorada de los juegos de acción y plataformas en 2D cuando llegue este año a PC.','images/13.jpg','2018-06-29 18:00:00'),(18,'Bring you home se corona como Mejor Juego del Año en los XI Premios Nacionales de la Industria del Videojuego','Los Premios Nacionales de la Industria del Videojuego volvieron a poner el broche al Gamelab 2018, repartiendo un extra de reconocimiento entre lo mejor y lo más destacado del panorama español con el aval de la Academia Española de las Artes y las Ciencias Interactivas. Y pese a que sólo hubo un ganador a mejor juego del año, se puede decir que cuatro títulos han dominado las categorías.','images/14.png','2018-06-29 18:10:00'),(19,'PUBG por 20 euros, Dragon Ball FighterZ por 40 euros, y muchas ofertas más en Cazando Gangas','Estamos a punto de cerrar el mes de junio, pero no podemos hacerlo sin antes echar un último vistazo a las mejores ofertas de la semana. Además, con la llegada del verano es el momento idóneo para sacar partido de estas rebajas, ya que podremos hacernos con un montón de juegos por poco dinero. Así tendremos este periodo vacacional de vicio asegurado. ¡Vamos allá!','images/15.jpg','2018-06-29 18:15:00'),(20,'Splinter Cell: Conviction y Death Squared entre los juegos de Games With Gold en julio','Aunque ha sucedido un poco más tarde de lo que estamos acostumbrados, Microsoft ha confirmado cuáles serán los juegos de Games With Gold que podrán descargar durante el mes de julio aquellos usuarios que estén suscritos a Xbox Live Gold, que para no faltar a la costumbre serán dos de Xbox One y otros dos de Xbox 360.','images/16.jpg','2018-06-29 18:20:00');
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-29 18:57:37
