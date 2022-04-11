CREATE TABLE `professor` (
  `email` varchar(45) NOT NULL,
  `id` varchar(45) NOT NULL,
  `position` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `deprtment_idx` (`department`),
  CONSTRAINT `deprtment` FOREIGN KEY (`department`) REFERENCES `departments` (`department_name`),
  CONSTRAINT `email` FOREIGN KEY (`email`) REFERENCES `usercredentials` (`email`),
  CONSTRAINT `id` FOREIGN KEY (`id`) REFERENCES `usercredentials` (`rollnumber`)
)