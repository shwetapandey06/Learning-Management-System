CREATE TABLE `userdetails` (
  `rollnumber` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`rollnumber`,`email`),
  KEY `email` (`email`),
  KEY `department_idx` (`department`),
  CONSTRAINT `department` FOREIGN KEY (`department`) REFERENCES `department` (`department_name`),
  CONSTRAINT `rollnumber` FOREIGN KEY (`rollnumber`) REFERENCES `usercredentials` (`rollnumber`),
  CONSTRAINT `userdetails_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usercredentials` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci