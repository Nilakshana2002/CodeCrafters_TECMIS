/*CREATE STUDENT TABLE */

CREATE TABLE student(
    studentId CHAR(12),
    studentNic INT,
    state VARCHAR (20),
    PRIMARY KEY (studentId),
    FOREIGN KEY (studentNic) REFERENCES user(NIC) ON DELETE CASCADE ON UPDATE
);

/*INSERT DATA TO STUDENT TABLE*/

INSERT INTO student (studentId, studentNic, state) 
VALUES
('TG/2022/0001', '123456789001', 'active'),
('TG/2022/0002', '123456789002', 'active'),
('TG/2022/0003', '123456789003', 'active'),
('TG/2022/0004', '123456789004', 'active'),
('TG/2022/0005', '123456789005', 'active'),
('TG/2022/0006', '123456789006', 'active'),
('TG/2022/0007', '123456789007', 'active'),
('TG/2022/0008', '123456789008', 'active'),
('TG/2022/0009', '123456789009', 'active'),
('TG/2022/0010', '123456789010', 'active'),

    -- Repeat students
('TG/2020/0011', '123456789011', 'repeat'),
('TG/2020/0012', '123456789012', 'repeat'),
('TG/2020/0013', '123456789013', 'repeat'),
('TG/2020/0014', '123456789014', 'repeat'),
('TG/2020/0015', '123456789015', 'repeat');

  --suspended students

('TG/2022/0016', '123456789016', 'suspend'),
('TG/2022/0017', '123456789017', 'suspend'),
('TG/2022/0018', '123456789018', 'suspend');