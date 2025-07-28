CREATE DATABASE sql_practice;

USE sql_practice;


CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gender CHAR(1),
    birth_date DATE,
    city VARCHAR(30),
    province_id CHAR(2),
    allergies VARCHAR(80),
    height DECIMAL(3, 0),
    weight DECIMAL(4, 0),
    FOREIGN KEY (province_id) REFERENCES province_names(province_id)
);


CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    specialty VARCHAR(25)
);

CREATE TABLE admissions (
    admission_id INT PRIMARY KEY IDENTITY(1,1),
    patient_id INT,
    admission_date DATE,
    discharge_date DATE,
    diagnosis VARCHAR(50),
    attending_doctor_id INT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (attending_doctor_id) REFERENCES doctors(doctor_id)
);


CREATE TABLE province_names (
    province_id CHAR(2) PRIMARY KEY,
    province_name VARCHAR(30)
);


INSERT INTO province_names (province_id, province_name) VALUES
('AP', 'Andhra Pradesh'),
('AR', 'Arunachal Pradesh'),
('AS', 'Assam'),
('BR', 'Bihar'),
('CG', 'Chhattisgarh'),
('GA', 'Goa'),
('GJ', 'Gujarat'),
('HR', 'Haryana'),
('HP', 'Himachal Pradesh'),
('JH', 'Jharkhand'),
('KA', 'Karnataka'),
('KL', 'Kerala'),
('MP', 'Madhya Pradesh'),
('MH', 'Maharashtra'),
('MN', 'Manipur'),
('ML', 'Meghalaya'),
('MZ', 'Mizoram'),
('NL', 'Nagaland'),
('OD', 'Odisha'),
('PB', 'Punjab');


INSERT INTO doctors (doctor_id, first_name, last_name, specialty) VALUES
(1, 'Amit', 'Sharma', 'Cardiology'),
(2, 'Neha', 'Verma', 'Neurology'),
(3, 'Ravi', 'Kumar', 'Pediatrics'),
(4, 'Priya', 'Singh', 'Orthopedics'),
(5, 'Suresh', 'Patel', 'General Medicine'),
(6, 'Kavita', 'Joshi', 'Gynecology'),
(7, 'Raj', 'Mishra', 'Dermatology'),
(8, 'Sunita', 'Reddy', 'Psychiatry'),
(9, 'Arun', 'Das', 'Oncology'),
(10, 'Meena', 'Gupta', 'Ophthalmology'),
(11, 'Vikram', 'Saxena', 'ENT'),
(12, 'Poonam', 'Yadav', 'Urology'),
(13, 'Ajay', 'Thakur', 'Nephrology'),
(14, 'Shilpa', 'Mehta', 'Radiology'),
(15, 'Manoj', 'Jain', 'Anesthesiology'),
(16, 'Ritika', 'Bansal', 'Endocrinology'),
(17, 'Naveen', 'Rao', 'Rheumatology'),
(18, 'Divya', 'Nair', 'Pathology'),
(19, 'Rakesh', 'Choudhary', 'Pulmonology'),
(20, 'Anita', 'Paul', 'Gastroenterology');


