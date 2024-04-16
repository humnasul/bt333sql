USE `ClassicModels` ;

SELECT * FROM classicmodels.offices;

SELECT * FROM classicmodels.offices where city = "Ontario";

SELECT * FROM classicmodels.offices where country = "Canada";

SELECT * FROM classicmodels.employees;

SELECT * FROM classicmodels.employees where firstName = "Leslie";

SELECT * FROM classicmodels.employees where jobTitle = "President";

SELECT * FROM classicmodels.customers;

SELECT * FROM classicmodels.customers where city = "Las Vegas";

SELECT * FROM classicmodels.customers where country = "USA";

SELECT * FROM customers JOIN employees
	ON customers.contactFirstName = employees.firstName;
    
SELECT offices.officeCode, offices.city, customers.customerNumber, customers.city
	FROM offices JOIN customers
		ON offices.country = customers.country
			ORDER BY offices.city, customers.contactLastName;
            
SELECT offices.officeCode, offices.city, customers.customerNumber, customers.city
	FROM offices JOIN customers
		ON offices.country = customers.country
		GROUP BY offices.officeCode, offices.postalCode, customers.customerNumber, customers.postalCode;