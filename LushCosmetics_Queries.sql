
USE LushCosmeticsDB; 

SELECT SaleID, CustomerID, EmployeeID, ProductID, SalesTotal, SaleDate, OrderQuantity 
FROM Sales

SELECT CustomerID, FirstName, LastName, CustomerAddress, PhoneNumber, CreditCardNumber
FROM Customers

SELECT EmployeeID, FirstName, LastName, Title, DateHired, Age
FROM Employees

SELECT ProductID, ProductName, IngredientID, ProductCategory, ProductNumber
FROM Product

SELECT IngredientID, IngredientsName, Supplier, Price
FROM Ingredients 


/* Query 2 */

SELECT SUM(SalesTotal) AS TotalSales 
FROM LushCosmeticsDB.Sales;

/*Query 3*/
SELECT a.SalesTotal, a.SaleID, a.SaleDate, b.FirstName , b.LastName
FROM Sales as a INNER JOIN Employees as b
ON a.EmployeeID = b.EmployeeID;

/*Query 4*/
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
