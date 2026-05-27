#!/bin/sh

set -e


echo "Waiting for collect static files..."
if [ "$APP_INITIAL" = "True" ] || [ "$APP_COLLECT" = "True" ]; then

  python manage.py collectstatic --no-input --force

else
  echo "APP_COLLECT is disabled. Skipping collect staticfiles."
fi

echo "Waiting for database..." # ⏳ Wait for MySQL to be ready (only if nc exists)
if command -v nc >/dev/null 2>&1; then
  echo "nc found, waiting for DB..."

  while ! nc -z db 3306; do
    echo "DB not ready yet, waiting..."
    sleep 5
  done

else
  echo "nc not found, skipping DB wait..."
fi

# 🔥 Run migrations only if enabled
if [ "$APP_INITIAL" = "True" ] || [ "$APP_MIGRATE" = "True" ]; then
  echo "APP_MIGRATE is enabled. Running migrations..."

  python manage.py flush --no-input
  python manage.py makemigrations
  python manage.py migrate

else
  echo "APP_MIGATE is disabled. Skipping migrations."
fi

# 🚀 Start main process
exec "$@"