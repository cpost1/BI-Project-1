CREATE DATABASE LushCosmeticsDB;
GO

USE LushCosmeticsDB;
GO

CREATE TABLE Sales(
	SaleID int NOT NULL PRIMARY KEY,
	CustomerID int NOT NULL,
	EmployeeID int NOT NULL,
	ProductID int NOT NULL,
	SalesTotal float NOT NULL,
	SaleDate datetime NOT NULL,
	OrderQuantity int NOT NULL);

CREATE TABLE Customers(
	CustomerID int NOT NULL PRIMARY KEY,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50)NOT NULL,
	CustomerAddress varchar(50) NOT NULL,
	PhoneNumber int NOT NULL,
	CreditCardNumber int NOT NULL);


CREATE TABLE Employees(
	EmployeeID int PRIMARY KEY,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50) NOT NULL,
	Title varchar(50) NOT NULL,
	DateHired datetime NOT NULL,
	Age tinyint NOT NULL);


CREATE TABLE Product(
	ProductID int NOT NULL PRIMARY KEY,
	IngredientID int NOT NULL,
	ProductName varchar(50) NOT NULL,
	ProductCategory varchar(50) NOT NULL,
	ProductNumber int NOT NULL);
	

CREATE TABLE Ingredients(
	IngredientID int NOT NULL PRIMARY KEY,
	IngredientsName varchar(50) NOT NULL,
	Supplier varchar(50) NOT NULL,
	Price float NOT NULL);
	

ALTER TABLE Sales ADD CONSTRAINT FK_Sales_Customer 
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Sales ADD CONSTRAINT FK_Sales_Emoloyee 
FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

ALTER TABLE Sales ADD CONSTRAINT FK_Sales_Product 
FOREIGN KEY (ProductID) REFERENCES Product(ProductID);

ALTER TABLE Product ADD CONSTRAINT FK_Product_Ingredient 
FOREIGN KEY (IngredientID) REFERENCES Ingredients(IngredientID);

GO

INSERT INTO Sales(SaleID, CustomerID, EmployeeID, ProductID, SalesTotal, SaleDate, OrderQuantity) values
(1, 1, 1, 1, 32, '2016-03-04 08:43:12.000', 4),
(2, 5, 3, 5, 240, '2017-05-12 08:43:12.000', 12), 
(3, 1, NULL, 4, 402, '2018-01-20 08:43:12.000', 13),
(4, 3, 8, 9, 4202, '2018-03-10 08:43:12.000', 2),
(5, 6, NULL, 3, 124, '2018-03-10 08:43:12.000', 3),
(6, 10, NULL, 2, 231, '2018-03-10 08:43:12.000',1),
(7, 7, 4, 10, 134, '2018-03-10 08:43:12.000', 5),
(8, 2, NULL, 7, 53, '2018-03-10 08:43:12.000', 2),
(9, 8, NULL, 8, 121, '2018-03-10 08:43:12.000', 3),
(10, 9, NULL, 6, 147, '2018-03-10 08:43:12.000', 4);

INSERT INTO Customers(CustomerID, FirstName, LastName, CustomerAddress, PhoneNumber, CreditCardNumber) values
()

INSERT INTO Employees(EmployeeID, FirstName, LastName, Title, DateHired, Age) values
(1, 'Chris', 'Post', 'Sales Representative')

INSERT INTO Product(ProductID, IngredientID, ProductName, ProductCategory, ProductNumber) values
()

INSERT INTO Ingredients(IngredientID, IngredientsName, Supplier, Price) values
()