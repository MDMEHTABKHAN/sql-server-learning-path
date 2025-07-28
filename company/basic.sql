-- 1. Select all employees
SELECT * FROM employees;

-- 2. Select specific columns
SELECT first_name, last_name FROM employees;

-- 3. Select distinct job_id
SELECT DISTINCT job_id FROM employees;

SELECT DISTINCT first_name, salary FROM employees;

-- 4. Select top 5 employees
SELECT TOP 5 * FROM employees;

SELECT TOP 2 * FROM employees;

SELECT TOP 5 first_name, last_name FROM employees;

-- 5. Select top 10 percent employees
SELECT TOP 10 PERCENT * FROM employees;

SELECT TOP 7 PERCENT first_name, last_name FROM employees;


SELECT TOP 14 PERCENT first_name, last_name FROM employees;

SELECT TOP 28 PERCENT first_name, last_name FROM employees;

-- 6. Where salary equals 50000
SELECT * FROM employees WHERE salary = 50000;

-- 7. Where salary not equals 50000
SELECT * FROM employees WHERE salary <> 50000;

-- 8. Where salary greater than 50000
SELECT * FROM employees WHERE salary > 50000;

-- 9. Where salary less than 50000
SELECT * FROM employees WHERE salary < 50000;

-- 10. Where salary greater than or equal to 50000
SELECT * FROM employees WHERE salary >= 50000;

-- 11. Where salary less than or equal to 50000
SELECT * FROM employees WHERE salary <= 50000;

-- 12. Where first name like 'A%'
SELECT * FROM employees WHERE first_name LIKE 'A%';

-- 13. Where last name like '%son'
SELECT * FROM employees WHERE last_name LIKE '%son';

-- 14. Where job_id is 2 or 3
SELECT * FROM employees WHERE job_id IN (2, 3);

-- 15. Where department_id not in (1, 2)
SELECT * FROM employees WHERE department_id NOT IN (1, 2);

-- 16. Where salary between 40000 and 60000
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;

-- 17. Where hire_date between two dates
SELECT * FROM employees WHERE hire_date BETWEEN '2023-01-01' AND '2024-01-01';

-- 18. Where email is null
SELECT * FROM employees WHERE email IS NULL;

-- 19. Where phone_number is not null
SELECT * FROM employees WHERE phone_number IS NOT NULL;

-- 20. Order by salary ascending
SELECT * FROM employees ORDER BY salary ASC;

-- 21. Order by salary descending
SELECT * FROM employees ORDER BY salary DESC;

-- 22. Order by department_id, salary
SELECT * FROM employees ORDER BY department_id, salary;

-- 23. Group by department_id
SELECT department_id, COUNT(*) FROM employees GROUP BY department_id;

-- 24. Group by job_id
SELECT job_id, AVG(salary) FROM employees GROUP BY job_id;

-- 25. Having count > 2
SELECT department_id, COUNT(*) AS emp_count FROM employees GROUP BY department_id HAVING COUNT(*) > 2;

-- 26. Having avg salary > 50000
SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id HAVING AVG(salary) > 50000;

-- 27. Employees hired after 2022
SELECT * FROM employees WHERE hire_date > '2022-12-31';

-- 28. Employees with first name starting with 'J'
SELECT * FROM employees WHERE first_name LIKE 'J%';

-- 29. Employees with last name ending with 'n'
SELECT * FROM employees WHERE last_name LIKE '%n';

-- 30. Employees with salary not between 40000 and 60000
SELECT * FROM employees WHERE salary NOT BETWEEN 40000 AND 60000;

-- 31. Employees with salary in (45000, 55000)
SELECT * FROM employees WHERE salary IN (45000, 55000);

-- 32. Employees with salary not in (45000, 55000)
SELECT * FROM employees WHERE salary NOT IN (45000, 55000);

-- 33. Employees with job_id not 1
SELECT * FROM employees WHERE job_id <> 1;

-- 34. Employees with department_id = 2 and salary > 50000
SELECT * FROM employees WHERE department_id = 2 AND salary > 50000;

-- 35. Employees with department_id = 2 or salary > 50000
SELECT * FROM employees WHERE department_id = 2 OR salary > 50000;

-- 36. Employees with not (department_id = 2)
SELECT * FROM employees WHERE NOT department_id = 2;

-- 37. Employees with salary > 50000 and phone_number is not null
SELECT * FROM employees WHERE salary > 50000 AND phone_number IS NOT NULL;

-- 38. Employees with salary < 40000 or phone_number is null
SELECT * FROM employees WHERE salary < 40000 OR phone_number IS NULL;

-- 39. Employees with salary between 40000 and 60000 and department_id = 2
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000 AND department_id = 2;

-- 40. Employees with first_name like '_a%'
SELECT * FROM employees WHERE first_name LIKE '_a%';

-- 41. Employees with last_name like '%e_'
SELECT * FROM employees WHERE last_name LIKE '%e_';

