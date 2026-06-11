#!/bin/bash

set -a
source .env
set +a

mkdir -p backups

docker exec -i db mysqldump -uroot -p --single-transaction --routines --triggers hqt_prod | gzip > /app/backups/hqt_prod_$(date +%Y%m%d_%H%M%S).sql.gz