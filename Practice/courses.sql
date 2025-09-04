CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);



CREATE TABLE Enrollment (
    EnrollID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

DROP TABLE IF EXISTS Enrollment, Courses;

INSERT INTO Courses (CourseID, CourseName) VALUES
(1, 'Mathematics'),
(2, 'Science'),
(3, 'History'),
(4, 'Geography'),
(5, 'Art'),
(6, 'Physical Education'),
(7, 'Music'),
(8, 'Computer Science'),
(9, 'Biology'),
(10, 'Chemistry'),
(11, 'Philosophy'),
(12, 'Psychology'),
(13, 'Sociology'),
(14, 'Economics'),
(15, 'Statistics'),
(16, 'Data Science'),
(17, 'Machine Learning'),
(18, 'Artificial Intelligence'),
(19, 'Deep Learning'),
(20, 'Natural Language Processing');



INSERT INTO Enrollment (EnrollID, StudentID, CourseID) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 3),
(5, 3, 4),
(6, 3, 5),
(7, 4, 6),
(8, 4, 7),
(9, 5, 8),
(10, 5, 9),
(11, 6, 10),
(12, 6, 11),
(13, 7, 12),
(14, 7, 13),
(15, 8, 14),
(16, 8, 15),
(17, 9, 16),
(18, 9, 17),
(19, 10, 18),
(20, 10, 19),
(21, 11, 20);






SELECT C.CourseID, C.CourseName, E.EnrollID
FROM Courses as C
INNER JOIN  Enrollment as E
ON C.CourseID = E.CourseID;


SELECT C.CourseID, C.CourseName
FROM Courses as C
LEFT JOIN  Enrollment as E
ON C.CourseID = E.CourseID
ORDER BY C.CourseID;

SELECT C.CourseName
FROM Courses as C
LEFT JOIN  Enrollment as E
ON C.CourseID = E.CourseID
ORDER BY C.CourseID;



SELECT CourseName
FROM Courses AS C
RIGHT JOIN  Enrollment as E
ON C.CourseID = E.CourseID
ORDER BY C.CourseID;



SELECT CourseName
FROM Courses AS C
FULL JOIN  Enrollment as E
ON C.CourseID = E.CourseID
ORDER BY C.CourseID;


SELECT * FROM Courses
CROSS JOIN Enrollment;


SELECT * FROM Courses
CROSS JOIN Enrollment
ORDER BY CourseName;


CREATE VIEW course_enrollment AS
SELECT C.CourseID, C.CourseName, E.EnrollID, E.StudentID
FROM Courses AS C
LEFT JOIN Enrollment AS E ON C.CourseID = E.CourseID;   


SELECT * FROM course_enrollment;


SELECT * FROM course_enrollment
WHERE StudentID IS NULL;

SELECT * FROM course_enrollment
WHERE CourseName IN ('Mathematics', 'Science', 'History');


CREATE VIEW courseName AS
SELECT * FROM Courses;


SELECT * FROM courseName
WHERE CourseName LIKE '%Science%';


DROP VIEW courseName, course_enrollment;


