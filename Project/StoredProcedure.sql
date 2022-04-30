CREATE OR REPLACE PROCEDURE UpdateEnemyDamage(
    pid number,
    pname varchar,
    newDamage number
)
IS
BEGIN
UPDATE ENEMIES SET atk=newDamage WHERE id=pid and name=pname;
end;
    /

begin
    execute immediate UpdateEnemyDamage(2, 'Skeleton', 100);
end;