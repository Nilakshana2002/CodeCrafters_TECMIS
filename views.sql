/*Lecture Details*/

CREATE VIEW Lecture_Details AS
SELECT 
    lecture.Lecture_ID,
    user.NIC,
    user.F_Name,
    user.L_Name,
    user.Address,
    user.E_Mail,
    user.Contact_Num,
    user.DoB,
    user.Gender,
    user.Role,
    user.Department_ID
FROM 
    lecture
JOIN 
    user ON lecture.NIC = user.NIC;

/*Call Lecture Details*/

SELECT * FROM CA_Eligibility;



/*Technical Officer Details*/

CREATE VIEW TO_Details AS
SELECT 
    T_O.TO_Id,
    user.NIC,
    user.F_Name,
    user.L_Name,
    user.Address,
    user.E_Mail,
    user.Contact_Num,
    user.DoB,
    user.Gender,
    user.Role,
    user.Department_ID
FROM 
    T_O
JOIN 
    user ON T_O.NIC = user.NIC;

/*Call Technical Officer Details*/

SELECT * FROM TO_Details;



/*Dean Details*/

CREATE VIEW Dean_Details AS
SELECT 
    DEAN.Dean_ID,
    user.NIC,
    user.F_Name,
    user.L_Name,
    user.Address,
    user.E_Mail,
    user.Contact_Num,
    user.DoB,
    user.Gender,
    user.Role,
    user.Department_ID
FROM 
    DEAN
JOIN 
    user ON DEAN.NIC = user.NIC;

/*Call Dean Details*/

SELECT * FROM Dean_Details;


/*End Exam Eligibility*/

CREATE VIEW End_Exam_Eligibility AS
SELECT 
    ca.student_ID,
    ca.course_ID,
    ca.Department_ID,
    ca.Total_Marks_Out_of_40,
    ca.CA_Eligibility_Status,
    att.Attendance_Percentage,
    
    CASE 
        WHEN att.Attendance_Percentage >= 80 
             AND ca.CA_Eligibility_Status = 'Eligible' 
        THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS End_Exam_Eligibility_Status

FROM 
    CA_Eligibility ca
JOIN 
    Attendance_summary_view att 
ON 
    ca.student_ID = att.Student_id 
    AND ca.course_ID = att.Course_id
WHERE 
    ca.CA_Eligibility_Status = 'Eligible';


/*Call End Exam Eligibility*/

SELECT *
FROM End_Exam_Eligibility; 


/*Batch Summary by Course Code*/

CREATE PROCEDURE Batch_End_Exam_Eligibility_Summary(
    IN course_code VARCHAR(10)
)
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Department_ID,
        Total_Marks_Out_of_40,
        CA_Eligibility_Status,
        Attendance_Percentage,
        End_Exam_Eligibility_Status
    FROM 
        End_Exam_Eligibility
    WHERE 
        course_ID = course_code;
END;

/*Call Batch Summary by Course Code*/

CALL Batch_End_Exam_Eligibility_Summary('ICT1212');


/*Individual Eligibility by Course and Registration Number*/

CREATE PROCEDURE Individual_End_Exam_Eligibility(
    IN course_code VARCHAR(10),
    IN registration_no VARCHAR(15)
)
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Department_ID,
        Total_Marks_Out_of_40,
        CA_Eligibility_Status,
        Attendance_Percentage,
        End_Exam_Eligibility_Status
    FROM 
        End_Exam_Eligibility
    WHERE 
        course_ID = course_code
        AND student_ID = registration_no;
END;


/*Call Individual Eligibility by Course and Registration Number*/

CALL Individual_End_Exam_Eligibility('ICT1212', 'REG12345');


/*Individual Summary by Registration Number*/

CREATE PROCEDURE Individual_End_Exam_Eligibility_Summary(
    IN registration_no VARCHAR(15)
)
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Department_ID,
        Total_Marks_Out_of_40,
        CA_Eligibility_Status,
        Attendance_Percentage,
        End_Exam_Eligibility_Status
    FROM 
        End_Exam_Eligibility
    WHERE 
        student_ID = registration_no;
END;


/*Call Individual Summary by Registration Number*/

CALL Individual_End_Exam_Eligibility_Summary('REG12345');
