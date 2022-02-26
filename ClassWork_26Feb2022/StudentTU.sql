DROP TABLE STUDENTS;

CREATE TABLE Students
(
    id      NUMBER(10),
    sid     NUMBER(10),
    tu_roll NUMBER(10),
    reg_no  NUMBER(10),
    CONSTRAINT sid_ForeignKey foreign key (sid) references STUDENT (ROLL_NO)
);

SELECT *
FROM Students;