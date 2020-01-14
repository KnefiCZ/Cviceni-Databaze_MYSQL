-- OSSP WARS -- 

CREATE TABLE Characters (
  id_character int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_player int(11),
  id_class int(11),
  level int(11),
  name varchar(255),
  HP int(11),
  money int(11),
  strenght int(11),
  inteligence int(11),
  agility int(11),
  deffence int(11),
  mana int(11),
  squad varchar(255),
  id_unit int(11)
);

CREATE TABLE Players (
  id_player int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_guild int(11),
  id_class int(11),
  level int(11),
  nickname varchar(255),
  email varchar(255),
  password varchar(255),
  bithdate date,
  created_at datetime,
  newsletter int(11),
  GDPR int(11) 
);

CREATE TABLE Units (
  id_unit int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_character int(11),
  id_unit_type int(11),
  HP int(11),
  DMG int(11)
);

CREATE TABLE units_types (
  id_unit_type int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(255)
);

CREATE TABLE Classes (
  id_class int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(255)
);

CREATE TABLE Guilds (
  id_guild int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name varchar(255),
  created_at datetime
);


--INSERTY--

INSERT INTO Players (
  id_guild,
  nickname,
  email,
  password,
  bithdate,
  created_at,
  newsletter,
  GDPR)
VALUES (
 1,
 "Knefi",
 "matej.kneifl@seznam.cz",
 "kleslo123",
 '2002-01-31',
 NOW(),
 0,
 1

);


INSERT INTO guilds (

name
)
VALUES (
"Myshi"
);

INSERT INTO units_types (
     name
)

VALUES (
"Zombie"
);

INSERT INTO Units (
  id_character,
  id_unit_type,
  HP,
  DMG)
VALUES (
 3,
 3,
 1000,
 2500
);

INSERT INTO classes (
name)
VALUES (
"Human");