INSERT INTO patients (patient_id, first_name, last_name, gender, birth_date, city, province_id, allergies, height, weight) VALUES
(1, 'Rohit', 'Verma', 'M', '1990-01-15', 'Hyderabad', 'AP', 'Peanuts', 172, 70),
(2, 'Sneha', 'Kumar', 'F', '1985-07-22', 'Itanagar', 'AR', 'Dust', 160, 58),
(3, 'Amit', 'Yadav', 'M', '2000-03-30', 'Guwahati', 'AS', 'None', 175, 65),
(4, 'Pooja', 'Mehra', 'F', '1993-12-01', 'Patna', 'BR', 'Pollen', 162, 60),
(5, 'Rakesh', 'Mishra', 'M', '1988-05-12', 'Raipur', 'CG', 'Gluten', 178, 75),
(6, 'Divya', 'Singh', 'F', '1997-11-25', 'Panaji', 'GA', 'Penicillin', 158, 52),
(7, 'Anil', 'Rao', 'M', '1995-09-14', 'Ahmedabad', 'GJ', 'Latex', 180, 78),
(8, 'Nidhi', 'Sharma', 'F', '2001-04-04', 'Chandigarh', 'HR', 'None', 155, 50),
(9, 'Manish', 'Thakur', 'M', '1992-06-18', 'Shimla', 'HP', 'Pollen', 174, 68),
(10, 'Preeti', 'Sahu', 'F', '1999-10-07', 'Ranchi', 'JH', 'Dust', 164, 59),
(11, 'Sanjay', 'Kapoor', 'M', '1986-02-19', 'Bangalore', 'KA', 'None', 176, 73),
(12, 'Kiran', 'Reddy', 'F', '1991-08-11', 'Kochi', 'KL', 'Dairy', 159, 54),
(13, 'Alok', 'Jain', 'M', '1998-01-27', 'Bhopal', 'MP', 'Shellfish', 170, 66),
(14, 'Neetu', 'Patel', 'F', '1994-07-03', 'Mumbai', 'MH', 'Peanuts', 163, 57),
(15, 'Vinod', 'Gupta', 'M', '1996-11-09', 'Imphal', 'MN', 'Dust', 177, 72),
(16, 'Bhavna', 'Nongrum', 'F', '1990-02-24', 'Shillong', 'ML', 'None', 161, 56),
(17, 'Kamal', 'Zuala', 'M', '1993-05-06', 'Aizawl', 'MZ', 'Pollen', 168, 63),
(18, 'Rina', 'Jamir', 'F', '1989-03-16', 'Kohima', 'NL', 'Gluten', 157, 53),
(19, 'Deepak', 'Rout', 'M', '2002-06-28', 'Bhubaneswar', 'OD', 'None', 173, 67),
(20, 'Megha', 'Kaur', 'F', '1995-12-10', 'Ludhiana', 'PB', 'None', 160, 55);



INSERT INTO admissions (patient_id, admission_date, discharge_date, diagnosis, attending_doctor_id) VALUES
(1, '2023-01-05', '2023-01-10', 'Flu', 5),
(2, '2023-02-14', '2023-02-20', 'Asthma', 7),
(3, '2023-03-10', '2023-03-15', 'Appendicitis', 4),
(4, '2023-04-01', '2023-04-05', 'Migraine', 2),
(5, '2023-05-12', '2023-05-18', 'Diabetes', 16),
(6, '2023-06-20', '2023-06-25', 'Fracture', 4),
(7, '2023-07-04', '2023-07-09', 'Skin Allergy', 7),
(8, '2023-08-15', '2023-08-22', 'Anxiety', 8),
(9, '2023-09-03', '2023-09-08', 'Throat Infection', 11),
(10, '2023-10-11', '2023-10-17', 'Kidney Stones', 12),
(11, '2023-11-23', '2023-11-28', 'High BP', 5),
(12, '2023-12-05', '2023-12-10', 'Pregnancy Checkup', 6),
(13, '2024-01-14', '2024-01-19', 'Eye Infection', 10),
(14, '2024-02-09', '2024-02-14', 'Cancer Screening', 9),
(15, '2024-03-21', '2024-03-26', 'Arthritis', 17),
(16, '2024-04-02', '2024-04-07', 'Pneumonia', 19),
(17, '2024-04-15', '2024-04-20', 'Liver Issue', 20),
(18, '2024-05-01', '2024-05-06', 'Ulcer', 20),
(19, '2024-05-10', '2024-05-15', 'Chest Pain', 5),
(20, '2024-05-18', '2024-05-21', 'Dengue', 3);


SELECT * FROM admissions;
SELECT * FROM patients;
SELECT * FROM doctors;  
SELECT * FROM province_names;