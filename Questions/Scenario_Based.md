# Scenario Based SQL Interview Questions

These are real-world SQL interview scenarios commonly asked in product-based companies and enterprise organizations.

---

# 31. Find Duplicate Email Addresses

```sql
SELECT
Email,
COUNT(*)
FROM Employees
GROUP BY Email
HAVING COUNT(*) > 1;
```

---

# 32. Find Employees Who Never Placed Any Orders

```sql
SELECT
E.EmployeeID,
E.FirstName
FROM Employees E
LEFT JOIN Orders O
ON E.EmployeeID = O.CustomerID
WHERE O.OrderID IS NULL;
```

---

# 33. Top 3 Highest Salaries

```sql
SELECT TOP 3 *
FROM Employees
ORDER BY Salary DESC;
```

---

# 34. Employees Hired in Last 6 Months

```sql
SELECT *
FROM Employees
WHERE HireDate >= DATEADD(MONTH,-6,GETDATE());
```

---

# 35. Department with Highest Average Salary

```sql
SELECT TOP 1
DepartmentID,
AVG(Salary) AvgSalary
FROM Employees
GROUP BY DepartmentID
ORDER BY AvgSalary DESC;
```

---

# 36. Products Never Sold

```sql
SELECT
P.ProductName
FROM Products P
LEFT JOIN OrderDetails O
ON P.ProductID=O.ProductID
WHERE O.ProductID IS NULL;
```

---

# 37. Customers with More Than Five Orders

```sql
SELECT
CustomerID,
COUNT(*) OrdersCount
FROM Orders
GROUP BY CustomerID
HAVING COUNT(*)>5;
```

---

# 38. Monthly Sales Report

```sql
SELECT
YEAR(OrderDate) Year,
MONTH(OrderDate) Month,
SUM(TotalAmount) Sales
FROM Orders
GROUP BY
YEAR(OrderDate),
MONTH(OrderDate)
ORDER BY
Year,
Month;
```

---

# 39. Running Total

```sql
SELECT
OrderID,
OrderDate,
TotalAmount,
SUM(TotalAmount)
OVER
(
ORDER BY OrderDate
)
AS RunningTotal
FROM Orders;
```

---

# 40. Find Missing Employee IDs

```sql
SELECT
A.EmployeeID+1 MissingID
FROM Employees A
LEFT JOIN Employees B
ON A.EmployeeID+1=B.EmployeeID
WHERE B.EmployeeID IS NULL;
```

---

## Topics Covered

- Duplicate Records
- Missing Records
- Top N Queries
- Running Total
- Sales Reporting
- Aggregation
- Date Functions
- Real Interview Scenarios
