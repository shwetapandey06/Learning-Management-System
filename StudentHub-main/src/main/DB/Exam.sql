CREATE TABLE `exam` (
  `exam_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `professor` varchar(45) NOT NULL,
  `description` mediumtext,
  `bba` tinyint DEFAULT NULL,
  `mba` tinyint DEFAULT NULL,
  `bca` tinyint DEFAULT NULL,
  `mca` tinyint DEFAULT NULL,
  `pgdm` tinyint DEFAULT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `professor_idx` (`professor`),
  CONSTRAINT `professor` FOREIGN KEY (`professor`) REFERENCES `professor` (`id`)
) 