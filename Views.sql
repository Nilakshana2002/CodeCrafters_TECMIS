
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

/*Call End Exam Mark View*/

SELECT * FROM END_Exam_Marks;



/* Grade View*/

CREATE VIEW Final_Grade AS
SELECT 
    ca.student_ID,
    ca.course_ID,
    ca.Department_ID,
    ca.Total_Marks_Out_of_40,     
    ee.END_Exam_Marks,            
    
   
    (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) AS Final_Mark_Out_of_100,

    
    CASE 
        WHEN ca.Medical_ID IS NOT NULL OR ee.Medical_ID IS NOT NULL THEN 'MC'
        WHEN (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) >= 85 THEN 'A+'
        WHEN (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) >= 75 THEN 'A'
        WHEN (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) >= 70 THEN 'A-'
        WHEN (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) >= 65 THEN 'B+'
        WHEN (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) >= 60 THEN 'B'
        WHEN (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) >= 55 THEN 'B-'
        WHEN (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) >= 50 THEN 'C+'
        WHEN (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) >= 45 THEN 'C'
        WHEN (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) >= 40 THEN 'C-'
        WHEN (ca.Total_Marks_Out_of_40 + ee.END_Exam_Marks) <= 35 THEN 'D'
        ELSE 'F'
    END AS Final_Grade
FROM CA_Eligibility ca
JOIN END_Exam_Marks ee
    ON ca.student_ID = ee.student_ID 
    AND ca.course_ID = ee.course_ID;


/*Call Grade View*/

SELECT * FROM Final_Grade;