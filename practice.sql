SELECT * FROM employee;

SELECT * FROM project;

SELECT employee_name, salary, department
FROM employee;



SELECT project_name, client_name, start_date
FROM project;   


SELECT project_name, client_name
FROM project;


SELECT * FROM employee WHERE salary > 60000;

SELECT * FROM employee WHERE salary BETWEEN 60000 AND 70000;

SELECT  * FROM employee WHERE department = 'IT';


SELECT * FROM employee WHERE department = 'HR';



SELECT  * FROM employee WHERE department IN ('Finance', 'IT');

SELECT  * FROM employee WHERE department NOT IN ('HR');


SELECT * FROM employee WHERE employee_name LIKE 'A%';

SELECT * FROM employee WHERE employee_name LIKE '%n';


SELECT * FROM employee WHERE employee_name LIKE '%sh%';


SELECT * FROM employee WHERE department IS NULL;




SELECT * FROM employee ORDER BY salary ASC;


SELECT * FROM employee ORDER BY salary DESC;


SELECT * FROM employee ORDER BY department ASC, salary DESC;


SELECT employee_name AS Name, salary AS MonthlySalary FROM employee;


SELECT DISTINCT employee_id FROM employee;



UPDATE employee SET salary = 60000 WHERE employee_id = 101;

-- Increase salary by 10% for IT employees
UPDATE employee
SET salary = salary * 1.10
WHERE employee_id = 2;




DELETE FROM employee WHERE employee_id = 103;

DELETE FROM employee WHERE employee_id <= 4;




SELECT TOP 5 * FROM employee ORDER BY salary DESC;




SELECT * FROM employee
ORDER BY salary DESC
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY;



SELECT LEN('Microsoft SQL');

SELECT LEN(employee_name) FROM employee;


SELECT SUBSTRING('Microsoft SQL Server', 11, 6);

SELECT SUBSTRING(employee_name, 1, 6) FROM employee;

SELECT REPLACE('Hello World', 'World', 'SQL');



SELECT TRIM('   SQL Server   ');
SELECT LTRIM('   SQL');
SELECT RTRIM('SQL   ');

SELECT UPPER(employee_name) FROM employee;
SELECT LOWER(employee_name) FROM employee;



SELECT ROUND(123.4567, 2);  

-- rounds upp
SELECT CEILING(10.3);  -- 11

-- rounds down
SELECT FLOOR(10.7);    -- 10




SELECT ABS(-25);  -- 25




SELECT POWER(2, 3);  -- 8
SELECT SQRT(81);     -- 9





SELECT department, SUM(salary) AS total_salary
FROM employee
GROUP BY department;


SELECT department,
       SUM(salary) AS max_salary,
       AVG(salary) AS avg_salary,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM employee
GROUP BY department;



SELECT department, AVG(salary) AS acg_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 60000;


SELECT department, SUM(salary) AS total_salary
FROM employee
WHERE salary > 40000
GROUP BY department;

SELECT e.employee_name, e.department, p.project_name, p.client_name
FROM employee e
INNER JOIN project p ON e.employee_id = p.employee_id;


SELECT e.employee_name, e.department, p.project_name, p.client_name
FROM employee e
INNER JOIN project p ON e.employee_id = p.employee_id
WHERE e.department = 'IT';

SELECT e.employee_name, e.department, p.project_name, p.client_name
FROM employee AS e
INNER JOIN project AS p ON e.employee_id = p.employee_id
WHERE e.salary > 60000;





SELECT e.employee_name, p.project_name
FROM employee e
LEFT JOIN project p ON e.employee_id = p.employee_id;


SELECT e.employee_name, e.department, p.project_name, p.client_name
FROM employee AS e
LEFT JOIN project AS p ON e.employee_id = p.employee_id
WHERE e.salary > 60000;


SELECT e.employee_name, e.department, p.project_name, p.client_name
FROM employee AS e
LEFT JOIN project AS p ON e.employee_id = p.employee_id
WHERE e.employee_id IS NULL;


SELECT e.employee_name, p.project_name
FROM employee e
RIGHT JOIN project p ON e.employee_id = p.employee_id;



SELECT e.employee_name, p.project_name
FROM employee e
FULL OUTER JOIN project p ON e.employee_id = p.employee_id;


SELECT e.employee_name, p.project_name
FROM employee e
CROSS JOIN project p;





SELECT employee_name, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);


SELECT employee_name
FROM employee
WHERE employee_id IN (SELECT employee_id FROM project);


SELECT employee_name, department, salary
FROM employee e
WHERE salary > (
    SELECT AVG(salary) 
    FROM employee 
    WHERE department = e.department
);

SELECT employee_name FROM employee
UNION
SELECT client_name FROM project;


SELECT employee_name FROM employee
UNION ALL
SELECT client_name FROM project;



SELECT employee_name FROM employee
INTERSECT
SELECT client_name FROM project;


SELECT employee_name FROM employee
EXCEPT
SELECT client_name FROM project;





SELECT e.employee_name, p.project_name, e.salary
FROM employee e
LEFT JOIN project p 
    ON e.employee_id = p.employee_id
ORDER BY e.salary DESC;


SELECT e.employee_name, COUNT(p.project_id) AS total_projects
FROM employee e
LEFT JOIN project p 
    ON e.employee_id = p.employee_id
GROUP BY e.employee_name
ORDER BY total_projects DESC;


CREATE VIEW employee_view AS
SELECT employee_name, department, salary
FROM employee;


SELECT * FROM employee_view;

DROP VIEW employee_view;



CREATE VIEW EmployeeProjectView AS
SELECT e.employee_id, e.employee_name, p.project_name, p.client_name
FROM employee e
INNER JOIN project p ON e.employee_id = p.employee_id;


SELECT * FROM EmployeeProjectView;

DROP VIEW EmployeeProjectView;


CREATE INDEX IX_Employee_Unique
ON employee(employee_name);


DROP INDEX IX_Employee_Unique ON employee;

CREATE UNIQUE INDEX IX_Employee_Unique
ON employee(employee_name);

DROP INDEX IX_Employee_Unique ON employee;


-- Create Procedure
CREATE PROCEDURE GetEmployees
AS
BEGIN
    SELECT employee_id, employee_name, salary 
    FROM employee;
END;

EXEC GetEmployees;


CREATE PROCEDURE GetEmployeeHighestSalary
AS
BEGIN
    SELECT employee_id, employee_name, salary
    FROM employee
    WHERE salary = (SELECT MAX(salary) FROM employee);
END;

EXEC GetEmployeeHighestSalary;


CREATE PROCEDURE GetEmployeesByDepartment
    @Department NVARCHAR(50)
AS
BEGIN
    SELECT employee_id, employee_name, salary
    FROM employee
    WHERE department = @Department;
END;


EXEC GetEmployeesByDepartment @Department = 'IT';
EXEC GetEmployeesByDepartment @Department = 'HR';

EXEC GetEmployeesByDepartment @Department = 'Finance';

