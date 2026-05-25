#!/bin/bash

ACTION=$1

case "$ACTION" in
  zip)
    find ../../ \
    -path "*/venv" -prune -o \
    \( -path "*/migrations/*.pyc" -o \
      -path "*/migrations/*.py" ! -name "__init__.py" \) \
    -exec rm -f {} +
    
    source venv/bin/activate
    python manage.py makemigrations
    deactivate

    echo "Copying engine/libs apps..."
    (
      grep -oE "'[^']+'" ./project/settings.py \
      | tr -d "'" \
      | grep -E '^(cms_.*|.*_engine)$'
      echo "shared_engine"
    ) \
    | sort -u \
    | while read -r app; do
        echo "Copying: $app"
        if [[ "$app" == cms_* ]]; then
          SRC="../../libs/$app"
        elif [[ "$app" == "shared_engine" ]]; then
          SRC="../../libs/app_engine/shared_engine"
        elif [[ "$app" == *_engine ]]; then
          SRC="../../libs/app_engine/$app"
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
    echo "Step 1: Extract messages..."
    python manage.py makemessages -l vi -i venv -i env -i node_modules -i static -i media

    echo "Step 2: Auto translate to Vietnamese..."

    # pip install deep-translator polib
    python tools/auto_translate_po.py

    echo "Step 3: Compile messages..."
    python manage.py compilemessages

    echo "Step 4: Moving to locale direction..."
    mv locale project/locale

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
  *)
    echo "Usage: ./script.sh [zip|unzip|locale]"
    ;;
esac