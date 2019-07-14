/*
SQLyog Ultimate v9.50 
MySQL - 5.6.20 : Database - prekvalifikacijatest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`prekvalifikacijatest` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `prekvalifikacijatest`;

/*Table structure for table `parnica` */

DROP TABLE IF EXISTS `parnica`;

CREATE TABLE `parnica` (
  `ParnicaID` int(11) NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(255) NOT NULL,
  `Problem` varchar(255) NOT NULL,
  `DatumPocetka` date NOT NULL,
  `Tuzilac` varchar(255) NOT NULL,
  `Tuzeni` varchar(255) NOT NULL,
  `SudijaID` int(11) NOT NULL,
  PRIMARY KEY (`ParnicaID`),
  KEY `SudijaID` (`SudijaID`),
  CONSTRAINT `parnica_ibfk_1` FOREIGN KEY (`SudijaID`) REFERENCES `sudija` (`SudijaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `parnica` */

/*Table structure for table `sudija` */

DROP TABLE IF EXISTS `sudija`;

CREATE TABLE `sudija` (
  `SudijaID` int(11) NOT NULL,
  `Ime` varchar(255) NOT NULL,
  `Prezime` varchar(255) NOT NULL,
  `Specijalnost` varchar(255) NOT NULL,
  PRIMARY KEY (`SudijaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sudija` */

insert  into `sudija`(`SudijaID`,`Ime`,`Prezime`,`Specijalnost`) values (1,'Dragana','Draganic','Imovinsko pravo'),(2,'Ivana','Mitrovic','Radno pravo'),(3,'Jovana','Stepic','Krivicno pravo'),(4,'Petar','Pavlovic','Obligaciono pravo');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
