CREATE DATABASE LushCosmeticsDB;
GO

USE LushCosmeticsDB;
GO

CREATE TABLE Sales(
	SaleID int NOT NULL PRIMARY KEY,
	CustomerID int NOT NULL,
	EmployeeID int,
	ProductID int NOT NULL,
	SalesTotal float NOT NULL,
	SaleDate datetime NOT NULL,
	OrderQuantity int NOT NULL);

CREATE TABLE Customers(
	CustomerID int NOT NULL PRIMARY KEY,
	FirstName varchar(50) NOT NULL,
	LastName varchar(50)NOT NULL,
	CustomerAddress varchar(50) NOT NULL,
	PhoneNumber varchar(50) NOT NULL,
	CreditCardNumber varchar(50) NOT NULL);


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
(2, 2, 2, 2, 240, '2017-05-12 08:43:12.000', 12), 
(3, 3, NULL, 3, 402, '2018-01-20 08:43:12.000', 13),
(4, 4, 4, 4, 4202, '2018-03-10 08:43:12.000', 2),
(5, 5, NULL, 5, 124, '2018-03-10 08:43:12.000', 3),
(6, 6, NULL, 6, 231, '2018-03-10 08:43:12.000',1),
(7, 7, 7, 7, 134, '2018-03-10 08:43:12.000', 5),
(8, 8, NULL, 8, 53, '2018-03-10 08:43:12.000', 2),
(9, 9, NULL, 9, 121, '2018-03-10 08:43:12.000', 3),
(10, 10, NULL, 10, 147, '2018-03-10 08:43:12.000', 4);

INSERT INTO Customers(CustomerID, FirstName, LastName, CustomerAddress, PhoneNumber, CreditCardNumber) values
(1, 'Nicki', 'Hodgdon', '01453', '2512846098', '4485539789963790'),
(2, 'Donetta', 'Casselman', '46544', '7189579961', '4929351766116770'),
(3, 'Fletcher', 'Depaul', '44203', '2142402985', '4556210736823560'),
(4, 'Waltraud', 'Wince', '60142', '7192797978', '4024007172117200'),
(5, 'Lauri', 'Lemos', '42001', '2707793966', '4532758372114020'),
(6, 'Somer', 'Fischbach', '23834', '3392373386', '5484086800178580'),
(7, 'Ellamae', 'Shumpert', '02852', '2036693778', '5111151011342550'),
(8, 'Rodrigo', 'Collar', '23832', '2819572317', '5479094874789780'),
(9, 'Tegan', 'Lackner', '61350', '6714711369', '5272570202477050'),
(10, 'Hosea', 'Jacome', '85718', '2604232548', '5526826910034710');

INSERT INTO Employees(EmployeeID, FirstName, LastName, Title, DateHired, Age) values
(1, 'Chris', 'Post', 'Sales Representative', '2016-03-04 08:43:12.000', 52),
(2, 'Christain', 'Gallagher', 'Sales Representative', '2012-08-22 09:53:56.223', 32),
(3, 'Alexis', 'Cohen', 'IT', '2014-10-01 09:53:56.223', 24),
(4, 'Pierre', 'Morris', 'Sales Representative', '2010-01-22 09:53:56.223', 42),
(5, 'Jaylen', 'Brown','Marketing', '2015-05-23 09:53:56.223', 64),
(6, 'Jayson','Tatum', 'Marketing', '2016-08-22 09:53:56.223', 29),
(7, 'Kelly', 'Flynn', 'Sales Representative', '2017-08-22 09:53:56.223', 45),
(8, 'Nicole', 'Davis', 'Human Relations', '2018-01-22 09:53:56.223', 38),
(9, 'Brad', 'Stevens', 'Analyst', '2017-04-12 09:53:56.223', 42),
(10, 'Marcus', 'Smart', 'Accountant', '2012-04-22 09:53:56.223', 34);

INSERT INTO Product(ProductID, IngredientID, ProductName, ProductCategory, ProductNumber) values
(1, 1, 'Dark Angels', 12, 700),
(2, 2, 'Mask of Managmity',3, 234),
(3, 3, 'Ocean Salt', 12, 765),
(4, 4, 'Ocean Salt', 12, 765),
(5, 5, 'Ocean Salt', 12, 765),
(6, 6, 'Ugai Mouthwash Tab', 5, 127),
(7, 7, 'Oatafix', 3, 07964210),
(8, 8, 'Beautiful Day Shower Gel', 1, 564),
(9, 9, 'Charity Pot Lotion', 2, 340),
(10, 10, 'Hottie Body Bar', 3, 120);

INSERT INTO Ingredients(IngredientID, IngredientsName, Supplier, Price) values
(1, 'Coconut_Oil', 'CocoMart', 0.80),
(2, 'Olive_Oil', 'OliveHeaven', 0.70),
(3, 'Palm_Oil', 'PalmEmporium', 0.93),
(4, 'Shea_Butter', 'SheaValue', 0.43),
(5, 'Almond_Butter', 'AlmondNutz', 0.23),
(6, 'Vanilla', 'VanillaCity', 0.17),
(7, 'Sodium_Hydroxide', 'Chemixx', 0.02),
(8, 'Sugar', 'SweetDeal', 0.12),
(9, 'Cactus', 'Spikebucks', 0.66),
(10, 'Magic', 'GrandIllusion', 0.88);

GO