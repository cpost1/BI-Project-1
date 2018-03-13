CREATE DATABASE LushCosmetics;
GO

USE LushCosmetics;
GO

CREATE TABLE Sales(
  SaleID int NOT NULL PRIMARY KEY,
  CustomerID int NOT NULL,
  EmployeeID int NOT NULL,
  SaleTotal float NOT NULL,
  SaleDate datetime NOT NULL);

CREATE TABLE Customers(
  CustomerID int NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50)NOT NULL,
  CustomerAddress varchar(50) NOT NULL,
  Age tinyint NOT NULL);


CREATE TABLE Employees(
  EmployeeID int NOT NULL PRIMARY KEY,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  Title varchar(50) NOT NULL,
  DateHired datetime NOT NULL);


CREATE TABLE Product(

CREATE TABLE Ingredients(
	


ALTER TABLE Sales ADD CONSTRAINT FK_Sales_Customer 
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

GO

