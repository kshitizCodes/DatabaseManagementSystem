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
    CONSTRAINT ce_fk FOREIGN KEY (craft_essence)
        REFERENCES craft_essence (name),
    CONSTRAINT va_fk FOREIGN KEY (voice_actor)
        REFERENCES voice_actor (name),
    CONSTRAINT class_fk FOREIGN KEY (class) REFERENCES class (name)
);

ALTER TABLE CHARACTER DROP CONSTRAINT va_fk;
ALTER TABLE CHARACTER ADD CONSTRAINT va_fk
FOREIGN KEY (VOICE_ACTOR) REFERENCES voice_actor(name)
ON DELETE CASCADE;

CREATE TABLE voice_actor
(
    id   number(4),
    name varchar(64) UNIQUE,
    CONSTRAINT va_pk PRIMARY KEY (id)
);

CREATE TABLE class
(
    id   number(3),
    name varchar(64) UNIQUE,
    CONSTRAINT class_pk PRIMARY KEY (id)
);

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
    id     number(5) NOT NULL,
    name   varchar(64) UNIQUE NOT NULL,
    class  varchar(64) NOT NULL,
    origin varchar(64) NOT NULL,
    atk    number(10) NOT NULL,
    hp     number(10) NOT NULL,
    CONSTRAINT enemy_pk PRIMARY KEY (id),
    CONSTRAINT check_id CHECK ( ID between 1 and 9999)
);