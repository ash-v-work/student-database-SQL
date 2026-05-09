CREATE DATABASE student_db;
USE student_db;

CREATE TABLE students (
	Student_ID INT AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(100),
	Email VARCHAR(100) UNIQUE,
	Age INT,
	City VARCHAR(100)
	);

CREATE TABLE courses (
	Course_ID INT AUTO_INCREMENT PRIMARY KEY,
	Course_Name VARCHAR(100),
	Duration_Weeks INT
	);

CREATE TABLE enrollments (
	Enrollment_ID INT AUTO_INCREMENT PRIMARY KEY,
	Student_ID INT,
	Course_ID INT,
	Enrollment_Date DATE,
	FOREIGN KEY(Student_ID) REFERENCES students(Student_ID),
	FOREIGN KEY (Course_ID) REFERENCES courses(Course_ID)
);

CREATE TABLE marks (
	Mark_ID INT AUTO_INCREMENT PRIMARY KEY,
	Student_ID INT,
	Course_ID INT,
	Score INT,
	FOREIGN KEY (Student_ID) REFERENCES students(Student_ID),
	FOREIGN kEY (Course_ID) REFERENCES courses(Course_ID)
);
