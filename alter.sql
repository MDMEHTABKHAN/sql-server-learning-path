
CREATE TABLE Departments (
    dept_id INT IDENTITY(1,1) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dept_id INT,
    salary DECIMAL(10,2),
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Projects (
    proj_id INT IDENTITY(1,1) PRIMARY KEY,
    proj_name VARCHAR(100),
    emp_id INT,
    CONSTRAINT fk_emp FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- ALTER commands in MS SQL Server
ALTER TABLE Employees ADD email VARCHAR(150);
ALTER TABLE Employees ALTER COLUMN salary DECIMAL(12,2);
ALTER TABLE Employees DROP COLUMN email;
EXEC sp_rename 'Employees.name', 'full_name', 'COLUMN';
ALTER TABLE Employees ADD CONSTRAINT fk_dept2 FOREIGN KEY (dept_id) REFERENCES Departments(dept_id);
ALTER TABLE Employees DROP CONSTRAINT fk_dept2;
EXEC sp_rename 'Employees', 'Staff';
