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
INSERT INTO teachers (id_subject,
                      name,
                      description,
                      shortcut)
VALUES (
 "Algoritmizace",
 "Učí se o algoritmech.",
 "Ag",
);
---------------------------------------
SELECT * FROM students
WHERE birthdate >= "2000-01-01"
---------------------------------------
DELETE FROM students
WHERE firstname LIKE "Matej";
---------------------------------------
CREATE TABLE tablename (
  name varchar(255),
  birthdate date
);
---------------------------------------