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
