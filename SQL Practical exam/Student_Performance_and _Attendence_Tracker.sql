-- SQLBook:Markup
#Student Performance & Attendence Tracker
-- SQLBook:Code
DROP DATABASE IF EXISTS Practical_exam_db;
CREATE DATABASE Practical_exam_db;

USE Practical_exam_db;

## 1.Tables of Departments

CREATE TABLE Departments(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO Departments(department_id, department_name)
VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Mathematics'),
(4, 'Physics'),
(5, 'Chemistry'),
(6, 'Commerce'),
(7, 'Management'),
(8, 'English'),
(9, 'Statistics'),
(10, 'Data Science');

## 2.Table of Student

CREATE TABLE Students(
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    dob DATE,
    gender VARCHAR(20),
    email VARCHAR(50),
    phone_number VARCHAR(50),
    address VARCHAR(100),
    admission_date DATE,
    department_id INT,
    FOREIGN KEY
(department_id) REFERENCES
Departments(department_id)
);

INSERT INTO Students
(student_id, name, dob, gender, email, phone_number, address, admission_date, department_id)
VALUES
(101, 'Rahul Sharma', '2005-04-12', 'Male', 'rahul@gmail.com', '9876543210', 'Surat', '2024-06-10', 1),
(102, 'Priya Patel', '2005-08-20', 'Female', 'priya@gmail.com', '9876543211', 'Ahmedabad', '2024-06-12', 2),
(103, 'Amit Shah', '2004-11-15', 'Male', 'amit@gmail.com', '9876543212', 'Vadodara', '2024-06-15', 3),
(104, 'Neha Desai', '2005-02-25', 'Female', 'neha@gmail.com', '9876543213', 'Rajkot', '2024-06-18', 4),
(105, 'Karan Mehta', '2004-07-10', 'Male', 'karan@gmail.com', '9876543214', 'Surat', '2024-06-20', 5),
(106, 'Anjali Shah', '2005-09-05', 'Female', 'anjali@gmail.com', '9876543215', 'Navsari', '2024-06-22', 6),
(107, 'Rohit Patel', '2004-12-18', 'Male', 'rohit@gmail.com', '9876543216', 'Bharuch', '2024-06-25', 7),
(108, 'Pooja Joshi', '2005-03-30', 'Female', 'pooja@gmail.com', '9876543217', 'Valsad', '2024-06-28', 8),
(109, 'Jay Parmar', '2004-05-14', 'Male', 'jay@gmail.com', '9876543218', 'Surat', '2024-07-01', 9),
(110, 'Riya Trivedi', '2005-10-22', 'Female', 'riya@gmail.com', '9876543219', 'Anand', '2024-07-05', 10);

## 3.Table of Faculty

CREATE TABLE Faculty(
    faculty_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(100),
    department_id INT,
    experience_years INT,
    FOREIGN KEY (department_id) REFERENCES
    Departments(department_id)
);

INSERT INTO Faculty 
(faculty_id, name, email, phone_number, department_id, experience_years)
VALUES
(201, 'Dr. Amit Sharma', 'amit@gmail.com', '9876500001', 1, 10),
(202, 'Dr. Priya Patel', 'priya@gmail.com', '9876500002', 2, 8),
(203, 'Prof. Rahul Shah', 'rahul@gmail.com', '9876500003', 3, 12),
(204, 'Dr. Neha Desai', 'neha@gmail.com', '9876500004', 4, 6),
(205, 'Prof. Karan Mehta', 'karan@gmail.com', '9876500005', 5, 15),
(206, 'Dr. Anjali Joshi', 'anjali@gmail.com', '9876500006', 6, 7),
(207, 'Prof. Rohit Patel', 'rohit@gmail.com', '9876500007', 7, 9),
(208, 'Dr. Pooja Shah', 'pooja@gmail.com', '9876500008', 8, 11),
(209, 'Prof. Jay Parmar', 'jay@gmail.com', '9876500009', 9, 5),
(210, 'Dr. Riya Trivedi', 'riya@gmail.com', '9876500010', 10, 14);

##  4.Table of Courses

CREATE TABLE Courses(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    faculty_id INT,
    FOREIGN KEY(faculty_id) REFERENCES Faculty(faculty_id)
);

INSERT INTO Courses(course_id, course_name, faculty_id)
VALUES
(301, 'Python Programming', 201),
(302, 'Database Management System', 202),
(303, 'Mathematics', 203),
(304, 'Physics', 204),
(305, 'Chemistry', 205),
(306, 'Business Management', 206),
(307, 'Computer Networks', 207),
(308, 'English Communication', 208),
(309, 'Statistics', 209),
(310, 'Artificial Intelligence', 210);

## 5.Table of Enrollments

CREATE TABLE Enrollments(
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY(student_id) REFERENCES Students(student_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);

INSERT INTO Enrollments
(enrollment_id, student_id, course_id, enrollment_date)
VALUES
(401, 101, 301, '2024-07-10'),
(402, 102, 302, '2024-07-11'),
(403, 103, 303, '2024-07-12'),
(404, 104, 304, '2024-07-13'),
(405, 105, 305, '2024-07-14'),
(406, 106, 306, '2024-07-15'),
(407, 107, 307, '2024-07-16'),
(408, 108, 308, '2024-07-17'),
(409, 109, 309, '2024-07-18'),
(410, 110, 310, '2024-07-19');

## 6.Table of Attendance

CREATE TABLE Attendance(
    attendance_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    attendance_date DATE,
    status  VARCHAR(100) CHECK (status IN('Present','Absent','Late')),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);

INSERT INTO Attendance
(attendance_id, student_id, course_id, attendance_date, status)
VALUES
(501, 101, 301, '2024-07-20', 'Present'),
(502, 102, 302, '2024-07-20', 'Absent'),
(503, 103, 303, '2024-07-20', 'Late'),
(504, 104, 304, '2024-07-21', 'Present'),
(505, 105, 305, '2024-07-21', 'Present'),
(506, 106, 306, '2024-07-21', 'Absent'),
(507, 107, 307, '2024-07-22', 'Late'),
(508, 108, 308, '2024-07-22', 'Present'),
(509, 109, 309, '2024-07-22', 'Absent'),
(510, 110, 310, '2024-07-23', 'Present');

## 7.Table of Grades

CREATE TABLE Grades(
    grade_id  INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks_obtained DECIMAL(5 , 2),
    grade VARCHAR(5),
    FOREIGN KEY(student_id) REFERENCES Students(student_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);

INSERT INTO Grades
(grade_id, student_id, course_id, marks_obtained, grade)
VALUES
(601, 101, 301, 85.50, 'A'),
(602, 102, 302, 78.00, 'B'),
(603, 103, 303, 92.50, 'A+'),
(604, 104, 304, 65.00, 'C'),
(605, 105, 305, 88.00, 'A'),
(606, 106, 306, 72.50, 'B'),
(607, 107, 307, 95.00, 'A+'),
(608, 108, 308, 81.00, 'A'),
(609, 109, 309, 69.50, 'C'),
(610, 110, 310, 90.00, 'A+');

SELECT * FROM Departments;

SELECT * FROM Students;

SELECT * FROM Faculty;

SELECT * FROM Courses;

SELECT * FROM Enrollments;

SELECT * FROM Attendance;

SELECT * FROM Grades;

## 1.CURD Operations

UPDATE Students 
SET phone_number = '9998887776', address = '999 New Residency' 
WHERE student_id = 1;

DELETE FROM students WHERE student_id = 3;


## 2.SQL Clauses
## Enrolled in computer science department

SELECT s.* 
FROM Students s
JOIN Departments d ON s.department_id = d.department_id
WHERE d.department_name = 'Computer Science';

### Top 3 Student That Score Highest

SELECT s.student_id, s.name, g.marks_obtained 
FROM Students s
JOIN Grades g ON s.student_id = g.student_id
ORDER BY g.marks_obtained DESC
LIMIT 3;

## Attendance below 75 

SELECT student_id,
       ROUND((SUM(status = 'Present') / COUNT(*)) * 100, 2) AS attendance_pct
FROM attendance
GROUP BY student_id
HAVING attendance_pct < 75;

## 3.SQL Operators
## Attendance below 50 % AND are failing

SELECT s.student_id, s.name
FROM Students s
JOIN Grades g ON s.student_id = g.student_id
JOIN (
    SELECT student_id, (SUM(status = 'Present') / COUNT(*)) * 100 AS attendance_pct
    FROM Attendance
    GROUP BY student_id
) a ON s.student_id = a.student_id
WHERE a.attendance_pct < 50 AND g.marks_obtained < 40;

##  Scored above 90 OR perfect attendance (100%)

SELECT DISTINCT s.student_id, s.name
FROM Students s
LEFT JOIN Grades g ON s.student_id = g.student_id
LEFT JOIN (
    SELECT student_id, (SUM(status = 'Present') / COUNT(*)) * 100 AS attendance_pct
    FROM Attendance
    GROUP BY student_id
) a ON s.student_id = a.student_id
WHERE g.marks_obtained > 90 OR a.attendance_pct = 100;

##  Faculty members NOT assigned to any course

SELECT f.*
FROM Faculty f
LEFT JOIN Courses c ON f.faculty_id = c.faculty_id
WHERE c.course_id IS NULL;

## 4. Shorting and grouping data
##  Students alphabetically by name

SELECT * FROM Students 
ORDER BY name ASC;

##  Number of students per department

SELECT d.department_name, COUNT(s.student_id) AS total_students
FROM Departments d
LEFT JOIN Students s ON d.department_id = s.department_id
GROUP BY d.department_id, d.department_name;

## Average marks per course

SELECT c.course_name, ROUND(AVG(g.marks_obtained), 2) AS avg_marks
FROM Courses c
JOIN Grades g ON c.course_id = g.course_id
GROUP BY c.course_id, c.course_name;

## 5. Aggeregate function 
## Average attendance percentage across all records

SELECT ROUND((SUM(status = 'Present') / COUNT(*)) * 100, 2) AS avg_overall_attendance
FROM Attendance;

## Highest and lowest marks per course

SELECT c.course_name, 
       MAX(g.marks_obtained) AS highest_score, 
       MIN(g.marks_obtained) AS lowest_score
FROM Courses c
JOIN Grades g ON c.course_id = g.course_id
GROUP BY c.course_id, c.course_name;

## Total number of students per department

SELECT d.department_name, COUNT(s.student_id) AS student_count
FROM Departments d
LEFT JOIN Students s ON d.department_id = s.department_id
GROUP BY d.department_id, d.department_name;

## 6. Primary and Foregin key relationship

## 7. Emplement joins 

## INNER JOIN

SELECT s.student_id,  d.department_name
FROM Students s
INNER JOIN Departments d ON s.department_id = d.department_id;

## LEFT JOIN 

SELECT s.student_id, s.name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.enrollment_id IS NULL;

## RIGHT JOIN 

SELECT c.course_id, c.course_name, f.name
FROM Faculty f
RIGHT JOIN Courses c ON f.faculty_id = c.faculty_id
WHERE f.faculty_id IS NULL;

## FULL OUTER JOIN 

SELECT s.student_id, s.name, g.course_id, g.marks_obtained
FROM Students s
LEFT JOIN grades g ON s.student_id = g.student_id
WHERE g.grade_id IS NULL
UNION
SELECT s.student_id, s.name, g.course_id, g.marks_obtained
FROM Students s
RIGHT JOIN grades g ON s.student_id = g.student_id
WHERE s.student_id IS NULL;

## 8. Subqueries 

## Students with marks above average score

SELECT student_id, course_id, marks_obtained
FROM Grades
WHERE marks_obtained > (SELECT AVG(marks_obtained) FROM Grades);

##  Courses taught by faculty members with at least 5 years of experience

SELECT course_name
FROM Courses
WHERE faculty_id IN (
    SELECT faculty_id FROM Faculty WHERE experience_years >= 5
);

##  Students who have missed more than 10 classes

SELECT student_id, name
FROM Students
WHERE student_id IN (
    SELECT student_id 
    FROM Attendance 
    WHERE status = 'Absent' 
    GROUP BY student_id 
    HAVING COUNT(*) > 10
);

## 9. Date and Time functions
## Extract the month from attendance_date to analyze attendance trends.

SELECT attendance_id, student_id, attendance_date, MONTH(attendance_date) AS attendance_month
FROM Attendance;

##  Calculate number of years since admission

SELECT student_id, admission_date, 
       TIMESTAMPDIFF(YEAR, admission_date, CURDATE()) AS years_enrolled
FROM Students;

##  Format attendance date as DD-MM-YYYY

SELECT attendance_id, student_id, DATE_FORMAT(attendance_date, '%d-%m-%Y') AS formatted_date
FROM Attendance;

## 10. String Manipulation function 
##  Uppercase faculty names

SELECT faculty_id, UPPER(name) AS faculty_name_upper FROM Faculty;

## Replace NULL emails

SELECT faculty_id, name, COALESCE(email, 'Email Not Provided') AS display_email FROM Faculty;

## 11.Windows function 
## Rank students based on overall marks

SELECT student_id, marks_obtained,
       DENSE_RANK() OVER (ORDER BY marks_obtained DESC) AS marks_rank
FROM Grades;

##  Cumulative attendance percentage per course

SELECT attendance_id, course_id, student_id, attendance_date, status,
       ROUND((SUM(CASE WHEN status = 'Present' THEN 1 ELSE 0 END) OVER (PARTITION BY course_id ORDER BY attendance_date) * 100.0) / 
       COUNT(*) OVER (PARTITION BY course_id ORDER BY attendance_date), 2) AS cumulative_attendance_pct
FROM Attendance;

## Running total of students enrolled per month

SELECT DATE_FORMAT(enrollment_date, '%Y-%m') AS enrollment_month,
       COUNT(*) AS monthly_enrollments,
       SUM(COUNT(*)) OVER (ORDER BY DATE_FORMAT(enrollment_date, '%Y-%m')) AS running_total
FROM Enrollments
GROUP BY DATE_FORMAT(enrollment_date, '%Y-%m');

## 12.SQL CASE Expressions
## Student performance levels

SELECT student_id, course_id, marks_obtained,
       CASE 
           WHEN marks_obtained > 90 THEN 'Excellent'
           WHEN marks_obtained BETWEEN 75 AND 90 THEN 'Good'
           ELSE 'Needs Improvement'
       END AS performance_level
FROM Grades;

## Categorize attendance records

SELECT student_id,
       ROUND((SUM(status = 'Present') / COUNT(*)) * 100, 2) AS attendance_pct,
       CASE 
           WHEN (SUM(status = 'Present') / COUNT(*)) * 100 > 80 THEN 'Regular'
           WHEN (SUM(status = 'Present') / COUNT(*)) * 100 BETWEEN 50 AND 80 THEN 'Irregular'
           ELSE 'Defaulter'
       END AS attendance_category
FROM Attendance
GROUP BY student_id;


































