CREATE TABLE medical(
Medical_Id VARCHAR(20),
student_ID VARCHAR(20),
course_ID VARCHAR(20),
submit_Date  DATE,
M_reason VARCHAR(50),
PRIMARY KEY(Medical_Id),
FOREIGN KEY (student_ID) REFERENCES student(studentId) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (course_ID) REFERENCES course(courseId) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO medical (Medical_Id, student_ID, course_ID, submit_Date, M_reason) 
VALUES
INSERT INTO medical (Medical_Id, student_ID, course_ID, Absent_Date, submit_Date, M_reason, Medical_Type) 
VALUES
('MED01', 'TG/2022/0002', 'ICT1253','2024-10-03','2024-10-08','Flu and fever','Attendance'),
('MED02', 'TG/2022/0002', 'ICT1253','2024-10-08','2024-11-03','Fractured leg','Attendance'),
('MED03', 'TG/2022/0002', 'ICT1242','2024-10-11','2024-10-13','Surgery recovery','Attendance'),
('MED04', 'TG/2022/0002', 'ICT1242','2024-10-18','2024-10-23','Family emergency travel','Attendance'),
('MED05', 'TG/2022/0002', 'ICT1242','2024-10-24','2024-10-27','Hospitalization for dengue','Attendance'),
('MED06', 'TG/2022/0005', 'BST1232','2024-10-11','2024-10-30','Severe migraines','Attendance'),
('MED07', 'TG/2022/0005', 'BST1232','2024-10-18','2024-11-03','Mental health consultation','Attendance'),
('MED08', 'TG/2022/0005', 'BST1232','2024-10-24','2024-11-23','Family emergency travel','Attendance'),
('MED09', 'TG/2022/0009', 'ENT1242','2024-10-24','2024-10-28','Allergic reaction treatment','Attendance'),
('MED10', 'TG/2022/0009', 'ENT1242','2024-10-25','2024-10-26','Food poisoning','Attendance'),
('MED11', 'TG/2022/0002', 'ICT1242','2024-10-26','2024-10-27','Allergic reaction','Exams'),
('MED12', 'TG/2022/0005', 'BST1242','2024-10-27','2024-10-28','Migraine headache','Exams'),
('MED13', 'TG/2022/0009', 'ENT1242','2024-10-28','2024-10-29','Fractured arm','Exams');

