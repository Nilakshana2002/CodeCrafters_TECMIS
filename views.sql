-- summary views for course statistics

--basic course view

CREATE VIEW basicCourseInfo AS
SELECT courseId,courseName,courseType,credit,hours
FROM course;



--course with lectures

CREATE VIEW course_lecurer AS
SELECT c.courseId,c.courseName,c.courseType,c.credit,c.hours,l.Lecture_ID
FROM course c
JOIN lecture l  ON l.Lecture_ID = c.lecturerId;

--department with course unit

CREATE VIEW department_course AS 
SELECT c.courseId,courseName,d.departmentName
FROM course c
JOIN Departments d ON d.departmentID = c.departmentId;

--ict course units

CREATE VIEW ict_course AS 
SELECT c.courseId,c.courseName,c.courseType,c.credit,c.hours
FROM course c
WHERE c.departmentID = "ICT";

-- ET course units

CREATE VIEW et_course AS 
SELECT c.courseId,c.courseName,c.courseType,c.credit,c.hours
FROM course c
WHERE c.departmentID = "ENT";

--bst course units

CREATE VIEW bst_course AS 
SELECT c.courseId,c.courseName,c.courseType,c.credit,c.hours
FROM course c
WHERE c.departmentID = "BST";

--full course view with deparment

CREATE VIEW fullCourseInfo AS
SELECT c.courseId,c.courseName,c.credit,l.Lecture_ID,d.departmentID
FROM course c
JOIN Departments d ON d.departmentId = c.departmentId
JOIN lecture l ON l.Lecture_ID = c.lecturerId;


--course type and number of courses

CREATE VIEW courseTypeCount AS
SELECT courseType,COUNT(courseId) AS 'Number of Courses'
FROM course
GROUP BY courseType;


SELECT SUM(credit)
FROM course
JOIN departments ON departments.departmentId = course.departmentId
WHERE course.courseType = 'T' AND departments.departmentName = 'Department of Information and Communication Technology';

--course units thats followed by strudent

SELECT sc.courseId,c.courseName,c.credit,c.courseType
FROM course c
JOIN student_course sc ON sc.courseId = c.courseId
WHERE sc.studentId = "TG/2022/0001";

--creating users

--Admin
CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'Admin'@'localhost' WITH GRANT OPTION;

--dean
CREATE USER 'Dean'@'localhost' IDENTIFIED BY 'dean';
GRANT ALL PRIVILEGES ON *.* TO 'Dean'@'localhost';

--lecturer
CREATE USER 'Lecturer'@'localhost' IDENTIFIED BY 'lecturer';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER ON *.* TO 'Lecturer'@'localhost';

--technical
CREATE USER 'TechnicalOfficer'@'localhost' IDENTIFIED BY 'tech';
GRANT SELECT, INSERT, UPDATE ON attendance_table TO 'TechnicalOfficer'@'localhost';

--student
CREATE USER 'Student'@'localhost' IDENTIFIED BY 'student';
GRANT SELECT ON final_attendance_table, final_marks_table TO 'Student'@'localhost';



