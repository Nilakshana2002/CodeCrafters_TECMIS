/* CREATE User Table*/

CREATE TABLE user(
NIC BIGINT,
F_Name VARCHAR(50),
L_Name VARCHAR(50),
Address VARCHAR(100),
E_Mail VARCHAR(100),
Contact_Num VARCHAR(12),
DoB DATE,
Gender VARCHAR(10),
Role VARCHAR(20),
Department_ID VARCHAR(10),
PRIMARY KEY(NIC)
);

/*ADD FOREIGN KEY*/

ALTER TABLE user ADD FOREIGIN KEY(Department_ID) REFERENCES department(Department_id)

/*INSERT DEAN DATA TO TABLE*/

INSERT INTO user (NIC, F_Name, L_Name, Address, E_Mail, Contact_Num, DoB, Gender, Role, Department_ID)
VALUES
(887654321001, "Sarath", "Yatawara", "No 21, Hospital Road, Panadura", "s.yatawara_2018@ictec.ruh.ac.lk", "0760879990", "1985-05-18", "Male", "Dean", "ICT"),

/*INSERT STUDENT DATA TO TABLE*/

INSERT INTO user (NIC, F_Name, L_Name, Address, E_Mail, Contact_Num, DoB, Gender, Role, Department_ID)
VALUES
(123456789001, "Ravindu", "Liyanage", "No 99, Nebada Road, Kalutara", "r.liyanage_2021@fot.ruh.ac.lk", "0760877700", "2002-04-18", "Male", "Student", "ICT"),
(123456789002, "Nuwan", "Samarasinghe", "No 21, Station Road, Gampaha", "n.samarasinghe_2021@fot.ruh.ac.lk", "0771234567", "2002-03-05", "Male", "Student", "ICT"),
(123456789003, "Amaya", "Jayasinghe", "No 12, Temple Road, Colombo", "a.jayasinghe_2021@fot.ruh.ac.lk", "0712345678", "2002-01-10", "Female", "Student", "ICT"),
(123456789004, "Sajith", "Perera", "No 45, Galle Road, Galle", "s.perera_2021@fot.ruh.ac.lk", "0783456789", "2002-05-22", "Male", "Student", "BST"),
(123456789005, "Tharindu", "De Silva", "No 99, Mahinda Mawatha, Kandy", "t.desilva_2021@fot.ruh.ac.lk", "0769876543", "2002-06-14", "Male", "Student", "BST"),
(123456789006, "Buddhika", "Fernando", "No 23, Tissa Road, Matara", "b.fernando_2021@fot.ruh.ac.lk", "0718765439", "2002-02-17", "Male", "Student", "BST"),
(123456789007, "Dilini", "Wijeratne", "No 67, Lake Road, Kurunegala", "d.wijeratne_2021@fot.ruh.ac.lk", "0777654321", "2002-04-10", "Female", "Student", "ET"),
(123456789008, "Kumara", "Bandara", "No 42, King's Street, Anuradhapura", "k.bandara_2021@fot.ruh.ac.lk", "0701234567", "2002-11-02", "Male", "Student", "ET"),
(123456789009, "Janani", "Ekanayake", "No 5, Thalawa Road, Polonnaruwa", "j.ekanayake_2021@fot.ruh.ac.lk", "0786543210", "2002-07-18", "Female", "Student", "ET"),
(123456789010, "Madhawa", "Senanayake", "No 18, Beach Road, Trincomalee", "m.senanayake_2021@fot.ruh.ac.lk", "0765432109", "2002-03-03", "Male", "Student", "ET"),
(123456789011, "Ruwan", "Dias", "No 14, Hospital Road, Badulla", "r.dias_2021@fot.ruh.ac.lk", "0717654321", "2002-08-08", "Male", "Student", "ICT"),
(123456789012, "Harshani", "Rodrigo", "No 47, Temple Road, Negombo", "h.rodrigo_2021@fot.ruh.ac.lk", "0776543210", "2002-12-12", "Female", "Student", "ICT"),
(123456789013, "Chathuri", "Gunawardena", "No 23, Main Street, Ratnapura", "c.gunawardena_2021@fot.ruh.ac.lk", "0765432101", "2002-06-25", "Male", "Student", "BST"),
(123456789014, "Sangeetha", "Rathnayake", "No 5, Yala Road, Hambantota", "s.rathnayake_2021@fot.ruh.ac.lk", "0788765432", "2002-09-30", "Female", "Student", "BST"),
(123456789015, "Upul", "Wickramasinghe", "No 11, Stanley Thilakaratne Mawatha, Dehiwala", "u.wickramasinghe_2021@fot.ruh.ac.lk", "0718765432", "2002-07-11", "Male", "Student", "ET"),
(123456789016, "Nadeesha", "Liyanage", "No 9, Hospital Road, Monaragala", "n.liyanage_2020@fot.ruh.ac.lk", "0775432100", "2002-02-14", "Female", "Student", "ICT"),
(123456789017, "Kasun", "Peiris", "No 4, Peradeniya Road, Kegalle", "k.peiris_2020@fot.ruh.ac.lk", "0713456789", "2002-03-08", "Male", "Student", "BST"),
(123456789018, "Lakshan", "Karunarathne", "No 56, Sirisena Road, Jaffna", "l.karunarathne_2020@fot.ruh.ac.lk", "0760987654", "2002-10-05", "Female", "Student", "ET");


