#!/bin/bash

ACTION=$1

case "$ACTION" in
  zip)
    cd project && zip -r ../libs.zip libs
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
    python scripts/auto_translate_po.py

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