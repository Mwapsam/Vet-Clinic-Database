/* Populate database with sample data. */

-- vets

INSERT INTO vets (name, age, date_of_graduation)
VALUES
  ('William Tatcher', 45, '2000-4-23'),
  ('Maisy Smith', 26, '2019-1-17'),
  ('Stephanie Mendez', 64, '1981-5-4'),
  ('Jack Harkness', 38, '2008-6-8');

  INSERT INTO specializations (species_id, vet_id)
VALUES
  (1, 1),
  (1, 3),
  (2, 3),
  (2, 4);

--   visits

INSERT INTO visits (animals_id, vets_id, date_of_visit)
VALUES
  (1, 1, '2020-5-24'),
  (1, 3, '2020-7-22'),
  (2, 4, '2021-2-2'),
  (3, 2, '2020-1-5'),
  (3, 2, '2020-3-8'),
  (3, 2, '2020-5-14'),
  (4, 3, '2021-5-4'),
  (5, 4, '2021-2-24'),
  (6, 2, '2019-12-21'),
  (6, 1, '2020-8-10'),
  (6, 2, '2021-4-7'),
  (7, 3, '2019-9-29'),
  (8, 4, '2020-10-3'),
  (8, 4, '2020-11-4'),
  (9, 2, '2019-1-24'),
  (9, 2, '2019-5-15'),
  (9, 2, '2020-2-27'),
  (9, 2, '2020-8-3'),
  (10, 3, '2020-5-24'),
  (10, 1, '2021-1-11');

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

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES 
              ('Charmander', '2020-02-08', 0, FALSE, -11), 
              ('Plantmon', '2021-11-15', 2, TRUE, -5.7), 
              ('Squirtle', '1993-04-02', 3, FALSE, -12.13), 
              ('Angemon', '2005-06-12', 1, TRUE, -45),
              ('Boarmon', '2005-06-07', 7, TRUE, 20.4), 
              ('Blossom', '1998-10-13', 3, TRUE, 17), 
              ('Ditto', '2022-05-14', 4, TRUE, 22);