/*CREATE DEPARTMENT TABLE*/

CREATE TABLE Departments(
    departmentId VARCHAR (10),
    departmentName VARCHAR (100),
    PRIMARY KEY (departmentId)
);

/*INSERT DATA TO DEPARTMENTS TABLE*/

INSERT INTO Departments (departmentId, departmentName)
VALUES
("ICT","Department of Information and Communication Technology"),
("ENT","Department of Engineering Technology"),
("BST","Department of Bio Systems Technology"),
("DMS","Department of MultiDisciplinary");
