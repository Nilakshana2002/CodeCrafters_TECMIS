1.Attendance_summary_view

CREATE VIEW Attendance_summary_view AS
SELECT 
    Student_id,
    Course_id,
    15 AS Full_Count,
    COUNT(CASE WHEN Att_status = 'Present' THEN 1 END) AS Attendance_Count,
    (COUNT(CASE WHEN Att_status = 'Present' THEN 1 END) * 100.0 / COUNT(*)) AS Attendance_Percentage,
    CASE 
        WHEN (COUNT(CASE WHEN Att_status = 'Present' THEN 1 END) * 100.0 / COUNT(*)) >= 80 THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS Eligibility
FROM 
    Attendance
GROUP BY 
    Student_id, 
    Course_id;


2. Attendence_summary_view


CREATE VIEW Attendence_summary_view AS
SELECT
    Student_id,
    Course_id,
    Session_type,
    CASE 
        WHEN Session_type = 'Theory' THEN (COUNT(*) * 2 - 1)
        WHEN Session_type = 'Practical' THEN (COUNT(*) * 2 + 1)                                                                               
        ELSE COUNT(*)
    END AS Attendance_Count
FROM
    Attendance
WHERE
    Att_status = 'Present'
    AND Student_id IN ('TG/2022/1122', 'TG/2022/1147', 'TG/2022/1305', 'TG/2022/1188', 'TG/2022/1190')
    AND Course_id IN ('ICT1233', 'ICT1253')
GROUP BY
    Student_id,
    Course_id,
    Session_type;



 3.Attendance_eligibility_view


CREATE VIEW Attendance_eligibility_view AS
SELECT 
    a.Student_id,
    a.Course_id,
    a.Eligibility AS Attendance_eligibility,
    m.Status AS Medical_status,
    CASE 
        WHEN a.Eligibility = 'Eligible' OR m.Status = 'Accepted' THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS Final_eligibility
FROM 
    Attendance_summary_view a
LEFT JOIN 
    Medical_status_view m ON a.Student_id = m.Student_id AND a.Course_id = m.Course_code;



4.Attendance With medical

CREATE VIEW Course_Attendance_Summary AS
SELECT
    a.course_ID,
    a.student_ID AS Registration_No,
    GROUP_CONCAT(a.session_Date ORDER BY a.session_Date) AS Attendance_Dates,
    (COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) * 100.0 / 15) AS Attendance_Percentage,
    ((COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) 
      + COUNT(CASE WHEN a.Medical_ID IS NOT NULL THEN 1 END)) * 100.0 / 15) AS Adjusted_Attendance_Percentage,
    CASE
        WHEN ((COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) 
              + COUNT(CASE WHEN a.Medical_ID IS NOT NULL THEN 1 END)) * 100.0 / 15) >= 80 THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS Eligibility
FROM
    attendance a
GROUP BY
    a.course_ID,
    a.student_ID
HAVING
    a.course_ID = 'ICT1253' AND a.course_ID = 'ICT1253' AND a.course_ID = 'ICT1253';



5.course attendance summary 

DELIMITER //

CREATE PROCEDURE GetCourseAttendanceSummary(IN input_course_ID CHAR(7))
BEGIN
    SELECT
        a.course_ID,
        a.student_ID AS Registration_No,
        GROUP_CONCAT(a.session_Date ORDER BY a.session_Date) AS Attendance_Dates,
        (COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) * 100.0 / 15) AS Attendance_Percentage,
        ((COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) 
          + COUNT(CASE WHEN a.Medical_ID IS NOT NULL THEN 1 END)) * 100.0 / 15) AS Adjusted_Attendance_Percentage,
        CASE
            WHEN ((COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) 
                  + COUNT(CASE WHEN a.Medical_ID IS NOT NULL THEN 1 END)) * 100.0 / 15) >= 80 THEN 'Eligible'
            ELSE 'Not Eligible'
        END AS Eligibility
    FROM
        attendance a
    WHERE
        a.course_ID = input_course_ID
    GROUP BY
        a.course_ID,
        a.student_ID;
END //

DELIMITER ;

CALL GetCourseAttendanceSummary('ICT1253');


6.for all the subjects with percentage and eligibility


DELIMITER //

