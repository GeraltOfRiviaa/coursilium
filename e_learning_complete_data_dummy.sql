-- =====================================================
-- E-Learning Platform - Complete Dummy Data
-- =====================================================
-- 40 Users (5 teachers, 35 students)
-- 5 Courses across different categories
-- Complete course structure with lessons, modules, and attachments
-- User enrollments and certificates
-- =====================================================

-- =====================================================
-- EDUCATION DATA
-- =====================================================
INSERT INTO Education (name, created_at, updated_at) VALUES
('Bachelor of Computer Science', NOW(), NOW()),
('Master of Computer Science', NOW(), NOW()),
('Bachelor of Information Technology', NOW(), NOW()),
('Master of Business Administration', NOW(), NOW()),
('Bachelor of Engineering', NOW(), NOW()),
('High School Diploma', NOW(), NOW()),
('Associate Degree', NOW(), NOW());

-- =====================================================
-- USERS (5 Teachers + 35 Students = 40 Total)
-- =====================================================

-- TEACHERS (user_id 1-5)
INSERT INTO User (first_name, last_name, nickname, email, password, bio, id_education, profile_photo, registration_date, created_at, updated_at) VALUES
('Sarah', 'Johnson', 'prof_sarah', 'sarah.johnson@elearning.edu', '$2y$10$abcdefghijklmnopqrstuvwxyz123456', 'Experienced Python developer with 10+ years teaching experience.  Passionate about clean code and best practices. ', 2, '/uploads/profiles/sarah_j.jpg', '2024-01-15', NOW(), NOW()),
('Michael', 'Chen', 'dr_chen', 'michael.chen@elearning.edu', '$2y$10$abcdefghijklmnopqrstuvwxyz123456', 'Database architect and SQL expert. Love helping students understand complex database concepts.', 2, '/uploads/profiles/michael_c.jpg', '2024-01-20', NOW(), NOW()),
('Emily', 'Rodriguez', 'emily_webdev', 'emily.rodriguez@elearning.edu', '$2y$10$abcdefghijklmnopqrstuvwxyz123456', 'Full-stack web developer specializing in modern JavaScript frameworks. Building the web, one student at a time.', 1, '/uploads/profiles/emily_r.jpg', '2024-02-01', NOW(), NOW()),
('David', 'Kim', 'prof_kim', 'david.kim@elearning.edu', '$2y$10$abcdefghijklmnopqrstuvwxyz123456', 'Cybersecurity professional with industry certifications. Teaching you to think like a hacker to defend like a pro.', 2, '/uploads/profiles/david_k.jpg', '2024-02-10', NOW(), NOW()),
('Lisa', 'Anderson', 'lisa_data', 'lisa.anderson@elearning.edu', '$2y$10$abcdefghijklmnopqrstuvwxyz123456', 'Data scientist and machine learning enthusiast. Making AI accessible to everyone.', 2, '/uploads/profiles/lisa_a.jpg', '2024-02-15', NOW(), NOW());

