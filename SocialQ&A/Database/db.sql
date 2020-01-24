/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - socialq&a
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `socialq&a`;

USE `socialq&a`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `calc` */

DROP TABLE IF EXISTS `calc`;

CREATE TABLE `calc` (
  `email` varchar(100) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `ps` double DEFAULT NULL,
  `pa` double DEFAULT NULL,
  `pc` double DEFAULT NULL,
  `closeness` double DEFAULT NULL,
  `metric` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calc` */

/*Table structure for table `frequest` */

DROP TABLE IF EXISTS `frequest`;

CREATE TABLE `frequest` (
  `ufrom` varchar(300) NOT NULL,
  `uto` varchar(300) NOT NULL,
  `requ` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `frequest` */

/*Table structure for table `friends` */

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
  `user1` varchar(100) NOT NULL,
  `user2` varchar(100) NOT NULL,
  PRIMARY KEY (`user1`,`user2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friends` */

/*Table structure for table `interaction` */

DROP TABLE IF EXISTS `interaction`;

CREATE TABLE `interaction` (
  `qid` varchar(10) NOT NULL,
  `asker` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `ans` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`qid`,`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `interaction` */

/*Table structure for table `interests` */

DROP TABLE IF EXISTS `interests`;

CREATE TABLE `interests` (
  `email` varchar(100) NOT NULL,
  `interests` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `interests` */

/*Table structure for table `query` */

DROP TABLE IF EXISTS `query`;

CREATE TABLE `query` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(1000) DEFAULT NULL,
  `uemail` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'new',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `query` */

/*Table structure for table `synset` */

DROP TABLE IF EXISTS `synset`;

CREATE TABLE `synset` (
  `cat` varchar(100) NOT NULL,
  `subcat` varchar(100) NOT NULL,
  `keywords` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`cat`,`subcat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `synset` */

insert  into `synset`(`cat`,`subcat`,`keywords`) values ('Books','comic','comic;humorous;comedy;comedian;romantic;tragic;dramatic;creative;cartoon;musical;literary;poetic;theatrical;fictional;satirical;detective;classic;funny;movie;film;greatest;'),('Movies','movie','movie;movies;video;videos;player;legend;figure;animated;file;cartoon;television;ascii;animation;gfp-apc;gif;pdf;histogram;dic;inset;additional;word;'),('Music','melody','melody;melodies;tune;music;harmonies;chords;song;harmony;phrase;guitar;octaves;tunes;songs;chord;bass;solo;flute;bassoon;contour;oboe;instruments;'),('Music','song','song;songs;lman;singing;duet;playback;syllables;sing;ttx;acoustic;finches;birds;zebra;victory;syllable;dph;juvenile;bird;speech;music;voice-face;songs?;'),('Television','tv','television;tv;advertising;magazines;advertisements;magazine;games;print;video;movies;broadcast;videos;bicycle;internet;ads;computer;posters;');

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `cat` varchar(100) DEFAULT NULL,
  `freq` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `tele` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `gen` varchar(10) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `profilepic` longblob,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

/*Table structure for table `weight` */

DROP TABLE IF EXISTS `weight`;

CREATE TABLE `weight` (
  `user` varchar(200) DEFAULT NULL,
  `music` int(11) DEFAULT NULL,
  `movies` int(11) DEFAULT NULL,
  `television` int(11) DEFAULT NULL,
  `books` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `weight` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
