/* Database schema to keep the structure of entire database. */
CREATE TABLE animals (
  id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(250),
  date_of_birth date,
  escape_attempts INT,
  neutered BOOLEAN,
  weight_kg DECIMAL,
  species_id INT,
  owner_id INT,
  CONSTRAINT fk_species
    FOREIGN KEY(species_id)
      REFERENCES species(id),
  CONSTRAINT fk_owners
    FOREIGN KEY(owner_id)
      REFERENCES owners(id)
);

ALTER TABLE animals 
ADD species varchar(100);

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    fullname varchar(100),
    age int
);

CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name varchar(100)
);
