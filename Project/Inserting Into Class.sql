ALTER TABLE class
    MODIFY id number(3);

INSERT INTO class
VALUES (class_auto.nextval, 'Saber');
INSERT INTO class
VALUES (class_auto.nextval, 'Archer');
INSERT INTO class
VALUES (class_auto.nextval, 'Lancer');
INSERT INTO class
VALUES (class_auto.nextval, 'Rider');
INSERT INTO class
VALUES (class_auto.nextval, 'Caster');
INSERT INTO class
VALUES (class_auto.nextval, 'Assassin');
INSERT INTO class
VALUES (class_auto.nextval, 'Berserker');
INSERT INTO class
VALUES (class_auto.nextval, 'Alter Ego');
INSERT INTO class
VALUES (class_auto.nextval, 'Avenger');
INSERT INTO class
VALUES (class_auto.nextval, 'Ruler');
INSERT INTO class
VALUES (class_auto.nextval, 'Moon Cancer');
INSERT INTO class
VALUES (class_auto.nextval, 'Pretender');


SELECT *
FROM class;