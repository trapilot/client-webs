#!/bin/sh

set -e

echo "Waiting for database..."

# ⏳ Wait for MySQL to be ready (only if nc exists)
if command -v nc >/dev/null 2>&1; then
  echo "nc found, waiting for DB..."

  while ! nc -z db 3306; do
    echo "DB not ready yet, waiting..."
    sleep 2
  done

else
  echo "nc not found, skipping DB wait..."
fi

# 🔥 Run migrations only if enabled
if [ "$DB_MIGRATE" = "true" ] || [ "$DB_MIGRATE" = "1" ]; then
  echo "DB_MIGRATE is enabled. Running migrations..."

  python manage.py flush --no-input
  python manage.py makemigrations
  python manage.py migrate
  python manage.py collectstatic --no-input --force

else
  echo "DB_MIGRATE is disabled. Skipping migrations."
fi

# 🚀 Start main process
exec "$@"