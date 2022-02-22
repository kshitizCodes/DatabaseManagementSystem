CREATE TABLE question4(
    id NUMBER(3),
    fname VARCHAR2(20),
    lname VARCHAR2(20),
    phone INTEGER,
    CONSTRAINT id_pri_key PRIMARY KEY (id)
);
INSERT INTO question4 VALUES(1, 'Ben', 'White', 123456789);
SELECT * from question4;

ALTER TABLE question4 ADD(
  email VARCHAR2(100)
);
INSERT INTO question4 VALUES(1, 'Ben', 'White', 123456789, 'ben@white.com');
SELECT * FROM question4;