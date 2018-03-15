/* Lush Cosmetics: Chris Post, Alexis Cohen, Pierre Moutschen */
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


/* Query 2 - Show the sum of all the sales made*/

SELECT SUM(SalesTotal) AS TotalSales 
FROM Sales;

/* Query 3 - Which product(s) have the ingredient olive oil*/
SELECT a.ProductName, b.IngredientsName
FROM Product as a INNER JOIN Ingredients as b
ON a.IngredientID = b.IngredientID
WHERE b.IngredientsName = 'Olive_Oil'; 


/* Query 4 - Show Employee Name that made sales greater than $200*/
SELECT Employees.FirstName, Employees.LastName
FROM Employees
WHERE EmployeeID IN (SELECT SaleID
                       FROM Sales 
                      WHERE Sales.SalesTotal > 200 );
;


/*Finding out which sales have made with a sales representative.
Left outer join is used to pull date entries where EmployeeID is not null in the sales table*/
SELECT Sales.SaleID
	,Sales.SalesTotal
FROM  Employees
	left outer join Sales
	on  Employees.EmployeeID = Sales.EmployeeID 
;