-- 42. Employees with salary + 1000 > 60000
SELECT * FROM employees WHERE salary + 1000 > 60000;

-- 43. Employees with salary * 1.1 > 55000
SELECT * FROM employees WHERE salary * 1.1 > 55000;

-- 44. Employees with salary / 2 < 25000
SELECT * FROM employees WHERE salary / 2 < 25000;

-- 45. Employees with salary % 2 = 0
SELECT * FROM employees WHERE salary % 2 = 0;

-- 46. Employees with salary = 40000 OR salary = 50000 OR salary = 60000
SELECT * FROM employees WHERE salary = 40000 OR salary = 50000 OR salary = 60000;

-- 47. Employees with salary <> 40000 AND salary <> 50000 AND salary <> 60000
SELECT * FROM employees WHERE salary <> 40000 AND salary <> 50000 AND salary <> 60000;

-- 48. Employees with upper(first_name) = 'JOHN'
SELECT * FROM employees WHERE UPPER(first_name) = 'JOHN';

-- 49. Employees with lower(last_name) = 'smith'
SELECT * FROM employees WHERE LOWER(last_name) = 'smith';

-- 50. Employees with length of first_name > 5
SELECT * FROM employees WHERE LEN(first_name) > 5;

-- 51. Employees with salary rounded to nearest 1000
SELECT *, ROUND(salary, -3) AS rounded_salary FROM employees;

-- 52. Employees with salary ceiling
SELECT *, CEILING(salary) AS ceil_salary FROM employees;

-- 53. Employees with salary floor
SELECT *, FLOOR(salary) AS floor_salary FROM employees;

-- 54. Employees with salary between 40000 and 60000 or department_id = 2
SELECT * FROM employees WHERE (salary BETWEEN 40000 AND 60000) OR (department_id = 2);

-- 55. Employees with salary not null
SELECT * FROM employees WHERE salary IS NOT NULL;

-- 56. Employees with salary null
SELECT * FROM employees WHERE salary IS NULL;

-- 57. Employees with hire_date in 2023
SELECT * FROM employees WHERE YEAR(hire_date) = 2023;

-- 58. Employees with hire_date not in 2023
SELECT * FROM employees WHERE YEAR(hire_date) <> 2023;

-- 59. Employees with salary = max salary
SELECT * FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);

-- 60. Employees with salary = min salary
SELECT * FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);

-- 61. Employees with salary > avg salary
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

-- 62. Employees with salary < avg salary
SELECT * FROM employees WHERE salary < (SELECT AVG(salary) FROM employees);

-- 63. Employees with salary = 50000 and department_id = 2
SELECT * FROM employees WHERE salary = 50000 AND department_id = 2;

-- 64. Employees with salary = 50000 or department_id = 2
SELECT * FROM employees WHERE salary = 50000 OR department_id = 2;

-- 65. Employees with not (salary = 50000)
SELECT * FROM employees WHERE NOT (salary = 50000);

-- 66. Employees with salary between 40000 and 60000 and not department_id = 2
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000 AND department_id <> 2;

-- 67. Employees with salary > 50000 and job_id < 5
SELECT * FROM employees WHERE salary > 50000 AND job_id < 5;

-- 68. Employees with salary < 40000 or job_id > 5
SELECT * FROM employees WHERE salary < 40000 OR job_id > 5;

-- 69. Employees with salary between 40000 and 60000 and job_id is null
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000 AND job_id IS NULL;

-- 70. Employees with salary between 40000 and 60000 and job_id is not null
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000 AND job_id IS NOT NULL;

-- 71. Employees with salary > 50000 order by first_name
SELECT * FROM employees WHERE salary > 50000 ORDER BY first_name;

-- 72. Employees with salary > 50000 order by last_name desc
SELECT * FROM employees WHERE salary > 50000 ORDER BY last_name DESC;

-- 73. Employees with salary > 50000 order by department_id, salary desc
SELECT * FROM employees WHERE salary > 50000 ORDER BY department_id, salary DESC;

-- 74. Employees with salary > 50000 group by department_id
SELECT department_id, COUNT(*) FROM employees WHERE salary > 50000 GROUP BY department_id;

-- 75. Employees with salary > 50000 group by job_id
SELECT job_id, COUNT(*) FROM employees WHERE salary > 50000 GROUP BY job_id;

-- 76. Employees with salary > 50000 group by department_id having count > 2
SELECT department_id, COUNT(*) FROM employees WHERE salary > 50000 GROUP BY department_id HAVING COUNT(*) > 2;

-- 77. Employees with salary > 50000 group by job_id having count > 2
SELECT job_id, COUNT(*) FROM employees WHERE salary > 50000 GROUP BY job_id HAVING COUNT(*) > 2;

