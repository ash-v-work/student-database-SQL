INSERT INTO students (Name, Email, Age, City)
VALUES 
('John Doe', 'John_Doe@gmail.com', 20, 'London'),
('Ria Jain', 'Ria_123@gmail.com', 25, 'Mumbai'),
('Rohit Sharma', 'RoSharma123@gmail.com', 24, 'Delhi');

INSERT INTO courses (Course_name, Duration_Weeks)
VALUES
('SQL Basics', 2),
('Python Programming', 3),
('Web Development', 4);

INSERT INTO enrollments (Student_ID, Course_ID, Enrollment_Date)
VALUES 
(1, 1, '2026-01-01'),
(1, 2, '2026-01-10'),
(2, 2, '2026-01-10'),
(3, 1, '2026-01-01'),
(3, 3, '2026-02-15');

INSERT INTO marks (Student_ID, Course_ID, Score)
VALUES 
(1, 1, 90),
(1, 2, 75),
(2, 2, 88),
(3, 1, 52),
(3, 3, 66);
