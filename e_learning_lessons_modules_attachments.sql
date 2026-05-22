-- =====================================================
-- E-Learning Platform - Lessons, Modules & Attachments
-- =====================================================
-- This file contains ONLY Lessons, Modules, and Attachments data
-- Import this after importing the main data file
-- =====================================================

-- =====================================================
-- LESSONS (21 lessons across 5 courses)
-- =====================================================

-- Course 1: Python Programming for Beginners (course_id = 1)
INSERT INTO Lesson (course_id, title, description, requirements, created_at, updated_at) VALUES
(1, 'Introduction to Python', 'Get started with Python!   Learn what Python is, why it is popular, and how to set up your development environment.', 'Computer with internet connection', NOW(), NOW()),
(1, 'Variables and Data Types', 'Understanding Python variables, strings, numbers, booleans, and type conversion.', 'Completed: Introduction to Python', NOW(), NOW()),
(1, 'Control Flow', 'Master if statements, loops (for, while), and conditional logic.', 'Completed: Variables and Data Types', NOW(), NOW()),
(1, 'Functions and Modules', 'Learn to write reusable code with functions, parameters, return values, and importing modules.', 'Completed: Control Flow', NOW(), NOW()),
(1, 'Object-Oriented Programming', 'Introduction to classes, objects, inheritance, and encapsulation in Python.', 'Completed: Functions and Modules', NOW(), NOW());

-- Course 2: Advanced SQL and Database Design (course_id = 2)
INSERT INTO Lesson (course_id, title, description, requirements, created_at, updated_at) VALUES
(2, 'Database Normalization', 'Learn the principles of database normalization (1NF, 2NF, 3NF, BCNF) to eliminate redundancy. ', 'Basic SQL knowledge', NOW(), NOW()),
(2, 'Advanced Joins and Subqueries', 'Master complex joins, correlated subqueries, and common table expressions (CTEs).', 'Completed: Database Normalization', NOW(), NOW()),
(2, 'Indexes and Query Optimization', 'Understand indexing strategies and how to optimize SQL queries for performance.', 'Completed: Advanced Joins and Subqueries', NOW(), NOW()),
(2, 'Stored Procedures and Triggers', 'Create stored procedures, functions, and triggers to automate database tasks.', 'Completed: Indexes and Query Optimization', NOW(), NOW());

-- Course 3: Modern Web Development with JavaScript (course_id = 3)
INSERT INTO Lesson (course_id, title, description, requirements, created_at, updated_at) VALUES
(3, 'HTML5 and CSS3 Fundamentals', 'Build the foundation with semantic HTML5 and modern CSS3 styling techniques.', 'Basic computer skills', NOW(), NOW()),
(3, 'JavaScript Basics', 'Learn JavaScript syntax, variables, functions, and DOM manipulation.', 'Completed: HTML5 and CSS3 Fundamentals', NOW(), NOW()),
(3, 'Asynchronous JavaScript', 'Master callbacks, promises, async/await, and working with APIs.', 'Completed: JavaScript Basics', NOW(), NOW()),
(3, 'Introduction to React', 'Build modern web applications using the React library and component-based architecture.', 'Completed: Asynchronous JavaScript', NOW(), NOW());

-- Course 4: Cybersecurity Fundamentals (course_id = 4)
INSERT INTO Lesson (course_id, title, description, requirements, created_at, updated_at) VALUES
(4, 'Introduction to Cybersecurity', 'Overview of cybersecurity concepts, threats, and the CIA triad (Confidentiality, Integrity, Availability).', 'Basic networking knowledge helpful', NOW(), NOW()),
(4, 'Network Security Basics', 'Learn about firewalls, VPNs, intrusion detection systems, and network protocols.', 'Completed: Introduction to Cybersecurity', NOW(), NOW()),
(4, 'Cryptography Essentials', 'Understanding encryption, hashing, digital signatures, and SSL/TLS. ', 'Completed: Network Security Basics', NOW(), NOW()),
(4, 'Ethical Hacking and Penetration Testing', 'Introduction to penetration testing methodologies and tools like Nmap, Metasploit, and Burp Suite.', 'Completed: Cryptography Essentials', NOW(), NOW());

