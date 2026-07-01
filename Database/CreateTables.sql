/*
=========================================================
SQL Interview Questions
Database Schema
Author : Aditya Mehra
Repository : sql-interview-questions
=========================================================
*/

-- Create Database
CREATE DATABASE SQLInterviewDB;
GO

USE SQLInterviewDB;
GO

---------------------------------------------------------
-- Departments
---------------------------------------------------------
CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName VARCHAR(100) NOT NULL
);

---------------------------------------------------------
-- Employees
---------------------------------------------------------
CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    DOB DATE,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Salary DECIMAL(10,2),
    HireDate DATE,
    DepartmentID INT,
    ManagerID INT NULL,

    FOREIGN KEY (DepartmentID)
        REFERENCES Departments(DepartmentID),

    FOREIGN KEY (ManagerID)
        REFERENCES Employees(EmployeeID)
);

---------------------------------------------------------
-- Customers
---------------------------------------------------------
CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50),
    Email VARCHAR(100)
);

---------------------------------------------------------
-- Products
---------------------------------------------------------
CREATE TABLE Products
(
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

---------------------------------------------------------
-- Orders
---------------------------------------------------------
CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(12,2),

    FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);

---------------------------------------------------------
-- Order Details
---------------------------------------------------------
CREATE TABLE OrderDetails
(
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),

    FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),

    FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);

PRINT 'Database Schema Created Successfully.';
