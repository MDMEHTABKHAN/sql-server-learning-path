-- INNER JOIN: Employees with projects
SELECT e.employee_name, e.department, e.salary, p.project_name, p.client_name
FROM employee AS e
INNER JOIN project AS p
    ON e.employee_id = p.employee_id;

-- LEFT JOIN: All employees, with project info if exists
SELECT e.employee_name, e.department, e.salary, p.project_name, p.client_name
FROM employee AS e
LEFT JOIN project AS p
    ON e.employee_id = p.employee_id;

-- RIGHT JOIN: All projects, with employee info if exists
SELECT e.employee_name, e.department, e.salary, p.project_name, p.client_name
FROM employee AS e
RIGHT JOIN project AS p
    ON e.employee_id = p.employee_id;

-- FULL OUTER JOIN: All employees and all projects, matched where possible
SELECT e.employee_name, e.department, e.salary, p.project_name, p.client_name
FROM employee AS e
FULL OUTER JOIN project AS p
    ON e.employee_id = p.employee_id;

-- CROSS JOIN: All combinations of employees and projects
SELECT e.employee_name, e.department, e.salary, p.project_name, p.client_name
FROM employee AS e
CROSS JOIN project AS p;

-- SELF JOIN: Employees with same department (excluding self)
SELECT a.employee_name AS emp1, b.employee_name AS emp2, a.department
FROM employee AS a
INNER JOIN employee AS b
    ON a.department = b.department AND a.employee_id <> b.employee_id;

-- INNER JOIN with WHERE filter
SELECT e.employee_name, e.salary, p.project_name
FROM employee AS e
INNER JOIN project AS p
    ON e.employee_id = p.employee_id
WHERE e.salary > 60000;

-- LEFT JOIN with WHERE filter (employees with or without projects, salary > 60000)
SELECT e.employee_name, e.salary, p.project_name
FROM employee AS e
LEFT JOIN project AS p
    ON e.employee_id = p.employee_id
WHERE e.salary > 60000;

-- RIGHT JOIN with WHERE filter (projects with employee salary > 60000)
SELECT e.employee_name, e.salary, p.project_name
FROM employee AS e
RIGHT JOIN project AS p
    ON e.employee_id = p.employee_id
WHERE e.salary > 60000;

-- FULL OUTER JOIN with NULL checks (employees without projects and projects without employees)
SELECT e.employee_name, p.project_name
FROM employee AS e
FULL OUTER JOIN project AS p
    ON e.employee_id = p.employee_id
WHERE e.employee_id IS NULL OR p.project_id IS NULL;