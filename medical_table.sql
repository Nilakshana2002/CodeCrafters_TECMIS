CREATE TABLE medical(
Medical_Id VARCHAR(20),
student_ID VARCHAR(20),
course_ID VARCHAR(20),
submit_Date  DATE,
M_reason VARCHAR(50),
PRIMARY KEY(Medical_Id)
);


INSERT INTO medical (Medical_Id, student_ID, course_ID, submit_Date, M_reason) 
VALUES
('MED01', 'TG/2022/0002', 'ICT1253','2024-10-03','Flu and fever'),
('MED02', 'TG/2022/0002', 'ICT1253','2024-10-08','Fractured leg'),
('MED03', 'TG/2022/0002', 'ICT1242','2024-10-11','Surgery recovery'),
('MED04', 'TG/2022/0002', 'ICT1242','2024-10-18','Family emergency travel'),
('MED05', 'TG/2022/0002', 'ICT1242','2024-10-24','Hospitalization for dengue'),
('MED06', 'TG/2022/0005', 'BST1232','2024-10-11','Severe migraines'),
('MED07', 'TG/2022/0005', 'BST1232','2024-10-18', 'Mental health consultation'),
('MED08', 'TG/2022/0005', 'BST1232','2024-10-24', 'Family emergency travel'),
('MED09', 'TG/2022/0009', 'ENT1242','2024-10-24', 'Allergic reaction treatment'),
('MED10', 'TG/2022/0009', 'ENT1242','2024-10-25', 'Food poisoning');
