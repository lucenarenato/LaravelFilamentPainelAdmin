#!/usr/bin/env bash

mysql --user=root --password="$MYSQL_ROOT_PASSWORD" <<-EOSQL
    CREATE DATABASE IF NOT EXISTS filament;
    GRANT ALL PRIVILEGES ON \`filament%\`.* TO '$MYSQL_USER'@'%';
EOSQL
