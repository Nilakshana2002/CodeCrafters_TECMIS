CREATE TABLE END_Exam_M(
student_ID VARCHAR(20),
course_ID VARCHAR(20),
End_Practical decimal(6,2),
End_Theory decimal(6,2),
PRIMARY KEY (student_ID,course_ID)
);

/*FOREIGN KEY*/


ALTER TABLE END_Exam_M FOREIGN KEY (student_ID) REFERENCES student(student_ID);
ALTER TABLE END_Exam_M FOREIGN KEY (course_ID) REFERENCES course(course_ID);


/*Common Subject*/

INSERT INTO END_Exam_M (student_ID,course_ID,End_Practical,End_Theory)
VALUES
("TG/2022/0001", "ENG1222", 0, 62),
("TG/2022/0002", "ENG1222", 0, 58),
("TG/2022/0003", "ENG1222", 0, 67),
("TG/2022/0004", "ENG1222", 0, 72),
("TG/2022/0005", "ENG1222", 0, 57),
("TG/2022/0006", "ENG1222", 0, 63),
("TG/2022/0007", "ENG1222", 0, 68),
("TG/2022/0008", "ENG1222", 0, 59),
("TG/2022/0009", "ENG1222", 0, 77),
("TG/2022/0010", "ENG1222", 0, 66),
("TG/2020/0011", "ENG1222", 0, 71),
("TG/2020/0012", "ENG1222", 0, 83),
("TG/2020/0013", "ENG1222", 0, 61),
("TG/2020/0014", "ENG1222", 0, 73),
("TG/2020/0015", "ENG1222", 0, 69),
("TG/2022/0016", "ENG1222", 0, 0),
("TG/2022/0017", "ENG1222", 0, 0),
("TG/2022/0018", "ENG1222", 0, 0);


INSERT INTO END_Exam_M (student_ID,course_ID,End_Practical,End_Theory)
VALUES
("TG/2022/0001", "TCS1212", 0, 64),
("TG/2022/0002", "TCS1212", 0, 59),
("TG/2022/0003", "TCS1212", 0, 69),
("TG/2022/0004", "TCS1212", 0, 73),
("TG/2022/0005", "TCS1212", 0, 61),
("TG/2022/0006", "TCS1212", 0, 65),
("TG/2022/0007", "TCS1212", 0, 70),
("TG/2022/0008", "TCS1212", 0, 62),
("TG/2022/0009", "TCS1212", 0, 78),
("TG/2022/0010", "TCS1212", 0, 68),
("TG/2020/0011", "TCS1212", 0, 74),
("TG/2020/0012", "TCS1212", 0, 81),
("TG/2020/0013", "TCS1212", 0, 63),
("TG/2020/0014", "TCS1212", 0, 75),
("TG/2020/0015", "TCS1212", 0, 71),
("TG/2022/0016", "TCS1212", 0, 0),
("TG/2022/0017", "TCS1212", 0, 0),
("TG/2022/0018", "TCS1212", 0, 0);

/*ICT Students*/

INSERT INTO END_Exam_M (student_ID, course_ID, End_Practical, End_Theory)
VALUES
("TG/2022/0001", "ICT1212", 0, 61),
("TG/2022/0001", "ICT1222", 60, 64),
("TG/2022/0001", "ICT1233", 50, 68),
("TG/2022/0001", "ICT1242", 0, 70),
("TG/2022/0001", "ICT1253", 60, 72),
("TG/2022/0001", "TMS1233", 0, 63),
("TG/2022/0002", "ICT1212", 0, 59),
("TG/2022/0002", "ICT1222", 45, 66),
("TG/2022/0002", "ICT1233", 60, 62),
("TG/2022/0002", "ICT1242", 0, 71),
("TG/2022/0002", "ICT1253", 50, 75),
("TG/2022/0002", "TMS1233", 0, 65),
("TG/2022/0003", "ICT1212", 0, 67),
("TG/2022/0003", "ICT1222", 59, 64),
("TG/2022/0003", "ICT1233", 59, 70),
("TG/2022/0003", "ICT1242", 0, 72),
("TG/2022/0003", "ICT1253", 68, 69),
("TG/2022/0003", "TMS1233", 0, 66);

/*ict suspend and repeat*/

INSERT INTO END_Exam_M (student_ID, course_ID, End_Practical, End_Theory)
VALUES
("TG/2020/0011", "ICT1212", 0, 62),
("TG/2020/0011", "ICT1222", 50, 65),
("TG/2020/0011", "ICT1233", 55, 67),
("TG/2020/0011", "ICT1242", 0, 69),
("TG/2020/0011", "ICT1253", 56, 70),
("TG/2020/0011", "TMS1233", 0, 66),
("TG/2020/0012", "ICT1212", 0, 64),
("TG/2020/0012", "ICT1222", 60, 63),
("TG/2020/0012", "ICT1233", 52, 68),
("TG/2020/0012", "ICT1242", 0, 72),
("TG/2020/0012", "ICT1253", 45, 67),
("TG/2020/0012", "TMS1233", 0, 65),
("TG/2022/0016", "ICT1212", 0, 0),
("TG/2022/0016", "ICT1222", 0, 0),
("TG/2022/0016", "ICT1233", 0, 0),
("TG/2022/0016", "ICT1242", 0, 0),
("TG/2022/0016", "ICT1253", 0, 0),
("TG/2022/0016", "TMS1233", 0, 0);

/*BST Students*/

