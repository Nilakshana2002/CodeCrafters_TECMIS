/* CREATR STUDENT_COURSE TABLE*/

CREATE TABLE student_course(
    studentId CHAR(12),
    courseId CHAR (7),
    FOREIGN KEY(studentId)REFERENCES student(studentId) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(courseId)REFERENCES course(courseId) ON DELETE CASCADE ON UPDATE CASCADE

);

/*INSERT DATA INTO student_course*/


--english students
INSERT INTO student_course (studentId, courseId)
VALUES
("TG/2022/0001", "ENG1222"),
("TG/2022/0002", "ENG1222"),
("TG/2022/0003", "ENG1222"),
("TG/2022/0004", "ENG1222"),
("TG/2022/0005", "ENG1222"),
("TG/2022/0006", "ENG1222"),
("TG/2022/0007", "ENG1222"),
("TG/2022/0008", "ENG1222"),
("TG/2022/0009", "ENG1222"),
("TG/2022/0010", "ENG1222"),
("TG/2020/0011", "ENG1222"),
("TG/2020/0012", "ENG1222"),
("TG/2020/0013", "ENG1222"),
("TG/2020/0014", "ENG1222"),
("TG/2020/0015", "ENG1222"),
("TG/2022/0016", "ENG1222"),
("TG/2022/0017", "ENG1222"),
("TG/2022/0018", "ENG1222");

--Management students
INSERT INTO student_course (studentId, courseId)
VALUES
("TG/2022/0001", "TCS1212"),
("TG/2022/0002", "TCS1212"),
("TG/2022/0003", "TCS1212"),
("TG/2022/0004", "TCS1212"),
("TG/2022/0005", "TCS1212"),
("TG/2022/0006", "TCS1212"),
("TG/2022/0007", "TCS1212"),
("TG/2022/0008", "TCS1212"),
("TG/2022/0009", "TCS1212"),
("TG/2022/0010", "TCS1212"),
("TG/2020/0011", "TCS1212"),
("TG/2020/0012", "TCS1212"),
("TG/2020/0013", "TCS1212"),
("TG/2020/0014", "TCS1212"),
("TG/2020/0015", "TCS1212"),
("TG/2022/0016", "TCS1212"),
("TG/2022/0017", "TCS1212"),
("TG/2022/0018", "TCS1212");

-- ict 3
INSERT INTO student_course (studentId, courseId)
VALUES
("TG/2022/0001", "ICT1212"),
("TG/2022/0001", "ICT1222"),
("TG/2022/0001", "ICT1233"),
("TG/2022/0001", "ICT1242"),
("TG/2022/0001", "ICT1253"),
("TG/2022/0001", "TMS1233"),
("TG/2022/0002", "ICT1212"),
("TG/2022/0002", "ICT1222"),
("TG/2022/0002", "ICT1233"),
("TG/2022/0002", "ICT1242"),
("TG/2022/0002", "ICT1253"),
("TG/2022/0002", "TMS1233"),
("TG/2022/0003", "ICT1212"),
("TG/2022/0003", "ICT1222"),
("TG/2022/0003", "ICT1233"),
("TG/2022/0003", "ICT1242"),
("TG/2022/0003", "ICT1253"),
("TG/2022/0003", "TMS1233");

-- bst 3
INSERT INTO student_course (studentId, courseId)
VALUES
("TG/2022/0004", "BST1212"),
("TG/2022/0004", "BST1222"),
("TG/2022/0004", "BST1232"),
("TG/2022/0004", "BST1242"),
("TG/2022/0004", "BST1251"),
("TG/2022/0004", "BST1262"),
("TG/2022/0004", "BST1272"),
("TG/2022/0004", "BST1282"),
("TG/2022/0005", "BST1212"),
("TG/2022/0005", "BST1222"),
("TG/2022/0005", "BST1232"),
("TG/2022/0005", "BST1242"),
("TG/2022/0005", "BST1251"),
("TG/2022/0005", "BST1262"),
("TG/2022/0005", "BST1272"),
("TG/2022/0005", "BST1282"),
("TG/2022/0006", "BST1212"),
("TG/2022/0006", "BST1222"),
("TG/2022/0006", "BST1232"),
("TG/2022/0006", "BST1242"),
("TG/2022/0006", "BST1251"),
("TG/2022/0006", "BST1262"),
("TG/2022/0006", "BST1272"),
("TG/2022/0006", "BST1282");

