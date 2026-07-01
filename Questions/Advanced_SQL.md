# Advanced SQL Interview Questions

This section covers CTEs, Window Functions, Recursive Queries, MERGE, PIVOT, Dynamic SQL, and Performance Optimization.

---

# 21. Common Table Expression (CTE)

```sql
WITH HighSalary AS
(
SELECT *
FROM Employees
WHERE Salary > 50000
)
SELECT *
FROM HighSalary;
```

---

# 22. RANK()

```sql
SELECT
FirstName,
Salary,
RANK() OVER
(
ORDER BY Salary DESC
) AS SalaryRank
FROM Employees;
```

---

# 23. DENSE_RANK()

```sql
SELECT
FirstName,
Salary,
DENSE_RANK() OVER
(
ORDER BY Salary DESC
) AS SalaryRank
FROM Employees;
```

---

# 24. NTILE()

Divide employees into four salary groups.

```sql
SELECT
FirstName,
Salary,
NTILE(4) OVER
(
ORDER BY Salary DESC
) AS SalaryGroup
FROM Employees;
```

---

# 25. LEAD()

```sql
SELECT
FirstName,
Salary,
LEAD(Salary)
OVER
(
ORDER BY Salary
) AS NextSalary
FROM Employees;
```

---

# 26. LAG()

```sql
SELECT
FirstName,
Salary,
LAG(Salary)
OVER
(
ORDER BY Salary
) AS PreviousSalary
FROM Employees;
```

---

# 27. Recursive CTE

```sql
WITH Numbers AS
(
SELECT 1 AS Num

UNION ALL

SELECT Num + 1
FROM Numbers
WHERE Num < 10
)

SELECT *
FROM Numbers;
```

---

# 28. MERGE Statement

Used to synchronize two tables.

```sql
MERGE TargetTable AS T
USING SourceTable AS S
ON T.ID=S.ID

WHEN MATCHED THEN
UPDATE SET T.Name=S.Name

WHEN NOT MATCHED THEN
INSERT(ID,Name)
VALUES(S.ID,S.Name);
```

---

# 29. PIVOT

Convert rows into columns.

```sql
SELECT *
FROM
(
SELECT DepartmentID,Salary
FROM Employees
) AS SourceTable

PIVOT
(
AVG(Salary)
FOR DepartmentID
IN([1],[2],[3],[4],[5])
) AS PivotTable;
```

---

# 30. Dynamic SQL

```sql
DECLARE @SQL NVARCHAR(MAX)

SET @SQL='SELECT * FROM Employees'

EXEC(@SQL);
```

---

## Topics Covered

- CTE
- Recursive CTE
- RANK
- DENSE_RANK
- NTILE
- LEAD
- LAG
- MERGE
- PIVOT
- Dynamic SQL
