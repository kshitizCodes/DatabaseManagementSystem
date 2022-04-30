create table audit_
(
    audit_id         NUMBER(10),
    table_name       varchar(255),
    transaction_name varchar(64),
    user_name        varchar(64),
    transaction_on   date,
    PRIMARY KEY (audit_id)
);

select * from audit_;