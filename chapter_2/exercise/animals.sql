
CREATE TYPE taxonomy AS ENUM('Mammel', 'Reptiles', 'Birds', 'Fish', 'Amphibians', 'Invertebrates');

CREATE TYPE animal_sex AS ENUM ('M', 'F');

CREATE TABLE animal_collection (
    catagory taxonomy,
    name varchar(50)
);

CREATE TABLE animals (
    id bigserial,
    name varchar(50),
    animal varchar(50),
    sex animal_sex,
    aquired date,
    age int
);


INSERT INTO animals (name, animal, sex, aquired, age)
VALUES ('Joe', 'Lion', 'M', '2011-10-30', 5),
       ('Sally', 'Tiger', 'F', '1993-05-22', 3),
       ('Sam', 'Frog', 'M', '2005-08-01', 2),
       ('Samantha', 'Elephant', 'F', '2011-10-30', 1),
       ('Betty', 'Shark', 'F', '205-08-30', 4),
       ('Kathleen', 'Parrot', 'F', '2010-10-22', 6);

INSERT INTO animal_collection (catagory, name)
VALUES ('Mammel', 'Joe'),
       ('Mammel', 'Sally'),
       ('Amphibians', 'Sam'),
       ('Mammel', 'Samantha'),
       ('Fish', 'Betty'),
       ('Birds', 'Kathleen');
