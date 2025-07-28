

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