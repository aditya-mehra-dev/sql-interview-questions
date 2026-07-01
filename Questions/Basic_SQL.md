# Basic SQL Interview Questions

This document contains beginner-friendly SQL interview questions with answers.

---

## 1. What is SQL?

SQL (Structured Query Language) is a language used to manage and manipulate relational databases.

---

## 2. What is the difference between DELETE, TRUNCATE and DROP?

| DELETE | TRUNCATE | DROP |
|---------|-----------|------|
| Removes rows | Removes all rows | Removes entire table |
| Can use WHERE | No WHERE | Deletes structure |
| Can rollback | Usually no | Cannot recover easily |

---

## 3. Display all employees.

```sql
SELECT *
FROM Employees;
```

---

## 4. Display employee names only.

```sql
SELECT FirstName, LastName
FROM Employees;
```

---

## 5. Display employees earning more than ₹50,000.

```sql
SELECT *
FROM Employees
WHERE Salary > 50000;
```

---

## 6. Display employees in the IT department.

```sql
SELECT *
FROM Employees
WHERE DepartmentID = 1;
```

---

## 7. Sort employees by salary (Highest First).

```sql
SELECT *
FROM Employees
ORDER BY Salary DESC;
```

---

## 8. Display first five employees.

```sql
SELECT TOP 5 *
FROM Employees;
```

---

## 9. Count total employees.

```sql
SELECT COUNT(*)
FROM Employees;
```

---

## 10. Find average salary.

```sql
SELECT AVG(Salary)
FROM Employees;
```

---

## Skills Covered

- SELECT
- WHERE
- ORDER BY
- TOP
- COUNT
- AVG
