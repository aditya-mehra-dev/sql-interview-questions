# Intermediate SQL Interview Questions

This section covers JOINs, GROUP BY, HAVING, Aggregate Functions, Subqueries, and Window Functions.

---

# 11. INNER JOIN

Display employee name with department name.

```sql
SELECT
E.FirstName,
E.LastName,
D.DepartmentName
FROM Employees E
INNER JOIN Departments D
ON E.DepartmentID = D.DepartmentID;
```

---

# 12. LEFT JOIN

Display all employees even if department is missing.

```sql
SELECT
E.FirstName,
D.DepartmentName
FROM Employees E
LEFT JOIN Departments D
ON E.DepartmentID=D.DepartmentID;
```

---

# 13. RIGHT JOIN

Display all departments including those without employees.

```sql
SELECT
D.DepartmentName,
E.FirstName
FROM Employees E
RIGHT JOIN Departments D
ON E.DepartmentID=D.DepartmentID;
```

---

# 14. GROUP BY

Count employees department wise.

```sql
SELECT
DepartmentID,
COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DepartmentID;
```

---

# 15. HAVING

Departments having more than one employee.

```sql
SELECT
DepartmentID,
COUNT(*)
FROM Employees
GROUP BY DepartmentID
HAVING COUNT(*)>1;
```

---

# 16. MAX Salary

```sql
SELECT MAX(Salary)
FROM Employees;
```

---

# 17. MIN Salary

```sql
SELECT MIN(Salary)
FROM Employees;
```

---

# 18. Highest Paid Employee

```sql
SELECT TOP 1 *
FROM Employees
ORDER BY Salary DESC;
```

---

# 19. Second Highest Salary

```sql
SELECT MAX(Salary)
FROM Employees
WHERE Salary <
(
SELECT MAX(Salary)
FROM Employees
);
```

---

# 20. ROW_NUMBER()

```sql
SELECT
ROW_NUMBER() OVER
(
ORDER BY Salary DESC
)
AS RowNo,
FirstName,
Salary
FROM Employees;
```

---

## Topics Covered

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- GROUP BY
- HAVING
- Aggregate Functions
- Subqueries
- Window Functions
