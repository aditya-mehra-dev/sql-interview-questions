/*
=========================================================
Sample Data
SQL Interview Database
=========================================================
*/

USE SQLInterviewDB;
GO

---------------------------------------------------------
-- Departments
---------------------------------------------------------

INSERT INTO Departments (DepartmentName)
VALUES
('IT'),
('HR'),
('Finance'),
('Sales'),
('Operations');

---------------------------------------------------------
-- Employees
---------------------------------------------------------

INSERT INTO Employees
(
FirstName,
LastName,
Gender,
DOB,
Email,
Phone,
Salary,
HireDate,
DepartmentID,
ManagerID
)
VALUES
('Rahul','Sharma','Male','1997-02-15','rahul@gmail.com','9876543210',45000,'2022-01-10',1,NULL),

('Priya','Verma','Female','1995-05-12','priya@gmail.com','9876543211',52000,'2021-08-20',2,1),

('Amit','Singh','Male','1993-03-08','amit@gmail.com','9876543212',68000,'2020-03-15',1,1),

('Neha','Patel','Female','1996-09-18','neha@gmail.com','9876543213',58000,'2022-11-11',3,3),

('Vikas','Yadav','Male','1994-06-25','vikas@gmail.com','9876543214',72000,'2019-05-18',4,3),

('Sneha','Joshi','Female','1998-01-11','sneha@gmail.com','9876543215',41000,'2023-04-01',5,5);

---------------------------------------------------------
-- Customers
---------------------------------------------------------

INSERT INTO Customers
(CustomerName,City,Country,Email)
VALUES
('ABC Pvt Ltd','Delhi','India','abc@gmail.com'),
('XYZ Industries','Mumbai','India','xyz@gmail.com'),
('Tech Solutions','Pune','India','tech@gmail.com'),
('Global Traders','Indore','India','global@gmail.com'),
('Smart Retail','Bhopal','India','retail@gmail.com');

---------------------------------------------------------
-- Products
---------------------------------------------------------

INSERT INTO Products
(ProductName,Category,Price,Stock)
VALUES
('Laptop','Electronics',65000,20),
('Keyboard','Electronics',1200,150),
('Mouse','Electronics',700,180),
('Monitor','Electronics',14000,40),
('Printer','Office',18000,18),
('SSD 1TB','Storage',8500,55);

---------------------------------------------------------
-- Orders
---------------------------------------------------------

INSERT INTO Orders
(CustomerID,OrderDate,TotalAmount)
VALUES
(1,'2025-01-05',66200),
(2,'2025-01-12',18000),
(3,'2025-02-03',14700),
(4,'2025-02-18',8500),
(5,'2025-03-10',72000);

---------------------------------------------------------
-- Order Details
---------------------------------------------------------

INSERT INTO OrderDetails
(OrderID,ProductID,Quantity,UnitPrice)
VALUES
(1,1,1,65000),
(1,2,1,1200),

(2,5,1,18000),

(3,4,1,14000),
(3,3,1,700),

(4,6,1,8500),

(5,1,1,65000),
(5,2,2,1200),
(5,3,2,700);

PRINT 'Sample Data Inserted Successfully';
