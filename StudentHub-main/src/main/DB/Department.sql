CREATE TABLE `studenthub`.`department` (
  `department_id` VARCHAR(45) NOT NULL,
  `department_name` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `students` INT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE INDEX `department_name_UNIQUE` (`department_name` ASC) VISIBLE);