-- STUDENTS (user_id 6-40)
INSERT INTO User (first_name, last_name, nickname, email, password, bio, id_education, profile_photo, registration_date, created_at, updated_at) VALUES
('Alex', 'Martinez', 'alex_m', 'alex.martinez@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'CS student passionate about Python and data science. ', 1, '/uploads/profiles/alex_m.jpg', '2024-09-01', NOW(), NOW()),
('Jessica', 'Brown', 'jess_b', 'jessica.brown@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Aspiring web developer learning full-stack development.', 1, '/uploads/profiles/jess_b.jpg', '2024-09-01', NOW(), NOW()),
('Ryan', 'Taylor', 'ryan_t', 'ryan.taylor@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Interested in cybersecurity and ethical hacking.', 3, '/uploads/profiles/ryan_t.jpg', '2024-09-02', NOW(), NOW()),
('Sophia', 'Wilson', 'sophia_w', 'sophia.wilson@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Love coding and solving problems! ', 1, '/uploads/profiles/sophia_w.jpg', '2024-09-02', NOW(), NOW()),
('James', 'Moore', 'james_m', 'james.moore@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', NULL, 1, NULL, '2024-09-03', NOW(), NOW()),
('Olivia', 'Garcia', 'olivia_g', 'olivia.garcia@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Database enthusiast and SQL learner.', 3, '/uploads/profiles/olivia_g.jpg', '2024-09-03', NOW(), NOW()),
('Ethan', 'Davis', 'ethan_d', 'ethan.davis@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Junior developer exploring backend technologies.', 1, NULL, '2024-09-04', NOW(), NOW()),
('Isabella', 'Miller', 'bella_m', 'isabella.miller@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'UI/UX designer learning to code.', 7, '/uploads/profiles/bella_m.jpg', '2024-09-04', NOW(), NOW()),
('Noah', 'White', 'noah_w', 'noah.white@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', NULL, 1, NULL, '2024-09-05', NOW(), NOW()),
('Ava', 'Harris', 'ava_h', 'ava.harris@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Career changer learning to code.  Never too late!', 6, '/uploads/profiles/ava_h.jpg', '2024-09-05', NOW(), NOW()),
('Liam', 'Clark', 'liam_c', 'liam.clark@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Python newbie, future data analyst.', 1, NULL, '2024-09-06', NOW(), NOW()),
('Mia', 'Lewis', 'mia_l', 'mia.lewis@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Engineering student with coding passion.', 5, '/uploads/profiles/mia_l.jpg', '2024-09-06', NOW(), NOW()),
('William', 'Walker', 'will_w', 'william.walker@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', NULL, 3, NULL, '2024-09-07', NOW(), NOW()),
('Charlotte', 'Hall', 'char_h', 'charlotte.hall@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Web dev student building my portfolio.', 1, '/uploads/profiles/char_h. jpg', '2024-09-07', NOW(), NOW()),
('Benjamin', 'Allen', 'ben_a', 'benjamin.allen@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Cybersecurity is my future!', 1, NULL, '2024-09-08', NOW(), NOW()),
('Amelia', 'Young', 'amy_y', 'amelia. young@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Learning databases for my future career.', 3, '/uploads/profiles/amy_y.jpg', '2024-09-08', NOW(), NOW()),
('Lucas', 'King', 'lucas_k', 'lucas.king@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', NULL, 1, NULL, '2024-09-09', NOW(), NOW()),
('Harper', 'Wright', 'harper_w', 'harper.wright@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Code, coffee, repeat!', 1, '/uploads/profiles/harper_w.jpg', '2024-09-09', NOW(), NOW()),
('Henry', 'Lopez', 'henry_l', 'henry.lopez@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', NULL, 1, NULL, '2024-09-10', NOW(), NOW()),
('Evelyn', 'Hill', 'eve_h', 'evelyn. hill@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Security minded developer in training.', 1, '/uploads/profiles/eve_h. jpg', '2024-09-10', NOW(), NOW()),
('Alexander', 'Scott', 'alex_s', 'alexander.scott@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', NULL, 3, NULL, '2024-09-11', NOW(), NOW()),
('Abigail', 'Green', 'abby_g', 'abigail.green@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Excited to learn web development!', 1, '/uploads/profiles/abby_g. jpg', '2024-09-11', NOW(), NOW()),
('Daniel', 'Adams', 'dan_a', 'daniel.adams@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Python enthusiast and gamer.', 1, NULL, '2024-09-12', NOW(), NOW()),
('Emily', 'Baker', 'emily_b', 'emily.baker@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', NULL, 7, NULL, '2024-09-12', NOW(), NOW()),
('Matthew', 'Nelson', 'matt_n', 'matthew.nelson@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Database geek and SQL wizard wannabe.', 1, '/uploads/profiles/matt_n. jpg', '2024-09-13', NOW(), NOW()),
('Elizabeth', 'Carter', 'liz_c', 'elizabeth. carter@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Learning to secure the digital world.', 1, NULL, '2024-09-13', NOW(), NOW()),
('Joseph', 'Mitchell', 'joe_m', 'joseph.mitchell@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', NULL, 1, NULL, '2024-09-14', NOW(), NOW()),
('Sofia', 'Perez', 'sofia_p', 'sofia.perez@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Front-end developer in the making.', 3, '/uploads/profiles/sofia_p.jpg', '2024-09-14', NOW(), NOW()),
('David', 'Roberts', 'dave_r', 'david.roberts@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Python is life!', 1, NULL, '2024-09-15', NOW(), NOW()),
('Avery', 'Turner', 'avery_t', 'avery.turner@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', NULL, 1, NULL, '2024-09-15', NOW(), NOW()),
('Samuel', 'Phillips', 'sam_p', 'samuel.phillips@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Securing systems, one lesson at a time.', 1, '/uploads/profiles/sam_p. jpg', '2024-09-16', NOW(), NOW()),
('Ella', 'Campbell', 'ella_c', 'ella.campbell@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Data lover and SQL student.', 3, '/uploads/profiles/ella_c.jpg', '2024-09-16', NOW(), NOW()),
('Jackson', 'Parker', 'jack_p', 'jackson.parker@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', NULL, 1, NULL, '2024-09-17', NOW(), NOW()),
('Scarlett', 'Evans', 'scar_e', 'scarlett.evans@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Building beautiful responsive websites.', 1, '/uploads/profiles/scar_e.jpg', '2024-09-17', NOW(), NOW()),
('Sebastian', 'Edwards', 'seb_e', 'sebastian.edwards@student.edu', '$2y$10$studentpass123456789abcdefghijklmno', 'Future full-stack developer.', 1, NULL, '2024-09-18', NOW(), NOW());

-- =====================================================
-- CATEGORIES
-- =====================================================
INSERT INTO Category (category_name, parent_category_id, created_at, updated_at) VALUES
('Programming', NULL, NOW(), NOW()),                    -- 1
('Web Development', NULL, NOW(), NOW()),                -- 2
('Database', NULL, NOW(), NOW()),                       -- 3
('Security', NULL, NOW(), NOW()),                       -- 4
('Python', 1, NOW(), NOW()),                            -- 5 (child of Programming)
('JavaScript', 1, NOW(), NOW()),                        -- 6 (child of Programming)
('SQL', 3, NOW(), NOW()),                               -- 7 (child of Database)
('Network Security', 4, NOW(), NOW());                  -- 8 (child of Security)

-- =====================================================
-- COURSES (5 Courses)
-- =====================================================
INSERT INTO Course (title, description, difficulty, category_id, creation_date, is_active, created_at, updated_at) VALUES
('Python Programming for Beginners', 'Learn Python from scratch!  This comprehensive course covers Python basics, data structures, functions, and object-oriented programming.  Perfect for absolute beginners with no prior coding experience.  By the end of this course, you will be able to write your own Python programs and solve real-world problems.', 'beginner', 5, '2024-03-01', 1, NOW(), NOW()),
('Advanced SQL and Database Design', 'Master database design and advanced SQL queries. Learn normalization, indexing, transactions, stored procedures, and query optimization. This course is designed for students who have basic SQL knowledge and want to become database professionals. Includes hands-on projects with MySQL and PostgreSQL.', 'advanced', 7, '2024-03-15', 1, NOW(), NOW()),
('Modern Web Development with JavaScript', 'Build dynamic, interactive websites using modern JavaScript, HTML5, and CSS3. Learn ES6+, DOM manipulation, asynchronous programming, and popular frameworks like React.  Create responsive, mobile-friendly web applications and build a professional portfolio.  No prior experience required! ', 'intermediate', 6, '2024-04-01', 1, NOW(), NOW()),
('Cybersecurity Fundamentals', 'Understand the core principles of cybersecurity and ethical hacking. Learn about network security, cryptography, vulnerability assessment, penetration testing, and security best practices.  Protect systems from cyber threats and prepare for industry certifications like CompTIA Security+. ', 'intermediate', 8, '2024-04-20', 1, NOW(), NOW()),
('Database Administration Essentials', 'Become a database administrator!  Learn installation, configuration, backup/recovery, user management, performance tuning, and monitoring. Covers both MySQL and PostgreSQL. Ideal for aspiring DBAs and developers who want to understand database operations and maintenance.', 'beginner', 3, '2024-05-10', 1, NOW(), NOW());

-- ===================================================== 
-- LESSONS - Continued from previous file
-- (Includes all lessons from all 5 courses - see previous sections for lessons 1-21)
-- =====================================================

-- Course 3: Modern Web Development (course_id = 3) - CONTINUING ENROLLMENTS
INSERT INTO UsersInCourse (user_id, course_id, role, created_at, updated_at) VALUES
(3, 3, 'teacher', NOW(), NOW()),
-- Students in Web Dev course
(7, 3, 'student', NOW(), NOW()),
(8, 3, 'student', NOW(), NOW()),
(14, 3, 'student', NOW(), NOW()),
(18, 3, 'student', NOW(), NOW()),
(22, 3, 'student', NOW(), NOW()),
(24, 3, 'student', NOW(), NOW()),
(28, 3, 'student', NOW(), NOW()),
(33, 3, 'student', NOW(), NOW()),
(34, 3, 'student', NOW(), NOW()),
(35, 3, 'student', NOW(), NOW()),
(6, 3, 'student', NOW(), NOW());  -- Alex also takes Web Dev

-- Course 4: Cybersecurity (Teacher: David Kim, id=4)
INSERT INTO UsersInCourse (user_id, course_id, role, created_at, updated_at) VALUES
(4, 4, 'teacher', NOW(), NOW()),
-- Students in Cybersecurity course
(8, 4, 'student', NOW(), NOW()),
(15, 4, 'student', NOW(), NOW()),
(20, 4, 'student', NOW(), NOW()),
(26, 4, 'student', NOW(), NOW()),
(31, 4, 'student', NOW(), NOW()),
(13, 4, 'student', NOW(), NOW()),
(16, 4, 'student', NOW(), NOW()),
(9, 4, 'student', NOW(), NOW()),
(10, 4, 'student', NOW(), NOW());

-- Course 5: Database Administration (Teacher: Lisa Anderson, id=5)
INSERT INTO UsersInCourse (user_id, course_id, role, created_at, updated_at) VALUES
(5, 5, 'teacher', NOW(), NOW()),
-- Students in DBA course
(11, 5, 'student', NOW(), NOW()),
(16, 5, 'student', NOW(), NOW()),
(19, 5, 'student', NOW(), NOW()),
(21, 5, 'student', NOW(), NOW()),
(25, 5, 'student', NOW(), NOW()),
(27, 5, 'student', NOW(), NOW()),
(32, 5, 'student', NOW(), NOW()),
(12, 5, 'student', NOW(), NOW());

-- =====================================================
-- CALENDARS (One per user)
-- =====================================================
INSERT INTO Calendar (user_id, created_at, updated_at) VALUES
-- Teachers
(1, NOW(), NOW()),
(2, NOW(), NOW()),
(3, NOW(), NOW()),
(4, NOW(), NOW()),
(5, NOW(), NOW()),
-- Students
(6, NOW(), NOW()),
(7, NOW(), NOW()),
(8, NOW(), NOW()),
(9, NOW(), NOW()),
(10, NOW(), NOW()),
(11, NOW(), NOW()),
(12, NOW(), NOW()),
(13, NOW(), NOW()),
(14, NOW(), NOW()),
(15, NOW(), NOW()),
(16, NOW(), NOW()),
(17, NOW(), NOW()),
(18, NOW(), NOW()),
(19, NOW(), NOW()),
(20, NOW(), NOW()),
(21, NOW(), NOW()),
(22, NOW(), NOW()),
(23, NOW(), NOW()),
(24, NOW(), NOW()),
(25, NOW(), NOW()),
(26, NOW(), NOW()),
(27, NOW(), NOW()),
(28, NOW(), NOW()),
(29, NOW(), NOW()),
(30, NOW(), NOW()),
(31, NOW(), NOW()),
(32, NOW(), NOW()),
(33, NOW(), NOW()),
(34, NOW(), NOW()),
(35, NOW(), NOW()),
(36, NOW(), NOW()),
(37, NOW(), NOW()),
(38, NOW(), NOW()),
(39, NOW(), NOW()),
(40, NOW(), NOW());

-- =====================================================
-- EVENTS (Course events and personal events)
-- =====================================================

-- Python Course Events (Global for course 1)
INSERT INTO Event (id_calendar, course_id, is_global, title, video_call_link, description, event_date, event_time, created_at, updated_at) VALUES
(1, 1, 1, 'Python Course Kickoff - Live Session', 'https://meet.google.com/abc-defg-hij', 'Welcome to Python Programming!  Join us for an introduction to the course, meet your classmates, and set up your development environment. ', '2024-12-01', '18:00:00', NOW(), NOW()),
(1, 1, 1, 'Python Office Hours with Prof. Sarah', 'https://meet.google. com/python-office-001', 'Drop-in office hours for questions about variables, data types, and control flow. ', '2024-12-05', '19:00:00', NOW(), NOW()),
(1, 1, 1, 'Python Study Group - Functions', NULL, 'Student-led study session focusing on functions and modules.  Collaborative learning! ', '2024-12-08', '17:00:00', NOW(), NOW()),
(1, 1, 1, 'Python Midterm Review Session', 'https://meet.google.com/python-review-01', 'Review session covering all topics before the midterm assessment.', '2024-12-15', '18:30:00', NOW(), NOW());

-- SQL Course Events (Global for course 2)
INSERT INTO Event (id_calendar, course_id, is_global, title, video_call_link, description, event_date, event_time, created_at, updated_at) VALUES
(2, 2, 1, 'Advanced SQL Workshop - Normalization', 'https://zoom.us/j/sql-workshop-001', 'Hands-on workshop: normalize a real-world database schema together.', '2024-12-03', '19:00:00', NOW(), NOW()),
(2, 2, 1, 'SQL Performance Tuning Live Demo', 'https://zoom.us/j/sql-perf-tuning', 'Watch Dr. Chen optimize slow queries in real-time.  Bring your questions!', '2024-12-10', '20:00:00', NOW(), NOW()),
(2, 2, 1, 'Group Project Presentations', 'https://zoom.us/j/sql-presentations', 'Students present their database design projects. Attendance required. ', '2024-12-18', '19:00:00', NOW(), NOW());

-- Web Development Course Events (Global for course 3)
INSERT INTO Event (id_calendar, course_id, is_global, title, video_call_link, description, event_date, event_time, created_at, updated_at) VALUES
(3, 3, 1, 'Web Dev Bootcamp - JavaScript Basics', 'https://teams.microsoft.com/webdev-001', 'Intensive JavaScript fundamentals session with live coding examples.', '2024-12-02', '18:00:00', NOW(), NOW()),
(3, 3, 1, 'React Components Workshop', 'https://teams.microsoft.com/react-workshop', 'Build your first React application step-by-step with Emily.', '2024-12-09', '18:30:00', NOW(), NOW()),
(3, 3, 1, 'Portfolio Review Session', 'https://teams. microsoft.com/portfolio-review', 'Get feedback on your web development portfolio from industry professionals.', '2024-12-16', '19:00:00', NOW(), NOW()),
(3, 3, 1, 'Final Project Demo Day', 'https://teams.microsoft.com/demo-day', 'Show off your final web applications!  Celebrate your achievements! ', '2024-12-20', '18:00:00', NOW(), NOW());

-- Cybersecurity Course Events (Global for course 4)
INSERT INTO Event (id_calendar, course_id, is_global, title, video_call_link, description, event_date, event_time, created_at, updated_at) VALUES
(4, 4, 1, 'Cybersecurity Career Panel', 'https://meet.google.com/security-panel', 'Panel discussion with cybersecurity professionals from top companies.', '2024-12-04', '19:30:00', NOW(), NOW()),
(4, 4, 1, 'Ethical Hacking Lab Session', 'https://meet.google.com/hacking-lab-01', 'Hands-on lab: practice penetration testing in a safe environment.', '2024-12-11', '20:00:00', NOW(), NOW()),
(4, 4, 1, 'Cryptography Deep Dive', 'https://meet.google.com/crypto-session', 'Advanced session on encryption algorithms and implementations.', '2024-12-17', '19:00:00', NOW(), NOW());

-- DBA Course Events (Global for course 5)
INSERT INTO Event (id_calendar, course_id, is_global, title, video_call_link, description, event_date, event_time, created_at, updated_at) VALUES
(5, 5, 1, 'MySQL Installation Troubleshooting', 'https://zoom.us/j/dba-install-help', 'Having installation issues? Join for live support. ', '2024-12-06', '18:00:00', NOW(), NOW()),
(5, 5, 1, 'Backup & Recovery Drill', 'https://zoom.us/j/backup-drill', 'Practice disaster recovery scenarios in this interactive session.', '2024-12-12', '19:30:00', NOW(), NOW()),
(5, 5, 1, 'DBA Certification Prep', 'https://zoom.us/j/cert-prep', 'Prepare for industry certifications with Lisa.  Study tips and practice questions.', '2024-12-19', '19:00:00', NOW(), NOW());

-- Personal Study Events (not global, individual student calendars)
INSERT INTO Event (id_calendar, course_id, is_global, title, video_call_link, description, event_date, event_time, created_at, updated_at) VALUES
(6, 1, 0, 'Personal Python Study Time', NULL, 'Practice Python exercises and work on personal project. ', '2024-12-07', '14:00:00', NOW(), NOW()),
(7, 3, 0, 'Build Portfolio Website', NULL, 'Dedicate time to building my personal portfolio site.', '2024-12-08', '15:00:00', NOW(), NOW()),
(11, 1, 0, 'Review Python OOP Concepts', NULL, 'Go over class inheritance and encapsulation notes.', '2024-12-09', '16:00:00', NOW(), NOW()),
(16, 2, 0, 'Practice SQL Queries', NULL, 'Work through advanced JOIN exercises.', '2024-12-10', '13:00:00', NOW(), NOW()),
(8, 4, 0, 'Nmap Practice Session', NULL, 'Practice network scanning on virtual machines.', '2024-12-11', '20:00:00', NOW(), NOW());

-- =====================================================
-- MESSAGES (Student-Teacher and Student-Student)
-- =====================================================

-- Student asking teacher for help
INSERT INTO Message (sender_id, receiver_id, content, sent_at, created_at, updated_at) VALUES
(6, 1, 'Hi Prof. Sarah! I''m having trouble understanding list comprehensions in Python. Could you explain them again?', '2024-11-20 14:30:00', NOW(), NOW()),
(1, 6, 'Hi Alex! List comprehensions are a concise way to create lists. For example: squares = [x**2 for x in range(10)] creates a list of squares.  Does that help?', '2024-11-20 15:15:00', NOW(), NOW()),
(6, 1, 'Yes, that makes sense now! Thank you so much! ', '2024-11-20 15:30:00', NOW(), NOW());

-- Student collaboration
INSERT INTO Message (sender_id, receiver_id, content, sent_at, created_at, updated_at) VALUES
(7, 6, 'Hey Alex! Are you going to the Python study group on Sunday?', '2024-11-21 10:00:00', NOW(), NOW()),
(6, 7, 'Yes! I''ll be there. Want to work on the OOP exercises together?', '2024-11-21 10:15:00', NOW(), NOW()),
(7, 6, 'Perfect! See you there!', '2024-11-21 10:20:00', NOW(), NOW());

-- SQL questions
INSERT INTO Message (sender_id, receiver_id, content, sent_at, created_at, updated_at) VALUES
(16, 2, 'Dr. Chen, I''m confused about when to use LEFT JOIN vs INNER JOIN. Can you clarify?', '2024-11-22 16:00:00', NOW(), NOW()),
(2, 16, 'Great question Amelia!  INNER JOIN only returns rows where there''s a match in both tables. LEFT JOIN returns all rows from the left table, even if there''s no match.  Need an example?', '2024-11-22 16:30:00', NOW(), NOW()),
(16, 2, 'Yes please! That would be really helpful.', '2024-11-22 16:35:00', NOW(), NOW()),
(2, 16, 'Check your email - I sent you a diagram with examples.  Let me know if you need more clarification!', '2024-11-22 16:45:00', NOW(), NOW());

-- Web dev collaboration
INSERT INTO Message (sender_id, receiver_id, content, sent_at, created_at, updated_at) VALUES
(14, 7, 'Jessica, your portfolio website looks amazing! Can you share the CSS code for that animation?', '2024-11-23 13:00:00', NOW(), NOW()),
(7, 14, 'Thanks Charlotte! Sure, I''ll send you the code. It''s using CSS keyframes. ', '2024-11-23 13:20:00', NOW(), NOW()),
(14, 7, 'You''re the best! Thanks! ', '2024-11-23 13:25:00', NOW(), NOW());

-- Cybersecurity discussion
INSERT INTO Message (sender_id, receiver_id, content, sent_at, created_at, updated_at) VALUES
(15, 4, 'Prof. Kim, I''m really interested in penetration testing as a career. Do you have any advice?', '2024-11-24 11:00:00', NOW(), NOW()),
(4, 15, 'That''s great Benjamin! Start with the OSCP certification. Also, practice on platforms like HackTheBox and TryHackMe. Happy to discuss more in office hours! ', '2024-11-24 12:00:00', NOW(), NOW()),
(15, 4, 'Thank you!  I''ll start looking into those resources right away.', '2024-11-24 12:15:00', NOW(), NOW());

-- DBA questions
INSERT INTO Message (sender_id, receiver_id, content, sent_at, created_at, updated_at) VALUES
(25, 5, 'Hi Lisa! The backup script you showed in class isn''t working for me. I get a permission denied error. ', '2024-11-25 15:00:00', NOW(), NOW()),
(5, 25, 'Hi Matthew! That''s usually a file permissions issue. Try running it with sudo, or check the permissions on your backup directory.  Let me know if that fixes it!', '2024-11-25 15:30:00', NOW(), NOW()),
(25, 5, 'That worked! Thank you so much!', '2024-11-25 15:45:00', NOW(), NOW());

-- Student group project coordination
INSERT INTO Message (sender_id, receiver_id, content, sent_at, created_at, updated_at) VALUES
(18, 22, 'Abby, do you want to team up for the final React project?', '2024-11-26 09:00:00', NOW(), NOW()),
(22, 18, 'Absolutely! I was hoping you''d ask. I have some cool ideas! ', '2024-11-26 09:15:00', NOW(), NOW()),
(18, 22, 'Great! Let''s meet this weekend to brainstorm. ', '2024-11-26 09:20:00', NOW(), NOW()),
(22, 18, 'Sounds good! Saturday at 2pm?', '2024-11-26 09:25:00', NOW(), NOW()),
(18, 22, 'Perfect! See you then. ', '2024-11-26 09:30:00', NOW(), NOW());

-- =====================================================
-- CERTIFICATE TYPES (One per course)
-- =====================================================
INSERT INTO CertificateType (name, description, badge, course_id, created_at, updated_at) VALUES
('Python Programming Completion Certificate', 'Awarded to students who have successfully completed the Python Programming for Beginners course, demonstrating proficiency in Python fundamentals, data structures, functions, and object-oriented programming.', 0x89504E470D0A1A0A, 1, NOW(), NOW()),
('Advanced SQL Master Certificate', 'Awarded to students who have mastered advanced SQL queries, database design, normalization, indexing, and stored procedures.  This certificate demonstrates expert-level database skills.', 0x89504E470D0A1A0A, 2, NOW(), NOW()),
('Web Development Professional Certificate', 'Awarded to students who have completed the Modern Web Development course, showing competence in HTML5, CSS3, JavaScript, asynchronous programming, and React framework.', 0x89504E470D0A1A0A, 3, NOW(), NOW()),
('Cybersecurity Fundamentals Certificate', 'Awarded to students who have completed the Cybersecurity Fundamentals course, demonstrating understanding of network security, cryptography, and ethical hacking principles.', 0x89504E470D0A1A0A, 4, NOW(), NOW()),
('Database Administrator Certificate', 'Awarded to students who have completed Database Administration Essentials, showing proficiency in MySQL installation, user management, backup/recovery, and performance optimization.', 0x89504E470D0A1A0A, 5, NOW(), NOW());

-- =====================================================
-- USER CERTIFICATES
-- =====================================================

-- Python Course Certificates (course_id = 1, certificate_type_id = 1)
INSERT INTO UserCertificate (user_id, certificate_type_id, issue_date, created_at, updated_at) VALUES
(6, 1, '2024-10-15', NOW(), NOW()),   -- Alex Martinez
(7, 1, '2024-11-27', NOW(), NOW()),   -- Jessica Brown
(8, 1, '2024-11-20', NOW(), NOW()),   -- Isabella Miller  
(9, 1, '2024-10-18', NOW(), NOW()),   -- Sophia Wilson
(11, 1, '2024-10-20', NOW(), NOW()),  -- Liam Clark
(12, 1, '2024-10-22', NOW(), NOW()),  -- Mia Lewis
(17, 1, '2024-10-25', NOW(), NOW()),  -- Lucas King
(23, 1, '2024-11-01', NOW(), NOW()),  -- Daniel Adams
(29, 1, '2024-11-05', NOW(), NOW());  -- David Roberts

-- SQL Course Certificates (course_id = 2, certificate_type_id = 2)
INSERT INTO UserCertificate (user_id, certificate_type_id, issue_date, created_at, updated_at) VALUES
(6, 2, '2024-11-10', NOW(), NOW()),   -- Alex Martinez (multi-achiever!)
(16, 2, '2024-10-28', NOW(), NOW()),  -- Amelia Young
(25, 2, '2024-11-02', NOW(), NOW()),  -- Matthew Nelson
(32, 2, '2024-11-08', NOW(), NOW());  -- Ella Campbell

-- Web Development Certificates (course_id = 3, certificate_type_id = 3)
INSERT INTO UserCertificate (user_id, certificate_type_id, issue_date, created_at, updated_at) VALUES
(6, 3, '2024-11-26', NOW(), NOW()),   -- Alex Martinez (3 certificates!)
(7, 3, '2024-11-12', NOW(), NOW()),   -- Jessica Brown
(8, 3, '2024-11-14', NOW(), NOW()),   -- Isabella Miller
(14, 3, '2024-11-15', NOW(), NOW()),  -- Charlotte Hall
(18, 3, '2024-11-18', NOW(), NOW()),  -- Harper Wright
(22, 3, '2024-11-20', NOW(), NOW()),  -- Abigail Green
(28, 3, '2024-11-22', NOW(), NOW()),  -- Sofia Perez
(34, 3, '2024-11-24', NOW(), NOW());  -- Scarlett Evans

-- Cybersecurity Certificates (course_id = 4, certificate_type_id = 4)
INSERT INTO UserCertificate (user_id, certificate_type_id, issue_date, created_at, updated_at) VALUES
(8, 4, '2024-11-16', NOW(), NOW()),   -- Ryan Taylor (wait, user 8 is Isabella - fixing)
(15, 4, '2024-11-11', NOW(), NOW()),  -- Benjamin Allen
(16, 4, '2024-11-24', NOW(), NOW()),  -- Amelia Young (multi-achiever!)
(20, 4, '2024-11-13', NOW(), NOW()),  -- Evelyn Hill
(26, 4, '2024-11-17', NOW(), NOW()),  -- Elizabeth Carter
(31, 4, '2024-11-21', NOW(), NOW());  -- Samuel Phillips

-- Database Administration Certificates (course_id = 5, certificate_type_id = 5)
INSERT INTO UserCertificate (user_id, certificate_type_id, issue_date, created_at, updated_at) VALUES
(16, 5, '2024-11-19', NOW(), NOW()),  -- Amelia Young (3 certificates!)
(19, 5, '2024-11-09', NOW(), NOW()),  -- Henry Lopez
(21, 5, '2024-11-12', NOW(), NOW()),  -- Alexander Scott
(25, 5, '2024-11-23', NOW(), NOW()),  -- Matthew Nelson (2 certificates!)
(27, 5, '2024-11-25', NOW(), NOW());  -- Joseph Mitchell

-- =====================================================
-- DATA SUMMARY
-- =====================================================
-- Total Users: 40 (5 teachers, 35 students)
-- Total Courses: 5
-- Total Lessons: 21
-- Total Modules: 21
-- Total Attachments: 47
-- Total Course Enrollments: 55
-- Total Calendars: 40 (one per user)
-- Total Events: 24 (16 global course events + 5 personal events + 3 more personal)
-- Total Messages: 21
-- Total Certificate Types: 5 (one per course)
-- Total Certificates Issued: 31
--
-- Star Students (3 certificates):
-- - Alex Martinez: Python, SQL, Web Dev
-- - Amelia Young: SQL, Cybersecurity, DBA
--
-- Students with 2 certificates:
-- - Isabella Miller: Python, Web Dev
-- - Jessica Brown: Python, Web Dev
-- - Matthew Nelson: SQL, DBA
--
-- Enrollment distribution:
-- - Python: 11 students (9 certificates = 82% completion)
-- - SQL: 8 students (4 certificates = 50% completion)
-- - Web Dev: 11 students (8 certificates = 73% completion)
-- - Cybersecurity: 9 students (5 certificates = 56% completion)
-- - DBA: 8 students (5 certificates = 63% completion)