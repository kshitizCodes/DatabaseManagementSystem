CREATE TABLE question4(
    id NUMBER(3),
    fname VARCHAR2(20),
    lname VARCHAR2(20),
    phone INTEGER,
    CONSTRAINT id_pri_key PRIMARY KEY (id)
);

ALTER TABLE question4 ADD(
  email VARCHAR2(100)
);