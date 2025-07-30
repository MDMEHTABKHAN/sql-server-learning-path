

SELECT * FROM employees;

SELECT * FROM employees
WHERE salary = (
    
    SELECT MAX(salary) FROM employees
);

SELECT * FROM employees
WHERE salary = (
    SELECT MIN(salary) FROM employees
);

SELECT * FROM employees
WHERE salary > (
    SELECT AVG(salary) AS avg_salary FROM employees
)


SELECT TOP 3 * FROM employees
WHERE salary > (
    SELECT AVG(salary) AS avg_salary FROM employees
)

SELECT first_name, last_name, salary, department_id FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees WHERE department_id = 3
)


SELECT first_name,
    (
    SELECT COUNT(*) FROM employees) AS employee_total
FROM employees;




SELECT first_name, salary, department_id
FROM Employees E
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
    WHERE department_id = E.department_id
);



CREATE VIEW HighSalaryEmployees AS
SELECT first_name, salary
FROM Employees
WHERE salary > 50000;

SELECT * FROM HighSalaryEmployees;


CREATE VIEW avg_salary_per_department AS
SELECT department_id, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department_id;

SELECT * FROM avg_salary_per_department;


DROP VIEW HighSalaryEmployees;
DROP VIEW IF EXISTS avg_salary_per_department;


CREATE VIEW employees_details AS
SELECT first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id
FROM employees;


SELECT * FROM employees_details;