
CREATE TABLE employee (
    employee_id INT PRIMARY KEY IDENTITY(1,1),
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);
CREATE TABLE project (
    project_id INT PRIMARY KEY IDENTITY(1,1),
    project_name VARCHAR(100),
    employee_id INT,  -- FK to employee
    client_name VARCHAR(100),
    start_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);


DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS employee;

-- Sample data for employee table (40 rows)
INSERT INTO employee (employee_name, department, salary)
VALUES
('John Smith', 'HR', 45000.00),
('Jane Doe', 'IT', 60000.00),
('Alice Johnson', 'Finance', 52000.00),
('Bob Brown', 'IT', 58000.00),
('Charlie Black', 'HR', 47000.00),
('Diana White', 'Finance', 54000.00),
('Ethan Green', 'IT', 61000.00),
('Fiona Blue', 'HR', 46000.00),
('George Red', 'Finance', 53000.00),
('Hannah Yellow', 'IT', 62000.00),
('Ian Orange', 'HR', 48000.00),
('Julia Purple', 'Finance', 55000.00),
('Kevin Gray', 'IT', 63000.00),
('Laura Pink', 'HR', 49000.00),
('Mike Silver', 'Finance', 56000.00),
('Nina Gold', 'IT', 64000.00),
('Oscar Bronze', 'HR', 50000.00),
('Paula Violet', 'Finance', 57000.00),
('Quentin Indigo', 'IT', 65000.00),
('Rachel Cyan', 'HR', 51000.00),
('Sam Magenta', 'Finance', 58000.00),
('Tina Lime', 'IT', 66000.00),
('Uma Teal', 'HR', 52000.00),
('Victor Navy', 'Finance', 59000.00),
('Wendy Olive', 'IT', 67000.00),
('Xander Plum', 'HR', 53000.00),
('Yara Peach', 'Finance', 60000.00),
('Zane Mint', 'IT', 68000.00),
('Amy Coral', 'HR', 54000.00),
('Ben Azure', 'Finance', 61000.00),
('Cara Jade', 'IT', 69000.00),
('Dan Rose', 'HR', 55000.00),
('Eve Sand', 'Finance', 62000.00),
('Finn Sky', 'IT', 70000.00),
('Gina Moss', 'HR', 56000.00),
('Hugo Pine', 'Finance', 63000.00),
('Ivy Fern', 'IT', 71000.00),
('Jack Reed', 'HR', 57000.00),
('Kara Snow', 'Finance', 64000.00),
('Liam Lake', 'IT', 72000.00),
('Mona Dawn', 'HR', 58000.00);

-- Sample data for project table (10 rows)
INSERT INTO project (project_name, employee_id, client_name, start_date) VALUES
('Payroll System', 1, 'Acme Corp', '2024-01-10'),
('Website Redesign', 2, 'Beta Ltd', '2024-02-15'),
('Audit Prep', 3, 'Gamma Inc', '2024-03-01'),
('Network Upgrade', 4, 'Delta LLC', '2024-03-20'),
('Recruitment Drive', 5, 'Epsilon Co', '2024-04-05'),
('Budget Analysis', 6, 'Zeta Group', '2024-04-18'),
('Cloud Migration', 7, 'Eta Solutions', '2024-05-02'),
('Training Program', 8, 'Theta Partners', '2024-05-15'),
('Security Audit', 9, 'Iota Services', '2024-06-01'),
('Mobile App', 10, 'Kappa Tech', '2024-06-20');



SELECT COUNT(*) AS total_employees FROM employee;
SELECT COUNT(*) AS total_projects FROM project;


SELECT TOP 5 * FROM employee ORDER BY salary DESC;

SELECT TOP 10 PERCENT * FROM employee;

SELECT department, MAX(salary) AS max_salary, MIN(salary) AS min_salary, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

SELECT department, AVG(salary) as avg_salary
FROM employee
GROUP  BY department
ORDER BY avg_salary DESC;




SELECT e.employee_name, e.salary, p.project_name

FROM employees AS e
INNER JOIN project AS p
        ON e.employee_id = p.employee_id;