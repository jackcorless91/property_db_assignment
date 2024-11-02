DROP DATABASE property_db;
CREATE DATABASE property_db;

CREATE TABLE real_estate_agents(
  agent_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  msisdn INTEGER NOT NULL,
  email VARCHAR(100) NOT NULL,
  salary INTEGER NOT NULL,
 )

