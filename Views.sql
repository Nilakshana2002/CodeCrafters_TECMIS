
/* CA Eligibility View*/

CREATE VIEW CA_Eligibility AS
SELECT 
    student_ID,
    course_ID,
    Department_ID,
    Quiz1,
    Quiz2,
    Quiz3,
    Assesments,
    Mid_Practical,
    Mid_Theory,
    Medical_ID,
    (Quiz1 + Quiz2 + Quiz3 - LEAST(Quiz1, Quiz2, Quiz3)) AS Best_Two_Quizzes,
    
    CASE 
        WHEN Mid_Practical IS NOT NULL AND Mid_Theory IS NOT NULL 
            THEN Mid_Practical + Mid_Theory 
        WHEN Mid_Practical IS NOT NULL 
            THEN 2 * Mid_Practical
        ELSE 2 * Mid_Theory
    END AS Total_Mid_Marks,
    
    (
      ( (Quiz1 + Quiz2 + Quiz3 - LEAST(Quiz1, Quiz2, Quiz3)) + Assesments +
        CASE 
            WHEN Mid_Practical IS NOT NULL AND Mid_Theory IS NOT NULL 
                THEN Mid_Practical + Mid_Theory 
            WHEN Mid_Practical IS NOT NULL 
                THEN 2 * Mid_Practical
            ELSE 2 * Mid_Theory
        END
      ) / 10
    ) AS Total_Marks_Out_of_40,
    
    CASE
        WHEN (
            ( (Quiz1 + Quiz2 + Quiz3 - LEAST(Quiz1, Quiz2, Quiz3)) + Assesments +
              CASE 
                  WHEN Mid_Practical IS NOT NULL AND Mid_Theory IS NOT NULL 
                      THEN Mid_Practical + Mid_Theory 
                  WHEN Mid_Practical IS NOT NULL 
                      THEN 2 * Mid_Practical
                  ELSE 2 * Mid_Theory
              END
            ) / 10 >= 20
        )
        THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS CA_Eligibility_Status
FROM CA_Exam_M;


/* Call CA Eligibility View*/

SELECT * FROM CA_Eligibility;




-- CA Procedures--

/* summary for whole batch By giving course code */

DELIMITER //

CREATE PROCEDURE GetBatchSummaryByCourse(
    IN input_course_ID VARCHAR(20)
)
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Department_ID,
        Total_Marks_Out_of_40,
        CA_Eligibility_Status
    FROM 
        CA_Eligibility
    WHERE 
        course_ID = input_course_ID;
END //

DELIMITER ;

CALL GetBatchSummaryByCourse(' ');



/*  By giving course code and registration no */

DELIMITER //

CREATE PROCEDURE GetStudentSummaryByCourse(
    IN input_course_ID VARCHAR(20),
    IN input_student_ID VARCHAR(20)
)
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Department_ID,
        Total_Marks_Out_of_40,
        CA_Eligibility_Status
    FROM 
        CA_Eligibility
    WHERE 
        course_ID = input_course_ID
        AND student_ID = input_student_ID;
END //

DELIMITER ;

CALL GetStudentSummaryByCourse(' ');

--By giving registration no as a summery  

DELIMITER //

CREATE PROCEDURE GetSummaryByRegistrationNo(
    IN input_student_ID VARCHAR(20)
)
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Department_ID,
        Total_Marks_Out_of_40,
        CA_Eligibility_Status
    FROM 
        CA_Eligibility
    WHERE 
        student_ID = input_student_ID;
END //

DELIMITER ;

CALL GetSummaryByRegistrationNo(' ');



--------------------------------------------------------------------------------------------------------


/* End Exam Mark View*/

CREATE VIEW END_Exam_Marks AS
SELECT 
    student_ID,
    course_ID,
    Medical_ID,
    CASE 
        WHEN End_Practical IS NOT NULL AND End_Theory IS NOT NULL 
            THEN (End_Practical + End_Theory) * 0.3 
        WHEN End_Practical IS NOT NULL 
            THEN 2 * End_Practical * 0.3 
        ELSE 2 * End_Theory * 0.3 
    END AS END_Exam_Marks
FROM END_Exam_M;


--Procedure to View END_Exam_Marks Summary for Whole Batch by Course Code

DELIMITER //

CREATE PROCEDURE GetBatchENDExamMarks(IN input_course_ID CHAR(7))
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Medical_ID,
        END_Exam_Marks
    FROM 
        END_Exam_Marks
    WHERE 
        course_ID = input_course_ID;
END //

DELIMITER ;

--Procedure to View END_Exam_Marks for Individuals by Course Code and Registration Number

DELIMITER //

CREATE PROCEDURE GetIndividualENDExamMarks(IN input_course_ID CHAR(7), IN input_student_ID CHAR(10))
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Medical_ID,
        END_Exam_Marks
    FROM 
        END_Exam_Marks
    WHERE 
        course_ID = input_course_ID AND 
        student_ID = input_student_ID;
END //

DELIMITER ;

--Procedure to View END_Exam_Marks by Registration Number as a Summary

DELIMITER //

CREATE PROCEDURE GetSummaryByRegistrationNo(IN input_student_ID CHAR(10))
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Medical_ID,
        END_Exam_Marks
    FROM 
        END_Exam_Marks
    WHERE 
        student_ID = input_student_ID;
END //

DELIMITER ;








/*Call End Exam Mark View*/

SELECT * FROM END_Exam_Marks;



/* Final_Mark View*/

CREATE VIEW Final_Mark AS
SELECT 
    ca.student_ID,
    ca.course_ID,
    ca.Department_ID,
    ca.Total_Marks_Out_of_40 AS CA_Marks,
    ca.Medical_ID,     
    ee.END_Exam_Marks,            
    
    
    (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) AS Final_Mark_Out_of_100

FROM CA_Eligibility ca
JOIN END_Exam_Marks ee
    ON ca.student_ID = ee.student_ID 
    AND ca.course_ID = ee.course_ID;


-- Procedure for Whole Batch Summary by Course Code Final_Mark


DELIMITER //

CREATE PROCEDURE GetFinalMarksByCourseCode(IN input_course_ID CHAR(7))
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Department_ID,
        CA_Marks,
        Medical_ID,
        END_Exam_Marks,
        Final_Mark_Out_of_100
    FROM 
        Final_Mark
    WHERE 
        course_ID = input_course_ID;
END //

DELIMITER ;



-- Procedure for Individual Summary by Course Code and Registration Number Final_Mark


DELIMITER //

CREATE PROCEDURE GetFinalMarksByCourseAndRegNo(IN input_course_ID CHAR(7), IN input_student_ID CHAR(10))
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Department_ID,
        CA_Marks,
        Medical_ID,
        END_Exam_Marks,
        Final_Mark_Out_of_100
    FROM 
        Final_Mark
    WHERE 
        course_ID = input_course_ID
        AND student_ID = input_student_ID;
END //

DELIMITER ;




-- Procedure for Individual Summary by Registration Number Final_Mark

DELIMITER //

CREATE PROCEDURE GetFinalMarksByRegNo(IN input_student_ID CHAR(10))
BEGIN
    SELECT 
        student_ID,
        course_ID,
        Department_ID,
        CA_Marks,
        Medical_ID,
        END_Exam_Marks,
        Final_Mark_Out_of_100
    FROM 
        Final_Mark
    WHERE 
        student_ID = input_student_ID;
END //

DELIMITER ;



/*Call Final_Mark*/

SELECT * FROM Final_Mark;