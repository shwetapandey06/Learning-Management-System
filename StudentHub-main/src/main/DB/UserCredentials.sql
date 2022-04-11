CREATE TABLE `usercredentials` (
  `rollnumber` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(15) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`rollnumber`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci