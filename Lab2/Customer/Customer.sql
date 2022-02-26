CREATE TABLE customer
(
    id                  NUMBER(10),
    CONSTRAINT pk_customer_id PRIMARY KEY (id),
    client_id           NUMBER(10),
    branch_id           NUMBER,
    CONSTRAINT fk_branch_id foreign key (branch_id) references BRANCH (id),
    account_opened_data DATE,
    citizenship_number  NUMBER(20),
    passport_number     NUMBER(20) NULL,
    email               varchar(35),
    mobile              number(20)
);