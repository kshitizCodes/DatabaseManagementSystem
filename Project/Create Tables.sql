CREATE TABLE character
(
    id            number(4),
    class         varchar(64),
    name          varchar(100),
    origin        varchar(20),
    alignment     varchar(20),
    illustrator   varchar(64),
    voice_actor   varchar(64),
    strength      varchar(5),
    endurance     varchar(4),
    agility       varchar(5),
    luck          varchar(4),
    craft_essence varchar(64),
    atk           number(10),
    hp            number(10),
    CONSTRAINT character_pk_id PRIMARY KEY (id),
    CONSTRAINT ce_fk FOREIGN KEY (craft_essence) REFERENCES craft_essence (name),
    CONSTRAINT va_fk FOREIGN KEY (voice_actor) REFERENCES voice_actor (name),
    CONSTRAINT class_fk FOREIGN KEY (class) REFERENCES class (name)
);


CREATE TABLE voice_actor
(
    id   number(4),
    name varchar(64) UNIQUE,
    CONSTRAINT va_pk PRIMARY KEY (id)
);

CREATE TABLE class
(
    id   number(1),
    name varchar(64) UNIQUE,
    CONSTRAINT class_pk PRIMARY KEY (id)
);

ALTER TABLE class
    MODIFY id number(3);

CREATE TABLE craft_essence
(
    id          number(4),
    name        varchar(64) UNIQUE,
    atk         number(4),
    hp          number(4),
    cost        number(2),
    illustrator varchar(64),
    CONSTRAINT ce_pk PRIMARY KEY (id)
);

CREATE TABLE enemies
(
    id     number(5),
    name   varchar(64) UNIQUE,
    class  varchar(64),
    origin varchar(64),
    atk    varchar(64),
    hp     varchar(64),
    CONSTRAINT enemy_pk PRIMARY KEY (id)
);

