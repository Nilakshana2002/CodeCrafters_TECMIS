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

--create final final grade view

CREATE VIEW Final_Grade AS
SELECT 
    final.student_ID,
    final.course_ID,
    final.CA_Marks,
    final.END_Exam_Marks,
    final.Final_Mark_Out_of_100,
    
    CASE 
        WHEN s.state = 'suspend' THEN 'WH' 
        WHEN final.Final_Mark_Out_of_100 IS NULL THEN 'Invalid' 
        WHEN s.state = 'repeat' AND final.Final_Mark_Out_of_100 > 55 THEN 'C' 
        WHEN m.Medical_ID IS NOT NULL THEN 'MC' 
        WHEN final.Final_Mark_Out_of_100 >= 85 AND final.Final_Mark_Out_of_100 <= 100 THEN 'A+'
        WHEN final.Final_Mark_Out_of_100 >= 80 AND final.Final_Mark_Out_of_100 < 85 THEN 'A'
        WHEN final.Final_Mark_Out_of_100 >= 75 AND final.Final_Mark_Out_of_100 < 80 THEN 'A-'
        WHEN final.Final_Mark_Out_of_100 >= 70 AND final.Final_Mark_Out_of_100 < 75 THEN 'B+'
        WHEN final.Final_Mark_Out_of_100 >= 65 AND final.Final_Mark_Out_of_100 < 70 THEN 'B'
        WHEN final.Final_Mark_Out_of_100 >= 60 AND final.Final_Mark_Out_of_100 < 65 THEN 'B-'
        WHEN final.Final_Mark_Out_of_100 >= 55 AND final.Final_Mark_Out_of_100 < 60 THEN 'C+'
        WHEN final.Final_Mark_Out_of_100 >= 50 AND final.Final_Mark_Out_of_100 < 55 THEN 'C'
        WHEN final.Final_Mark_Out_of_100 >= 45 AND final.Final_Mark_Out_of_100 < 50 THEN 'C-'
        WHEN final.Final_Mark_Out_of_100 >= 40 AND final.Final_Mark_Out_of_100 < 45 THEN 'D+'
        WHEN final.Final_Mark_Out_of_100 >= 35 AND final.Final_Mark_Out_of_100 < 40 THEN 'D'
        WHEN final.Final_Mark_Out_of_100 >= 0 AND final.Final_Mark_Out_of_100 < 35 THEN 'F'
        ELSE 'Invalid' 
    END AS Grade

FROM Final_Mark final
JOIN student s ON final.student_ID = s.studentId
LEFT JOIN END_Exam_M ee ON final.student_ID = ee.student_ID AND final.course_ID = ee.course_ID 
LEFT JOIN CA_Exam_M ca ON final.student_ID = ca.student_ID AND final.course_ID = ca.course_ID 
LEFT JOIN medical m ON ca.Medical_ID = m.Medical_ID; 


--creating semester GPA view

CREATE VIEW Semester_GPA AS
SELECT 
    student_ID,
    SUM(Grade_Points) / SUM(credit) AS Semester_GPA
FROM (
    SELECT 
        final.student_ID,
        c.courseId,
        c.credit,
        ca.Grade,   
        
        CASE 
            WHEN ca.Grade = 'A+' THEN c.credit * 4.0
            WHEN ca.Grade = 'A'  THEN c.credit * 4.0
            WHEN ca.Grade = 'A-' THEN c.credit * 3.7
            WHEN ca.Grade = 'B+' THEN c.credit * 3.3
            WHEN ca.Grade = 'B'  THEN c.credit * 3.0
            WHEN ca.Grade = 'B-' THEN c.credit * 2.7
            WHEN ca.Grade = 'C+' THEN c.credit * 2.3
            WHEN ca.Grade = 'C'  THEN c.credit * 2.0
            WHEN ca.Grade = 'C-' THEN c.credit * 1.7
            WHEN ca.Grade = 'D+' THEN c.credit * 1.3
            WHEN ca.Grade = 'D'  THEN c.credit * 1.0
            WHEN ca.Grade = 'F'  THEN 0
            ELSE 0  
        END AS Grade_Points
    FROM Final_Mark final
    JOIN course c ON final.course_ID = c.courseId
    JOIN Final_Grade ca ON final.student_ID = ca.student_ID AND final.course_ID = ca.course_ID
    GROUP BY final.student_ID, c.courseId, ca.Grade, c.credit
) --AS Grade_Calculation
GROUP BY student_ID;

