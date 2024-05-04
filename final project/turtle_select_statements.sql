USE `Turtles` ;

SELECT * FROM turtles.turtlegrowth ;

SELECT * FROM turtles.turtlegrowth where Sex = "Female";

SELECT * FROM turtles.turtlegrowth where Year = 2004;

SELECT * FROM turtles.sexgrowthrate;

SELECT * FROM turtles.sexgrowthrate where Growth_Rate > 2.0;

SELECT * FROM turtles.sexgrowthrate where Sex = "Male";

/*
SELECT * FROM sexgrowthrate JOIN turtleageyear
	ON sexgrowthrate.Straightline_Carapace_Length = turtleageyear.Stranding_ID_Number;


SELECT offices.city, employees.lastName, employees.firstName, employees.jobTitle, employees.email
	AS jobTitle
	FROM employees JOIN offices
		ON employees.officeCode = offices.officeCode
			ORDER BY offices.city, employees.lastName;
            
SELECT offices.city, employees.jobTitle, employees.lastName, employees.firstName, employees.email
	FROM employees JOIN offices
		ON employees.officeCode = offices.officeCode
		GROUP BY offices.city, employees.jobTitle, employees.lastName, employees.firstName, employees.email
		HAVING COUNT(*) >= 2;

        
SELECT offices.city, employees.jobTitle, employees.lastName, employees.firstName, employees.email
	FROM employees JOIN offices
		ON employees.officeCode = offices.officeCode
        GROUP BY offices.city, employees.jobTitle, employees.lastName, employees.firstName, employees.email;
*/