-- Course 5: Database Administration Essentials (course_id = 5)
INSERT INTO Lesson (course_id, title, description, requirements, created_at, updated_at) VALUES
(5, 'Installing and Configuring MySQL', 'Step-by-step guide to installing MySQL server and configuring basic settings.', 'Basic SQL knowledge', NOW(), NOW()),
(5, 'User Management and Security', 'Create users, assign privileges, and implement security best practices.', 'Completed: Installing and Configuring MySQL', NOW(), NOW()),
(5, 'Backup and Recovery', 'Learn backup strategies, mysqldump, and disaster recovery procedures.', 'Completed: User Management and Security', NOW(), NOW()),
(5, 'Performance Monitoring', 'Monitor database performance, identify bottlenecks, and use profiling tools.', 'Completed: Backup and Recovery', NOW(), NOW());

-- =====================================================
-- MODULES (21 modules - one per lesson)
-- =====================================================

-- Python Course Modules (Lessons 1-5)
INSERT INTO Module (id_lesson, study_text, created_at, updated_at) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Python is a high-level programming language that emphasizes code readability.\n\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\nKey Features:\n- Easy to learn syntax\n- Extensive standard library\n- Cross-platform compatibility\n- Large community support\n\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Install Python from python.org and verify with: python --version', NOW(), NOW()),