----to get total credits for specific student according to he followed courses

SELECT SUM(c.credit) AS Total_Credits
FROM course c
JOIN student_course sc ON c.courseId = sc.courseId
WHERE sc.studentId = 'TG/2022/0001'
GROUP BY sc.studentId;


--to get to total credit hours


SELECT 
    SUM(
        CASE 
            WHEN Grade = 'A+' THEN 4.0
            WHEN Grade = 'A'  THEN 4.0
            WHEN Grade = 'A-' THEN 3.7
            WHEN Grade = 'B+' THEN 3.3
            WHEN Grade = 'B'  THEN 3.0
            WHEN Grade = 'B-' THEN 2.7
            WHEN Grade = 'C+' THEN 2.3
            WHEN Grade = 'C'  THEN 2.0
            WHEN Grade = 'C-' THEN 1.7
            WHEN Grade = 'D+' THEN 1.3
            WHEN Grade = 'D'  THEN 1.0
            WHEN Grade = 'F'  THEN 0.0
            ELSE 0.0  
        END
    ) AS Total_Grade_Points
FROM Final_Grade  
JOIN ON student.studentId = final_grade.studentId
WHERE studentId = 'TG/2022/0001';


--Grade individual student according to the by law of the faculty


SELECT course_ID,grade
FROM final_grade
WHERE student_ID = "TG/2022/0001";


-- There should be a way to see marks for each subject, student and as a whole batch 

SELECT *
FROM final_mark
WHERE course_ID = "ENG1212";


-- create view for CGPA comulative gpa

CREATE VIEW CGPA AS
SELECT 
    student_ID,
    SUM(Semester_GPA * Total_Credits) / NULLIF(SUM(Total_Credits), 0) AS CGPA
FROM (
    SELECT 
        student_ID,
        SUM(Grade_Points) AS Total_Honor_Points,
        SUM(credit) AS Total_Credits,
        SUM(Grade_Points) / NULLIF(SUM(credit), 0) AS Semester_GPA
    FROM (
        SELECT 
            final.student_ID,
            c.courseId,
            c.credit,
            ca.Grade,
            
            CASE 
                WHEN ca.Grade = 'A+' THEN c.credit * 4.0
                WHEN ca.Grade = 'A'  THEN c.credit * 4.0
                WHEN ca.Grade = 'A-' THEN c.credit * 3.7
                WHEN ca.Grade = 'B+' THEN c.credit * 3.3
                WHEN ca.Grade = 'B'  THEN c.credit * 3.0
                WHEN ca.Grade = 'B-' THEN c.credit * 2.7
                WHEN ca.Grade = 'C+' THEN c.credit * 2.3
                WHEN ca.Grade = 'C'  THEN c.credit * 2.0
                WHEN ca.Grade = 'C-' THEN c.credit * 1.7
                WHEN ca.Grade = 'D+' THEN c.credit * 1.3
                WHEN ca.Grade = 'D'  THEN c.credit * 1.0
                WHEN ca.Grade = 'F'  THEN 0
                ELSE 0 
            END AS Grade_Points
        FROM Final_Mark final
        JOIN course c ON final.course_ID = c.courseId
        JOIN Final_Grade ca ON final.student_ID = ca.student_ID AND final.course_ID = ca.course_ID
        WHERE c.courseId != 'ENG1222'  -- Exclude the ENG1222 course
        GROUP BY final.student_ID, c.courseId, ca.Grade, c.credit
    ) AS Grade_Calculation
    GROUP BY student_ID
) AS Semester_Calculations
GROUP BY student_ID;





--creating users

--Admin
CREATE USER 'Admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'Admin'@'localhost' WITH GRANT OPTION;

--dean
CREATE USER 'Dean'@'localhost' IDENTIFIED BY 'dean';
GRANT ALL PRIVILEGES ON *.* TO 'Dean'@'localhost';

--lecturer
CREATE USER 'Lecturer'@'localhost' IDENTIFIED BY 'lecturer';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP,ALTER ON *.* TO 'Lecturer'@'localhost';

--technical
CREATE USER 'TechnicalOfficer'@'localhost' IDENTIFIED BY 'tech';
GRANT SELECT, INSERT, UPDATE ON attendance_table TO 'TechnicalOfficer'@'localhost';

--student
CREATE USER 'Student'@'localhost' IDENTIFIED BY 'student';
GRANT SELECT ON final_attendance_table, final_marks_table TO 'Student'@'localhost';



