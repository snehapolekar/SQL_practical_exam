# 🎓 Student Performance & Attendance Tracker

## 📌 Project Overview

The **Student Performance & Attendance Tracker** is a MySQL database
project designed to manage student details, departments, faculty
members, courses, enrollments, attendance records, and academic grades.

This project demonstrates how a relational database can organize
academic information and generate useful reports about student
performance and attendance.

## 🎯 Project Objectives

-   🧑‍🎓 Store and manage student information.
-   🏢 Organize students by academic departments.
-   👩‍🏫 Maintain faculty details and teaching experience.
-   📚 Manage courses and faculty assignments.
-   📝 Record student course enrollments.
-   📅 Track daily student attendance.
-   🏆 Store marks and grades.
-   📊 Generate reports to analyze academic performance.

## 🗂️ Database Structure

The project uses the database **Practical_exam_db** and contains seven
main tables:

  -----------------------------------------------------------------------
  No.                     Table Name              Description
  ----------------------- ----------------------- -----------------------
  1️⃣                      Departments             Stores department IDs
                                                  and department names.

  2️⃣                      Students                Stores personal,
                                                  contact, admission, and
                                                  department details of
                                                  students.

  3️⃣                      Faculty                 Stores faculty
                                                  information, contact
                                                  details, department,
                                                  and experience.

  4️⃣                      Courses                 Stores course details
                                                  and the faculty
                                                  assigned to each
                                                  course.

  5️⃣                      Enrollments             Records the courses in
                                                  which students are
                                                  enrolled.

  6️⃣                      Attendance              Stores attendance dates
                                                  and student attendance
                                                  statuses.

  7️⃣                      Grades                  Stores marks obtained
                                                  and grades for students
                                                  in different courses.
  -----------------------------------------------------------------------

## 🔗 Table Relationships

The database uses **Primary Keys** and **Foreign Keys** to connect
related tables and maintain data integrity.

-   Departments are connected to Students.
-   Departments are connected to Faculty.
-   Faculty members are connected to Courses.
-   Students and Courses are connected through Enrollments.
-   Students and Courses are also referenced in Attendance.
-   Students and Courses are also referenced in Grades.

## 🛠️ SQL Concepts Used

This project covers the following MySQL concepts:

### 1. 🏗️ Database and Table Creation

-   CREATE DATABASE
-   DROP DATABASE
-   USE
-   CREATE TABLE

### 2. ✍️ Data Manipulation Language (DML)

-   INSERT
-   UPDATE
-   DELETE

### 3. 🔑 Constraints and Keys

-   PRIMARY KEY
-   FOREIGN KEY
-   CHECK

### 4. 🔍 SQL Clauses

-   WHERE
-   ORDER BY
-   GROUP BY
-   HAVING
-   LIMIT

### 5. ⚙️ SQL Operators

-   AND
-   OR
-   NOT
-   Comparison operators

### 6. 📊 Aggregate Functions

-   COUNT()
-   SUM()
-   AVG()
-   MAX()
-   MIN()

### 7. 🔗 SQL Joins

-   INNER JOIN
-   LEFT JOIN
-   RIGHT JOIN
-   FULL OUTER JOIN logic using LEFT JOIN, RIGHT JOIN, and UNION

### 8. 🧩 Subqueries

-   Single-value subqueries
-   IN operator with subqueries
-   Average marks comparison
-   Faculty experience filtering

### 9. 📅 Date and Time Functions

-   MONTH()
-   CURDATE()
-   TIMESTAMPDIFF()
-   DATE_FORMAT()

### 10. 🔤 String Functions

-   UPPER()
-   COALESCE()

### 11. 🪟 Window Functions

-   DENSE_RANK()
-   SUM() OVER()
-   COUNT() OVER()
-   PARTITION BY
-   Running totals

### 12. 🔀 CASE Expressions

-   Student performance categories
-   Attendance categories

## 📈 Reports and Analysis

The project includes queries to:

-   🔎 Display students belonging to a selected department.
-   🏆 Find the top three students according to marks.
-   📉 Identify students with attendance below a selected percentage.
-   🎯 Find students with low attendance and low marks.
-   🌟 Identify students with high marks or perfect attendance.
-   👩‍🏫 Find faculty members who are not assigned to a course.
-   🔤 Display students in alphabetical order.
-   🏢 Count students in each department.
-   📚 Calculate average marks for each course.
-   📊 Find the highest and lowest marks in each course.
-   🧮 Calculate attendance percentages.
-   🥇 Rank students according to marks.
-   📅 Analyze attendance and enrollment dates.
-   📌 Categorize student performance and attendance.

## 💡 Benefits of the Project

-   Keeps academic records organized in one database.
-   Reduces the need to manage information in separate lists.
-   Helps identify student performance patterns.
-   Makes attendance tracking and reporting easier.
-   Demonstrates practical use of relational database concepts.
-   Provides hands-on experience with MySQL queries.

## 🧰 Technology Used

-   **Database Management System:** MySQL
-   **Query Language:** SQL
-   **Project Type:** Database Management System (DBMS)

## 🚀 Learning Outcomes

By completing this project, learners can understand how to design a
relational database, create tables, insert and manage records, establish
relationships, retrieve information using joins and subqueries, and
perform academic data analysis using SQL.

## 🏁 Conclusion

The **Student Performance & Attendance Tracker** is a practical MySQL
project that combines student information management, attendance
tracking, and academic performance analysis. It demonstrates important
SQL concepts through a real-world academic database scenario and helps
build a strong foundation in database management.

## 👩Connect with me :

linkedin id : www.linkedin.com/in/sneha-polekar-1a8022415

Gmail id : snehapolekar26@gmail.com

------------------------------------------------------------------------

