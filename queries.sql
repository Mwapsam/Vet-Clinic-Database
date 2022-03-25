/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name like '%mon';
SELECT * from animals WHERE date_of_birth BETWEEN '2016-01-01' and '2019-01-01';
SELECT name from animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth from animals WHERE name  IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;
SELECT * from animals WHERE neutered = true;
SELECT name from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg BETWEEN 10.4 AND 17.3;


/* Start transaction query for species column */

BEGIN;
UPDATE animals 
SET species = 'unspecified';
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
UPDATE animals
SET species = 'digimon'
WHERE name like '%mon';

UPDATE animals
SET species = 'pokemon'
WHERE species IS NULL;
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals
ROLLBACK;
SELECT * FROM animals

BEGIN;
DELETE FROM animals
WHERE date_of_birth > '01/01/2022';
SAVEPOINT delete_by_birth;
UPDATE animals
SET weight_kg = weight_kg * (-1);
ROLLBACK TO delete_by_birth;
UPDATE animals
SET weight_kg = weight_kg * (-1)
WHERE weight_kg < 0;
COMMIT;
SELECT * FROM animals;
/* End transaction */

/* WRITE QUERIES TO ANSWER QUESTIONS */

SELECT COUNT(id) as animals_count FROM animals;

SELECT COUNT(id) as never_tried_escape FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) as average_weight FROM animals;

SELECT SUM(escape_attempts) as escape_count, neutered FROM animals GROUP BY neutered ORDER BY escape_count DESC LIMIT 1;

SELECT species, MAX(weight_kg) as maximum_weight, MIN(weight_kg) as minimum_weight FROM animals GROUP BY species;

SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

/* END */

-- Melody Pond's pets 
SELECT name
FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE fullname = 'Melody Pond';

-- pokemon species
SELECT animals.name
FROM animals
JOIN species ON animals.species_id = species.id
WHERE species.name = 'Pokemon';

-- who have pets and who don't
SELECT animals.name, owners.fullname
FROM owners
LEFT JOIN animals ON owners.id = animals.owner_id;

-- animals per species
SELECT species.name, COUNT(species.name)
FROM animals
JOIN species ON animals.species_id = species.id
GROUP BY species.name;

-- Jennifer Orwell's digimon pets
SELECT animals.name, owners.fullname, species.name
FROM animals
JOIN species ON animals.species_id = species.id
JOIN owners ON owners.id = animals.owner_id
WHERE owners.fullname = 'Jennifer Orwell' AND species.name = 'Digimon';

-- Dean Winchester's escape pets 
SELECT animals.name, owners.fullname, animals.escape_attempts
FROM animals
JOIN owners ON owners.id = animals.owner_id
WHERE owners.fullname = 'Dean Winchester' AND animals.escape_attempts = 0;

-- who has a lot of pets

SELECT owners.fullname, COUNT(animals.name)
FROM animals
JOIN owners ON owners.id = animals.owner_id
GROUP BY owners.fullname;