psql -U postgres -c "CREATE DATABASE foodkitdb;";
psql -U postgres -c "CREATE ROLE foodkit WITH LOGIN PASSWORD 'secret';" foodkitdb;
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE foodkitdb TO foodkit;";
psql -U postgres -c "CREATE EXTENSION postgis;" foodkitdb;
psql -U postgres -c "CREATE EXTENSION postgis_topology;" foodkitdb;
