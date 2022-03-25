/* Populate database with sample data. */

INSERT INTO owners (fullname, age) VALUES 
              ('Sam Smith', 34),
              ('Jennifer Orwell', 19),
              ('Bob', 49),
              ('Melody Pond', 77),
              ('Dean Winchester', 14),
              ('Jodie Whittaker', 38);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES 
              ('Charmander', '2020-02-08', 0, FALSE, -11), 
              ('Plantmon', '2021-11-15', 2, TRUE, -5.7), 
              ('Squirtle', '1993-04-02', 3, FALSE, -12.13), 
              ('Angemon', '2005-06-12', 1, TRUE, -45),
              ('Boarmon', '2005-06-07', 7, TRUE, 20.4), 
              ('Blossom', '1998-10-13', 3, TRUE, 17), 
              ('Ditto', '2022-05-14', 4, TRUE, 22);


INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Agumon', '02/03/2020', 10.23, true, 0);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Gabumon', '15/11/2018', 5, true, 2);
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Pikachu', '01/07/2021', 15.04,false, 1 );
INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Devimon', '05/12/2017', 11, true, 5);

