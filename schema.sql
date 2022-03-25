/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name varchar(100),
    date_of_birth DATE,
    escape_attempts integer,
    neutered BOOLEAN,
    weight_kg DECIMAL 
);

ALTER TABLE animals 
ADD species varchar(100);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    fullname varchar(100),
    age int
);

CREATE TABLE species (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(250)
);

-- create a table named vets
CREATE TABLE vets (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(250),
  age INT,
  date_of_graduation date
);

-- create a join table named specializations
CREATE TABLE specializations (
  species_id INT,
  vet_id INT,
  CONSTRAINT fk_species
    FOREIGN KEY(species_id)
      REFERENCES species(id),
  CONSTRAINT fk_vets
    FOREIGN KEY(vet_id)
      REFERENCES vets(id)
);

-- create a join table named visits
CREATE TABLE visits (
  animals_id INT,
  vets_id INT,
  date_of_visit date,
  CONSTRAINT fk_animals
    FOREIGN KEY(animals_id)
      REFERENCES animals(id),
  CONSTRAINT fk_vets
    FOREIGN KEY(vets_id)
      REFERENCES vets(id)
);
