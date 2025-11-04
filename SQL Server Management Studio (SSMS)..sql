-- ?? Step 1: Create and Use Database
CREATE DATABASE SSMS;
GO

USE SSMS;
GO


-- ?? Step 2: Create Tables
-------------------------------------------------
-- 1?? USERS TABLE
CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    Age INT,
    City NVARCHAR(100)
);

-- 2?? ROLES TABLE
CREATE TABLE Roles (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    RoleName NVARCHAR(50)
);

-- 3?? PRODUCTS TABLE
CREATE TABLE Products (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100),
    Price DECIMAL(10,2)
);

-- 4?? ORDERS TABLE
CREATE TABLE Orders (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT,
    ProductId INT,
    Quantity INT,
    FOREIGN KEY (UserId) REFERENCES Users(Id),
    FOREIGN KEY (ProductId) REFERENCES Products(Id)
);

-- 5?? PAYMENTS TABLE
CREATE TABLE Payments (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    OrderId INT,
    Amount DECIMAL(10,2),
    Status NVARCHAR(50),
    FOREIGN KEY (OrderId) REFERENCES Orders(Id)
);
-------------------------------------------------


-- ?? USERS TABLE
-------------------------------------------------
-- ? Insert 10 Users
INSERT INTO Users (Name, Email, Age, City) VALUES
('Ayaan Maniar', 'ayaan@example.com', 21, 'Karachi'),
('Ali Khan', 'ali@example.com', 23, 'Lahore'),
('Sara Ahmed', 'sara@example.com', 22, 'Islamabad'),
('Hassan Raza', 'hassan@example.com', 25, 'Karachi'),
('Fatima Noor', 'fatima@example.com', 20, 'Hyderabad'),
('Bilal Iqbal', 'bilal@example.com', 27, 'Quetta'),
('Zara Sheikh', 'zara@example.com', 24, 'Multan'),
('Hamza Malik', 'hamza@example.com', 26, 'Karachi'),
('Maryam Tariq', 'maryam@example.com', 23, 'Peshawar'),
('Usman Javed', 'usman@example.com', 22, 'Lahore');

-- ?? Update Users
UPDATE Users SET City = 'Islamabad', Age = 24 WHERE Id = 2;
UPDATE Users SET City = 'Lahore', Age = 26 WHERE Id = 5;

-- ? Delete a User
DELETE FROM Users WHERE Id = 10;

-- ?? View Users
SELECT * FROM Users;
-------------------------------------------------


-- ????? ROLES TABLE
-------------------------------------------------
-- ? Insert 10 Roles
INSERT INTO Roles (RoleName) VALUES
('Admin'),
('Customer'),
('Manager'),
('Sales'),
('Support'),
('Marketing'),
('Finance'),
('Developer'),
('Designer'),
('HR');

-- ?? Update Role
UPDATE Roles SET RoleName = 'Team Lead' WHERE Id = 3;

-- ? Delete Role
DELETE FROM Roles WHERE Id = 10;

-- ?? View Roles
SELECT * FROM Roles;
-------------------------------------------------


-- ?? PRODUCTS TABLE
-------------------------------------------------
-- ? Insert 10 Products
INSERT INTO Products (ProductName, Price) VALUES
('Laptop', 1200.00),
('Keyboard', 50.00),
('Mouse', 25.00),
('Monitor', 300.00),
('Headphones', 80.00),
('Printer', 150.00),
('Webcam', 60.00),
('Router', 100.00),
('Microphone', 90.00),
('SSD Drive', 200.00);

-- ?? Update Products
UPDATE Products SET Price = 1300.00 WHERE Id = 1;
UPDATE Products SET Price = 55.00 WHERE Id = 2;

-- ? Delete Product
DELETE FROM Products WHERE Id = 10;

-- ?? View Products
SELECT * FROM Products;
-------------------------------------------------


-- ?? ORDERS TABLE
-------------------------------------------------
-- ? Insert 10 Orders
INSERT INTO Orders (UserId, ProductId, Quantity) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 1),
(7, 7, 1),
(8, 8, 3),
(9, 9, 1),
(1, 2, 2);

-- ?? Update Order
UPDATE Orders SET Quantity = 5 WHERE Id = 2;

-- ? Delete Order
DELETE FROM Orders WHERE Id = 10;

-- ?? View Orders
SELECT * FROM Orders;
-------------------------------------------------


-- ?? PAYMENTS TABLE
-------------------------------------------------
-- ? Insert 10 Payments
INSERT INTO Payments (OrderId, Amount, Status) VALUES
(1, 1200.00, 'Paid'),
(2, 100.00, 'Pending'),
(3, 25.00, 'Paid'),
(4, 300.00, 'Paid'),
(5, 160.00, 'Pending'),
(6, 150.00, 'Paid'),
(7, 60.00, 'Paid'),
(8, 300.00, 'Pending'),
(9, 90.00, 'Paid'),
(1, 100.00, 'Refunded');

-- ?? Update Payments
UPDATE Payments SET Status = 'Paid' WHERE Id = 2;
UPDATE Payments SET Amount = 350.00 WHERE Id = 4;

-- ? Delete Payment
DELETE FROM Payments WHERE Id = 10;

-- ?? View Payments
SELECT * FROM Payments;
-------------------------------------------------

-- ? Optional: View all tables at once
SELECT * FROM Users;
SELECT * FROM Roles;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Payments;
-------------------------------------------------
