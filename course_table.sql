/*CREATE COURSE TABLE*/

CREATE TABLE course(
    courseId CHAR (7),
    courseName VARCHAR (100),
    courseType VARCHAR (10),
    credit INT,
    hours INT,
    lecturerId VARCHAR (10),
    departmentId VARCHAR (10),
    PRIMARY KEY (courseId,courseType),
    FOREIGN KEY (lecturerId) REFERENCES lecturer(lecturerId) ON DELETE CASCADE ON UPDATE,
    FOREIGN KEY (departmentId) REFERENCES Departments(departmentId) ON DELETE CASCADE ON UPDATE
);

/*INSERT DATA TO COURSE TABLE*/

INSERT INTO course (courseId, courseName, courseType, credit, hours, lecturerId, departmentId) 
VALUES
("ENG1222","English II","T",,26,"","DMS"),
("TCS1212","Fundamentals of Management","T",2,30,"","DMS"),
("ICT1212","Database Management Systems","T",2,20,"","DICT"),
("ICT1222","Database Management Systems Practicum","P",2,20,"","DICT"),
("ICT1233","Server-Side Web Development","T",3,20,"","DICT"),
("ICT1233","Server-Side Web Development","P",3,20,"","DICT"),
("ICT1242","Computer Architecture","T",2,30,"","DICT"),
("ICT1253","Computer Networks","T",3,20,"","DICT"),
("ICT1253","Computer Networks","P",3,20,"","DICT"),
("TMS1233","Discrete Mathematics","T",3,30,"","DICT"),
("BST1212","Information Technology II","T",2,20,"","DBST"),
("BST1222","Electronic For Biosystem Technology","T",2,20,"","DBST"),
("BST1232","Organic Chemistry","T",2,20,"","DBST"),
("BST1242","Basic Biochemistry","T",2,20,"","DBST"),
("BST1251","Fundamental Genetics","T",1,20,"","DBST"),
("BST1262","Basic Microbiology","T",2,20,"","DBST"),
("BST1272","Introduction to Fisheries Biology","P",2,20,"","DBST"),
("BST1282","Fundamentals in Agriculture","T",2,20,"","DBST"),
("ENT1211","Workshop Technology II","P",1,20,"","DENT"),
("ENT1221","Common Practical III (Electrical & Magnetism)","P",1,20,"","DENT"),
("ENT1231","Common Practical II (Engineering Properties of Matter)","P",1,20,"","DENT"),
("ENT1242","Electricity & Magnetism","T",2,20,"","DENT"),
("ENT1253","Engineering Properties of Matter","T",3,30,"","DENT"),
("TMS1213","Applied Calculus II","T",3,30,"","DENT"),
("TMS1223","Computer Programming Techniques","P",3,30,"","DENT");
