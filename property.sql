CREATE DATABASE property_db;

DROP TABLE IF EXISTS real_estate_agents;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS properties;

CREATE TABLE real_estate_agents(
  agent_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  msisdn INTEGER NOT NULL,
  email VARCHAR(100) NOT NULL,
  salary INTEGER NOT NULL
);

CREATE TABLE clients(
  client_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  msisdn INTEGER NOT NULL,
  email VARCHAR(100) NOT NULL,
  budget INTEGER
);

CREATE TABLE properties(
  property_id SERIAL PRIMARY KEY,
  property_address VARCHAR(100) NOT NULL,
  postcode INTEGER NOT NULL,
  property_type VARCHAR(100) NOT NULL,
  rooms VARCHAR(100) NOT NULL,
  size_sqm INTEGER NOT NULL,
  asking_price INTEGER NOT NULL,
  sale_price INTEGER,
  agent_id INTEGER NOT NULL,
  FOREIGN KEY (agent_id) REFERENCES clients(agent_id) ON DELETE CASCADE
);


