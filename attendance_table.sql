CREATE attendance Table,


CREATE TABLE attendance(
student_ID CHAR(20),
course_ID CHAR(10),
Department_ID CHAR(10),
session_Date DATE,
session_Type VARCHAR(10),
A_Status VARCHAR(10),
Medical_ID CHAR(10),
PRIMARY KEY(student_ID,course_ID,session_Date)
);



INSERTING DATA TO ICT Students,



1.ICT1212

INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0001', 'ICT1212', 'ICT', '2024-08-13', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-08-20', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-08-27', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-09-03', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-09-10', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-09-17', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-09-24', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-10-08', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-10-15', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-10-22', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-10-29', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-10-30', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1212', 'ICT', '2024-10-31', 'Theory', 'Present', NULL);







INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0002', 'ICT1212', 'ICT', '2024-08-13', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-08-20', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-08-27', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-09-03', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-09-10', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-09-17', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-09-24', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-10-08', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-10-15', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-10-22', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-10-29', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-10-30', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1212', 'ICT', '2024-10-31', 'Theory', 'Present', NULL);





INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0003', 'ICT1212', 'ICT', '2024-08-13', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-08-20', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-08-27', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-09-03', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-09-10', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-09-17', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-09-24', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-10-08', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-10-15', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-10-22', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-10-29', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-10-30', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1212', 'ICT', '2024-10-31', 'Theory', 'Present', NULL);



2.ICT1222


INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0001', 'ICT1222', 'ICT', '2024-08-13', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-08-20', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-08-27', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-09-03', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-09-10', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-09-17', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-09-19', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-09-24', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-10-01', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-10-08', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-10-15', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-10-22', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-10-29', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-10-30', 'Practical', 'Present', NULL),
('TG/2022/0001', 'ICT1222', 'ICT', '2024-10-31', 'Practical', 'Present', NULL);






INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0002', 'ICT1222', 'ICT', '2024-08-13', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-08-20', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-08-27', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-09-03', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-09-10', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-09-17', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-09-19', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-09-24', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-10-01', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-10-08', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-10-15', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-10-22', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-10-29', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-10-30', 'Practical', 'Present', NULL),
('TG/2022/0002', 'ICT1222', 'ICT', '2024-10-31', 'Practical', 'Present', NULL);






INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0003', 'ICT1222', 'ICT', '2024-08-13', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-08-20', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-08-27', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-09-03', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-09-10', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-09-17', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-09-19', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-09-24', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-10-01', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-10-08', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-10-15', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-10-22', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-10-29', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-10-30', 'Practical', 'Present', NULL),
('TG/2022/0003', 'ICT1222', 'ICT', '2024-10-31', 'Practical', 'Present', NULL);


3.ICT1233


INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0001', 'ICT1233', 'ICT', '2024-08-12', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-08-19', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-08-26', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-09-02', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-09-09', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-09-16', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-09-23', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-09-30', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-10-07', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-10-08', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-10-14', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-10-21', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1233', 'ICT', '2024-10-28', 'Theory', 'Present', NULL);








INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0002', 'ICT1233', 'ICT', '2024-08-12', 'Theory', 'Absent', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-08-19', 'Theory', 'Absent', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-08-26', 'Theory', 'Absent', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-09-02', 'Theory', 'Absent', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-09-09', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-09-16', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-09-23', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-09-30', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-10-07', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-10-08', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-10-14', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-10-21', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1233', 'ICT', '2024-10-28', 'Theory', 'Present', NULL);







INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0003', 'ICT1233', 'ICT', '2024-08-12', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-08-19', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-08-26', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-09-02', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-09-09', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-09-16', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-09-23', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-09-30', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-10-07', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-10-08', 'Theory', 'Absent', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-10-14', 'Theory', 'Absent', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-10-21', 'Theory', 'Absent', NULL),
('TG/2022/0003', 'ICT1233', 'ICT', '2024-10-28', 'Theory', 'Absent', NULL);



4.ICT1242

INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0001', 'ICT1242', 'ICT', '2024-08-15', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-08-22', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-08-29', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-09-05', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-09-15', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-09-26', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-09-29', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-10-03', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-10-10', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-10-11', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-10-18', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-10-24', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1242', 'ICT', '2024-10-25', 'Theory', 'Present', NULL);






INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0002', 'ICT1242', 'ICT', '2024-08-15', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-08-22', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-08-29', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-09-05', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-09-15', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-09-26', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-09-29', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-10-03', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-10-10', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-10-11', 'Theory', 'Absent', 'MED03'),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-10-18', 'Theory', 'Absent', 'MED04'),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-10-24', 'Theory', 'Absent', 'MED05'),
('TG/2022/0002', 'ICT1242', 'ICT', '2024-10-25', 'Theory', 'Absent', NULL);




INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0003', 'ICT1242', 'ICT', '2024-08-15', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-08-22', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-08-29', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-09-05', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-09-15', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-09-26', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-09-29', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-10-03', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-10-10', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-10-11', 'Theory', 'Absent', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-10-18', 'Theory', 'Absent', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-10-24', 'Theory', 'Absent', NULL),
('TG/2022/0003', 'ICT1242', 'ICT', '2024-10-25', 'Theory', 'Absent', NULL);




