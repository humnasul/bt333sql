USE `Turtles` ;

-- -----------------------------------------------------
-- turtleSex table select statements
-- -----------------------------------------------------
SELECT * FROM turtles.turtlesex ;
SELECT * FROM turtles.turtlesex where Sex = "Female";

SELECT * FROM turtles.turtlesex where Year = 2004;

-- -----------------------------------------------------
-- turtleGrowthRate table select statements
-- -----------------------------------------------------
SELECT * FROM turtles.turtlegrowthrate;

SELECT * FROM turtles.turtlegrowthrate where Growth_Rate > 2.0;

SELECT * FROM turtles.turtlegrowthrate where Stranding_ID_Number = "Cm 026";

-- -----------------------------------------------------
-- joint dataset select statements + others
-- -----------------------------------------------------
SELECT * FROM turtlegrowthrate JOIN turtlesex
	ON turtlegrowthrate.Year = turtlesex.Year;
    
SELECT * FROM turtlegrowthrate JOIN turtlesex
	ON turtlegrowthrate.turtleGrowthRate_ID = turtlesex.turtleSex_ID;

SELECT turtlegrowthrate.Growth_Rate, turtlesex.Sex, turtleSex.Year
	AS turtleRates
	FROM turtlegrowthrate JOIN turtlesex
		ON turtlegrowthrate.Year = turtlesex.Year
			ORDER BY turtlesex.Year;
        
SELECT turtlegrowthrate.Stranding_ID_Number, turtlegrowthrate.Growth_Rate, turtlesex.Sex
	FROM turtlegrowthrate JOIN turtlesex
		ON turtlegrowthrate.Year = turtlesex.Year
        GROUP BY turtlegrowthrate.Stranding_ID_Number, turtlegrowthrate.Growth_Rate, turtlesex.Sex