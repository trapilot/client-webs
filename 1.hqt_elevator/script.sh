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
    mkdir -p project/libs

    grep -oE "'[^']+'" project/settings.py \
    | tr -d "'" \
    | cut -d'.' -f1 \
    | grep -E '^(cms_|.*_engine$)' \
    | sort -u \
    | while read app; do

        SRC="../../libs/$app"
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
  *)
    echo "Usage: ./script.sh [zip|unzip|locale]"
    ;;
esac