USE `Turtles` ;

-- -----------------------------------------------------
-- Drop Tables "Turtles"
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Turtles`.`turtleSexGrowthRate`;
DROP TABLE IF EXISTS `Turtles`.`turtleGrowthRate`;
DROP TABLE IF EXISTS `Turtles`.`turtleSex`;

-- -----------------------------------------------------
-- Table `Turtles`.`turtleSex`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Turtles`.`turtleSex` (
  `turtleSex_ID` VARCHAR(50) NOT NULL,
  `Stranding_ID_Number` VARCHAR(50) NOT NULL,
  `Sex` VARCHAR(50) NOT NULL,
  `Year` INT NOT NULL,
  PRIMARY KEY (`Year`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

-- -----------------------------------------------------
-- Table `Turtles`.`turtleGrowthRate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Turtles`.`turtleGrowthRate` (
  `turtleGrowthRate_ID` VARCHAR(50) NOT NULL,
  `Stranding_ID_Number` VARCHAR(50) NOT NULL,
  `Growth_Rate` DOUBLE NOT NULL,
  `Year` INT NOT NULL,
  PRIMARY KEY (`Year`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

-- -----------------------------------------------------
-- Dynamic Table `Turtles`.`turtleSexGrowthRate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Turtles`.`turtleSexGrowthRate` (
  `turtleSex_ID` VARCHAR(50) NOT NULL,
  `turtleGrowthRate_ID` VARCHAR(50) NOT NULL,
  
  `sexGrowthRate_Stranding_ID_Number` VARCHAR(50) NOT NULL,
  `sexGrowthRate_Year` INT NOT NULL,
  
  `Sex` VARCHAR(50) NOT NULL,
  `Growth_Rate` DOUBLE NOT NULL,
  PRIMARY KEY (`turtleSex_ID`, `turtleGrowthRate_ID`, `sexGrowthRate_Year`),
INDEX (turtleSex_ID, turtleGrowthRate_ID),
FOREIGN KEY (turtleSex_ID)
REFERENCES turtleSex(turtleSex_ID),
FOREIGN KEY (turtleGrowthRate_ID)
REFERENCES turtleGrowthRate(turtleGrowthRate_ID)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

-- -----------------------------------------------------
-- Needs to be put back into dynamic table
-- -----------------------------------------------------
FOREIGN KEY (`Turtles`.`turtleSex_ID`,
`Turtles`.`turtleGrowthRate_ID`)
REFERENCES `Turtles`.`turtleSex` (`turtleSex_ID`)
ON DELETE NO ACTION,
ON UPDATE NO ACTION

/*
PRIMARY KEY (`employeeNumber`),
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
ON UPDATE NO ACTION) */