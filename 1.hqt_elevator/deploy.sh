#!/bin/bash

set -e

PROJECT_PATH="/app/web/1.hqt_elevator"
DB_CONTAINER="db"

cd $PROJECT_PATH

echo "Pull latest code..."
git pull origin hqt_elevator

echo "Unzip libs..."
./build.sh unzip


echo "Ensure SQL history table..."
echo "DB_USER=$DB_USER"
echo "DB_NAME=$DB_NAME"

# docker exec $DB_CONTAINER sh -c '
# mysql -u $DB_USER -p$DB_PASSWORD $DB_NAME <<EOF
# CREATE TABLE IF NOT EXISTS migrate_libs_history (
#     filename VARCHAR(255) PRIMARY KEY,
#     executed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
# );
# EOF
# '

# echo "Run custom SQL migrations..."
# FILES=$(find sql/migrations -name "*.sql" | sort)

# for file in $FILES; do

#     filename=$(basename "$file")

#     EXISTS=$(docker exec $DB_CONTAINER sh -c "
# mysql -N -s -u $DB_USER -p\$DB_PASSWORD \$DB_NAME \
# -e \"SELECT COUNT(*) FROM migrate_libs_history WHERE filename='$filename';\"
# ")

#     if [ "$EXISTS" = "0" ]; then

#         echo "Executing: $filename"

#         docker exec $DB_CONTAINER sh -c "
# mysql -u $DB_USER -p\$DB_PASSWORD \$DB_NAME \
# < /migrations/$filename
# "

#         docker exec $DB_CONTAINER sh -c "
# mysql -u $DB_USER -p\$DB_PASSWORD \$DB_NAME \
# -e \"INSERT INTO migrate_libs_history(filename) VALUES('$filename');\"
# "

#         echo "Done: $filename"

#     else
#         echo "Skip: $filename"
#     fi
# done

echo "Restart web..."
docker restart web

echo "Deploy success 🚀"