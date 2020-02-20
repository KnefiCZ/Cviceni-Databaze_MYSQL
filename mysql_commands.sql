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

----------------------------------------
------------SELECTY---------------------
----------------------------------------

SELECT g.id_guild AS "ID guildy", p.id_player AS "ID hráče", g.name AS "Jméno", g.created_at AS "Vytvořeno v:", p.nickname AS "Jmého hráče"
FROM guilds g
JOIN players p ON g.id_guild = p.id_guild;

SELECT g.name, COUNT(*) AS "počet hráčů v guildě"
FROM players p
JOIN guilds g ON p.id_guild = g.id_guild
GROUP BY g.id_guild

--

SELECT p.nickname AS "Přezdívka hráče", ch.name AS "Jméno hrdiny", ch.level AS "Level hrdiny", c.name AS "Třída"
FROM characters ch
JOIN players p ON p.id_player = ch.id_player
JOIN classes c ON c.id_class = ch.id_player;

--

SELECT COALESCE(g.id_guild, "Nevyplněno") AS "ID guildy", p.id_player AS "ID hráče", g.name AS "Jméno", g.created_at AS "Vytvořeno v:", p.nickname AS "Jmého hráče"
FROM guilds g
RIGHT JOIN players p ON g.id_guild = p.id_guild;

-- B E A S T _ R E S T A U R A N T --

CREATE TABLE products (
id_product int(11) NOT NULL PRIMARY KEY, 
name varchar(255),
price int(11),
description text,
id_type int(11)
);

CREATE TABLE Orders (
id_order int(11) NOT NULL PRIMARY KEY, 
created_at datetime,
id_user int(11)
);

CREATE TABLE Users (
id_user int(11) NOT NULL PRIMARY KEY, 
email varchar(255),
password varchar(255),
firstname varchar(255),
lastname varchar(255),
address varchar(255),
city varchar(255)
);

CREATE TABLE Type (
id_type int(11) NOT NULL PRIMARY KEY, 
name varchar(255),
description text
);

CREATE TABLE orders_products (
id_orders int(11) NOT NULL PRIMARY KEY, 
description text
);

CREATE TABLE Payment_method(
id_payment int(11) NOT NULL PRIMARY KEY, 
name varchar(255),
description text
);