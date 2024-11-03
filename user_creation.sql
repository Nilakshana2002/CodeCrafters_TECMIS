1.ADMIN

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin123';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;



2.DEAN

CREATE USER 'dean'@'localhost' IDENTIFIED BY 'dean123';
GRANT ALL PRIVILEGES ON *.* TO 'dean'@'localhost';



3.LECTURER

CREATE USER 'lecturer'@'localhost' IDENTIFIED BY 'lectureR123';
GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE ON *.* TO 'lecturer'@'localhost';



4.T/0

CREATE USER 'tech_officer'@'localhost' IDENTIFIED BY 'tech123';
GRANT SELECT, INSERT, UPDATE ON attendance TO 'tech_officer'@'localhost';


5.Student

CREATE USER 'student'@'localhost' IDENTIFIED BY 'student123';
GRANT SELECT ON final_attendance_view TO 'student'@'localhost';
GRANT SELECT ON final_grades_view TO 'student'@'localhost';
