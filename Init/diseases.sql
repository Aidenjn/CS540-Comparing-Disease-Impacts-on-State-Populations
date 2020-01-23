DROP TABLE IF EXISTS `diseases`;

CREATE TABLE `diseases` (
  `year` int(4) NOT NULL,
  `state` varchar(2) NOT NULL,
  `class` varchar(100) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `amount` int(11),
  PRIMARY KEY (`year`, `state`, `class`, `topic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
