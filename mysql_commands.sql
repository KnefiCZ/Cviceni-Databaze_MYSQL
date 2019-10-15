Informace pro tabulku pro studenty
INSERT INTO students (id_student,
                      firstname,
                      lastname,
                      adress,
                      city,
                      birthdate,
                      description)
VALUES (
 "Matěj",
 "Kneifl",
 "Křečhoř 33",
 "Kolín",
 "31.1.2002",
 "Student OSSPM"
);
---------------------------------------
Informace pro tabulku pro učitele
INSERT INTO teachers (id_teacher,
                      firstname,
                      lastname,
                      adress,
                      city,
                      birthdate,
                      description)
VALUES (
 "Martin",
 "Kokeš",
 "Komenského 340",
 "Kolín",
 "14.7.1989",
 "učitel DB."
);
---------------------------------------
informace pro tabulku pro předměty
INSERT INTO subjects (id_subject,
                      name,
                      description,
                      shortcut)
VALUES (
 "Algoritmizace",
 "Učí se o algoritmech.",
 "Ag",
);
---------------------------------------
Informace pro tabulku pro třídy
INSERT INTO classrooms (number,
                        seats_count,
                        location)
VALUES (
 "10",
 "30",
 "2. Budova"
);
---------------------------------------
Vypočítání všech dostupných sedacích míst na každé budově zvlášť. 
SELECT SUM(seats_count) AS pocet_mist
FROM classrooms
GROUP BY location;
---------------------------------------
Vypočítání kolik má daný učitel celkem předmětů
SELECT guarantor, COUNT(*) AS Celkem_predmetu
FROM subjects
GROUP BY guarantor;
---------------------------------------
Vybrání předmětu podle abecedy
SELECT *
FROM subjects
ORDER BY name ASC(vzestupně)/DESC(Sestupně ;
---------------------------------------
Kdyz se zmeni ucitel
UPDATE subjects
SET id_gurantor = 4
WHERE id_gurantor = 99
---------------------------------------
Vybrání všech studentů s narozením 2000-01-01
SELECT * FROM students
WHERE birthdate >= "2000-01-01"
---------------------------------------
Mazání vse co ma firstname = Matej
DELETE FROM students
WHERE firstname LIKE "Matej";
---------------------------------------
Tvorba tabulky obecně...
CREATE TABLE tablename (
  name varchar(255),
  birthdate date
);
---------------------------------------
Tvorba tabulky pro třídy
CREATE TABLE classrooms (
id_classroom int AUTO_INCREMENT,
number varchar(255),
seats_count int,
location varchar(255)
);