CREATE ROLE rna_as_api WITH LOGIN CREATEDB PASSWORD 'password';
CREATE DATABASE rna_as_api_production WITH OWNER rna_as_api;
CREATE DATABASE rna_as_api_development WITH OWNER rna_as_api;
CREATE DATABASE rna_as_api_test WITH OWNER rna_as_api;

\c rna_as_api_test;
CREATE EXTENSION pg_trgm;

\c rna_as_api_development;
CREATE EXTENSION pg_trgm;

\c rna_as_api_production;
CREATE EXTENSION pg_trgm;

CREATE ROLE sirene_as_api WITH LOGIN CREATEDB PASSWORD 'password';
CREATE DATABASE sirene_as_api_production WITH OWNER sirene_as_api;
CREATE DATABASE sirene_as_api_development WITH OWNER sirene_as_api;
CREATE DATABASE sirene_as_api_test WITH OWNER sirene_as_api;

\c sirene_as_api_test;
CREATE EXTENSION pg_trgm;

\c sirene_as_api_development;
CREATE EXTENSION pg_trgm;

\c sirene_as_api_production;
CREATE EXTENSION pg_trgm;