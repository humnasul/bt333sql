USE `Turtles` ;

SELECT * FROM turtles.turtlesex ;

SELECT * FROM turtles.turtlesex where Sex = "Female";

SELECT * FROM turtles.turtlesex where Year = 2004;

SELECT * FROM turtles.turtlegrowthrate;

SELECT * FROM turtles.turtlegrowthrate where Growth_Rate > 2.0;

SELECT * FROM turtles.turtlesex where Sex = "Male";

SELECT * FROM turtlegrowthrate JOIN turtlesex
	ON turtlegrowthrate.Year = turtlesex.Year;

SELECT turtlegrowthrate.Growth_Rate, turtlesex.Sex, turtleSex.Year
	AS turtleRates
	FROM turtlegrowthrate JOIN turtlesex
		ON turtlegrowthrate.Year = turtlesex.Year
			ORDER BY turtlesex.Year;
        
SELECT turtlegrowthrate.Stranding_ID_Number, turtlegrowthrate.Growth_Rate, turtlesex.Sex
	FROM turtlegrowthrate JOIN turtlesex
		ON turtlegrowthrate.Year = turtlesex.Year
        GROUP BY turtlegrowthrate.Stranding_ID_Number, turtlegrowthrate.Growth_Rate, turtlesex.Sex