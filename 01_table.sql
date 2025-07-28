CREATE TABLE students (
    student_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    enrollment_date DATE NOT NULL,
    state VARCHAR(100) NOT NULL
);

INSERT INTO students (first_name, last_name, enrollment_date, state) VALUES
('John', 'Doe', '2023-01-15', 'California'),
('Jane', 'Smith', '2023-02-20', 'Texas'),
('Emily', 'Johnson', '2023-03-10', 'Florida'),
('Michael', 'Brown', '2023-04-05', 'New York'),
('Sarah', 'Davis', '2023-05-25', 'Illinois');  


-- 1. Select all columns
SELECT * FROM students;

-- 2. Select specific columns
SELECT first_name, last_name FROM students;

-- 3. WHERE with equality
SELECT * FROM students WHERE state = 'California';

-- 4. WHERE with inequality
SELECT * FROM students WHERE state <> 'Texas';

-- 5. WHERE with AND
SELECT * FROM students WHERE state = 'California' AND first_name = 'John';

-- 6. WHERE with OR
SELECT * FROM students WHERE state = 'California' OR state = 'Texas';

-- 7. WHERE with IN
SELECT * FROM students WHERE state IN ('California', 'Texas');

-- 8. WHERE with NOT IN
SELECT * FROM students WHERE state NOT IN ('California', 'Texas');

-- 9. WHERE with LIKE
SELECT * FROM students WHERE first_name LIKE 'J%';

-- 10. WHERE with NOT LIKE
SELECT * FROM students WHERE last_name NOT LIKE '%son';

-- 11. WHERE with BETWEEN
SELECT * FROM students WHERE enrollment_date BETWEEN '2023-01-01' AND '2023-03-31';

-- 12. WHERE with > operator
SELECT * FROM students WHERE student_id > 2;

-- 13. WHERE with < operator
SELECT * FROM students WHERE student_id < 4;

-- 14. WHERE with >= operator
SELECT * FROM students WHERE student_id >= 3;

-- 15. WHERE with <= operator
SELECT * FROM students WHERE student_id <= 2;

-- 16. ORDER BY ascending
SELECT * FROM students ORDER BY first_name ASC;

-- 17. ORDER BY descending
SELECT * FROM students ORDER BY enrollment_date DESC;

-- 18. ORDER BY multiple columns
SELECT * FROM students ORDER BY state ASC, last_name DESC;

-- 19. TOP N rows
SELECT TOP 3 * FROM students;

-- 20. TOP N PERCENT
SELECT TOP 40 PERCENT * FROM students;

-- 21. COUNT aggregate
SELECT COUNT(*) AS total_students FROM students;

-- 22. MIN aggregate
SELECT MIN(enrollment_date) AS earliest_enrollment FROM students;

-- 23. MAX aggregate
SELECT MAX(enrollment_date) AS latest_enrollment FROM students;

-- 24. GROUP BY state
SELECT state, COUNT(*) AS num_students FROM students GROUP BY state;

-- 25. GROUP BY with HAVING
SELECT state, COUNT(*) AS num_students FROM students GROUP BY state HAVING COUNT(*) > 1;

-- 26. SUM with GROUP BY (dummy example, as no numeric column)
SELECT state, COUNT(student_id) AS total_ids FROM students GROUP BY state;

-- 27. AVG with GROUP BY (dummy example, as no numeric column)
SELECT state, AVG(student_id) AS avg_id FROM students GROUP BY state;

-- 28. DISTINCT values
SELECT DISTINCT state FROM students;

-- 29. IS NULL (dummy, as no NULLs in sample)
SELECT * FROM students WHERE state IS NULL;

-- 30. IS NOT NULL
SELECT * FROM students WHERE state IS NOT NULL;

-- 31. EXISTS (subquery)
SELECT * FROM students WHERE EXISTS (SELECT 1 FROM students WHERE state = 'Texas');

-- 32. NOT EXISTS (subquery)
SELECT * FROM students WHERE NOT EXISTS (SELECT 1 FROM students WHERE state = 'Nevada');

-- 33. ALL operator (dummy, as no numeric column)
SELECT * FROM students WHERE student_id > ALL (SELECT student_id FROM students WHERE state = 'Texas');

-- 34. ANY/SOME operator (dummy, as no numeric column)
SELECT * FROM students WHERE student_id = ANY (SELECT student_id FROM students WHERE state = 'California');

-- 35. UNION (with dummy select)
SELECT first_name FROM students
UNION
SELECT last_name FROM students;


SELECT first_name FROM students
UNION ALL
SELECT last_name FROM students;

-- 36. INTERSECT (with dummy select)
SELECT first_name FROM students
INTERSECT
SELECT last_name FROM students;

-- 37. EXCEPT (with dummy select)
SELECT first_name FROM students
EXCEPT
SELECT last_name FROM students;

-- 38. CASE statement
SELECT first_name, state,
    CASE WHEN state = 'California' THEN 'West'
        WHEN state = 'Texas' THEN 'South'
        ELSE 'Other'
    END AS region
FROM students;

-- 39. ORDER BY with CASE
SELECT * FROM students
ORDER BY 
CASE WHEN state = 'California' THEN 1 ELSE 2 END;

-- 40. LIMIT/OFFSET (use OFFSET-FETCH in SQL Server)
SELECT * FROM students ORDER BY student_id OFFSET 2 ROWS FETCH NEXT 2 ROWS ONLY;

-- 41. Simple subquery in SELECT
SELECT first_name, (SELECT COUNT(*) FROM students) AS total FROM students;

-- 42. Subquery in WHERE
SELECT * FROM students WHERE student_id = (SELECT MIN(student_id) FROM students);

-- 43. GROUP BY with multiple columns
SELECT state, enrollment_date, COUNT(*) FROM students GROUP BY state, enrollment_date;

-- 44. ORDER BY aggregate
SELECT state, COUNT(*) AS num_students FROM students GROUP BY state ORDER BY num_students DESC;

-- 45. TOP 1 with ORDER BY
SELECT TOP 1 * FROM students ORDER BY enrollment_date ASC;

-- 46. TOP 1 WITH TIES
SELECT TOP 1 WITH TIES * FROM students ORDER BY enrollment_date ASC;

-- 47. GROUP BY with HAVING and aggregate
SELECT state, COUNT(*) AS num_students FROM students GROUP BY state HAVING COUNT(*) >= 1;

-- 48. SELECT with arithmetic (dummy, as no numeric column)
SELECT student_id, student_id + 10 AS plus_ten FROM students;

-- 49. SELECT with string concatenation
SELECT first_name + ' ' + last_name AS full_name FROM students;

-- 50. SELECT with UPPER/LOWER
SELECT UPPER(first_name) AS upper_first, LOWER(last_name) AS lower_last FROM students;