-- 78. Employees with salary > 50000 group by department_id having avg salary > 60000
SELECT department_id, AVG(salary) FROM employees WHERE salary > 50000 GROUP BY department_id HAVING AVG(salary) > 60000;

-- 79. Employees with salary > 50000 group by job_id having avg salary > 60000
SELECT job_id, AVG(salary) FROM employees WHERE salary > 50000 GROUP BY job_id HAVING AVG(salary) > 60000;

-- 80. Employees with salary > 50000 group by department_id having max salary > 70000
SELECT department_id, MAX(salary) FROM employees WHERE salary > 50000 GROUP BY department_id HAVING MAX(salary) > 70000;

-- 81. Employees with salary > 50000 group by job_id having max salary > 70000
SELECT job_id, MAX(salary) FROM employees WHERE salary > 50000 GROUP BY job_id HAVING MAX(salary) > 70000;

-- 82. Employees with salary > 50000 group by department_id having min salary > 60000
SELECT department_id, MIN(salary) FROM employees WHERE salary > 50000 GROUP BY department_id HAVING MIN(salary) > 60000;

-- 83. Employees with salary > 50000 group by job_id having min salary > 60000
SELECT job_id, MIN(salary) FROM employees WHERE salary > 50000 GROUP BY job_id HAVING MIN(salary) > 60000;

-- 84. Employees with salary > 50000 group by department_id having sum salary > 200000
SELECT department_id, SUM(salary) FROM employees WHERE salary > 50000 GROUP BY department_id HAVING SUM(salary) > 200000;

-- 85. Employees with salary > 50000 group by job_id having sum salary > 200000
SELECT job_id, SUM(salary) FROM employees WHERE salary > 50000 GROUP BY job_id HAVING SUM(salary) > 200000;

-- 86. Employees with salary > 50000 group by department_id, job_id
SELECT department_id, job_id, COUNT(*) FROM employees WHERE salary > 50000 GROUP BY department_id, job_id;

-- 87. Employees with salary > 50000 group by department_id, job_id having count > 1
SELECT department_id, job_id, COUNT(*) FROM employees WHERE salary > 50000 GROUP BY department_id, job_id HAVING COUNT(*) > 1;

-- 88. Employees with salary > 50000 group by department_id, job_id having avg salary > 60000
SELECT department_id, job_id, AVG(salary) FROM employees WHERE salary > 50000 GROUP BY department_id, job_id HAVING AVG(salary) > 60000;

-- 89. Employees with salary > 50000 group by department_id, job_id having max salary > 70000
SELECT department_id, job_id, MAX(salary) FROM employees WHERE salary > 50000 GROUP BY department_id, job_id HAVING MAX(salary) > 70000;

-- 90. Employees with salary > 50000 group by department_id, job_id having min salary > 60000
SELECT department_id, job_id, MIN(salary) FROM employees WHERE salary > 50000 GROUP BY department_id, job_id HAVING MIN(salary) > 60000;

-- 91. Employees with salary > 50000 group by department_id, job_id having sum salary > 200000
SELECT department_id, job_id, SUM(salary) FROM employees WHERE salary > 50000 GROUP BY department_id, job_id HAVING SUM(salary) > 200000;

-- 92. Employees with salary > 50000 group by department_id, job_id having count distinct salary > 1
SELECT department_id, job_id, COUNT(DISTINCT salary) FROM employees WHERE salary > 50000 GROUP BY department_id, job_id HAVING COUNT(DISTINCT salary) > 1;

-- 93. Employees with salary > 50000 group by department_id, job_id having count distinct hire_date > 1
SELECT department_id, job_id, COUNT(DISTINCT hire_date) FROM employees WHERE salary > 50000 GROUP BY department_id, job_id HAVING COUNT(DISTINCT hire_date) > 1;

-- 94. Employees with salary > 50000 group by department_id, job_id having count distinct employee_id > 1
SELECT department_id, job_id, COUNT(DISTINCT employee_id) FROM employees WHERE salary > 50000 GROUP BY department_id, job_id HAVING COUNT(DISTINCT employee_id) > 1;

-- 95. Employees with salary > 50000 and job_id is not null
SELECT * FROM employees WHERE salary > 50000 AND job_id IS NOT NULL;

-- 96. Employees with salary > 50000 and job_id is null
SELECT * FROM employees WHERE salary > 50000 AND job_id IS NULL;

-- 97. Employees with salary > 50000 and department_id is not null
SELECT * FROM employees WHERE salary > 50000 AND department_id IS NOT NULL;

-- 98. Employees with salary > 50000 and department_id is null
SELECT * FROM employees WHERE salary > 50000 AND department_id IS NULL;

-- 99. Employees with salary > 50000 and email like '%@gmail.com'
SELECT * FROM employees WHERE salary > 50000 AND email LIKE '%@gmail.com';

-- 100. Employees with salary > 50000 and phone_number like '98%'
SELECT * FROM employees WHERE salary > 50000 AND phone_number LIKE '98%';

