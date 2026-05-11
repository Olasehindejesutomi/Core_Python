-- =========================================
-- USE DATABASE
-- =========================================
USE Webfala_db;
-- =========================================
-- STUDENTS TABLE
-- =========================================
DESCRIBE Students;

INSERT INTO Students (Student_id,Student_name,Tutors_id) VALUES 
(1, 'Ajagun Funmi', 101),
(2, 'Alao Jemilah', 101),
(3, 'Amusan', 101),
(4, 'Atanda Adeola', 101),
(5, 'Ayeni Abiola', 101),
(6, 'Bamidele Damilola', 102),
(7, 'Carina Uregbo', 102),
(8, 'Falusi Omolola', 102),
(9, 'Husseinat Kehinde', 102),
(10, 'Ibrahim Arafat', 102),
(11, 'Manzuma Halimah', 103),
(12, 'Obajemu Esther', 103),
(13, 'Okuku Nafisat', 103),
(14, 'Olanrewaju Esther', 103),
(15, 'Olasehinde Jesutomi', 103),
(16, 'Owolabi Zainab', 104),
(17, 'Folorunsho Rahmat', 104),
(18, 'Rhoda Innocent', 104),
(19, 'Rukayat Umar', 104),
(20, 'SalamatSaheed', 104);
-- =========================================
-- TUTORS TABLE
-- =========================================
INSERT INTO Tutors (Tutor_id, Tutor_name) VALUES
(101, 'Ben Ogbonna'),
(102, 'Adijat Oyetoke'),
(103, 'Barakat Jimoh'),
(104, 'Mr Math');
-- =========================================
-- COURSES TABLE
-- =========================================
INSERT INTO Courses (Course_id, Course_title) VALUES
(201, 'Python Basics'),
(202, 'Machine Learning'),
(203, 'SQL'),
(204, 'Deep Learning'),
(205, 'Mathematics');
-- =========================================
-- ENROLLMENT TABLE (Students ↔ Courses)
-- =========================================
INSERT INTO Enrollment (Student_id, Course_id) VALUES
(1, 201), (1, 203),
(2, 201), (2, 202),
(3, 203),
(4, 201), (4, 205),
(5, 202),
(6, 201), (6, 204),
(7, 203), (7, 202), (7, 201),
(8, 201),
(9, 202), (9, 203),
(10, 204),
(11, 201),
(12, 205),
(13, 203),
(14, 202),
(15, 201), (15, 204),
(16, 205),
(17, 202),
(18, 203),
(19, 201),
(20, 205);
-- =========================================
-- COURSE TUTOR TABLE (Tutors ↔ Courses)
-- =========================================
INSERT INTO Tutors_has_courses (Tutors_Tutor_id, Courses_Course_id) VALUES
(101, 201),
(101, 202),
(102, 203),
(102, 204),
(103, 201),
(103, 205),
(104, 205);
-- =========================================
-- VERIFY DATA
-- =========================================
-- View all students
SELECT * FROM Student;

-- View all courses
SELECT * FROM Courses;

-- View all tutors
SELECT * FROM Tutors;

-- View all enrollment
select * from enrollment;

-- View all tutors_has_courses
SELECT * FROM Tutors_has_courses;


UPDATE StudentS
SET Student_name = 'Zainab Shogbade'
WHERE Student_id = 9;

SELECT name FROM tutors WHERE tutors_id = 102;
