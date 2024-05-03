USE `Turtles` ;

-- -----------------------------------------------------
-- Drop Tables "Turtles"
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Turtles`.`Sex`;
DROP TABLE IF EXISTS `Turtles`.`Stranding_ID_Number`;
DROP TABLE IF EXISTS `Turtles`.`Growth_Rate`;

-- -----------------------------------------------------
-- Table `ClassicModels`.`Employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Turtles`.`turtlegrowth` (
  `Stranding_ID_Number` VARCHAR(50) NOT NULL,
  `Sex` VARCHAR(50) NOT NULL,
  `Straightline_Carapace_Length` DOUBLE NOT NULL,
  `Growth_Rate` DOUBLE NOT NULL,
  `Age` INT(11) NOT NULL,
  `Year` INT(11) NOT NULL,
  PRIMARY KEY (`Year`),
  INDEX `fk_Employees_Employees_idx` (`reportsTo` ASC),
  INDEX `fk_Employees_Offices_idx` (`officeCode` ASC),
  CONSTRAINT `fk_Employees_Employees`
    FOREIGN KEY (`reportsTo`)
    REFERENCES `ClassicModels`.`Employees` (`employeeNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employees_Offices`
    FOREIGN KEY (`officeCode`)
    REFERENCES `ClassicModels`.`Offices` (`officeCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;