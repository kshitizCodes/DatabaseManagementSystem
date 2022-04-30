CREATE OR REPLACE TRIGGER auditTrig
    AFTER INSERT OR UPDATE OR DELETE
    ON ENEMIES
    FOR EACH ROW
DECLARE
process_done varchar(64);
BEGIN
    process_done := CASE
        WHEN DELETING THEN 'DELETE'
        WHEN INSERTING THEN 'INSERT'
        WHEN UPDATING THEN 'UPDATE'
    END;
INSERT INTO audit_ VALUES(audit_auto.nextval, 'ENEMIES', process_done, USER, SYSDATE);
END;
/