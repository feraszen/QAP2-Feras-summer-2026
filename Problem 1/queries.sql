-- 1. Show all students
SELECT * FROM students;

-- 2. Show all professors
SELECT * FROM professors;

-- 3. Show all courses
SELECT * FROM courses;

-- 4. Show all enrollments
SELECT * FROM enrollments;

-- 5. Show students with their enrolled courses (INNER JOIN)
SELECT 
    students.first_name,
    students.last_name,
    courses.course_name,
    enrollments.grade
FROM enrollments
INNER JOIN students ON enrollments.student_id = students.student_id
INNER JOIN courses ON enrollments.course_id = courses.course_id;

-- 6. Show courses with their assigned professor
SELECT 
    courses.course_name,
    courses.credits,
    professors.first_name AS professor_first_name,
    professors.last_name AS professor_last_name
FROM courses
INNER JOIN professors ON courses.professor_id = professors.professor_id;

-- 7. Show all students enrolled in a specific course (example: Database Systems)
SELECT 
    students.first_name,
    students.last_name,
    courses.course_name
FROM enrollments
INNER JOIN students ON enrollments.student_id = students.student_id
INNER JOIN courses ON enrollments.course_id = courses.course_id
WHERE courses.course_name = 'Database Systems';

-- 8. Count how many students are enrolled in each course
SELECT 
    courses.course_name,
    COUNT(enrollments.student_id) AS total_students
FROM courses
LEFT JOIN enrollments ON courses.course_id = enrollments.course_id
GROUP BY courses.course_name;

-- 9. Show students with their majors and enrollment year
SELECT 
    first_name,
    last_name,
    major,
    enrollment_year
FROM students;

-- 10. Show each student with all courses they take and the professor teaching the course
SELECT
    students.first_name AS student_first_name,
    students.last_name AS student_last_name,
    courses.course_name,
    professors.first_name AS professor_first_name,
    professors.last_name AS professor_last_name,
    enrollments.grade
FROM enrollments
INNER JOIN students ON enrollments.student_id = students.student_id
INNER JOIN courses ON enrollments.course_id = courses.course_id
INNER JOIN professors ON courses.professor_id = professors.professor_id;
