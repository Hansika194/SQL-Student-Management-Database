CREATE TABLE Students (
    "Student ID" INTEGER PRIMARY KEY,
    Name TEXT,
    Gender TEXT,
    Age INTEGER,
    Grade TEXT,
    "Math Score" INTEGER,
    "Science Score" INTEGER,
    "English Score" INTEGER
);


INSERT INTO Students VALUES (1,'Rahul','M',18,'A',85,90,88);
INSERT INTO Students VALUES (2,'Priya','F',17,'A',92,95,91);
INSERT INTO Students VALUES (3,'Arjun','M',18,'10',78,82,80);
INSERT INTO Students VALUES (4,'Sneha','F',17,'A',89,94,87);
INSERT INTO Students VALUES (5,'Kiran','M',19,'C',65,70,68);
INSERT INTO Students VALUES (6,'Ravi','M',18,'B',81,85,84);
INSERT INTO Students VALUES (7,'Vijay','M',17,'A',95,92,90);
INSERT INTO Students VALUES (8,'Anjali','F',18,'B',75,80,79);
INSERT INTO Students VALUES (9,'Meena','F',17,'C',60,65,70);
INSERT INTO Students VALUES (10,'Pooja','F',19,'A',88,91,89);


SELECT * FROM students;


SELECT
AVG("Math Score") AS avg_Math_Score,
AVG("Science Score") AS avg_Science_Score,
AVG("English Score") AS avg_English_Score
FROM Students;


SELECT *,
("Math Score" + "Science Score" + "English Score") AS TotalScore
FROM students
ORDER BY TotalScore DESC
LIMIT 1;


SELECT Grade, COUNT(*) AS student_count FROM students GROUP BY Grade;


SELECT Gender,
AVG("Math Score" + "Science Score" + "English Score") AS average_total_score
FROM students
GROUP BY Gender;


SELECT * FROM students 
WHERE "Math Score" > 80;


UPDATE students 
SET Grade = 10 
WHERE "Student ID" = 3;


SELECT * FROM students 
WHERE "Student ID" = 3;