5.ICT1253


INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0001', 'ICT1253', 'ICT', '2024-08-15', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-08-22', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-08-29', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-09-04', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-09-05', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-09-11', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-09-18', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-09-26', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-10-03', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-10-08', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-10-10', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ICT1253', 'ICT', '2024-10-15', 'Theory', 'Present', NULL);








INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0002', 'ICT1253', 'ICT', '2024-08-15', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-08-22', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-08-29', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-09-04', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-09-05', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-09-11', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-09-18', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-09-26', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-10-03', 'Theory', 'Absent', 'MED01'),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-10-08', 'Theory', 'Absent', 'MED02'),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-10-10', 'Theory', 'Absent', NULL),
('TG/2022/0002', 'ICT1253', 'ICT', '2024-10-15', 'Theory', 'Absent', NULL);





INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0003', 'ICT1253', 'ICT', '2024-08-15', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-08-22', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-08-29', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-09-04', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-09-05', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-09-11', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-09-18', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-09-26', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-10-03', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-10-08', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-10-10', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ICT1253', 'ICT', '2024-10-15', 'Theory', 'Present', NULL);


6.ENG1222

INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)  
VALUES
('TG/2022/0001', 'ENG1222', 'DMS', '2024-08-10', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-08-14', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-08-16', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-08-21', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-08-27', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-08-30', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-09-04', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-09-06', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-09-11', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-09-25', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-09-27', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-09-30', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-10-21', 'Theory', 'Present', NULL),
('TG/2022/0001', 'ENG1222', 'DMS', '2024-10-30', 'Theory', 'Present', NULL);





INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)  
VALUES
('TG/2022/0002', 'ENG1222', 'DMS', '2024-08-10', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-08-14', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-08-16', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-08-21', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-08-27', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-08-30', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-09-04', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-09-06', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-09-11', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-09-25', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-09-27', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-09-30', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-10-21', 'Theory', 'Present', NULL),
('TG/2022/0002', 'ENG1222', 'DMS', '2024-10-30', 'Theory', 'Present', NULL);





INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)  
VALUES
('TG/2022/0003', 'ENG1222', 'DMS', '2024-08-10', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-08-14', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-08-16', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-08-21', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-08-27', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-08-30', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-09-04', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-09-06', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-09-11', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-09-25', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-09-27', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-09-30', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-10-21', 'Theory', 'Present', NULL),
('TG/2022/0003', 'ENG1222', 'DMS', '2024-10-30', 'Theory', 'Present', NULL);



7.TCS1212

INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0001', 'TCS1212', 'DMS', '2024-08-16', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-08-22', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-08-30', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-09-01', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-09-05', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-09-13', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-09-15', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-09-26', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-09-27', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-10-03', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-10-10', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TCS1212', 'DMS', '2024-10-15', 'Theory', 'Present', NULL);




INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0002', 'TCS1212', 'DMS', '2024-08-16', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-08-22', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-08-30', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-09-01', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-09-05', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-09-13', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-09-15', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-09-26', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-09-27', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-10-03', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-10-10', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TCS1212', 'DMS', '2024-10-15', 'Theory', 'Present', NULL);






INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)
VALUES
('TG/2022/0003', 'TCS1212', 'DMS', '2024-08-16', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-08-22', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-08-30', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-09-01', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-09-05', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-09-12', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-09-13', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-09-15', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-09-26', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-09-27', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-10-01', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-10-03', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-10-10', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TCS1212', 'DMS', '2024-10-15', 'Theory', 'Present', NULL);




8.TMS1233

INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)  
VALUES
('TG/2022/0001', 'TMS1233', 'ICT', '2024-08-09', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-08-14', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-08-16', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-08-21', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-08-28', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-09-01', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-09-04', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-09-11', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-09-25', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-10-11', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-10-15', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-10-18', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-10-23', 'Theory', 'Present', NULL),
('TG/2022/0001', 'TMS1233', 'ICT', '2024-10-30', 'Theory', 'Present', NULL);




INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)  
VALUES
('TG/2022/0002', 'TMS1233', 'ICT', '2024-08-09', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-08-14', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-08-16', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-08-21', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-08-28', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-09-01', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-09-04', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-09-11', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-09-25', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-10-11', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-10-15', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-10-18', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-10-23', 'Theory', 'Present', NULL),
('TG/2022/0002', 'TMS1233', 'ICT', '2024-10-30', 'Theory', 'Present', NULL);




INSERT INTO attendance (student_ID, course_ID, Department_ID, session_Date, session_Type, A_Status, Medical_ID)  
VALUES
('TG/2022/0003', 'TMS1233', 'ICT', '2024-08-09', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-08-14', 'Theory', 'Absent', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-08-16', 'Theory', 'Absent', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-08-21', 'Theory', 'Absent', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-08-28', 'Theory', 'Absent', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-09-01', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-09-04', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-09-11', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-09-19', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-09-25', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-10-11', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-10-15', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-10-18', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-10-23', 'Theory', 'Present', NULL),
('TG/2022/0003', 'TMS1233', 'ICT', '2024-10-30', 'Theory', 'Present', NULL);



