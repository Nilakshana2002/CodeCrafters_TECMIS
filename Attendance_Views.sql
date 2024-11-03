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