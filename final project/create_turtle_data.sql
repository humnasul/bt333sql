USE `Turtles` ;

-- -----------------------------------------------------
-- Drop Tables "Turtles"
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Turtles`.`turtleGrowth`;
DROP TABLE IF EXISTS `Turtles`.`sexGrowthRate`;
DROP TABLE IF EXISTS `Turtles`.`turtleAgeYear`;

-- -----------------------------------------------------
-- Table `ClassicModels`.`Employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Turtles`.`turtleGrowth` (
  `Stranding_ID_Number` VARCHAR(50) NOT NULL,
  `Sex` VARCHAR(50) NOT NULL,
  `Straightline_Carapace_Length` DOUBLE NOT NULL,
  `Growth_Rate` DOUBLE NOT NULL,
  `Age` INT NOT NULL,
  `Year` INT NOT NULL,
  PRIMARY KEY (`Year`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `Turtles`.`sexGrowthRate` (
  `Stranding_ID_Number` VARCHAR(50) NOT NULL,
  `Sex` VARCHAR(50) NOT NULL,
  `Straightline_Carapace_Length` DOUBLE NOT NULL,
  `Growth_Rate` DOUBLE NOT NULL,
  PRIMARY KEY (`Stranding_ID_Number`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `Turtles`.`turtleAgeYear` (
  `Stranding_ID_Number` VARCHAR(50) NOT NULL,
  `Age` INT NOT NULL,
  `Year` INT NOT NULL,
  PRIMARY KEY (`Year`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


