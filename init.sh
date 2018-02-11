#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username postgres -d "$POSTGRES_DB" <<-EOSQL
    ALTER ROLE "$POSTGRES_USER" SUPERUSER;
    CREATE EXTENSION IF NOT EXISTS ltree CASCADE;
EOSQL
