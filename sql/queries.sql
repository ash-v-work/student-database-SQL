USE student_db;

-- Select All students
SELECT * FROM students;

-- View all the courses a particular student is taking
SELECT s.Name, c.Course_Name
FROM students AS s
INNER JOIN enrollments AS e ON s.Student_ID = e.Student_ID
INNER JOIN courses AS c ON e.course_ID = c.course_ID;

-- Get Student Marks
SELECT s.Name, c.Course_Name, m.Score
FROM students AS s
INNER JOIN marks AS m ON s.Student_ID = m.Student_ID
INNER JOIN courses AS c ON m.Course_ID = c.Course_ID;

-- Average Marks Scored by each Student, Sorted in Descending order
SELECT s.Name, AVG(m.Score) AS 'Average Score'
FROM students AS s
INNER JOIN marks AS m ON s.Student_ID = m.Student_ID
GROUP BY s.Name
ORDER BY AVG(m.Score) DESC;
