-- Active: 1755157279693@@127.0.0.1@3306@comp
CREATE TABLE student1 (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    marks INT
);

INSERT INTO student1 (name, age, marks) VALUES
('Alice', 20, 85),
('Bob', 22, 72),
('Charlie', 19, 95),
('David', 21, 60);

SELECT * FROM student1;


DELIMITER $$

DELIMITER $$

CREATE PROCEDURE get_student_name()
BEGIN
    SELECT * FROM student1;
END $$

DELIMITER ;


CALL get_student_name();


DELIMITER $$

CREATE PROCEDURE calculate_total_marks(IN s_id INT, OUT total_marks INT)
BEGIN
    SELECT marks + 10 INTO total_marks
    FROM student1
    WHERE student_id = s_id;
END $$

DELIMITER ;


CALL calculate_total_marks(1, @total);



DELIMITER $$

CREATE PROCEDURE get_student_by_id(IN sid INT)
BEGIN
    SELECT * FROM student1
    WHERE student_id = sid;
END $$

DELIMITER ;
CALL get_student_by_id(1)

