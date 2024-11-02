CREATE DATABASE property_db;

DROP TABLE IF EXISTS properties;
DROP TABLE IF EXISTS real_estate_agents;
DROP TABLE IF EXISTS clients;


CREATE TABLE real_estate_agents(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  msisdn INTEGER NOT NULL CHECK (msisdn = 11),
  email VARCHAR(100) NOT NULL,
  salary INTEGER NOT NULL NOT NULL CHECK (salary >= 1)
);

CREATE TABLE clients(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  msisdn INTEGER NOT NULL CHECK (msisdn = 11),
  email VARCHAR(100) NOT NULL,
  budget INTEGER
);

CREATE TABLE properties(
  id SERIAL PRIMARY KEY,
  address VARCHAR(100) NOT NULL,
  postcode INTEGER NOT NULL,
  property_type VARCHAR(100) NOT NULL,
  rooms INTEGER NOT NULL CHECK (rooms >= 1),
  bathrooms INTEGER NOT NULL CHECK (bathrooms >= 1)
  size_sqm INTEGER NOT NULL,
  asking_price INTEGER NOT NULL,
  sale_price INTEGER,
  agent_id INTEGER NOT NULL,
  FOREIGN KEY (agent_id) REFERENCES real_estate_agents(id) ON DELETE CASCADE
);


