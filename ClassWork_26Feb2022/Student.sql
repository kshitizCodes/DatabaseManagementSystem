CREATE TABLE student (
    id NUMBER(5),
    sname VARCHAR(20),
    age NUMBER(3),
    dob DATE,
    phone_no NUMBER(10),
    tid NUMBER(5)
);

ALTER TABLE student ADD address VARCHAR(20);

ALTER TABLE student ADD (
    roll_no NUMBER(5),
    course_fee NUMBER(5)
);

ALTER TABLE student DROP COLUMN address;

ALTER TABLE student MODIFY sname VARCHAR2(40);

ALTER TABLE student ADD CONSTRAINT pk_student PRIMARY KEY(roll_no);