INSERT INTO END_Exam_M (student_ID, course_ID, End_Practical, End_Theory)
VALUES
("TG/2022/0004", "BST1212", 0, 61),
("TG/2022/0004", "BST1222", 0, 63),
("TG/2022/0004", "BST1232", 0, 65),
("TG/2022/0004", "BST1242", 0, 66),
("TG/2022/0004", "BST1251", 0, 60),
("TG/2022/0004", "BST1262", 0, 67),
("TG/2022/0004", "BST1272", 45, 64),
("TG/2022/0004", "BST1282", 0, 70),
("TG/2022/0005", "BST1212", 0, 68),
("TG/2022/0005", "BST1222", 0, 62),
("TG/2022/0005", "BST1232", 0, 66),
("TG/2022/0005", "BST1242", 0, 64),
("TG/2022/0005", "BST1251", 0, 69),
("TG/2022/0005", "BST1262", 0, 65),
("TG/2022/0005", "BST1272", 70, 67),
("TG/2022/0005", "BST1282", 0, 71),
("TG/2022/0006", "BST1212", 0, 63),
("TG/2022/0006", "BST1222", 0, 61),
("TG/2022/0006", "BST1232", 0, 65),
("TG/2022/0006", "BST1242", 0, 68),
("TG/2022/0006", "BST1251", 0, 64),
("TG/2022/0006", "BST1262", 0, 69),
("TG/2022/0006", "BST1272", 59, 66),
("TG/2022/0006", "BST1282", 0, 70);

/*bst suspend and repeat*/

INSERT INTO END_Exam_M (student_ID, course_ID, End_Practical, End_Theory)
VALUES
("TG/2020/0013", "BST1212", 0, 62),
("TG/2020/0013", "BST1222", 0, 65),
("TG/2020/0013", "BST1232", 0, 68),
("TG/2020/0013", "BST1242", 0, 64),
("TG/2020/0013", "BST1251", 0, 61),
("TG/2020/0013", "BST1262", 0, 69),
("TG/2020/0013", "BST1272", 45, 66),
("TG/2020/0013", "BST1282", 0, 70),
("TG/2020/0014", "BST1212", 0, 63),
("TG/2020/0014", "BST1222", 0, 60),
("TG/2020/0014", "BST1232", 0, 67),
("TG/2020/0014", "BST1242", 0, 65),
("TG/2020/0014", "BST1251", 0, 68),
("TG/2020/0014", "BST1262", 0, 66),
("TG/2020/0014", "BST1272", 56, 64),
("TG/2020/0014", "BST1282", 0, 71),
("TG/2022/0017", "BST1212",0, 0),
("TG/2022/0017", "BST1222",0, 0),
("TG/2022/0017", "BST1232",0, 0),
("TG/2022/0017", "BST1242",0, 0),
("TG/2022/0017", "BST1251",0, 0),
("TG/2022/0017", "BST1262",0, 0),
("TG/2022/0017", "BST1272",0, 0),
("TG/2022/0017", "BST1282",0, 0);

/*ET Students*/

INSERT INTO END_Exam_M (student_ID, course_ID, End_Practical, End_Theory)
VALUES
("TG/2022/0007", "ENT1211", 58, 63),
("TG/2022/0007", "ENT1221", 70, 64),
("TG/2022/0007", "ENT1231", 55, 66),
("TG/2022/0007", "ENT1242", 0, 65),
("TG/2022/0007", "ENT1253", 0, 67),
("TG/2022/0007", "TMS1213", 0, 62),
("TG/2022/0007", "TMS1223", 51, 60),
("TG/2022/0008", "ENT1211", 60, 61),
("TG/2022/0008", "ENT1221", 56, 63),
("TG/2022/0008", "ENT1231", 60, 64),
("TG/2022/0008", "ENT1242", 0, 67),
("TG/2022/0008", "ENT1253", 0, 69),
("TG/2022/0008", "TMS1213", 0, 66),
("TG/2022/0008", "TMS1223", 52, 61),
("TG/2022/0009", "ENT1211", 56, 64),
("TG/2022/0009", "ENT1221", 66, 62),
("TG/2022/0009", "ENT1231", 49, 65),
("TG/2022/0009", "ENT1242", 0, 63),
("TG/2022/0009", "ENT1253", 0, 67),
("TG/2022/0009", "TMS1213", 0, 66),
("TG/2022/0009", "TMS1223", 64, 64),
("TG/2022/0010", "ENT1211", 64, 67),
("TG/2022/0010", "ENT1221", 59, 66),
("TG/2022/0010", "ENT1231", 48, 62),
("TG/2022/0010", "ENT1242", 0, 68),
("TG/2022/0010", "ENT1253", 0, 65),
("TG/2022/0010", "TMS1213", 0, 63),
("TG/2022/0010", "TMS1223", 53, 60);

/*et suspend and repeat*/

INSERT INTO END_Exam_M (student_ID, course_ID, End_Practical, End_Theory)
VALUES
("TG/2020/0015", "ENT1211", 45, 65),
("TG/2020/0015", "ENT1221", 55, 62),
("TG/2020/0015", "ENT1231", 56, 70),
("TG/2020/0015", "ENT1242", 0, 60),
("TG/2020/0015", "ENT1253", 0, 72),
("TG/2020/0015", "TMS1213", 0, 60),
("TG/2020/0015", "TMS1223", 50, 75),
("TG/2022/0018", "ENT1211", 0, 0),
("TG/2022/0018", "ENT1221", 0, 0),
("TG/2022/0018", "ENT1231", 0, 0),
("TG/2022/0018", "ENT1242", 0, 0),
("TG/2022/0018", "ENT1253", 0, 0),
("TG/2022/0018", "TMS1213", 0, 0),
("TG/2022/0018", "TMS1223", 0, 0);