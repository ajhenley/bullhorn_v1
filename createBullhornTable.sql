CREATE TABLE `toots` (
  `idtoots` int(11) NOT NULL AUTO_INCREMENT,
  `tootsbody` varchar(200) NOT NULL,
  `tootssender` varchar(45) NOT NULL,
  `tootsdatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`idtoots`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8

/*
-- Query: SELECT * FROM bullhorn.toots LIMIT 0, 1000
-- Date: 2017-05-10 00:12
*/

INSERT INTO `toots` (`idtoots`,`tootsbody`,`tootssender`,`tootsdatetime`) VALUES (1,'Welcome','dude','2011-03-13 02:53:50');
INSERT INTO `toots` (`idtoots`,`tootsbody`,`tootssender`,`tootsdatetime`) VALUES (2,'How are you','dudette','2011-03-13 02:53:50');
INSERT INTO `toots` (`idtoots`,`tootsbody`,`tootssender`,`tootsdatetime`) VALUES (3,'Fine','dude','2011-03-13 02:53:50');
