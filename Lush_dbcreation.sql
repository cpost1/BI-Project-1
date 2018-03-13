CREATE DATABASE LushCosmetics;
GO

USE LushCosmetics;
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
	EmployeeID int NOT NULL PRIMARY KEY,
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
	ProductNumber int NOT NULL,
	ListPrice float NOT NULL);
	

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

