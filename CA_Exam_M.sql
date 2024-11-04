CREATE TABLE CA_Exam_M(
student_ID VARCHAR(20),
course_ID VARCHAR(20),
Department_ID VARCHAR(10),
Quiz1 DECIMAL(6,2) CHECK (Quiz1 >= 0 AND Quiz1 <= 100),
Quiz2 DECIMAL(6,2) CHECK (Quiz2 >= 0 AND Quiz2 <= 100),
Quiz3 DECIMAL(6,2) CHECK (Quiz3 >= 0 AND Quiz3 <= 100),
Assesments DECIMAL(6,2) CHECK (Assesments >= 0 AND Assesments <= 100),
Mid_Practical DECIMAL(6,2) CHECK (Mid_Practical >= 0 AND Mid_Practical <= 100),
Mid_Theory DECIMAL(6,2) CHECK (Mid_Theory >= 0 AND Mid_Theory <= 100),
Medical_ID VARCHAR(20),
PRIMARY KEY (student_ID,course_ID),
FOREIGN KEY (student_ID) REFERENCES student(studentId) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (course_ID) REFERENCES course(courseId) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (Medical_ID) REFERENCES medical(Medical_Id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (Department_ID) REFERENCES departmentS(departmentId) ON DELETE CASCADE ON UPDATE CASCADE
);


/*Common Subject*/

INSERT INTO CA_Exam_M (student_ID,course_ID,Department_ID,Quiz1,Quiz2,Quiz3,Assesments,Mid_Practical,Mid_Theory,Medical_ID)
VALUES
("TG/2022/0001", "ENG1222", "DMS", 80, 75, 80, 70, 0, 60, NULL),
("TG/2022/0002", "ENG1222", "DMS", 60, 80, 60, 60, 0, 50, NULL),
("TG/2022/0003", "ENG1222", "DMS", 90, 65, 50, 90, 0, 65, NULL),
("TG/2022/0004", "ENG1222", "DMS", 60, 60, 60, 70, 0, 70, NULL),
("TG/2022/0005", "ENG1222", "DMS", 50, 0, 100, 80, 0, 55, NULL),
("TG/2022/0006", "ENG1222", "DMS", 70, 60, 50, 80, 0, 60, NULL),
("TG/2022/0007", "ENG1222", "DMS", 30, 70, 70, 70, 0, 70, NULL),
("TG/2022/0008", "ENG1222", "DMS", 50, 50, 90, 85, 0, 55, NULL),
("TG/2022/0009", "ENG1222", "DMS", 80, 35, 80, 80, 0, 75, NULL),
("TG/2022/0010", "ENG1222", "DMS", 65, 65, 90, 76, 0, 65, NULL),
("TG/2020/0011", "ENG1222", "DMS", 75, 95, 80, 60, 0, 70, NULL),
("TG/2020/0012", "ENG1222", "DMS", 30, 75, 80, 60, 0, 80, NULL),
("TG/2020/0013", "ENG1222", "DMS", 40, 65, 90, 80, 0, 60, NULL),
("TG/2020/0014", "ENG1222", "DMS", 80, 65, 80, 76, 0, 70, NULL),
("TG/2020/0015", "ENG1222", "DMS", 85, 0, 75, 90, 0, 70, NULL),
("TG/2022/0016", "ENG1222", "DMS", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0017", "ENG1222", "DMS", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0018", "ENG1222", "DMS", 0, 0, 0, 0, 0, 0, NULL);

INSERT INTO CA_Exam_M (student_ID, course_ID, Department_ID, Quiz1, Quiz2, Quiz3, Assesments, Mid_Practical, Mid_Theory,Medical_ID)
VALUES
("TG/2022/0001", "TCS1212", "DMS", 85, 78, 82, 72, 0, 62, NULL),
("TG/2022/0002", "TCS1212", "DMS", 62, 83, 63, 65, 0, 53, NULL),
("TG/2022/0003", "TCS1212", "DMS", 91, 68, 55, 92, 0, 67, NULL),
("TG/2022/0004", "TCS1212", "DMS", 63, 64, 62, 73, 0, 71, NULL),
("TG/2022/0005", "TCS1212", "DMS", 52, 5, 100, 82, 0, 57, NULL),
("TG/2022/0006", "TCS1212", "DMS", 72, 62, 53, 83, 0, 62, NULL),
("TG/2022/0007", "TCS1212", "DMS", 32, 73, 75, 72, 0, 72, NULL),
("TG/2022/0008", "TCS1212", "DMS", 52, 52, 93, 88, 0, 58, NULL),
("TG/2022/0009", "TCS1212", "DMS", 83, 38, 85, 83, 0, 77, NULL),
("TG/2022/0010", "TCS1212", "DMS", 68, 69, 95, 78, 0, 67, NULL),
("TG/2020/0011", "TCS1212", "DMS", 77, 98, 85, 63, 0, 72, NULL),
("TG/2020/0012", "TCS1212", "DMS", 33, 78, 83, 63, 0, 82, NULL),
("TG/2020/0013", "TCS1212", "DMS", 43, 67, 93, 83, 0, 63, NULL),
("TG/2020/0014", "TCS1212", "DMS", 83, 67, 83, 79, 0, 72, NULL),
("TG/2020/0015", "TCS1212", "DMS", 88, 3, 78, 92, 0, 73, NULL),
("TG/2022/0016", "TCS1212", "DMS", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0017", "TCS1212", "DMS", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0018", "TCS1212", "DMS", 0, 0, 0, 0, 0, 0, NULL);



/*ICT Students*/

INSERT INTO CA_Exam_M (student_ID, course_ID, Department_ID, Quiz1, Quiz2, Quiz3, Assesments, Mid_Practical, Mid_Theory, Medical_ID)
VALUES
("TG/2022/0001", "ICT1212", "ICT", 85, 78, 82, 72, 0, 62, NULL),
("TG/2022/0001", "ICT1222", "ICT", 80, 75, 80, 70, 0, 60, NULL),
("TG/2022/0001", "ICT1233", "ICT", 90, 65, 50, 90, 0, 65, NULL),
("TG/2022/0001", "ICT1242", "ICT", 60, 60, 60, 70, 0, 70, NULL),
("TG/2022/0001", "ICT1253", "ICT", 50, 0, 100, 0, 70, 55, NULL),
("TG/2022/0001", "TMS1233", "ICT", 70, 60, 50, 80, 0, 60, NULL),
("TG/2022/0002", "ICT1212", "ICT", 62, 83, 63, 65, 0, 53, NULL),
("TG/2022/0002", "ICT1222", "ICT", 60, 80, 60, 60, 0, 50, NULL),
("TG/2022/0002", "ICT1233", "ICT", 30, 70, 70, 70, 0, 70, NULL),
("TG/2022/0002", "ICT1242", "ICT", 0, 0, 0, 0, 0, 0, "MED11"),
("TG/2022/0002", "ICT1253", "ICT", 80, 35, 80, 0, 80, 75, NULL),
("TG/2022/0002", "TMS1233", "ICT", 65, 65, 90, 76, 0, 65, NULL),
("TG/2022/0003", "ICT1212", "ICT", 91, 68, 55, 92, 0, 67, NULL),
("TG/2022/0003", "ICT1222", "ICT", 75, 95, 80, 60, 0, 70, NULL),
("TG/2022/0003", "ICT1233", "ICT", 30, 75, 80, 60, 0, 80, NULL),
("TG/2022/0003", "ICT1242", "ICT", 40, 65, 90, 80, 0, 60, NULL),
("TG/2022/0003", "ICT1253", "ICT", 80, 65, 80, 0, 76, 70, NULL),
("TG/2022/0003", "TMS1233", "ICT", 85, 0, 75, 90, 0, 70, NULL);


/*ict suspend and repeat*/

INSERT INTO CA_Exam_M (student_ID, course_ID, Department_ID, Quiz1, Quiz2, Quiz3, Assesments, Mid_Practical, Mid_Theory, Medical_ID)
VALUES
("TG/2020/0011", "ICT1212", "ICT", 70, 75, 80, 85, 0, 60, NULL),
("TG/2020/0011", "ICT1222", "ICT", 65, 80, 75, 78, 0, 62, NULL),
("TG/2020/0011", "ICT1233", "ICT", 80, 85, 90, 82, 0, 70, NULL),
("TG/2020/0011", "ICT1242", "ICT", 75, 65, 80, 85, 0, 68, NULL),
("TG/2020/0011", "ICT1253", "ICT", 60, 70, 75, 0, 80, 65, NULL),
("TG/2020/0011", "TMS1233", "ICT", 85, 90, 95, 88, 0, 72, NULL),
("TG/2020/0012", "ICT1212", "ICT", 55, 65, 70, 75, 0, 58, NULL),
("TG/2020/0012", "ICT1222", "ICT", 65, 70, 75, 80, 0, 60, NULL),
("TG/2020/0012", "ICT1233", "ICT", 75, 80, 85, 88, 0, 68, NULL),
("TG/2020/0012", "ICT1242", "ICT", 60, 65, 70, 72, 0, 62, NULL),
("TG/2020/0012", "ICT1253", "ICT", 85, 90, 80, 0, 75, 75, NULL),
("TG/2020/0012", "TMS1233", "ICT", 70, 75, 80, 85, 0, 68, NULL),
("TG/2022/0016", "ICT1212", "ICT", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0016", "ICT1222", "ICT", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0016", "ICT1233", "ICT", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0016", "ICT1242", "ICT", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0016", "ICT1253", "ICT", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0016", "TMS1233", "ICT", 0, 0, 0, 0, 0, 0, NULL);



/*BST Students*/


INSERT INTO CA_Exam_M (student_ID, course_ID, Department_ID, Quiz1, Quiz2, Quiz3, Assesments, Mid_Practical, Mid_Theory,Medical_ID)
VALUES
("TG/2022/0004", "BST1212", "BST", 75, 80, 65, 70, 0, 60, NULL),
("TG/2022/0004", "BST1222", "BST", 60, 85, 75, 72, 0, 65, NULL),
("TG/2022/0004", "BST1232", "BST", 85, 90, 80, 78, 0, 70, NULL),
("TG/2022/0004", "BST1242", "BST", 70, 65, 85, 80, 0, 68, NULL),
("TG/2022/0004", "BST1251", "BST", 90, 75, 70, 85, 0, 75, NULL),
("TG/2022/0004", "BST1262", "BST", 50, 70, 60, 65, 0, 60, NULL),
("TG/2022/0004", "BST1272", "BST", 65, 55, 80, 72, 0, 67, NULL),
("TG/2022/0004", "BST1282", "BST", 85, 60, 75, 80, 0, 70, NULL),
("TG/2022/0005", "BST1212", "BST", 60, 75, 55, 68, 0, 58, NULL),
("TG/2022/0005", "BST1222", "BST", 70, 80, 65, 72, 0, 62, NULL),
("TG/2022/0005", "BST1232", "BST", 55, 60, 70, 65, 0, 55, NULL),
("TG/2022/0005", "BST1242", "BST", 0, 0, 0, 0, 0, 0, "MED12"),
("TG/2022/0005", "BST1251", "BST", 75, 85, 90, 80, 0, 70, NULL),
("TG/2022/0005", "BST1262", "BST", 50, 65, 60, 62, 0, 55, NULL),
("TG/2022/0005", "BST1272", "BST", 65, 70, 75, 78, 0, 65, NULL),
("TG/2022/0005", "BST1282", "BST", 70, 55, 80, 82, 0, 68, NULL),
("TG/2022/0006", "BST1212", "BST", 65, 80, 70, 75, 0, 65, NULL),
("TG/2022/0006", "BST1222", "BST", 80, 85, 75, 78, 0, 70, NULL),
("TG/2022/0006", "BST1232", "BST", 75, 90, 85, 80, 0, 75, NULL),
("TG/2022/0006", "BST1242", "BST", 60, 70, 65, 70, 0, 60, NULL),
("TG/2022/0006", "BST1251", "BST", 85, 75, 80, 85, 0, 72, NULL),
("TG/2022/0006", "BST1262", "BST", 50, 65, 60, 62, 0, 55, NULL),
("TG/2022/0006", "BST1272", "BST", 65, 70, 75, 78, 0, 67, NULL),
("TG/2022/0006", "BST1282", "BST", 80, 55, 90, 85, 0, 70, NULL);


/*bst suspend and repeat*/

INSERT INTO CA_Exam_M (student_ID, course_ID, Department_ID, Quiz1, Quiz2, Quiz3, Assesments, Mid_Practical, Mid_Theory,Medical_ID)
VALUES
("TG/2020/0013", "BST1212", "BST", 75, 80, 70, 78, 0, 65, NULL),
("TG/2020/0013", "BST1222", "BST", 60, 85, 75, 80, 0, 68, NULL),
("TG/2020/0013", "BST1232", "BST", 85, 90, 80, 82, 0, 70, NULL),
("TG/2020/0013", "BST1242", "BST", 70, 65, 85, 88, 0, 65, NULL),
("TG/2020/0013", "BST1251", "BST", 90, 75, 80, 85, 0, 72, NULL),
("TG/2020/0013", "BST1262", "BST", 50, 70, 60, 65, 0, 60, NULL),
("TG/2020/0013", "BST1272", "BST", 65, 55, 70, 72, 0, 63, NULL),
("TG/2020/0013", "BST1282", "BST", 85, 80, 75, 80, 0, 70, NULL),
("TG/2020/0014", "BST1212", "BST", 70, 75, 60, 70, 0, 60, NULL),
("TG/2020/0014", "BST1222", "BST", 65, 80, 70, 75, 0, 62, NULL),
("TG/2020/0014", "BST1232", "BST", 80, 85, 75, 80, 0, 68, NULL),
("TG/2020/0014", "BST1242", "BST", 75, 90, 80, 85, 0, 70, NULL),
("TG/2020/0014", "BST1251", "BST", 60, 65, 70, 72, 0, 62, NULL),
("TG/2020/0014", "BST1262", "BST", 85, 90, 85, 88, 0, 75, NULL),
("TG/2020/0014", "BST1272", "BST", 70, 75, 60, 65, 0, 60, NULL),
("TG/2020/0014", "BST1282", "BST", 65, 80, 70, 78, 0, 65, NULL),
("TG/2022/0017", "BST1212", "BST", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0017", "BST1222", "BST", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0017", "BST1232", "BST", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0017", "BST1242", "BST", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0017", "BST1251", "BST", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0017", "BST1262", "BST", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0017", "BST1272", "BST", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0017", "BST1282", "BST", 0, 0, 0, 0, 0, 0, NULL);



/*ET Students*/

INSERT INTO CA_Exam_M (student_ID, course_ID, Department_ID, Quiz1, Quiz2, Quiz3, Assesments, Mid_Practical, Mid_Theory,Medical_ID)
VALUES
("TG/2022/0007", "ENT1211", "ET", 65, 70, 75, 80, 0, 60, NULL),
("TG/2022/0007", "ENT1221", "ET", 60, 75, 80, 85, 0, 65, NULL),
("TG/2022/0007", "ENT1231", "ET", 70, 65, 80, 82, 0, 62, NULL),
("TG/2022/0007", "ENT1242", "ET", 85, 90, 80, 75, 0, 68, NULL),
("TG/2022/0007", "ENT1253", "ET", 55, 60, 70, 75, 0, 60, NULL),
("TG/2022/0007", "TMS1213", "ET", 65, 70, 75, 80, 0, 62, NULL),
("TG/2022/0007", "TMS1223", "ET", 75, 80, 85, 88, 0, 70, NULL),
("TG/2022/0008", "ENT1211", "ET", 60, 70, 75, 85, 0, 60, NULL),
("TG/2022/0008", "ENT1221", "ET", 70, 75, 80, 82, 0, 65, NULL),
("TG/2022/0008", "ENT1231", "ET", 85, 90, 95, 88, 0, 75, NULL),
("TG/2022/0008", "ENT1242", "ET", 60, 65, 70, 78, 0, 62, NULL),
("TG/2022/0008", "ENT1253", "ET", 55, 60, 65, 70, 0, 60, NULL),
("TG/2022/0008", "TMS1213", "ET", 75, 80, 85, 88, 0, 72, NULL),
("TG/2022/0008", "TMS1223", "ET", 80, 85, 90, 82, 0, 75, NULL),
("TG/2022/0009", "ENT1211", "ET", 70, 75, 80, 85, 0, 65, NULL),
("TG/2022/0009", "ENT1221", "ET", 60, 65, 70, 72, 0, 60, NULL),
("TG/2022/0009", "ENT1231", "ET", 75, 80, 85, 88, 0, 68, NULL),
("TG/2022/0009", "ENT1242", "ET", 0, 0, 0, 0, 0, 0, "MED13"),
("TG/2022/0009", "ENT1253", "ET", 55, 60, 65, 70, 0, 60, NULL),
("TG/2022/0009", "TMS1213", "ET", 65, 70, 75, 78, 0, 65, NULL),
("TG/2022/0009", "TMS1223", "ET", 85, 90, 95, 88, 0, 72, NULL),
("TG/2022/0010", "ENT1211", "ET", 55, 60, 65, 70, 0, 58, NULL),
("TG/2022/0010", "ENT1221", "ET", 75, 80, 85, 88, 0, 68, NULL),
("TG/2022/0010", "ENT1231", "ET", 60, 65, 70, 75, 0, 60, NULL),
("TG/2022/0010", "ENT1242", "ET", 85, 90, 95, 92, 0, 75, NULL),
("TG/2022/0010", "ENT1253", "ET", 70, 75, 80, 85, 0, 65, NULL),
("TG/2022/0010", "TMS1213", "ET", 60, 65, 70, 72, 0, 60, NULL),
("TG/2022/0010", "TMS1223", "ET", 80, 85, 90, 88, 0, 70, NULL);

/*et suspend and repeat*/

INSERT INTO CA_Exam_M (student_ID, course_ID, Department_ID, Quiz1, Quiz2, Quiz3, Assesments, Mid_Practical, Mid_Theory,Medical_ID)
VALUES
("TG/2020/0015", "ENT1211", "ET", 70, 75, 80, 85, 0, 65, NULL),
("TG/2020/0015", "ENT1221", "ET", 65, 70, 75, 80, 0, 62, NULL),
("TG/2020/0015", "ENT1231", "ET", 75, 80, 85, 88, 0, 70, NULL),
("TG/2020/0015", "ENT1242", "ET", 60, 65, 70, 75, 0, 60, NULL),
("TG/2020/0015", "ENT1253", "ET", 80, 85, 90, 88, 0, 72, NULL),
("TG/2020/0015", "TMS1213", "ET", 55, 60, 65, 70, 0, 60, NULL),
("TG/2020/0015", "TMS1223", "ET", 85, 90, 95, 92, 0, 75, NULL),
("TG/2022/0018", "ENT1211", "ET", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0018", "ENT1221", "ET", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0018", "ENT1231", "ET", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0018", "ENT1242", "ET", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0018", "ENT1253", "ET", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0018", "TMS1213", "ET", 0, 0, 0, 0, 0, 0, NULL),
("TG/2022/0018", "TMS1223", "ET", 0, 0, 0, 0, 0, 0, NULL);