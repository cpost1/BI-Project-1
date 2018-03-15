/* Lush Cosmetics: Chris Post, Alexis Cohen, Pierre Moutschen */
USE LushCosmeticsDB; 

SELECT *
FROM Sales;

SELECT *
FROM Customers;

SELECT *
FROM Employees;

SELECT *
FROM Product;

SELECT *
FROM Ingredients;


/*Finding out which customers have made purchases without using a sales representative.
Left outer join is used to pull date entries where EmployeeID is not null in the sales table*/
SELECT Customers.FirstName
	,Customers.LastName
FROM Sales 
	left outer join Employees
	on  Employees.EmployeeID = Sales.EmployeeID 
	join Customers
	on Customers.CustomerID = Sales.CustomerID
where Sales.EmployeeID is not null
;
