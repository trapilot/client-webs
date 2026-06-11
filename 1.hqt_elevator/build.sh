#!/bin/bash

ACTION=$1

case "$ACTION" in
  zip)
    find ../../ \
    -path "*/venv" -prune -o \
    -path "*/webs" -prune -o \
    -path "*/migrations/*.pyc" -exec rm -f {} + -o \
    -path "*/migrations/*.py" \
    ! -name "__init__.py" \
    ! -name "0001_initial.py" \
    -exec rm -f {} +
    
    source venv/bin/activate
    python manage.py makemigrations
    deactivate

    (
      grep -oE "'[^']+'" ./project/settings.py \
      | tr -d "'" \
      | grep -E '^(site_.*|.*_engine)$'
      echo "shared_engine"
    ) \
    | sort -u \
    | while read -r app; do
        echo "Copying: $app"
        if [[ "$app" == site_* ]]; then
          SRC="../../apps/$app"
        elif [[ "$app" == *_engine ]]; then
          SRC="../../apps/$app"
        else
          echo "Skip unknown pattern: $app"
          continue
        fi

        DST="project/libs/$app"
        if [ ! -d "$SRC" ]; then
          echo "Skip missing: $SRC"
          continue
        fi

        rm -rf "$DST"

        rsync -a \
            --exclude="__pycache__" \
            --exclude="*.pyc" \
            --exclude="*.pyo" \
            "$SRC/" "$DST/"

        echo "Copied: $app"
    done

    cd project && zip -r ../libs.zip libs -x "*/__pycache__/*" "*.pyc"
    echo "Zipped project/libs → libs.zip"
    ;;
  unzip)
    unzip -o libs.zip -d project
    echo "Unzipped libs.zip → project/"
    ;;
  locale)
    echo "Step 1: Cleanup messages..."
    rm -rf project/locale/vi

    echo "Step 2: Extract messages..."
    python manage.py makemessages -l vi -i venv -i templates -i node_modules -i static -i media

    echo "Step 3: Auto translate to Vietnamese..."

    pip install deep-translator polib
    python tools/auto_translate_po.py

    echo "Step 4: Compile messages..."
    python manage.py compilemessages

    echo "DONE: Vietnamese locale ready 🚀"
    ;;
  ssl)
    echo "Generate Let's Encrypt SSL..."

    docker compose run --rm certbot certonly \
      --webroot \
      --webroot-path=/var/www/certbot \
      -d thangmayhqt.com \
      -d www.thangmayhqt.com \
      --email thangmayhqt@gmail.com \
      --agree-tos \
      --no-eff-email

    echo "SSL generated 🚀"

    docker compose restart nginx
    ;;
  renew)
    docker compose run --rm certbot renew
    docker compose restart nginx
    ;;
  *)
    echo "Usage: ./script.sh [zip|unzip|locale]"
    ;;
esac