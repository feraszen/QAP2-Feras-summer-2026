-- Insert students
INSERT INTO students (first_name, last_name, email, major, enrollment_year)
VALUES
('Feras', 'Khalid', 'feras@example.com', 'Computer Science', 2023),
('Ali', 'Hassan', 'ali@example.com', 'Business', 2022),
('Sara', 'Omar', 'sara@example.com', 'Engineering', 2024),
('Mona', 'Yousef', 'mona@example.com', 'Mathematics', 2023),
('Lina', 'Adel', 'lina@example.com', 'Computer Science', 2021);

-- Insert professors
INSERT INTO professors (first_name, last_name, department)
VALUES
('John', 'Smith', 'Computer Science'),
('Emily', 'Brown', 'Engineering'),
('David', 'Wilson', 'Mathematics');

-- Insert courses
INSERT INTO courses (course_name, credits, professor_id)
VALUES
('Database Systems', 3, 1),
('Software Engineering', 4, 1),
('Physics I', 3, 2),
('Calculus II', 4, 3);

-- Insert enrollments
INSERT INTO enrollments (student_id, course_id, grade)
VALUES
(1, 1, 'A'),
(1, 2, 'A-'),
(2, 3, 'B'),
(3, 1, 'A'),
(3, 4, 'B+'),
(4, 4, 'C'),
(5, 1, 'A'),
(5, 2, 'B+');