(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Variables store data values and Python has various data types.\n\nData Types:\n1. Strings: "Hello World"\n2. Integers: 42, 100, -5\n3. Floats: 3.14, -0.5, 2.0\n4. Booleans: True, False\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.\n\nExamples:\nname = "Alice"\nage = 25\nprice = 19.99\nis_student = True\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', NOW(), NOW()),

(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Control flow determines the order in which code executes.\n\nConditional Statements:\nif temperature > 30:\n    print("Hot day")\nelif temperature > 20:\n    print("Nice weather")\nelse:\n    print("Cold day")\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.\n\nLoops:\nfor i in range(5):\n    print(i)\n\nwhile count < 10:\n    count += 1\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  Excepteur sint occaecat cupidatat non proident. ', NOW(), NOW()),

(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Functions are reusable blocks of code that perform specific tasks.\n\nDefining Functions:\ndef greet(name):\n    return f"Hello, {name}! "\n\nresult = greet("Alice")\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nModules:\nimport math\nprint(math.sqrt(16))\n\nfrom random import randint\nprint(randint(1, 10))\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', NOW(), NOW()),

(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Object-oriented programming organizes code into objects.\n\nClasses and Objects:\nclass Dog:\n    def __init__(self, name, age):\n        self.name = name\n        self.age = age\n    \n    def bark(self):\n        return f"{self.name} says Woof!"\n\nmy_dog = Dog("Buddy", 3)\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nInheritance:\nclass Animal:\n    def speak(self):\n        pass\n\nclass Cat(Animal):\n    def speak(self):\n        return "Meow! "\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.  Excepteur sint occaecat cupidatat non proident.', NOW(), NOW());

-- SQL Course Modules (Lessons 6-9)
INSERT INTO Module (id_lesson, study_text, created_at, updated_at) VALUES
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Database normalization eliminates redundancy and ensures data integrity.\n\nNormal Forms:\n1NF - Eliminate repeating groups\n2NF - Remove partial dependencies\n3NF - Remove transitive dependencies\nBCNF - Stricter version of 3NF\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nExample:\nUnnormalized: Students(ID, Name, Course1, Course2)\nNormalized: Students(ID, Name), Enrollments(StudentID, CourseID)\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', NOW(), NOW()),

(7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Master complex SQL queries with joins and subqueries.\n\nTypes of Joins:\n- INNER JOIN: Matching rows from both tables\n- LEFT JOIN: All from left + matching from right\n- RIGHT JOIN: All from right + matching from left\n- FULL OUTER JOIN: All rows from both tables\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n\nSELECT u.name, c.title\nFROM User u\nINNER JOIN UsersInCourse uc ON u.user_id = uc.user_id\nINNER JOIN Course c ON uc.course_id = c.course_id;\n\nUt enim ad minim veniam, quis nostrud exercitation.  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore. ', NOW(), NOW()),

(8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Optimize database performance with proper indexing strategies.\n\nIndex Types:\n1. Primary Key Index\n2. Unique Index\n3. Single-column Index\n4.  Composite Index\n5. Full-text Index\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nCreating Indexes:\nCREATE INDEX idx_email ON User(email);\nCREATE INDEX idx_name ON User(last_name, first_name);\n\nEXPLAIN SELECT * FROM User WHERE email = "test@example.com";\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', NOW(), NOW()),

(9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Automate database tasks with stored procedures and triggers.\n\nStored Procedures:\nDELIMITER //\nCREATE PROCEDURE GetStudents(IN courseId INT)\nBEGIN\n    SELECT * FROM User WHERE course_id = courseId;\nEND //\nDELIMITER ;\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.\n\nTriggers:\nCREATE TRIGGER before_update\nBEFORE UPDATE ON User\nFOR EACH ROW\nSET NEW.updated_at = NOW();\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.  Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NOW(), NOW());

-- Web Development Modules (Lessons 10-13)
INSERT INTO Module (id_lesson, study_text, created_at, updated_at) VALUES
(10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. HTML5 and CSS3 form the foundation of modern web development.\n\nSemantic HTML:\n<header>, <nav>, <main>, <article>, <section>, <footer>\n\n<! DOCTYPE html>\n<html>\n<head>\n    <title>My Page</title>\n</head>\n<body>\n    <header><h1>Welcome</h1></header>\n</body>\n</html>\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam.\n\nCSS3:\n.container {\n    display: flex;\n    justify-content: center;\n}\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', NOW(), NOW()),

(11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. JavaScript brings interactivity to web pages.\n\nVariables:\nlet count = 0;\nconst MAX = 100;\n\nFunctions:\nfunction add(a, b) {\n    return a + b;\n}\n\nconst multiply = (a, b) => a * b;\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.\n\nDOM Manipulation:\nconst button = document.querySelector(". btn");\nbutton.addEventListener("click", () => {\n    console.log("Clicked!");\n});\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.  Excepteur sint occaecat cupidatat non proident. ', NOW(), NOW()),

(12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Handle asynchronous operations in JavaScript.\n\nPromises:\nconst promise = new Promise((resolve, reject) => {\n    if (success) {\n        resolve("Success!");\n    } else {\n        reject("Error!");\n    }\n});\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n\nAsync/Await:\nasync function fetchData() {\n    try {\n        const response = await fetch(url);\n        const data = await response.json();\n        return data;\n    } catch (error) {\n        console.error(error);\n    }\n}\n\nUt enim ad minim veniam.  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', NOW(), NOW()),

(13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Build modern web applications with React.\n\nComponents:\nfunction Welcome(props) {\n    return <h1>Hello, {props.name}!</h1>;\n}\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nState and Hooks:\nimport { useState } from "react";\n\nfunction Counter() {\n    const [count, setCount] = useState(0);\n    return (\n        <div>\n            <p>Count: {count}</p>\n            <button onClick={() => setCount(count + 1)}>+</button>\n        </div>\n    );\n}\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.  Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia. ', NOW(), NOW());

-- Cybersecurity Modules (Lessons 14-17)
INSERT INTO Module (id_lesson, study_text, created_at, updated_at) VALUES
(14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Introduction to cybersecurity and core principles.\n\nThe CIA Triad:\n1. Confidentiality: Protect information from unauthorized access\n2. Integrity: Ensure data accuracy and prevent unauthorized modification\n3. Availability: Systems accessible when needed\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.\n\nCommon Threats:\n- Malware (viruses, trojans, ransomware)\n- Phishing attacks\n- DDoS attacks\n- SQL injection\n- Man-in-the-middle attacks\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.  Excepteur sint occaecat cupidatat non proident. ', NOW(), NOW()),

(15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Protect networks from unauthorized access and attacks.\n\nFirewalls:\nFilter network traffic based on security rules.\n- Packet-filtering firewalls\n- Stateful inspection firewalls\n- Application-layer firewalls\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n\nVPN (Virtual Private Network):\nSecure encrypted tunnel for remote access.\n\nCommon Ports:\n- 80: HTTP\n- 443: HTTPS\n- 22: SSH\n- 3306: MySQL\n\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', NOW(), NOW()),

(16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Understand encryption and cryptographic principles.\n\nSymmetric Encryption:\nSame key for encryption and decryption.\n- AES (Advanced Encryption Standard)\n- DES (Data Encryption Standard)\n\nAsymmetric Encryption:\nPublic key encrypts, private key decrypts.\n- RSA\n- ECC (Elliptic Curve Cryptography)\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nHashing:\nOne-way function creating fixed-size output.\n- SHA-256\n- SHA-3\n- MD5 (deprecated for security)\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.  Excepteur sint occaecat cupidatat non proident, sunt in culpa. ', NOW(), NOW()),

(17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Learn ethical hacking and penetration testing techniques.\n\nPenetration Testing Phases:\n1. Reconnaissance: Gather information\n2. Scanning: Identify vulnerabilities\n3. Gaining Access: Exploit vulnerabilities\n4. Maintaining Access: Create backdoors\n5. Covering Tracks: Remove evidence\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n\nEthical Hacking Tools:\n- Nmap: Network scanning\n- Metasploit: Exploitation framework\n- Burp Suite: Web application testing\n- Wireshark: Packet analysis\n\nUt enim ad minim veniam, quis nostrud exercitation.  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  Excepteur sint occaecat cupidatat non proident.', NOW(), NOW());

-- Database Administration Modules (Lessons 18-21)
INSERT INTO Module (id_lesson, study_text, created_at, updated_at) VALUES
(18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Install and configure MySQL database server.\n\nInstallation (Ubuntu):\nsudo apt update\nsudo apt install mysql-server\nsudo mysql_secure_installation\n\nVerify Installation:\nmysql --version\nsudo systemctl status mysql\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nBasic Configuration:\n[mysqld]\nport = 3306\nmax_connections = 150\ninnodb_buffer_pool_size = 1G\n\nCreate Database:\nCREATE DATABASE elearning;\nUSE elearning;\nSHOW TABLES;\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia. ', NOW(), NOW()),

(19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Manage users and implement database security.\n\nCreate Users:\nCREATE USER "app_user"@"localhost" IDENTIFIED BY "SecurePass123!";\n\nGrant Privileges:\nGRANT ALL PRIVILEGES ON elearning. * TO "app_user"@"localhost";\nGRANT SELECT ON elearning.* TO "readonly"@"localhost";\nFLUSH PRIVILEGES;\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.\n\nSecurity Best Practices:\n1. Use strong passwords\n2.  Limit remote access\n3. Grant minimum privileges\n4. Remove test databases\n5. Regular security audits\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ', NOW(), NOW()),

(20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Protect data with backup and recovery strategies.\n\nBackup Types:\n1.  Logical Backup (mysqldump)\n2. Physical Backup (copy files)\n3. Full Backup\n4. Incremental Backup\n\nUsing mysqldump:\nmysqldump -u root -p elearning > backup.sql\nmysqldump -u root -p --all-databases > all_backup.sql\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n\nRestore Database:\nmysql -u root -p elearning < backup.sql\n\nAutomated Backups (Cron):\n0 2 * * * mysqldump -u user -pPass elearning > /backups/db_backup.sql\n\nUt enim ad minim veniam.  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.  Excepteur sint occaecat cupidatat. ', NOW(), NOW()),

(21, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Monitor and optimize database performance.\n\nKey Performance Metrics:\n1. Query execution time\n2. CPU usage\n3. Memory usage\n4. Disk I/O\n5. Connection count\n\nSHOW PROCESSLIST;\nSHOW FULL PROCESSLIST;\n\nSed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\n\nSlow Query Log:\nSET GLOBAL slow_query_log = "ON";\nSET GLOBAL long_query_time = 2;\n\nOptimization Tips:\n1. Use EXPLAIN for queries\n2. Add appropriate indexes\n3. Increase buffer pool size\n4. Archive old data\n5. Monitor configuration\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', NOW(), NOW());

-- =====================================================
-- ATTACHMENTS (47 attachments across all modules)
-- =====================================================

-- Python Course Attachments (Modules 1-5)
INSERT INTO Attachment (module_id, file_path, file_name, file_size, file_type, upload_date, created_at, updated_at) VALUES
(1, '/uploads/courses/python/intro_video.mp4', 'Python Introduction Video', 45678900, 'video/mp4', '2024-03-05 10:00:00', NOW(), NOW()),
(1, '/uploads/courses/python/setup_guide.pdf', 'Python Setup Guide', 234500, 'application/pdf', '2024-03-05 10:15:00', NOW(), NOW()),
(1, '/uploads/courses/python/cheatsheet.pdf', 'Python Basics Cheatsheet', 156780, 'application/pdf', '2024-03-05 10:30:00', NOW(), NOW()),

(2, '/uploads/courses/python/variables_tutorial.mp4', 'Variables and Data Types Tutorial', 38456700, 'video/mp4', '2024-03-06 09:00:00', NOW(), NOW()),
(2, '/uploads/courses/python/exercises_variables.zip', 'Practice Exercises', 89000, 'application/zip', '2024-03-06 09:30:00', NOW(), NOW()),

(3, '/uploads/courses/python/control_flow. mp4', 'Control Flow Explained', 42345600, 'video/mp4', '2024-03-07 10:00:00', NOW(), NOW()),
(3, '/uploads/courses/python/loops_diagram.png', 'Loops Flowchart', 234000, 'image/png', '2024-03-07 10:20:00', NOW(), NOW()),

(4, '/uploads/courses/python/functions_video.mp4', 'Functions in Python', 39876500, 'video/mp4', '2024-03-08 11:00:00', NOW(), NOW()),
(4, '/uploads/courses/python/modules_list.pdf', 'Useful Python Modules', 178900, 'application/pdf', '2024-03-08 11:30:00', NOW(), NOW()),

(5, '/uploads/courses/python/oop_tutorial.mp4', 'Object-Oriented Programming', 52345600, 'video/mp4', '2024-03-09 10:00:00', NOW(), NOW()),
(5, '/uploads/courses/python/class_examples.zip', 'OOP Code Examples', 125000, 'application/zip', '2024-03-09 10:45:00', NOW(), NOW());

-- SQL Course Attachments (Modules 6-9)
INSERT INTO Attachment (module_id, file_path, file_name, file_size, file_type, upload_date, created_at, updated_at) VALUES
(6, '/uploads/courses/sql/normalization_video.mp4', 'Database Normalization Explained', 48567800, 'video/mp4', '2024-03-20 09:00:00', NOW(), NOW()),
(6, '/uploads/courses/sql/normalization_examples.pdf', 'Normalization Examples', 298700, 'application/pdf', '2024-03-20 09:30:00', NOW(), NOW()),
(6, '/uploads/courses/sql/er_diagram_tool.pdf', 'ER Diagram Guide', 187600, 'application/pdf', '2024-03-20 10:00:00', NOW(), NOW()),

(7, '/uploads/courses/sql/joins_tutorial.mp4', 'SQL Joins Masterclass', 55678900, 'video/mp4', '2024-03-21 10:00:00', NOW(), NOW()),
(7, '/uploads/courses/sql/join_diagrams.png', 'Visual Join Diagrams', 456700, 'image/png', '2024-03-21 10:30:00', NOW(), NOW()),
(7, '/uploads/courses/sql/practice_queries.sql', 'Practice SQL Queries', 45000, 'text/plain', '2024-03-21 11:00:00', NOW(), NOW()),

(8, '/uploads/courses/sql/indexing_video.mp4', 'Indexing Strategies', 43567800, 'video/mp4', '2024-03-22 09:00:00', NOW(), NOW()),
(8, '/uploads/courses/sql/optimization_guide.pdf', 'Query Optimization Guide', 345600, 'application/pdf', '2024-03-22 09:45:00', NOW(), NOW()),

(9, '/uploads/courses/sql/stored_procedures. mp4', 'Stored Procedures Tutorial', 46789000, 'video/mp4', '2024-03-23 10:00:00', NOW(), NOW()),
(9, '/uploads/courses/sql/trigger_examples.sql', 'Trigger Examples', 67800, 'text/plain', '2024-03-23 10:30:00', NOW(), NOW());

-- Web Development Attachments (Modules 10-13)
INSERT INTO Attachment (module_id, file_path, file_name, file_size, file_type, upload_date, created_at, updated_at) VALUES
(10, '/uploads/courses/webdev/html_css_basics.mp4', 'HTML5 and CSS3 Tutorial', 51234500, 'video/mp4', '2024-04-05 09:00:00', NOW(), NOW()),
(10, '/uploads/courses/webdev/flexbox_guide.pdf', 'Complete Flexbox Guide', 278900, 'application/pdf', '2024-04-05 09:30:00', NOW(), NOW()),
(10, '/uploads/courses/webdev/css_grid_cheatsheet.pdf', 'CSS Grid Cheatsheet', 198700, 'application/pdf', '2024-04-05 10:00:00', NOW(), NOW()),
(10, '/uploads/courses/webdev/responsive_examples.zip', 'Responsive Design Examples', 456000, 'application/zip', '2024-04-05 10:30:00', NOW(), NOW()),

(11, '/uploads/courses/webdev/javascript_basics. mp4', 'JavaScript Fundamentals', 48567800, 'video/mp4', '2024-04-06 10:00:00', NOW(), NOW()),
(11, '/uploads/courses/webdev/dom_manipulation.mp4', 'DOM Manipulation Tutorial', 42345600, 'video/mp4', '2024-04-06 11:00:00', NOW(), NOW()),
(11, '/uploads/courses/webdev/js_exercises.zip', 'JavaScript Practice Exercises', 234000, 'application/zip', '2024-04-06 11:30:00', NOW(), NOW()),

(12, '/uploads/courses/webdev/async_javascript.mp4', 'Asynchronous JavaScript Deep Dive', 54678900, 'video/mp4', '2024-04-07 09:00:00', NOW(), NOW()),
(12, '/uploads/courses/webdev/promises_guide.pdf', 'Promises and Async/Await Guide', 267800, 'application/pdf', '2024-04-07 10:00:00', NOW(), NOW()),
(12, '/uploads/courses/webdev/api_examples.zip', 'API Integration Examples', 345000, 'application/zip', '2024-04-07 10:30:00', NOW(), NOW()),

(13, '/uploads/courses/webdev/react_intro.mp4', 'Introduction to React', 58789000, 'video/mp4', '2024-04-08 10:00:00', NOW(), NOW()),
(13, '/uploads/courses/webdev/react_hooks.mp4', 'React Hooks Explained', 49567800, 'video/mp4', '2024-04-08 11:00:00', NOW(), NOW()),
(13, '/uploads/courses/webdev/react_project_starter.zip', 'React Project Starter Code', 678000, 'application/zip', '2024-04-08 11:45:00', NOW(), NOW());

-- Cybersecurity Attachments (Modules 14-17)
INSERT INTO Attachment (module_id, file_path, file_name, file_size, file_type, upload_date, created_at, updated_at) VALUES
(14, '/uploads/courses/security/intro_cybersecurity.mp4', 'Cybersecurity Fundamentals', 52345600, 'video/mp4', '2024-04-25 09:00:00', NOW(), NOW()),
(14, '/uploads/courses/security/cia_triad.png', 'CIA Triad Diagram', 234000, 'image/png', '2024-04-25 09:30:00', NOW(), NOW()),
(14, '/uploads/courses/security/threat_landscape.pdf', 'Current Threat Landscape 2024', 456700, 'application/pdf', '2024-04-25 10:00:00', NOW(), NOW()),

(15, '/uploads/courses/security/network_security.mp4', 'Network Security Essentials', 56789000, 'video/mp4', '2024-04-26 10:00:00', NOW(), NOW()),
(15, '/uploads/courses/security/firewall_config.pdf', 'Firewall Configuration Guide', 345600, 'application/pdf', '2024-04-26 10:45:00', NOW(), NOW()),
(15, '/uploads/courses/security/vpn_setup.pdf', 'VPN Setup Tutorial', 278900, 'application/pdf', '2024-04-26 11:15:00', NOW(), NOW()),

(16, '/uploads/courses/security/cryptography.mp4', 'Cryptography Explained', 54678900, 'video/mp4', '2024-04-27 09:00:00', NOW(), NOW()),
(16, '/uploads/courses/security/encryption_demo.zip', 'Encryption Demonstrations', 567000, 'application/zip', '2024-04-27 10:00:00', NOW(), NOW()),
(16, '/uploads/courses/security/ssl_tls_guide.pdf', 'SSL/TLS Implementation Guide', 389000, 'application/pdf', '2024-04-27 10:30:00', NOW(), NOW()),

(17, '/uploads/courses/security/ethical_hacking.mp4', 'Ethical Hacking Introduction', 61234500, 'video/mp4', '2024-04-28 10:00:00', NOW(), NOW()),
(17, '/uploads/courses/security/nmap_tutorial.mp4', 'Nmap Scanning Tutorial', 45678900, 'video/mp4', '2024-04-28 11:00:00', NOW(), NOW()),
(17, '/uploads/courses/security/pentest_tools.pdf', 'Penetration Testing Toolkit', 456700, 'application/pdf', '2024-04-28 11:45:00', NOW(), NOW()),
(17, '/uploads/courses/security/metasploit_guide.pdf', 'Metasploit Framework Guide', 523000, 'application/pdf', '2024-04-28 12:00:00', NOW(), NOW());

-- Database Administration Attachments (Modules 18-21)
INSERT INTO Attachment (module_id, file_path, file_name, file_size, file_type, upload_date, created_at, updated_at) VALUES
(18, '/uploads/courses/dba/mysql_installation.mp4', 'MySQL Installation Tutorial', 38456700, 'video/mp4', '2024-05-15 09:00:00', NOW(), NOW()),
(18, '/uploads/courses/dba/config_guide.pdf', 'MySQL Configuration Best Practices', 298700, 'application/pdf', '2024-05-15 09:45:00', NOW(), NOW()),
(18, '/uploads/courses/dba/workbench_intro.mp4', 'MySQL Workbench Overview', 42345600, 'video/mp4', '2024-05-15 10:30:00', NOW(), NOW()),

(19, '/uploads/courses/dba/user_management.mp4', 'User Management Tutorial', 45678900, 'video/mp4', '2024-05-16 10:00:00', NOW(), NOW()),
(19, '/uploads/courses/dba/security_checklist.pdf', 'Database Security Checklist', 187600, 'application/pdf', '2024-05-16 10:45:00', NOW(), NOW()),
(19, '/uploads/courses/dba/privilege_examples.sql', 'Privilege Grant Examples', 34000, 'text/plain', '2024-05-16 11:00:00', NOW(), NOW()),

(20, '/uploads/courses/dba/backup_recovery.mp4', 'Backup and Recovery Strategies', 52345600, 'video/mp4', '2024-05-17 09:00:00', NOW(), NOW()),
(20, '/uploads/courses/dba/backup_scripts.zip', 'Automated Backup Scripts', 123000, 'application/zip', '2024-05-17 10:00:00', NOW(), NOW()),
(20, '/uploads/courses/dba/recovery_procedures.pdf', 'Disaster Recovery Procedures', 345600, 'application/pdf', '2024-05-17 10:30:00', NOW(), NOW()),

(21, '/uploads/courses/dba/performance_tuning.mp4', 'Performance Tuning Masterclass', 56789000, 'video/mp4', '2024-05-18 10:00:00', NOW(), NOW()),
(21, '/uploads/courses/dba/monitoring_tools.pdf', 'Database Monitoring Tools Guide', 278900, 'application/pdf', '2024-05-18 11:00:00', NOW(), NOW()),
(21, '/uploads/courses/dba/optimization_queries.sql', 'Query Optimization Examples', 56000, 'text/plain', '2024-05-18 11:30:00', NOW(), NOW());

-- =====================================================
-- SUMMARY
-- =====================================================
-- Total Lessons: 21
-- Total Modules: 21 (one per lesson with lorem ipsum text)
-- Total Attachments: 47
--   - Python: 11 attachments
--   - SQL: 10 attachments
--   - Web Dev: 13 attachments
--   - Cybersecurity: 10 attachments
--   - DBA: 9 attachments
-- =====================================================