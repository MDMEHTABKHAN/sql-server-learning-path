

CREATE TABLE employees (
  employee_id INT PRIMARY KEY IDENTITY(1,1),
  first_name VARCHAR(50),
  last_name VARCHAR(30),
  email VARCHAR(60) UNIQUE,
  phone_number VARCHAR(15),
  hire_date DATE NOT NULL,
  job_id INT,
  salary DECIMAL(10, 2),
  department_id INT
);

INSERT INTO employees (first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES
('John', 'Doe', 'john.doe@example.com', '9876543210', '2022-01-15', 101, 55000.00, 1),
('Jane', 'Smith', 'jane.smith@example.com', '9876543211', '2021-12-10', 102, 60000.00, 2),
('Mike', 'Brown', 'mike.brown@example.com', '9876543212', '2023-02-20', 103, 72000.00, 1),
('Emily', 'Davis', 'emily.davis@example.com', '9876543213', '2020-03-18', 104, 48000.00, 3),
('David', 'Wilson', 'david.wilson@example.com', '9876543214', '2022-04-01', 101, 53000.00, 1),
('Sarah', 'Taylor', 'sarah.taylor@example.com', '9876543215', '2021-05-22', 102, 61000.00, 2),
('Chris', 'Anderson', 'chris.anderson@example.com', '9876543216', '2023-06-30', 105, 75000.00, 4),
('Laura', 'Thomas', 'laura.thomas@example.com', '9876543217', '2022-07-25', 106, 67000.00, 5),
('Daniel', 'Jackson', 'daniel.jackson@example.com', '9876543218', '2020-08-10', 107, 82000.00, 6),
('Olivia', 'White', 'olivia.white@example.com', '9876543219', '2021-09-12', 104, 50000.00, 3),
('Ryan', 'Martin', 'ryan.martin@example.com', '9876543220', '2023-01-19', 103, 73000.00, 1),
('Sophia', 'Lee', 'sophia.lee@example.com', '9876543221', '2022-02-14', 106, 68000.00, 5),
('Ethan', 'Clark', 'ethan.clark@example.com', '9876543222', '2020-11-04', 107, 81000.00, 6),
('Grace', 'Lewis', 'grace.lewis@example.com', '9876543223', '2021-10-08', 105, 76000.00, 4),
('James', 'Hall', 'james.hall@example.com', '9876543224', '2022-06-16', 101, 54000.00, 1),
('Ava', 'Allen', 'ava.allen@example.com', '9876543225', '2023-03-28', 102, 62000.00, 2),
('Logan', 'Young', 'logan.young@example.com', '9876543226', '2020-04-11', 103, 70000.00, 1),
('Ella', 'Hernandez', 'ella.hernandez@example.com', '9876543227', '2021-07-30', 104, 49000.00, 3),
('Luke', 'King', 'luke.king@example.com', '9876543228', '2022-08-20', 105, 77000.00, 4),
('Chloe', 'Wright', 'chloe.wright@example.com', '9876543229', '2023-05-09', 106, 69000.00, 5);


SELECT * FROM employees;


