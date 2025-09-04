-- Create Employees Table
CREATE TABLE Emp(
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2)
);


INSERT INTO Emp (EmpID, Name, DepartmentID, Salary) VALUES
(1, 'John Doe', 101, 50000.00),
(2, 'Jane Smith', 102, 60000.00),
(3, 'Jim Brown', 101, 55000.00),
(4, 'Jake White', 103, 70000.00),
(5, 'Jill Black', 102, 65000.00),
(6, 'Jack Green', 101, 62000.00),
(7, 'Jenny Blue', 102, 58000.00),
(8, 'James Red', 103, 72000.00),
(9, 'Jasmine Black', 101, 61000.00),
(10, 'Jackie White', 102, 59000.00),
(11, 'Jordan Green', 103, 73000.00),
(12, 'Jill White', 101, 62000.00),
(13, 'Jake Black', 102, 60000.00),
(14, 'Jasmine White', 103, 74000.00),
(15, 'James Green', 101, 61000.00);


SELECT * FROM Emp;



SELECT * FROM Emp WHERE DepartmentID IS NULL;



-- Second Highest Salary
SELECT MAX(salary) AS SecondHighestSalary FROM Emp
WHERE salary < (SELECT MAX(salary) FROM Emp);


SELECT MAX(salary) AS HighestSalary FROM Emp
WHERE salary = (SELECT MAX(salary) FROM Emp);



SELECT name, departmentID
FROM Emp WHERE salary = (SELECT MAX(salary) FROM Emp);


SELECT name, departmentID
FROM Emp WHERE salary > (SELECT AVG(salary) FROM Emp);


-- Clustered Index
CREATE CLUSTERED INDEX idx_name
ON Emp(Name);

-- Non-Clustered Index
CREATE NONCLUSTERED INDEX idx_empname
ON Emp(Name);



-- Drop Indexes
DROP INDEX idx_name ON Emp;
DROP INDEX idx_empname ON Emp;



-- show indexes
EXEC sp_helpindex 'Emp';



-- start a transaction
BEGIN TRANSACTION;

-- emp operation

UPDATE Emp SET salary = salary + 5000 WHERE EmpID = 1;


-- Create a savepoint

SAVE TRANSACTION SavePoint1;



UPDATE Emp SET salary = salary + 3000 WHERE EmpID = 2;

-- Rollback to savepoint

ROLLBACK TRANSACTION SavePoint1;


-- Commit the transaction
COMMIT TRANSACTION;

