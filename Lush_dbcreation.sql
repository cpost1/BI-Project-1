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
	OrderQuantity int NOT NULL)
  ;

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
	Product ID

CREATE TABLE Ingredients(
	


ALTER TABLE Sales ADD CONSTRAINT FK_Sales_Customer 
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

GO