CREATE PROCEDURE GetAllCoursesAttendanceSummary()
BEGIN
    SELECT
        a.course_ID,
        a.student_ID AS Registration_No,
        GROUP_CONCAT(a.session_Date ORDER BY a.session_Date) AS Attendance_Dates,
        (COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) * 100.0 / 15) AS Attendance_Percentage,
        ((COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) 
          + COUNT(CASE WHEN a.Medical_ID IS NOT NULL THEN 1 END)) * 100.0 / 15) AS Adjusted_Attendance_Percentage,
        CASE
            WHEN ((COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) 
                  + COUNT(CASE WHEN a.Medical_ID IS NOT NULL THEN 1 END)) * 100.0 / 15) >= 80 THEN 'Eligible'
            ELSE 'Not Eligible'
        END AS Eligibility
    FROM
        attendance a
    GROUP BY
        a.course_ID,
        a.student_ID;
END //

DELIMITER ;

CALL GetAllCoursesAttendanceSummary('ICT1242')//



7.as individuals by giving the registration no 
• as a summery for all the course units



DELIMITER //

CREATE PROCEDURE GetIndividualAttendanceSummary(IN input_registration_no CHAR(12))
BEGIN
    SELECT
        a.course_ID,
        a.student_ID AS Registration_No,
        GROUP_CONCAT(a.session_Date ORDER BY a.session_Date) AS Attendance_Dates,
        (COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) * 100.0 / 15) AS Attendance_Percentage,
        ((COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) 
          + COUNT(CASE WHEN a.Medical_ID IS NOT NULL THEN 1 END)) * 100.0 / 15) AS Adjusted_Attendance_Percentage,
        CASE
            WHEN ((COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) 
                  + COUNT(CASE WHEN a.Medical_ID IS NOT NULL THEN 1 END)) * 100.0 / 15) >= 80 THEN 'Eligible'
            ELSE 'Not Eligible'
        END AS Eligibility
    FROM
        attendance a
    WHERE
        a.student_ID = input_registration_no
    GROUP BY
        a.course_ID,
        a.student_ID;
END //

DELIMITER ;

CALL GetIndividualAttendanceSummary('TG/2022/0002');




8.as individuals by giving the registration no and course code


DELIMITER //

CREATE PROCEDURE GetIndividualCourseAttendanceSummary(
    IN input_registration_no CHAR(12),
    IN input_course_code CHAR(7)
)
BEGIN
    SELECT
        a.course_ID,
        a.student_ID AS Registration_No,
        GROUP_CONCAT(a.session_Date ORDER BY a.session_Date) AS Attendance_Dates,
        (COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) * 100.0 / 15) AS Attendance_Percentage,
        ((COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) 
          + COUNT(CASE WHEN a.Medical_ID IS NOT NULL THEN 1 END)) * 100.0 / 15) AS Adjusted_Attendance_Percentage,
        CASE
            WHEN ((COUNT(CASE WHEN a.A_Status = 'Present' THEN 1 END) 
                  + COUNT(CASE WHEN a.Medical_ID IS NOT NULL THEN 1 END)) * 100.0 / 15) >= 80 THEN 'Eligible'
            ELSE 'Not Eligible'
        END AS Eligibility
    FROM
        attendance a
    WHERE
        a.student_ID = input_registration_no
        AND a.course_ID = input_course_code
    GROUP BY
        a.course_ID,
        a.student_ID;
END //

DELIMITER ;

CALL GetIndividualCourseAttendanceSummary('TG/2022/0002', 'ICT1253');

9.When there is both theory and practical for a subject there should be a way to check 
attendance only for theory, only for practical and as combined 



CREATE VIEW Attendance_summary_Both AS
SELECT
    Student_ID,
    Course_ID,
    Session_Type,
    CASE 
        WHEN Session_Type = 'Theory' THEN (COUNT(*) * 2 - 1)
        WHEN Session_Type = 'Practical' THEN (COUNT(*) * 2 + 1)
        ELSE COUNT(*)
    END AS Attendance_Count
FROM
    Attendance
WHERE
    A_Status = 'Present'
    AND Student_ID IN ('TG/2022/0001', 'TG/2022/0002', 'TG/2022/0003')
    AND Course_ID IN ('ICT1233')
GROUP BY
    Student_ID,
    Course_ID,
    Session_Type;


10.medical VIEW


CREATE VIEW Medical_Status_View AS
SELECT 
    Medical_ID,
    student_ID,
    course_ID,
    Absent_Date AS Absent_From,
    submit_Date AS Absent_To,
    DATEDIFF(submit_Date,Absent_Date) AS Days_Since_Absent,
     M_reason AS Medical_Reason,
    CASE 
        WHEN DATEDIFF(submit_Date,Absent_Date) <= 14 THEN 'Valid Medical'
        ELSE 'Invalid Medical'
    END AS Medical_Status
FROM 
    Medical
WHERE 
    Medical_Type IN ('Attendance', 'Exams');
