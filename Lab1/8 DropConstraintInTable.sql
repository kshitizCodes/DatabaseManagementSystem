CREATE TABLE question8(
    roll_no NUMBER(3) NOT NULL,
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(20) NOT NULL,
    age NUMBER(3) NOT NULL,
    CONSTRAINT pk_roll PRIMARY KEY (roll_no)
);

ALTER TABLE question8 DROP CONSTRAINT pk_roll;