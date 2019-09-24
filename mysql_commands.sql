INSERT INTO students (firstname,
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