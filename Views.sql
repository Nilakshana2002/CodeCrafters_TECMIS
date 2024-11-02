
/* CA Eligibility*/

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

/* Call View*/

SELECT * FROM CA_Eligibility;
