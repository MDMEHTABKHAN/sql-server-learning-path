

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    DOB DATE,
    Grade CHAR(2)
);


INSERT INTO Student (StudentID, Name, Age, DOB, Grade) VALUES
(1, 'Alice', 14, '2010-05-15', 'A'),
(2, 'Bob', 15, '2009-08-22', 'B'),
(3, 'Charlie', 14, '2010-11-30', 'A'),
(4, 'David', 16, '2008-03-12', 'C'),
(5, 'Eva', 15, '2009-07-19', 'B');




INSERT INTO Student (StudentID, Name, Age, DOB, Grade) VALUES
(6, 'Frank', 15, '2009-09-09', 'B'),
(7, 'Grace', 14, '2010-02-28', 'A'),
(8, 'Hannah', 16, '2008-12-12', 'C'),
(9, 'Ian', 15, '2009-05-05', 'B'),
(10, 'Jack', 14, '2010-10-10', 'A');



INSERT INTO Student (StudentID, Name, Age, DOB, Grade) VALUES
(11, 'Kevin', 15, '2009-11-11', 'B'),
(12, 'Laura', 14, '2010-01-01', 'A'),
(13, 'Mike', 16, '2008-05-05', 'C'),
(14, 'Nina', 15, '2009-03-03', 'B');
INSERT INTO Student (StudentID, Name, Age, DOB, Grade) VALUES
(15, 'Oscar', 14, '2010-09-09', 'A');




BEGIN TRANSACTION;


DELETE FROM Student
WHERE StudentID = 15;


UPDATE Student
SET Grade = 'A'
WHERE Age = 11;

ROLLBACK;
SELECT * FROM Student;


DELETE FROM Student
WHERE StudentID = 15;

DELETE FROM Student
WHERE StudentID = 11 AND Grade = 'B';

UPDATE Student
SET Grade = 'C'
WHERE Age = 16;



DROP DATABASE School;
DROP DATABASE IF EXISTS School;

DROP DATABASE IF EXISTS School, company;

DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Employee, Student;

TRUNCATE TABLE Student;
TRUNCATE TABLE Employee, Student;


ALTER TABLE Student
ADD Email VARCHAR(100);

ALTER TABLE Student
ALTER COLUMN Email SET NOT NULL;

ALTER TABLE Student
ADD CONSTRAINT UC_Email UNIQUE (Email);

ALTER TABLE Student RENAME COLUMN Name TO FullName;


ALTER TABLE Student
DROP COLUMN Email;


SELECT DISTINCT Grade FROM Student;

SELECT Age, COUNT(Grade) AS grade_count FROM Student GROUP BY Age;

SELECT Grade, COUNT(Age) AS count_age FROM Student GROUP BY Grade;


SELECT Name, Grade, Age FROM Student WHERE Grade IN ('A', 'B') ORDER BY Age DESC;

SELECT Name, Grade, Age FROM Student WHERE Age BETWEEN 13 AND 15;

SELECT * FROM Student WHERE Name LIKE 'A%';


SELECT * FROM Student WHERE Name LIKE '%n%';
SELECT * FROM Student WHERE Name LIKE '%sh%';

SELECT * FROM Student WHERE Grade IS NULL;

SELECT * FROM Student ORDER BY Age ASC;
SELECT * FROM Student ORDER BY Age DESC;

SELECT * FROM Student ORDER BY Grade ASC, Age DESC;



