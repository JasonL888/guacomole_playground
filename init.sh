#!/bin/bash
# one-time initialization
docker exec -it guacamole bash -c "/opt/guacamole/bin/initdb.sh --mysql > /tmp/initdb.sql"
docker cp guacamole:/tmp/initdb.sql ./initdb.sql
docker exec -i guac-db mariadb -u root -proot_password guacamole_db < initdb.sql
