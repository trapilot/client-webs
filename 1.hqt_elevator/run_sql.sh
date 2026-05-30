#!/bin/bash

set -a
source .env
set +a

docker exec -i db mysql -u $DB_USER -p$DB_PASSWORD $DB_NAME < ./sql/migrations/$1
