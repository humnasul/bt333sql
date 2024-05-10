USE `ClassicModels` ;

SELECT * FROM classicmodels.offices;

SELECT * FROM classicmodels.offices where city = "Boston";

SELECT * FROM classicmodels.offices where country = "USA";

SELECT * FROM classicmodels.employees;

SELECT * FROM classicmodels.employees where lastName = "Patterson";

SELECT * FROM classicmodels.employees where email = "ykato@classicmodelcars.com";

SELECT * FROM employees JOIN offices
	ON employees.officeCode = offices.officeCode;
    
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