--et 4
INSERT INTO student_course (studentId, courseId)
VALUES
("TG/2022/0007", "ENT1211"),
("TG/2022/0007", "ENT1221"),
("TG/2022/0007", "ENT1231"),
("TG/2022/0007", "ENT1242"),
("TG/2022/0007", "ENT1253"),
("TG/2022/0007", "TMS1213"),
("TG/2022/0007", "TMS1223"),
("TG/2022/0008", "ENT1211"),
("TG/2022/0008", "ENT1221"),
("TG/2022/0008", "ENT1231"),
("TG/2022/0008", "ENT1242"),
("TG/2022/0008", "ENT1253"),
("TG/2022/0008", "TMS1213"),
("TG/2022/0008", "TMS1223"),
("TG/2022/0009", "ENT1211"),
("TG/2022/0009", "ENT1221"),
("TG/2022/0009", "ENT1231"),
("TG/2022/0009", "ENT1242"),
("TG/2022/0009", "ENT1253"),
("TG/2022/0009", "TMS1213"),
("TG/2022/0009", "TMS1223"),
("TG/2022/0010", "ENT1211"),
("TG/2022/0010", "ENT1221"),
("TG/2022/0010", "ENT1231"),
("TG/2022/0010", "ENT1242"),
("TG/2022/0010", "ENT1253"),
("TG/2022/0010", "TMS1213"),
("TG/2022/0010", "TMS1223");

--ict suspend and repeat
INSERT INTO student_course (studentId, courseId)
VALUES
("TG/2020/0011", "ICT1212"),
("TG/2020/0011", "ICT1222"),
("TG/2020/0011", "ICT1233"),
("TG/2020/0011", "ICT1242"),
("TG/2020/0011", "ICT1253"),
("TG/2020/0011", "TMS1233"),
("TG/2020/0012", "ICT1212"),
("TG/2020/0012", "ICT1222"),
("TG/2020/0012", "ICT1233"),
("TG/2020/0012", "ICT1242"),
("TG/2020/0012", "ICT1253"),
("TG/2020/0012", "TMS1233"),
("TG/2022/0016", "ICT1212"),
("TG/2022/0016", "ICT1222"),
("TG/2022/0016", "ICT1233"),
("TG/2022/0016", "ICT1242"),
("TG/2022/0016", "ICT1253"),
("TG/2022/0016", "TMS1233");

--bst suspend and repeat
INSERT INTO student_course (studentId, courseId)
VALUES
("TG/2020/0013", "BST1212"),
("TG/2020/0013", "BST1222"),
("TG/2020/0013", "BST1232"),
("TG/2020/0013", "BST1242"),
("TG/2020/0013", "BST1251"),
("TG/2020/0013", "BST1262"),
("TG/2020/0013", "BST1272"),
("TG/2020/0013", "BST1282"),
("TG/2020/0014", "BST1212"),
("TG/2020/0014", "BST1222"),
("TG/2020/0014", "BST1232"),
("TG/2020/0014", "BST1242"),
("TG/2020/0014", "BST1251"),
("TG/2020/0014", "BST1262"),
("TG/2020/0014", "BST1272"),
("TG/2020/0014", "BST1282"),
("TG/2022/0017", "BST1212"),
("TG/2022/0017", "BST1222"),
("TG/2022/0017", "BST1232"),
("TG/2022/0017", "BST1242"),
("TG/2022/0017", "BST1251"),
("TG/2022/0017", "BST1262"),
("TG/2022/0017", "BST1272"),
("TG/2022/0017", "BST1282");

--et suspend and repeat
INSERT INTO student_course (studentId, courseId)
VALUES
("TG/2020/0015", "ENT1211"),
("TG/2020/0015", "ENT1221"),
("TG/2020/0015", "ENT1231"),
("TG/2020/0015", "ENT1242"),
("TG/2020/0015", "ENT1253"),
("TG/2020/0015", "TMS1213"),
("TG/2020/0015", "TMS1223"),
("TG/2022/0018", "ENT1211"),
("TG/2022/0018", "ENT1221"),
("TG/2022/0018", "ENT1231"),
("TG/2022/0018", "ENT1242"),
("TG/2022/0018", "ENT1253"),
("TG/2022/0018", "TMS1213"),
("TG/2022/0018", "TMS1223");



