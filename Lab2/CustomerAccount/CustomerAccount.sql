CREATE TABLE CustomerAccount
(
    id           NUMBER(10),
    customer_id  NUMBER(10),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) references CUSTOMER (id),
    amount       number(10),
    account_name varchar(50)
);