/*INSERT LECTURE DATA TO TABLE*/

INSERT INTO user (NIC, F_Name, L_Name, Address, E_Mail, Contact_Num, DoB, Gender, Role, Department_ID)
VALUES
(987654321001, "Nishan", "Perera", "No 12, Galle Road, Colombo", "n.perera@ictec.ruh.ac.lk", "0772345678", "1985-04-15", "Male", "Lecture", "ICT"),
(987654321002, "Aruni", "Jayawardena", "No 34, Kandy Road, Gampaha", "a.jayawardena@ictec.ruh.ac.lk", "0718765432", "1983-06-22", "Female", "Lecture", "ICT"),
(987654321003, "Mahesh", "Senevirathne", "No 89, Station Road, Matara", "m.senevirathne@etec.ruh.ac.lk", "0781234567", "1987-08-09", "Male", "Lecture", "ET"),
(987654321004, "Rashmi", "Fernando", "No 56, Temple Road, Galle", "r.fernando@etec.ruh.ac.lk", "0769876543", "1984-02-18", "Female", "Lecture", "ET"),
(987654321005, "Dilan", "Weerasinghe", "No 21, Rajagiriya Lane, Nawala", "d.weerasinghe@bstec.ruh.ac.lk", "0773456789", "1986-11-11", "Male", "Lecture", "BST"),
(987654321006, "Sanjeewa", "Wijesinghe", "No 47, High Level Road, Nugegoda", "s.wijesinghe@bstec.ruh.ac.lk", "0709876543", "1988-01-25", "Male", "Lecture", "BST"),
(987654321007, "Thilini", "Ratnayake", "No 10, Negombo Road, Ja-Ela", "t.ratnayake@dmsec.ruh.ac.lk", "0715432109", "1985-09-14", "Female", "Lecture", "DMS"),
(987654321008, "Nimal", "De Silva", "No 15, Lake Road, Kandy", "n.desilva@ictec.ruh.ac.lk", "0779876543", "1982-03-12", "Male", "Lecture", "ICT"),
(987654321009, "Kasuni", "Wijeratne", "No 22, Flower Street, Kurunegala", "k.wijeratne@etec.ruh.ac.lk", "0712345678", "1986-07-30", "Female", "Lecture", "ET"),
(987654321010, "Chamika", "Dissanayake", "No 90, Main Street, Anuradhapura", "c.dissanayake@bstec.ruh.ac.lk", "0766543210", "1984-10-17", "Male", "Lecture", "BST"),
(987654321011, "Dilani", "Hettiarachchi", "No 50, Sea View Avenue, Colombo", "d.hettiarachchi@dmsec.ruh.ac.lk", "0787654321", "1985-12-05", "Female", "Lecture", "DMS");


/*INSERT TECHNICAL OFFICER DATA TO TABLE*/

INSERT INTO user (NIC, F_Name, L_Name, Address, E_Mail, Contact_Num, DoB, Gender, Role, Department_ID)
VALUES
(876543210001, "Kamal", "Senarath", "No 12, Galle Road, Colombo", "k.senarath@to.ruh.ac.lk", "0776543210", "1992-05-10", "Male", "Technical Officer", "ICT"),
(876543210002, "Anura", "Bandara", "No 35, Kandy Road, Kurunegala", "a.bandara@to.ruh.ac.lk", "0709876543", "1994-07-22", "Male", "Technical Officer", "ICT"),
(876543210003, "Sumudu", "Perera", "No 90, Station Road, Matara", "s.perera@to.ruh.ac.lk", "0763456789", "1995-12-05", "Female", "Technical Officer", "ET"),
(876543210004, "Chathura", "Wijerathne", "No 60, Temple Road, Galle", "c.wijerathne@to.ruh.ac.lk", "0718765432", "1991-03-19", "Male", "Technical Officer", "ET"),
(876543210005, "Sithara", "Fernando", "No 18, Beach Road, Negombo", "s.fernando@to.ruh.ac.lk", "0787654321", "1993-11-27", "Female", "Technical Officer", "DMS");
