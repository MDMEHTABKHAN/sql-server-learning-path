# 🗄️ SQL Server Learning Journey

This repository contains structured learning resources, queries, and practice examples based on my journey mastering **Microsoft SQL Server**. It covers everything from basic commands to advanced optimization techniques.

---

## 📚 Categories Covered

### 🟢 Category 1: Basic SQL (The Fundamentals)

- ✅ Understanding Relational Databases  
- ✅ Installing SQL Server & SSMS  
- ✅ Creating Databases and Tables  
- ✅ Data Types: `INT`, `VARCHAR`, `DATE`, `DECIMAL`, etc.  

#### 🛠️ Data Manipulation Language (DML)
- `SELECT`, `DISTINCT`
- `INSERT INTO`
- `UPDATE`
- `DELETE`

#### 🔎 Filtering and Sorting Data
- `WHERE`, `AND`, `OR`, `BETWEEN`, `LIKE`, `IN`, `NOT`
- `ORDER BY ASC/DESC`
- `TOP`, `OFFSET FETCH`

#### ⚙️ Data Definition Language (DDL)
- `ALTER TABLE` (Add/Drop/Modify columns)
- `TRUNCATE TABLE` vs `DELETE`
- `DROP TABLE`

---

### 🟡 Category 2: Intermediate SQL (Joins & Aggregates)

#### 🔗 Joins
- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- `FULL OUTER JOIN`
- `SELF JOIN`

#### 📊 Aggregations & Grouping
- `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- `GROUP BY`
- `HAVING` vs `WHERE`

#### 🌀 Subqueries
- Subqueries in `SELECT`, `WHERE`, `FROM`
- Correlated vs Non-Correlated Subqueries

#### 👁️ Views
- `CREATE VIEW`
- Managing Views

---

### 🔴 Category 3: Advanced SQL (Performance & Automation)

#### 🧠 Advanced Query Techniques
- `WITH` Common Table Expressions (CTEs)
- `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, `LAG()` (Window Functions)
- `PIVOT` and `UNPIVOT`
- Recursive CTEs for hierarchical data

#### ⚙️ Stored Logic & Automation
- `CREATE PROCEDURE` (Stored Procedures)
- `CREATE FUNCTION` (User-Defined Functions)
- `CREATE TRIGGER` (Automation with DML Events)
- Transactions: `BEGIN`, `COMMIT`, `ROLLBACK`

#### 🚀 Performance Tuning
- Indexing (Clustered vs Non-Clustered)
- Reading Execution Plans
- Database Normalization (1NF, 2NF, 3NF, BCNF)