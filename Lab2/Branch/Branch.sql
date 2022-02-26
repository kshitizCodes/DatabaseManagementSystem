CREATE TABLE branch
(
    id   NUMBER(10),
    CONSTRAINT pk_branch_id PRIMARY KEY (id),
    name VARCHAR(50),
    code NUMBER(10),
    CONSTRAINT uk_code UNIQUE (code)
);