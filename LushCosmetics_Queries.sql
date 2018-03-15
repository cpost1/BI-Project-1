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


/*Finding out which sales have made with a sales representative.
Left outer join is used to pull date entries where EmployeeID is not null in the sales table*/
SELECT Sales.SaleID
	,Sales.SalesTotal
FROM  Employees
	left outer join Sales
	on  Employees.EmployeeID = Sales.EmployeeID 
;
